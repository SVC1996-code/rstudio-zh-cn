[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [string]$Version = '2026.08.1+195',
    [string]$WorkspaceRoot,
    [string]$PathConfig,
    [string]$SourcePath,
    [string]$DestinationPath,
    [string]$PatchRoot,
    [string]$ReportPath
)

. (Join-Path $PSScriptRoot 'RStudioZhCn.Common.ps1')

$paths = Get-RStudioZhCnPathConfiguration -Version $Version -WorkspaceRoot $WorkspaceRoot -PathConfig $PathConfig
if (-not $SourcePath) { $SourcePath = $paths.OriginalRStudioRoot }
if (-not $DestinationPath) { $DestinationPath = $paths.CandidateRStudioRoot }
if (-not $PatchRoot) { $PatchRoot = Join-Path $paths.InstallerVersionRoot 'patch' }
if (-not $ReportPath) { $ReportPath = Join-Path $paths.InstallerVersionRoot 'install-manifest.json' }
$SourcePath = [IO.Path]::GetFullPath($SourcePath)
$DestinationPath = [IO.Path]::GetFullPath($DestinationPath)
$PatchRoot = [IO.Path]::GetFullPath($PatchRoot)
$ReportPath = [IO.Path]::GetFullPath($ReportPath)
Assert-DescendantPath -Path $SourcePath -Parent $paths.RStudioRoot | Out-Null
Assert-DescendantPath -Path $DestinationPath -Parent $paths.RStudioRoot | Out-Null
Assert-DescendantPath -Path $PatchRoot -Parent $paths.InstallersRoot | Out-Null
Assert-DescendantPath -Path $ReportPath -Parent $paths.InstallersRoot | Out-Null
if ($SourcePath.TrimEnd('\') -eq $DestinationPath.TrimEnd('\')) {
    throw 'Source and destination must be different directories.'
}
if (Test-Path -LiteralPath $DestinationPath) {
    throw "Destination already exists; it was not changed: $DestinationPath"
}

$manifest = Get-VersionManifest -Version $Version
$sourceValidation = Assert-OfficialRStudio -RStudioRoot $SourcePath -Manifest $manifest
$patchManifestPath = Join-Path $PatchRoot 'patch-manifest.json'
$buildReportPath = Join-Path $PatchRoot 'build-report.json'
if (-not (Test-Path -LiteralPath $patchManifestPath -PathType Leaf) -or
    -not (Test-Path -LiteralPath $buildReportPath -PathType Leaf)) {
    throw 'The compiled locale patch has not been built.'
}
$patchManifest = @(Read-JsonFile -Path $patchManifestPath)
$buildReport = Read-JsonFile -Path $buildReportPath
if ($buildReport.status -ne 'BUILD_PASS_REVIEW_REQUIRED' -or
    $buildReport.upstreamCommit -ne $manifest.upstream.commit -or
    [int]$buildReport.unknownEntries -ne 0) {
    throw 'Compiled patch report is not valid for this locked RStudio version.'
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
    Copy-Item -LiteralPath $SourcePath -Destination $stage -Recurse -Force
    $createdStage = $true
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
    Move-Item -LiteralPath $stage -Destination $DestinationPath
    $createdStage = $false
    Write-JsonFile -Path $ReportPath -Value $embeddedManifest -Depth 10
    [pscustomobject]@{
        Status = 'CANDIDATE_REVIEW_REQUIRED'
        Version = $sourceValidation.ProductVersion
        Candidate = $DestinationPath
        PatchFiles = $resourceEntries.Count
        MachineDraftEntries = $buildReport.machineDraftEntries
        Report = $ReportPath
    }
} catch {
    if ($createdStage -and (Test-Path -LiteralPath $stage -PathType Container)) {
        $failedRoot = Join-Path $paths.LegacyRoot 'failed-locale-installs'
        Assert-DescendantPath -Path $failedRoot -Parent $paths.LegacyRoot | Out-Null
        New-Item -ItemType Directory -Path $failedRoot -Force | Out-Null
        $failedDestination = Join-Path $failedRoot ((Split-Path -Leaf $stage) + '-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
        Move-Item -LiteralPath $stage -Destination $failedDestination
    }
    throw
}
