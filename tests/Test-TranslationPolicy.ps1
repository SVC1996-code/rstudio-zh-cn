. (Join-Path $PSScriptRoot '../src/TranslationProvenance.Policy.ps1')
$map = @{}
$translated = Get-TranslationClassification x 'Save' '保存' $false $map
if ($translated.status -ne 'translated' -or -not (Test-TranslationResourceReady @($translated))) { throw 'Translated must not require reviewed.' }
$missing = Get-TranslationClassification x 'Save' '' $false $map
if (Test-TranslationResourceReady @($missing)) { throw 'Missing must block.' }
$empty = Get-TranslationClassification x '' '' $false $map
if ($empty.status -ne 'allowed-english' -or -not (Test-TranslationResourceReady @($empty))) { throw 'Empty upstream pair is not missing.' }
$unknown = Get-TranslationClassification x 'Save' 'Save' $false $map
if (-not $unknown.releaseBlocking -or (Test-TranslationResourceReady @($unknown))) { throw 'Untriaged English must not silently pass.' }
$map.x = [pscustomobject]@{english='Save';chinese='保存';status='needs-review';reason='Context limitation';releaseBlocking=$false}
$context = Get-TranslationClassification x 'Save' '保存' $false $map
if (-not (Test-TranslationResourceReady @($context))) { throw 'Documented nonblocking uncertainty must be allowed.' }
$map.x.releaseBlocking = $true
$blocked = Get-TranslationClassification x 'Save' '保存' $false $map
if (Test-TranslationResourceReady @($blocked)) { throw 'Known unresolved issue must block even with Chinese.' }
$staleRejected = $false
try { Get-TranslationClassification x 'Save now' '保存' $false $map | Out-Null } catch { $staleRejected=$true }
if (-not $staleRejected) { throw 'Changed policy text must be re-triaged.' }
$missingKey = Get-TranslationClassification x '' '' $true @{}
if (Test-TranslationResourceReady @($missingKey)) { throw 'Absent keys cannot be allowed as empty pairs.' }
Write-Host 'Translation policy fixtures PASS: translated, missing, empty, unknown English, limitation, blocker, stale text, absent key.'
