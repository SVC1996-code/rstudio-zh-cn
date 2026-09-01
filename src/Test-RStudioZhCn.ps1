[CmdletBinding()]
param(
    [string]$Version = '2026.08.1+195',
    [string]$WorkspaceRoot,
    [string]$PathConfig,
    [string]$OriginalPath,
    [string]$CandidatePath,
    [string]$SourceRoot,
    [string]$ToolsRoot,
    [string]$RRoot,
    [string]$ExpectedLibrary,
    [string]$TestDirectory,
    [ValidateSet('Pending', 'Pass', 'Fail')][string]$UiReviewResult = 'Pending',
    [string]$ReportDirectory
)

. (Join-Path $PSScriptRoot 'RStudioZhCn.Common.ps1')

& (Join-Path $PSScriptRoot 'Test-RStudioZhCn.Locale.ps1') @PSBoundParameters
