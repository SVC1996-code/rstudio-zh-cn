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

& (Join-Path $PSScriptRoot 'Install-RStudioZhCn.Locale.ps1') @PSBoundParameters
return
