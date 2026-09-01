[CmdletBinding()]
param(
    [string]$Version = '2026.08.1+195',
    [string]$WorkspaceRoot,
    [string]$PathConfig,
    [Parameter(Mandatory)][string]$RStudioRoot,
    [Parameter(Mandatory)][ValidateSet('en', 'fr', 'zh_CN')][string]$Locale,
    [Parameter(Mandatory)][string]$Name,
    [int[]]$SampleSeconds = @(5, 15, 30, 60),
    [int64]$AbortPrivateBytes = 1GB,
    [ValidateRange(100, 5000)][int]$PollMilliseconds = 250,
    [switch]$UseIsolatedDataHome,
    [string]$RRoot,
    [string]$LibraryPath,
    [string]$ReportDirectory
)

. (Join-Path $PSScriptRoot 'RStudioZhCn.Common.ps1')

$paths = Get-RStudioZhCnPathConfiguration -Version $Version -WorkspaceRoot $WorkspaceRoot -PathConfig $PathConfig
if (-not $RRoot) { $RRoot = $paths.RRoot }
if (-not $LibraryPath) { $LibraryPath = $paths.RLibraryRoot }
if (-not $ReportDirectory) { $ReportDirectory = $paths.InstallerVersionRoot }
$RStudioRoot = [IO.Path]::GetFullPath($RStudioRoot)
Assert-DescendantPath -Path $RStudioRoot -Parent $paths.RStudioRoot | Out-Null
Assert-DescendantPath -Path $RRoot -Parent $paths.RRoot -AllowParent | Out-Null
Assert-DescendantPath -Path $LibraryPath -Parent $paths.RLibraryRoot -AllowParent | Out-Null
Assert-DescendantPath -Path $ReportDirectory -Parent $paths.InstallersRoot | Out-Null
$exe = Join-Path $RStudioRoot 'rstudio.exe'
if (-not (Test-Path -LiteralPath $exe -PathType Leaf)) { throw "rstudio.exe missing: $exe" }
$profileBase = Join-Path $paths.BuildRoot 'review-profiles'
$profileRoot = Join-Path $profileBase $Name
Assert-DescendantPath -Path $profileRoot -Parent $profileBase | Out-Null
$configRoot = Join-Path $profileRoot 'config'
$dataRoot = Join-Path $profileRoot 'data'
$electronRoot = Join-Path $profileRoot 'electron'
New-Item -ItemType Directory -Path $configRoot, $dataRoot, $electronRoot, $ReportDirectory -Force | Out-Null
Write-JsonFile -Path (Join-Path $configRoot 'rstudio-prefs.json') -Value ([ordered]@{
    ui_language = $Locale
})

$saved = @{
    RSTUDIO_CONFIG_HOME = $env:RSTUDIO_CONFIG_HOME
    RSTUDIO_DATA_HOME = $env:RSTUDIO_DATA_HOME
    RSTUDIO_WHICH_R = $env:RSTUDIO_WHICH_R
    R_LIBS_USER = $env:R_LIBS_USER
}
$samples = [Collections.Generic.List[object]]::new()
try {
    $env:RSTUDIO_CONFIG_HOME = $configRoot
    if ($UseIsolatedDataHome) {
        $env:RSTUDIO_DATA_HOME = $dataRoot
    } else {
        Remove-Item Env:RSTUDIO_DATA_HOME -ErrorAction SilentlyContinue
    }
    $env:RSTUDIO_WHICH_R = Join-Path $RRoot 'bin\R.exe'
    $env:R_LIBS_USER = $LibraryPath.Replace('\', '/')
    $process = Start-Process -FilePath $exe -ArgumentList @("--user-data-dir=$electronRoot") -WindowStyle Hidden -PassThru
    $started = Get-Date
    $targetSeconds = @($SampleSeconds | Sort-Object -Unique)
    $maximumSecond = ($targetSeconds | Measure-Object -Maximum).Maximum
    $nextSampleIndex = 0
    $abortReason = $null
    while (((Get-Date) - $started).TotalSeconds -lt $maximumSecond) {
        Start-Sleep -Milliseconds $PollMilliseconds
        $processes = @(Get-Process -Name 'rstudio','rsession*' -ErrorAction SilentlyContinue | Where-Object {
            try { $_.Path -and $_.Path.StartsWith($RStudioRoot, [StringComparison]::OrdinalIgnoreCase) } catch { $false }
        })
        $privateBytes = [int64](($processes | Measure-Object -Property PrivateMemorySize64 -Sum).Sum)
        $elapsedSeconds = ((Get-Date) - $started).TotalSeconds
        if ($privateBytes -ge $AbortPrivateBytes) {
            $abortReason = "Private memory reached $privateBytes bytes, exceeding the $AbortPrivateBytes-byte safety limit."
        }
        if ($processes.Count -eq 0 -and $elapsedSeconds -ge 5) {
            $abortReason = 'All candidate processes exited before the final sample.'
        }
        while ($nextSampleIndex -lt $targetSeconds.Count -and $elapsedSeconds -ge $targetSeconds[$nextSampleIndex]) {
            $mainWindowTitle = ($processes | Where-Object { $_.MainWindowHandle -ne 0 } | Select-Object -First 1).MainWindowTitle
            $rsessionCount = @($processes | Where-Object { $_.ProcessName -like 'rsession*' }).Count
            $samples.Add([pscustomobject]@{
                Seconds = $targetSeconds[$nextSampleIndex]
                ObservedAtSeconds = [math]::Round($elapsedSeconds, 3)
                Processes = $processes.Count
                RSessionProcesses = $rsessionCount
                MainWindowTitle = $mainWindowTitle
                WorkingSetBytes = [int64](($processes | Measure-Object -Property WorkingSet64 -Sum).Sum)
                PrivateBytes = $privateBytes
                Responding = @($processes | Where-Object { -not $_.Responding }).Count -eq 0
            })
            $nextSampleIndex++
        }
        if ($abortReason) { break }
    }
    $peakPrivate = if ($samples.Count) { ($samples | Measure-Object -Property PrivateBytes -Maximum).Maximum } else { 0 }
    $last = if ($samples.Count) { $samples[$samples.Count - 1] } else { $null }
    $first = if ($samples.Count) { $samples[0] } else { $null }
    $passed = -not $abortReason -and
        $samples.Count -eq $targetSeconds.Count -and
        @($samples | Where-Object {
            $_.Processes -eq 0 -or
            $_.RSessionProcesses -eq 0 -or
            -not $_.Responding -or
            $_.MainWindowTitle -match '(?i)error starting r|startup failure|fatal error'
        }).Count -eq 0 -and
        $peakPrivate -lt $AbortPrivateBytes -and
        [int64]$last.PrivateBytes -lt ([int64]$first.PrivateBytes * 4 + 512MB)
    $report = [ordered]@{
        status = if ($passed) { 'PASS' } else { 'FAIL' }
        name = $Name
        locale = $Locale
        root = $RStudioRoot
        startedAt = $started.ToUniversalTime().ToString('o')
        abortReason = $abortReason
        abortPrivateBytes = $AbortPrivateBytes
        pollMilliseconds = $PollMilliseconds
        peakPrivateBytes = $peakPrivate
        samples = $samples
    }
    Write-JsonFile -Path (Join-Path $ReportDirectory ("memory-$Name.json")) -Value $report
} finally {
    $targets = @(Get-Process -Name 'rstudio','rsession*' -ErrorAction SilentlyContinue | Where-Object {
        try { $_.Path -and $_.Path.StartsWith($RStudioRoot, [StringComparison]::OrdinalIgnoreCase) } catch { $false }
    })
    foreach ($target in $targets) { [void]$target.CloseMainWindow() }
    Start-Sleep -Seconds 3
    $remaining = @(Get-Process -Name 'rstudio','rsession*' -ErrorAction SilentlyContinue | Where-Object {
        try { $_.Path -and $_.Path.StartsWith($RStudioRoot, [StringComparison]::OrdinalIgnoreCase) } catch { $false }
    })
    if ($remaining.Count) { $remaining | Stop-Process -Force }
    foreach ($key in $saved.Keys) {
        if ($null -eq $saved[$key]) {
            Remove-Item -Path "Env:$key" -ErrorAction SilentlyContinue
        } else {
            Set-Item -Path "Env:$key" -Value $saved[$key]
        }
    }
}

[pscustomobject]@{
    Status = $report.status
    Name = $Name
    Locale = $Locale
    PeakPrivateMB = [math]::Round([double]$report.peakPrivateBytes / 1MB, 1)
    Report = Join-Path $ReportDirectory ("memory-$Name.json")
}
if ($report.status -ne 'PASS') { exit 1 }
