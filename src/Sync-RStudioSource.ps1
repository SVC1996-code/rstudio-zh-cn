[CmdletBinding()]
param(
    [string]$Version = '2026.08.1+195',
    [string]$WorkspaceRoot,
    [string]$PathConfig,
    [string]$SourceRoot,
    [string]$DownloadRoot,
    [string]$GitPath,
    [switch]$Offline,
    [switch]$Force
)

. (Join-Path $PSScriptRoot 'RStudioZhCn.Common.ps1')

$paths = Get-RStudioZhCnPathConfiguration -Version $Version -WorkspaceRoot $WorkspaceRoot -PathConfig $PathConfig
if (-not $SourceRoot) { $SourceRoot = $paths.UpstreamSourceRoot }
if (-not $DownloadRoot) { $DownloadRoot = $paths.DownloadsRoot }
if (-not $GitPath) {
    $gitCommand = Get-Command git.exe -ErrorAction Stop
    $GitPath = $gitCommand.Source
}
$SourceRoot = [IO.Path]::GetFullPath($SourceRoot)
$DownloadRoot = [IO.Path]::GetFullPath($DownloadRoot)
Assert-DescendantPath -Path $SourceRoot -Parent $paths.UpstreamRoot | Out-Null
Assert-DescendantPath -Path $DownloadRoot -Parent $paths.DownloadsRoot -AllowParent | Out-Null
$manifest = Get-VersionManifest -Version $Version
$upstream = $manifest.upstream
if (-not $upstream) { throw 'Version manifest does not define upstream source metadata.' }

if (-not $Offline) {
    if (-not (Test-Path -LiteralPath $GitPath -PathType Leaf)) { throw "Git not found: $GitPath" }
    $remote = & $GitPath ls-remote --tags ([string]$upstream.repository) ("refs/tags/{0}" -f $upstream.tag)
    if ($LASTEXITCODE -ne 0 -or -not $remote) { throw 'Unable to query the official RStudio tag.' }
    $remoteCommit = ([string]$remote[0]).Split("`t")[0]
    if ($remoteCommit -ne [string]$upstream.commit) {
        throw "Official tag moved or the lock is wrong.`nExpected: $($upstream.commit)`nActual:   $remoteCommit"
    }
}

$lockPath = Join-Path $SourceRoot '.rstudio-upstream-lock.json'
if (-not $Force -and (Test-Path -LiteralPath $lockPath -PathType Leaf)) {
    $lock = Read-JsonFile -Path $lockPath
    if ($lock.commit -eq $upstream.commit -and $lock.sourceArchiveSHA256 -eq $upstream.sourceArchiveSHA256) {
        [pscustomobject]@{ Status = 'ALREADY_SYNCED'; SourceRoot = $SourceRoot; Commit = $lock.commit; Tag = $lock.tag }
        return
    }
}

New-Item -ItemType Directory -Path $DownloadRoot -Force | Out-Null
$archive = Join-Path $DownloadRoot ([string]$upstream.sourceArchiveFileName)
if (-not (Test-Path -LiteralPath $archive -PathType Leaf) -or
    (Get-Sha256 -Path $archive) -ne ([string]$upstream.sourceArchiveSHA256).ToUpperInvariant()) {
    if (Test-Path -LiteralPath $archive) {
        Move-Item -LiteralPath $archive -Destination ($archive + '.invalid-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
    }
    & curl.exe --location --fail --retry 5 --retry-all-errors --output $archive ([string]$upstream.sourceArchiveUrl)
    if ($LASTEXITCODE -ne 0) { throw 'Official source archive download failed.' }
}
$archiveHash = Get-Sha256 -Path $archive
if ($archiveHash -ne ([string]$upstream.sourceArchiveSHA256).ToUpperInvariant()) {
    throw "Official source archive SHA-256 mismatch.`nExpected: $($upstream.sourceArchiveSHA256)`nActual:   $archiveHash"
}

$treeFile = Join-Path $DownloadRoot ([string]$upstream.treeManifestFileName)
if (-not (Test-Path -LiteralPath $treeFile -PathType Leaf) -or
    (Get-Sha256 -Path $treeFile) -ne ([string]$upstream.treeManifestSHA256).ToUpperInvariant()) {
    & curl.exe --location --fail --retry 5 --retry-all-errors --header 'Accept: application/vnd.github+json' `
        --header 'X-GitHub-Api-Version: 2022-11-28' --output $treeFile ([string]$upstream.treeManifestUrl)
    if ($LASTEXITCODE -ne 0) { throw 'Official Git tree manifest download failed.' }
}
$treeHash = Get-Sha256 -Path $treeFile
if ($treeHash -ne ([string]$upstream.treeManifestSHA256).ToUpperInvariant()) {
    throw "Official tree manifest SHA-256 mismatch."
}
$tree = Read-JsonFile -Path $treeFile
if ($tree.sha -ne $upstream.commit -or $tree.truncated) {
    throw 'Official Git tree response is incomplete or belongs to another commit.'
}
$submodules = @($tree.tree | Where-Object { $_.type -eq 'commit' } | ForEach-Object {
    [ordered]@{ path = $_.path; commit = $_.sha }
})

function Get-GitBlobSha1 {
    param([Parameter(Mandatory)][string]$Path)
    $bytes = [IO.File]::ReadAllBytes($Path)
    $header = [Text.Encoding]::UTF8.GetBytes(('blob {0}' -f $bytes.Length) + [char]0)
    $combined = New-Object byte[] ($header.Length + $bytes.Length)
    [Array]::Copy($header, 0, $combined, 0, $header.Length)
    [Array]::Copy($bytes, 0, $combined, $header.Length, $bytes.Length)
    $sha1 = [Security.Cryptography.SHA1]::Create()
    try {
        ([BitConverter]::ToString($sha1.ComputeHash($combined))).Replace('-', '').ToLowerInvariant()
    } finally {
        $sha1.Dispose()
    }
}

# A GitHub tag archive has no .git directory.  If it is already present, prove
# every blob against the official recursive Git tree before adopting it.
if (-not $Force -and (Test-Path -LiteralPath $SourceRoot -PathType Container)) {
    $blobs = @($tree.tree | Where-Object { $_.type -eq 'blob' })
    $localFiles = @(Get-ChildItem -LiteralPath $SourceRoot -File -Recurse -Force |
        Where-Object { $_.Name -ne '.rstudio-upstream-lock.json' })
    if ($localFiles.Count -eq $blobs.Count) {
        $mismatches = [Collections.Generic.List[string]]::new()
        foreach ($blob in $blobs) {
            $local = Join-Path $SourceRoot ([string]$blob.path).Replace('/', '\')
            if (-not (Test-Path -LiteralPath $local -PathType Leaf) -or
                (Get-GitBlobSha1 -Path $local) -ne ([string]$blob.sha).ToLowerInvariant()) {
                $mismatches.Add([string]$blob.path)
                if ($mismatches.Count -ge 20) { break }
            }
        }
        if ($mismatches.Count -eq 0) {
            $lock = [ordered]@{
                repository = $upstream.repository
                tag = $upstream.tag
                commit = $upstream.commit
                sourceArchiveUrl = $upstream.sourceArchiveUrl
                sourceArchiveSHA256 = $archiveHash
                treeManifestSHA256 = $treeHash
                verifiedBlobs = $blobs.Count
                submodules = $submodules
                syncedAt = (Get-Date).ToUniversalTime().ToString('o')
            }
            Write-JsonFile -Path $lockPath -Value $lock
            [pscustomobject]@{
                Status = 'ADOPTED_VERIFIED_ARCHIVE'
                SourceRoot = $SourceRoot
                Tag = $upstream.tag
                Commit = $upstream.commit
                VerifiedBlobs = $blobs.Count
                Submodules = $submodules.Count
            }
            return
        }
    }
}

if (Test-Path -LiteralPath $SourceRoot) {
    $quarantineRoot = Join-Path $paths.LegacyRoot 'source-sync-replaced'
    Assert-DescendantPath -Path $quarantineRoot -Parent $paths.LegacyRoot | Out-Null
    New-Item -ItemType Directory -Path $quarantineRoot -Force | Out-Null
    $quarantine = Join-Path $quarantineRoot ((Split-Path -Leaf $SourceRoot) + '-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
    Move-Item -LiteralPath $SourceRoot -Destination $quarantine
}
$staging = Join-Path (Split-Path -Parent $SourceRoot) ('.extract-' + [guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $staging -Force | Out-Null
Expand-Archive -LiteralPath $archive -DestinationPath $staging -Force
$entries = @(Get-ChildItem -LiteralPath $staging -Directory -Force)
if ($entries.Count -ne 1) { throw 'Unexpected official source archive layout.' }
Move-Item -LiteralPath $entries[0].FullName -Destination $SourceRoot

$modulePath = Join-Path $SourceRoot 'src\gwt\src\org\rstudio\studio\RStudio.gwt.xml'
$moduleHash = Get-Sha256 -Path $modulePath
if ($moduleHash -ne ([string]$upstream.rstudioGwtXmlSHA256).ToUpperInvariant()) {
    throw 'Extracted RStudio.gwt.xml does not match the locked tag.'
}
$lock = [ordered]@{
    repository = $upstream.repository
    tag = $upstream.tag
    commit = $upstream.commit
    sourceArchiveUrl = $upstream.sourceArchiveUrl
    sourceArchiveSHA256 = $archiveHash
    treeManifestSHA256 = $treeHash
    verifiedBlobs = @($tree.tree | Where-Object { $_.type -eq 'blob' }).Count
    submodules = $submodules
    syncedAt = (Get-Date).ToUniversalTime().ToString('o')
}
Write-JsonFile -Path (Join-Path $SourceRoot '.rstudio-upstream-lock.json') -Value $lock
[pscustomobject]@{
    Status = 'SYNCED'
    SourceRoot = $SourceRoot
    Tag = $upstream.tag
    Commit = $upstream.commit
    Submodules = $submodules.Count
}
