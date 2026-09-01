[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [string]$Version = '2026.08.1+195',
    [string]$WorkspaceRoot,
    [string]$PathConfig,
    [Parameter(Mandatory = $true)][string]$BackupPath,
    [string]$DestinationPath
)

. (Join-Path $PSScriptRoot 'RStudioZhCn.Common.ps1')

$paths = Get-RStudioZhCnPathConfiguration -Version $Version -WorkspaceRoot $WorkspaceRoot -PathConfig $PathConfig
if (-not $DestinationPath) { $DestinationPath = $paths.ActiveRStudioRoot }
$BackupPath = [IO.Path]::GetFullPath($BackupPath)
$DestinationPath = [IO.Path]::GetFullPath($DestinationPath)
Assert-DescendantPath -Path $BackupPath -Parent $paths.BackupsRoot | Out-Null
Assert-DescendantPath -Path $DestinationPath -Parent $paths.RStudioRoot | Out-Null
if (-not (Test-Path -LiteralPath $BackupPath -PathType Container)) { throw "Backup not found: $BackupPath" }
if (Test-Path -LiteralPath $DestinationPath) { throw "Destination already exists. Move it aside before restore: $DestinationPath" }
if ($PSCmdlet.ShouldProcess($DestinationPath, "Restore RStudio from $BackupPath")) {
    Copy-Item -LiteralPath $BackupPath -Destination $DestinationPath -Recurse
    [pscustomobject]@{ Status='RESTORED'; Backup=$BackupPath; Destination=$DestinationPath }
}
