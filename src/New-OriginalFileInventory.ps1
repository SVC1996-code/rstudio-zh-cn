[CmdletBinding()]
param(
    [string]$Version = '2026.08.1+195',
    [string]$WorkspaceRoot,
    [string]$PathConfig,
    [Parameter(Mandatory = $true)][string]$OriginalPath,
    [string]$ReportDirectory
)

. (Join-Path $PSScriptRoot 'RStudioZhCn.Common.ps1')
$paths = Get-RStudioZhCnPathConfiguration -Version $Version -WorkspaceRoot $WorkspaceRoot -PathConfig $PathConfig
if (-not $ReportDirectory) { $ReportDirectory = $paths.InstallerVersionRoot }
$OriginalPath = Assert-DescendantPath -Path $OriginalPath -Parent $paths.RStudioRoot
$ReportDirectory = Assert-DescendantPath -Path $ReportDirectory -Parent $paths.InstallersRoot
$outputPath = Join-Path $ReportDirectory 'original-files.sha256.csv'
Export-OfficialFileInventory -OriginalPath $OriginalPath -OutputPath $outputPath -Manifest (Get-VersionManifest -Version $Version)
