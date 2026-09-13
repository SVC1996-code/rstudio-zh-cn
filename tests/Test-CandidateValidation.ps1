. (Join-Path $PSScriptRoot '../src/RStudioZhCn.Common.ps1')

$patch = [pscustomobject]@{ find = "a`r`nb"; replace = "a`r`nc"; expectedOccurrences = 1 }
foreach ($newline in @("`n", "`r`n")) {
    $actual = Invoke-ExactLocaleSourcePatch -Text ("a${newline}b") -Patch $patch -Context 'newline fixture'
    if ($actual -cne "a${newline}c") { throw 'Exact patch must preserve source line endings.' }
}
foreach ($text in @('absent', "a`nb a`nb")) {
    $rejected = $false
    try { Invoke-ExactLocaleSourcePatch -Text $text -Patch $patch -Context 'mismatch fixture' | Out-Null } catch { $rejected = $true }
    if (-not $rejected) { throw 'Missing or repeated patch anchors must fail.' }
}

$manager = 'ViewsSourceConstants constants_ = GWT.create(ViewsSourceConstants.class); COLUMN_PREFIX = constants_.source(); MAIN_SOURCE_NAME = COLUMN_PREFIX;'
Assert-SourcePaneIdentity -ManagerSource $manager -Locale ([ordered]@{source='Source'})
foreach ($label in @('源代码', 'source', '')) {
    $rejected = $false
    try { Assert-SourcePaneIdentity -ManagerSource $manager -Locale ([ordered]@{source=$label}) } catch { $rejected = $true }
    if (-not $rejected) { throw 'Translated, case-changed or empty internal IDs must fail.' }
}
$rejected = $false
try { Assert-SourcePaneIdentity -ManagerSource ($manager.Replace('ViewsSourceConstants', 'EditorsTextConstants')) -Locale ([ordered]@{source='Source'}) } catch { $rejected = $true }
if (-not $rejected) { throw 'Internal identity must not be read from the Run Script resource class.' }

$checker = [IO.File]::ReadAllText((Join-Path $PSScriptRoot '../src/Test-RStudioZhCn.Locale.ps1'))
if ($checker -notmatch 'Invoke-ExactLocaleSourcePatch -Text \$effectiveEnglish' -or
    $checker -notmatch 'Assert-SourcePaneIdentity -ManagerSource \$manager -Locale \$values') {
    throw 'Candidate checker must use the tested exact-match and internal-ID assertions.'
}
Write-Host 'Candidate validation fixtures PASS: LF/CRLF, exact count rejection, internal ID and resource binding.'
