# Portable install core follows the published installer: verify, stage, patch,
# verify writes, embed manifest, then rename. Build/install workspace scripts stay unchanged.
function Assert-PortableIntegrity {
    param([string]$PackageRoot)
    $integrity = Read-JsonFile (Join-Path $PackageRoot 'package-integrity.json')
    foreach ($name in @('version.json','patch/patch-manifest.json','patch/build-report.json')) {
        $expected = $integrity.PSObject.Properties[$name]
        if (-not $expected -or $expected.Value -notmatch '^[0-9A-Fa-f]{64}$' -or
            (Get-Sha256 (Join-Path $PackageRoot $name)) -ne $expected.Value) {
            throw "Package metadata SHA-256 mismatch: $name"
        }
    }
}
function Invoke-PortableInstall {
[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true)][string]$PackageRoot,
    [string]$Version,
    [string]$SourcePath,
    [string]$DestinationPath,
    [string]$PatchRoot,
    [string]$ReportPath
)



$packageRoot = [IO.Path]::GetFullPath($PackageRoot)
if (-not $SourcePath) { throw 'Specify the official RStudio directory with -SourcePath.' }
if (-not $DestinationPath) { throw 'Specify a new independent directory with -DestinationPath.' }
if (-not $PatchRoot) { $PatchRoot = Join-Path $packageRoot 'patch' }
if (-not $ReportPath) { $ReportPath = Join-Path $packageRoot 'install-manifest.json' }
$SourcePath = [IO.Path]::GetFullPath($SourcePath)
$DestinationPath = [IO.Path]::GetFullPath($DestinationPath)
$PatchRoot = [IO.Path]::GetFullPath($PatchRoot)
$ReportPath = [IO.Path]::GetFullPath($ReportPath)
Assert-SafeOperationRoot -Path $SourcePath | Out-Null
Assert-SafeOperationRoot -Path $DestinationPath | Out-Null
Assert-DescendantPath -Path $PatchRoot -Parent $packageRoot | Out-Null
Assert-DescendantPath -Path $ReportPath -Parent $packageRoot | Out-Null
# Do not follow junctions/symlinks when copying or patching a verified tree.
foreach ($rootToCheck in @($SourcePath,$PatchRoot)) {
    $linked = @(Get-ChildItem -LiteralPath $rootToCheck -Recurse -Force -ErrorAction Stop | Where-Object { $_.Attributes -band [IO.FileAttributes]::ReparsePoint })
    if ($linked.Count) { throw 'Source/patch tree contains a reparse point; use an independent regular directory.' }
}
foreach ($pathToCheck in @($SourcePath,$DestinationPath,$PatchRoot,$ReportPath)) {
    $ancestor = $pathToCheck
    while ($ancestor) {
        if ((Test-Path -LiteralPath $ancestor) -and ((Get-Item -LiteralPath $ancestor -Force).Attributes -band [IO.FileAttributes]::ReparsePoint)) { throw 'Installation paths must not traverse reparse points.' }
        $ancestor = Split-Path -Parent $ancestor
    }
}
if ($SourcePath.TrimEnd('\') -eq $DestinationPath.TrimEnd('\')) {
    throw 'Source and destination must be different directories.'
}
if (Test-Path -LiteralPath $DestinationPath) {
    throw "Destination already exists; it was not changed: $DestinationPath"
}

if ($DestinationPath.StartsWith($SourcePath.TrimEnd('\') + '\', [StringComparison]::OrdinalIgnoreCase) -or
    $SourcePath.StartsWith($DestinationPath.TrimEnd('\') + '\', [StringComparison]::OrdinalIgnoreCase)) {
    throw 'Source and destination must not contain each other.'
}
Assert-PortableIntegrity -PackageRoot $packageRoot
foreach ($name in @('patch-manifest.json','build-report.json')) {
    if ((Get-Sha256 (Join-Path $PatchRoot $name)) -ne (Get-Sha256 (Join-Path $packageRoot ('patch/' + $name)))) {
        throw "Alternate patch metadata mismatch: $name"
    }
}
$manifest = Read-JsonFile -Path (Join-Path $packageRoot 'version.json')
if ($Version -and $manifest.productVersion -ne $Version) { throw 'Release package version mismatch.' }
$sourceValidation = Assert-OfficialRStudio -RStudioRoot $SourcePath -Manifest $manifest
if (Test-Path -LiteralPath (Join-Path $SourcePath 'resources/app/RSTUDIO-ZH-CN-MANIFEST.json')) { throw 'Source is already patched; choose the official original.' }
$patchManifestPath = Join-Path $PatchRoot 'patch-manifest.json'
$buildReportPath = Join-Path $PatchRoot 'build-report.json'
if (-not (Test-Path -LiteralPath $patchManifestPath -PathType Leaf) -or
    -not (Test-Path -LiteralPath $buildReportPath -PathType Leaf)) {
    throw 'The compiled locale patch has not been built.'
}
$patchManifest = Read-JsonFile -Path $patchManifestPath
$buildReport = Read-JsonFile -Path $buildReportPath
if ($buildReport.status -ne 'BUILD_PASS_REVIEW_REQUIRED' -or
    $buildReport.upstreamCommit -ne $manifest.upstream.commit -or
    [int]$buildReport.unknownEntries -ne 0) {
    throw 'Compiled patch report is not valid for this locked RStudio version.'
}

$seen = @{}
foreach ($entry in $patchManifest) {
    $relative = [string]$entry.Path
    if ($relative -notmatch '^(build-report\.json|resources/app/[^:]+)$' -or $relative -match '(^|[/\\])\.\.?([/\\]|$)|\\|\.(exe|dll|node)$' -or $seen.ContainsKey($relative)) {
        throw "Unsafe or duplicate patch entry: $relative"
    }
    $seen[$relative] = $true
    $file = Join-Path $PatchRoot $relative
    Assert-DescendantPath -Path $file -Parent $PatchRoot | Out-Null
    if (-not (Test-Path -LiteralPath $file -PathType Leaf) -or
        (Get-Sha256 $file) -ne $entry.SHA256 -or (Get-Item -LiteralPath $file).Length -ne $entry.Length) {
        throw "Patch SHA/length mismatch: $relative"
    }
}
$resourceEntries = @($patchManifest | Where-Object { ([string]$_.Path).StartsWith('resources/app/') })
if ($resourceEntries.Count -eq 0) { throw 'Patch manifest contains no RStudio resource files.' }
foreach ($entry in $resourceEntries) {
    $patchFile = Join-Path $PatchRoot ([string]$entry.Path).Replace('/', '\')
    if (-not (Test-Path -LiteralPath $patchFile -PathType Leaf)) {
        throw "Patch file is missing: $($entry.Path)"
    }
    if ((Get-Sha256 -Path $patchFile) -ne ([string]$entry.SHA256).ToUpperInvariant()) {
        throw "Patch SHA-256 mismatch: $($entry.Path)"
    }
}

if (-not $PSCmdlet.ShouldProcess($DestinationPath, 'Create candidate from verified original and apply compiled locale patch')) {
    return
}

$stage = Join-Path (Split-Path -Parent $DestinationPath) ('.rstudio-zh-cn-stage-' + [guid]::NewGuid().ToString('N'))
$createdStage = $false
try {
    New-Item -ItemType Directory -Path (Split-Path -Parent $DestinationPath) -Force | Out-Null
    $createdStage = $true
    Copy-Item -LiteralPath $SourcePath -Destination $stage -Recurse -Force
    foreach ($entry in $resourceEntries) {
        $relative = ([string]$entry.Path).Replace('/', '\')
        $patchFile = Join-Path $PatchRoot $relative
        $candidateFile = Join-Path $stage $relative
        Assert-DescendantPath -Path $candidateFile -Parent $stage | Out-Null
        New-Item -ItemType Directory -Path (Split-Path -Parent $candidateFile) -Force | Out-Null
        Copy-Item -LiteralPath $patchFile -Destination $candidateFile -Force
        if ((Get-Sha256 -Path $candidateFile) -ne ([string]$entry.SHA256).ToUpperInvariant()) {
            throw "Installed patch hash mismatch: $relative"
        }
    }

    $embeddedManifest = [ordered]@{
        project = 'rstudio-zh-cn'
        status = 'CANDIDATE_REVIEW_REQUIRED'
        generatedAt = (Get-Date).ToUniversalTime().ToString('o')
        productVersion = $sourceValidation.ProductVersion
        upstreamTag = $manifest.upstream.tag
        upstreamCommit = $manifest.upstream.commit
        locale = $manifest.locale
        patchManifestSHA256 = Get-Sha256 -Path $patchManifestPath
        patchFiles = $resourceEntries.Count
        reviewedEntries = $buildReport.reviewedEntries
        machineDraftEntries = $buildReport.machineDraftEntries
        allowedEnglishEntries = $buildReport.allowedEnglishEntries
        changedFiles = $resourceEntries
    }
    $embeddedPath = Join-Path $stage 'resources\app\RSTUDIO-ZH-CN-MANIFEST.json'
    Write-JsonFile -Path $embeddedPath -Value $embeddedManifest -Depth 10
    # Directory.Move refuses an existing destination even if it appeared since
    # preflight; Move-Item could instead nest the stage inside that directory.
    [IO.Directory]::Move($stage, $DestinationPath)
    $createdStage = $false
    try { Write-JsonFile -Path $ReportPath -Value $embeddedManifest -Depth 10 }
    catch { Write-Warning "Installation completed; external report could not be saved. Embedded manifest is present: $($_.Exception.Message)" }
    [pscustomobject]@{
        Status = 'CANDIDATE_REVIEW_REQUIRED'
        Version = $sourceValidation.ProductVersion
        Candidate = $DestinationPath
        PatchFiles = $resourceEntries.Count
        MachineDraftEntries = $buildReport.machineDraftEntries
        Report = $ReportPath
    }
} catch {
    # Only this freshly-created staging directory can be removed on failure.
    if ($createdStage -and (Test-Path -LiteralPath $stage)) {
        Assert-DescendantPath -Path $stage -Parent (Split-Path -Parent $DestinationPath) | Out-Null
        if ((Split-Path -Leaf $stage) -notmatch '^\.rstudio-zh-cn-stage-[0-9a-f]{32}$') { throw 'Invalid cleanup stage.' }
        Remove-Item -LiteralPath $stage -Recurse -Force
    }
    throw
}
}
