# Resource readiness only; build, runtime acceptance and release approval are separate gates.
function Get-TranslationPolicyMap {
    param([Parameter(Mandatory)]$Policy)
    if ($Policy.schemaVersion -ne 1) { throw 'Unsupported translation policy version.' }
    $map = @{}
    foreach ($entry in @($Policy.entries)) {
        if (-not $entry.context -or $map.ContainsKey([string]$entry.context) -or
            $entry.status -notin @('translated','allowed-english','needs-review') -or
            -not $entry.reason -or $entry.releaseBlocking -isnot [bool]) {
            throw 'Invalid or duplicate translation policy entry.'
        }
        $map[[string]$entry.context] = $entry
    }
    return $map
}

function Get-TranslationClassification {
    param([string]$Context, [AllowEmptyString()][string]$English,
        [AllowEmptyString()][string]$Chinese, [bool]$IsMissing, [hashtable]$PolicyMap)
    if ($IsMissing -or ([string]::IsNullOrWhiteSpace($Chinese) -and -not [string]::IsNullOrWhiteSpace($English))) {
        return [pscustomobject]@{ status='missing'; note='Required translation is missing.'; releaseBlocking=$true }
    }
    if ($PolicyMap.ContainsKey($Context)) {
        $entry = $PolicyMap[$Context]
        if ($entry.english -cne $English -or $entry.chinese -cne $Chinese) {
            throw "Stale translation policy text: $Context"
        }
        return [pscustomobject]@{status=$entry.status; note=$entry.reason; releaseBlocking=$entry.releaseBlocking}
    }
    if ([string]::IsNullOrEmpty($English) -and [string]::IsNullOrEmpty($Chinese)) {
        return [pscustomobject]@{status='allowed-english'; note='Upstream and locale both intentionally empty; no text to translate.'; releaseBlocking=$false}
    }
    if ($Chinese -match '[\u3400-\u9fff]' -and $Chinese -cne $English) {
        return [pscustomobject]@{status='translated'; note='Translation provided; no per-entry sign-off required.'; releaseBlocking=$false}
    }
    # Unknown unchanged/non-Chinese text must be triaged, not silently allowlisted.
    return [pscustomobject]@{status='needs-review'; note='Unclassified unchanged/non-Chinese text; determine intentional English or missing translation.'; releaseBlocking=$true}
}

function Test-TranslationResourceReady {
    param([object[]]$Records)
    return @($Records | Where-Object { $_.status -eq 'missing' -or $_.releaseBlocking }).Count -eq 0
}
