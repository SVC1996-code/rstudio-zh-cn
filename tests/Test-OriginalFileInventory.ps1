[CmdletBinding()]
param()

. (Join-Path $PSScriptRoot '../src/RStudioZhCn.Common.ps1')
$project = Split-Path -Parent $PSScriptRoot
$scratch = Join-Path ([IO.Path]::GetTempPath()) ('rstudio-inventory-fixture-' + [guid]::NewGuid().ToString('N'))
function Assert-Rejected {
    param([scriptblock]$Action, [string]$Pattern)
    $message = ''
    try { & $Action | Out-Null } catch { $message = $_.Exception.Message }
    if ($message -notmatch $Pattern) { throw "Expected rejection '$Pattern'; actual '$message'" }
}
try {
    $original = Join-Path $scratch 'original'
    New-Item -ItemType Directory -Path $original -Force | Out-Null
    # A synthetic hash/version fixture, NOT an official RStudio or runtime test.
    # The production Assert-OfficialRStudio runs unmocked against this fixture manifest.
    Copy-Item -LiteralPath (Get-Process -Id $PID).Path -Destination (Join-Path $original 'rstudio.exe')
    Write-Utf8File -Path (Join-Path $original '中文.txt') -Text 'UTF-8 fixture'
    $fixtureManifest = [pscustomobject]@{
        productVersion = Get-RStudioProductVersion -RStudioRoot $original
        originalFiles = [pscustomobject]@{
            'rstudio.exe' = Get-Sha256 -Path (Join-Path $original 'rstudio.exe')
            '中文.txt' = Get-Sha256 -Path (Join-Path $original '中文.txt')
        }
    }
    $output = Join-Path $scratch 'reports/original-files.sha256.csv'
    Export-OfficialFileInventory $original $output $fixtureManifest | Out-Null
    $rows = @(Read-OriginalFileInventory $output)
    if ($rows.Count -ne 2 -or ($rows[0].PSObject.Properties.Name -join ',') -cne 'Path,Length,SHA256') { throw 'CSV fields/count failed.' }
    $text = [IO.File]::ReadAllText($output, [Text.UTF8Encoding]::new($false, $true))
    if ($text.Contains($scratch) -or $text.Contains("`r") -or -not $text.EndsWith("`n")) { throw 'Relative UTF-8/LF format failed.' }
    if (($rows.Path -join '|') -cne 'rstudio.exe|中文.txt') { throw 'Stable sort failed.' }
    foreach ($row in $rows) {
        $file = Join-Path $original $row.Path
        if ($row.SHA256 -cne (Get-Sha256 $file) -or [long]$row.Length -ne (Get-Item $file).Length) { throw 'Inventory content mismatch.' }
    }
    $second = Join-Path $scratch 'second.csv'
    Export-OfficialFileInventory $original $second $fixtureManifest | Out-Null
    if ((Get-Sha256 $second) -cne (Get-Sha256 $output)) { throw 'Output is not deterministic.' }
    Assert-Rejected { Export-OfficialFileInventory $original $output $fixtureManifest } 'already exists'
    Assert-Rejected { Export-OfficialFileInventory $original (Join-Path $original 'baseline.csv') $fixtureManifest } 'outside'
    Assert-Rejected { Read-OriginalFileInventory (Join-Path $scratch 'absent.csv') } 'Original inventory missing'
    $bad = Join-Path $scratch 'bad.csv'
    Write-Utf8File $bad 'Path,Length,SHA256'
    Assert-Rejected { Read-OriginalFileInventory $bad } 'Invalid original inventory'
    Write-Utf8File $bad ($text + (($rows[0] | ConvertTo-Csv -NoTypeInformation)[1]) + "`n")
    Assert-Rejected { Read-OriginalFileInventory $bad } 'Invalid original inventory row'
    # Candidate marker is rejected even when all official critical hashes still match.
    Write-Utf8File (Join-Path $original 'resources/app/RSTUDIO-ZH-CN-MANIFEST.json') '{}'
    Assert-Rejected { Export-OfficialFileInventory $original (Join-Path $scratch 'candidate.csv') $fixtureManifest } 'Candidate cannot'
    Remove-Item -LiteralPath (Join-Path $original 'resources/app/RSTUDIO-ZH-CN-MANIFEST.json')
    Write-Utf8File (Join-Path $original '中文.txt') 'changed'
    Assert-Rejected { Export-OfficialFileInventory $original (Join-Path $scratch 'tampered.csv') $fixtureManifest } 'SHA-256 mismatch'

    $checker = Get-Content -Raw -LiteralPath (Join-Path $project 'src/Test-RStudioZhCn.Locale.ps1')
    if (-not $checker.Contains('Read-OriginalFileInventory -Path $baselinePath') -or
        -not $checker.Contains('$baseline.Count -eq $current.Count -and $mismatches.Count -eq 0')) { throw 'Candidate checker must retain the strict full inventory comparison.' }
    $command = Get-Command (Join-Path $project 'src/New-OriginalFileInventory.ps1')
    foreach ($parameter in @('Version','WorkspaceRoot','PathConfig','OriginalPath','ReportDirectory')) {
        if (-not $command.Parameters.ContainsKey($parameter)) { throw "Missing documented parameter: $parameter" }
    }
    foreach ($doc in @('build.md','testing.md','release-checklist.md')) {
        $content = Get-Content -Raw -LiteralPath (Join-Path $project "docs/$doc")
        if (-not $content.Contains('New-OriginalFileInventory.ps1')) { throw "Inventory step missing in $doc" }
        $tokens = $null; $parseErrors = $null
        foreach ($block in [regex]::Matches($content, '(?s)```powershell\s*\r?\n(.*?)```')) {
            $ast = [Management.Automation.Language.Parser]::ParseInput($block.Groups[1].Value, [ref]$tokens, [ref]$parseErrors)
            if ($parseErrors.Count) { throw "Invalid PowerShell example in $doc" }
            foreach ($call in $ast.FindAll({ param($node) $node -is [Management.Automation.Language.CommandAst] }, $true)) {
                $name = $call.GetCommandName()
                if ($name -and $name -match '^\.\\(src|tests)\\.*\.ps1$') {
                    $entry = Get-Command (Join-Path $project $name)
                    foreach ($arg in $call.CommandElements | Where-Object { $_ -is [Management.Automation.Language.CommandParameterAst] }) {
                        if (-not $entry.Parameters.ContainsKey($arg.ParameterName)) { throw "Unknown documented parameter $name -$($arg.ParameterName)" }
                    }
                }
            }
        }
    }
    Write-Host 'Original inventory fixtures PASS: verified source, stable CSV/readback, no overwrite, missing/invalid baseline, candidate/tamper rejection, checker wiring and documented commands.'
} finally {
    if (Test-Path -LiteralPath $scratch) {
        $safeScratch = Assert-DescendantPath -Path $scratch -Parent ([IO.Path]::GetTempPath())
        if ((Split-Path -Leaf $safeScratch) -notlike 'rstudio-inventory-fixture-*') { throw 'Unexpected fixture cleanup target.' }
        Remove-Item -LiteralPath $safeScratch -Recurse -Force
    }
}
