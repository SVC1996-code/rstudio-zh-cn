[CmdletBinding()]
param(
    [string]$Version = '2026.08.1+195',
    [string]$WorkspaceRoot,
    [string]$PathConfig,
    [string]$ToolsRoot,
    [string]$DownloadRoot,
    [switch]$ForceDownload
)

. (Join-Path $PSScriptRoot 'RStudioZhCn.Common.ps1')

$paths = Get-RStudioZhCnPathConfiguration -Version $Version -WorkspaceRoot $WorkspaceRoot -PathConfig $PathConfig
if (-not $ToolsRoot) { $ToolsRoot = $paths.ToolsRoot }
if (-not $DownloadRoot) { $DownloadRoot = $paths.ToolDownloadsRoot }
$ToolsRoot = [IO.Path]::GetFullPath($ToolsRoot)
$DownloadRoot = [IO.Path]::GetFullPath($DownloadRoot)
Assert-DescendantPath -Path $ToolsRoot -Parent $paths.ToolsRoot -AllowParent | Out-Null
Assert-DescendantPath -Path $DownloadRoot -Parent $paths.DownloadsRoot | Out-Null

$manifest = Get-VersionManifest -Version $Version
if (-not $manifest.toolchain) { throw 'Version manifest does not define a toolchain.' }
New-Item -ItemType Directory -Path $ToolsRoot -Force | Out-Null
New-Item -ItemType Directory -Path $DownloadRoot -Force | Out-Null

function Get-VerifiedDownload {
    param($Item)
    $archive = Join-Path $DownloadRoot ([string]$Item.fileName)
    $hasSha256 = $Item.PSObject.Properties.Name -contains 'sha256'
    $hasSha512 = $Item.PSObject.Properties.Name -contains 'sha512'
    $valid = (Test-Path -LiteralPath $archive -PathType Leaf)
    if ($valid -and $hasSha256 -and $Item.sha256) {
        $valid = (Get-Sha256 -Path $archive) -eq ([string]$Item.sha256).ToUpperInvariant()
    }
    if ($ForceDownload -or -not $valid) {
        if (Test-Path -LiteralPath $archive) {
            $quarantine = Join-Path $DownloadRoot (([string]$Item.fileName) + '.invalid-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
            Move-Item -LiteralPath $archive -Destination $quarantine
        }
        & curl.exe --location --fail --retry 5 --retry-all-errors --output $archive ([string]$Item.url)
        if ($LASTEXITCODE -ne 0) { throw "Download failed: $($Item.url)" }
    }
    if ($hasSha256 -and $Item.sha256) {
        $actual = Get-Sha256 -Path $archive
        if ($actual -ne ([string]$Item.sha256).ToUpperInvariant()) {
            throw "SHA-256 mismatch for $archive`nExpected: $($Item.sha256)`nActual:   $actual"
        }
    }
    if ($hasSha512 -and $Item.sha512) {
        $actual512 = (Get-FileHash -LiteralPath $archive -Algorithm SHA512).Hash
        if ($actual512 -ne ([string]$Item.sha512).ToUpperInvariant()) {
            throw "SHA-512 mismatch for $archive"
        }
    }
    $archive
}

function Expand-ToolArchive {
    param($Item, [string]$Archive)
    $destination = Join-Path $ToolsRoot ([string]$Item.installDirectory)
    $marker = Join-Path $destination '.rstudio-zh-cn-tool.json'
    if (Test-Path -LiteralPath $marker -PathType Leaf) {
        $installed = Read-JsonFile -Path $marker
        if ($installed.archiveSHA256 -eq (Get-Sha256 -Path $Archive)) { return $destination }
    }
    if (Test-Path -LiteralPath $destination) {
        $quarantine = Join-Path $ToolsRoot (([string]$Item.installDirectory) + '.old-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
        Move-Item -LiteralPath $destination -Destination $quarantine
    }
    $staging = Join-Path $ToolsRoot ('.extract-' + [guid]::NewGuid().ToString('N'))
    New-Item -ItemType Directory -Path $staging -Force | Out-Null
    if ($Item.archiveType -eq 'zip') {
        Expand-Archive -LiteralPath $Archive -DestinationPath $staging -Force
    } elseif ($Item.archiveType -eq 'tar.gz') {
        Invoke-Checked -FilePath 'tar.exe' -ArgumentList @('-xzf', $Archive, '-C', $staging)
    } else {
        throw "Unsupported archive type: $($Item.archiveType)"
    }
    $entries = @(Get-ChildItem -LiteralPath $staging -Force)
    $destinationParent = Split-Path -Parent $destination
    New-Item -ItemType Directory -Path $destinationParent -Force | Out-Null
    if ($entries.Count -eq 1 -and $entries[0].PSIsContainer) {
        Move-Item -LiteralPath $entries[0].FullName -Destination $destination
    } else {
        New-Item -ItemType Directory -Path $destination -Force | Out-Null
        foreach ($entry in $entries) { Move-Item -LiteralPath $entry.FullName -Destination $destination }
    }
    $record = [ordered]@{
        name = $Item.name
        version = $Item.version
        source = $Item.url
        archiveSHA256 = Get-Sha256 -Path $Archive
        installedAt = (Get-Date).ToUniversalTime().ToString('o')
    }
    Write-JsonFile -Path $marker -Value $record
    $destination
}

$installed = [ordered]@{}
foreach ($item in $manifest.toolchain) {
    $archive = Get-VerifiedDownload -Item $item
    $installed[[string]$item.name] = Expand-ToolArchive -Item $item -Archive $archive
}

$nodeRoot = [string]$installed.node
$corepack = Join-Path $nodeRoot 'corepack.cmd'
$yarn = Join-Path $nodeRoot 'yarn.cmd'
if (Test-Path -LiteralPath $corepack -PathType Leaf) {
    $env:COREPACK_HOME = Join-Path $ToolsRoot 'corepack'
    $env:npm_config_cache = Join-Path $ToolsRoot 'npm-cache'
    New-Item -ItemType Directory -Path $env:COREPACK_HOME, $env:npm_config_cache -Force | Out-Null
    Invoke-Checked -FilePath $corepack -ArgumentList @('enable') -WorkingDirectory $nodeRoot
    Invoke-Checked -FilePath $corepack -ArgumentList @('prepare', 'yarn@1.22.22', '--activate') -WorkingDirectory $nodeRoot
}
if (-not (Test-Path -LiteralPath $yarn -PathType Leaf)) {
    throw "Yarn was not activated under the portable Node directory: $nodeRoot"
}

$toolLock = [ordered]@{
    version = $Version
    generatedAt = (Get-Date).ToUniversalTime().ToString('o')
    tools = @($manifest.toolchain | ForEach-Object {
        $root = [string]$installed[[string]$_.name]
        [ordered]@{
            name = $_.name
            version = $_.version
            root = $root
            archiveSHA256 = Get-Sha256 -Path (Join-Path $DownloadRoot ([string]$_.fileName))
        }
    })
    yarn = [ordered]@{ version = '1.22.22'; executable = $yarn }
}
Write-JsonFile -Path (Join-Path $ToolsRoot 'rstudio-zh-cn-toolchain.json') -Value $toolLock
$toolLock
