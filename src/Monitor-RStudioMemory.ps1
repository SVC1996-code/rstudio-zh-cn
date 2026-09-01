[CmdletBinding()]
param(
    [string]$Version = '2026.08.1+195',
    [string]$WorkspaceRoot,
    [string]$PathConfig,
    [string]$RStudioRoot,
    [int[]]$SampleSeconds = @(5, 15, 30, 60, 600),
    [string]$ReportPath
)

. (Join-Path $PSScriptRoot 'RStudioZhCn.Common.ps1')

$paths = Get-RStudioZhCnPathConfiguration -Version $Version -WorkspaceRoot $WorkspaceRoot -PathConfig $PathConfig
if (-not $RStudioRoot) { $RStudioRoot = $paths.CandidateRStudioRoot }
if (-not $ReportPath) { $ReportPath = Join-Path $paths.InstallerVersionRoot 'memory-candidate-visible-10min.json' }
$RStudioRoot = [IO.Path]::GetFullPath($RStudioRoot)
Assert-DescendantPath -Path $RStudioRoot -Parent $paths.RStudioRoot | Out-Null
Assert-DescendantPath -Path $ReportPath -Parent $paths.InstallersRoot | Out-Null
$samples = [Collections.Generic.List[object]]::new()
$previous = 0
foreach ($second in $SampleSeconds | Sort-Object -Unique) {
    $wait = $second - $previous
    if ($wait -gt 0) { Start-Sleep -Seconds $wait }
    $previous = $second
    $processes = @(Get-Process -Name 'rstudio','rsession*' -ErrorAction SilentlyContinue | Where-Object {
        try { $_.Path -and $_.Path.StartsWith($RStudioRoot, [StringComparison]::OrdinalIgnoreCase) } catch { $false }
    })
    $samples.Add([pscustomobject]@{
        Seconds = $second
        Processes = $processes.Count
        WorkingSetBytes = ($processes | Measure-Object -Property WorkingSet64 -Sum).Sum
        PrivateBytes = ($processes | Measure-Object -Property PrivateMemorySize64 -Sum).Sum
        Responding = @($processes | Where-Object { -not $_.Responding }).Count -eq 0
    })
    $interim = [ordered]@{
        status = if ($second -eq ($SampleSeconds | Measure-Object -Maximum).Maximum) { 'COMPLETE' } else { 'RUNNING' }
        root = $RStudioRoot
        samples = $samples
        updatedAt = (Get-Date).ToUniversalTime().ToString('o')
    }
    Write-JsonFile -Path $ReportPath -Value $interim
}

$first = $samples[0]
$last = $samples[$samples.Count - 1]
$peak = ($samples | Measure-Object -Property PrivateBytes -Maximum).Maximum
$passed = @($samples | Where-Object { $_.Processes -eq 0 -or -not $_.Responding }).Count -eq 0 -and
    $peak -lt 2GB -and [int64]$last.PrivateBytes -lt ([int64]$first.PrivateBytes * 4 + 512MB)
$final = [ordered]@{
    status = if ($passed) { 'PASS' } else { 'FAIL' }
    root = $RStudioRoot
    peakPrivateBytes = $peak
    samples = $samples
    updatedAt = (Get-Date).ToUniversalTime().ToString('o')
}
Write-JsonFile -Path $ReportPath -Value $final
if (-not $passed) { exit 1 }
