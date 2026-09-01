[CmdletBinding()]
param(
    [string]$Version = '2026.08.1+195',
    [string]$WorkspaceRoot,
    [string]$PathConfig,
    [string]$SourceRoot
)

. (Join-Path $PSScriptRoot 'RStudioZhCn.Common.ps1')

$paths = Get-RStudioZhCnPathConfiguration -Version $Version -WorkspaceRoot $WorkspaceRoot -PathConfig $PathConfig
if (-not $SourceRoot) { $SourceRoot = $paths.UpstreamSourceRoot }
$SourceRoot = [IO.Path]::GetFullPath($SourceRoot)
Assert-DescendantPath -Path $SourceRoot -Parent $paths.UpstreamRoot | Out-Null

$translationRoot = Get-VersionDirectory -Version $Version
$overlayRoot = Join-Path $translationRoot 'upstream'
$gwtRoot = Join-Path $overlayRoot 'src\gwt\src'
$records = [Collections.Generic.List[object]]::new()
$sourceFiles = 0
$sourcePatches = @(Read-JsonFile -Path (Join-Path $translationRoot 'source-patches.json'))

$decisionPath = Join-Path $translationRoot 'review-decisions.json'
$decisionMap = @{}
if (Test-Path -LiteralPath $decisionPath -PathType Leaf) {
    $decisionDocument = Read-JsonFile -Path $decisionPath
    foreach ($decision in @($decisionDocument.decisions)) {
        $context = [string]$decision.context
        $status = [string]$decision.status
        $source = [string]$decision.source
        $reviewedAt = [string]$decision.reviewedAt
        if (-not $context -or $status -notin @('reviewed', 'allowed-english') -or -not $source -or -not $reviewedAt) {
            throw "Invalid review decision: $($decision | ConvertTo-Json -Compress)"
        }
        $parsedDate = [DateTimeOffset]::MinValue
        if (-not [DateTimeOffset]::TryParse($reviewedAt, [ref]$parsedDate)) {
            throw "Invalid review decision timestamp: $context"
        }
        if ($decisionMap.ContainsKey($context)) { throw "Duplicate review decision: $context" }
        $decisionMap[$context] = $decision
    }
}

function Add-ProvenanceRecord {
    param(
        [Parameter(Mandatory = $true)][string]$Context,
        [AllowEmptyString()][string]$English,
        [AllowEmptyString()][string]$Chinese,
        [bool]$IsMissing
    )

    $decision = if ($decisionMap.ContainsKey($Context)) { $decisionMap[$Context] } else { $null }
    $status = if ($decision) {
        [string]$decision.status
    } elseif ($IsMissing -or ([string]::IsNullOrEmpty($Chinese) -and -not [string]::IsNullOrEmpty($English))) {
        'missing'
    } elseif ($Chinese -ceq $English -or $Chinese -notmatch '[\u3400-\u9fff]') {
        'needs-review'
    } else {
        'translated'
    }

    $record = [ordered]@{
        context = $Context
        english = $English
        chinese = $Chinese
        status = $status
    }
    if ($decision) {
        $record.reviewSource = [string]$decision.source
        $record.reviewedAt = [string]$decision.reviewedAt
        if ($decision.PSObject.Properties.Name -contains 'note' -and $decision.note) {
            $record.reviewNote = [string]$decision.note
        }
    }
    $records.Add($record)
}

foreach ($chineseFile in Get-ChildItem -LiteralPath $gwtRoot -Filter '*_zh_CN.properties' -File -Recurse | Sort-Object FullName) {
    $relative = $chineseFile.FullName.Substring($overlayRoot.Length).TrimStart('\')
    $englishRelative = $relative -replace '_zh_CN\.properties$', '_en.properties'
    $englishFile = Join-Path $SourceRoot $englishRelative
    if (-not (Test-Path -LiteralPath $englishFile -PathType Leaf)) {
        throw "English resource is missing: $englishFile"
    }

    $englishPathForParsing = $englishFile
    $temporaryEnglishPath = $null
    $relativeForward = $englishRelative.Replace('\', '/')
    $matchingPatches = @($sourcePatches | Where-Object { [string]$_.path -eq $relativeForward })
    try {
        if ($matchingPatches.Count -gt 0) {
            $effectiveEnglish = [IO.File]::ReadAllText($englishFile, [Text.Encoding]::UTF8)
            foreach ($sourcePatch in $matchingPatches) {
                $newline = if ($effectiveEnglish.Contains("`r`n")) { "`r`n" } else { "`n" }
                $find = ([string]$sourcePatch.find) -replace "`r`n|`r|`n", $newline
                $replace = ([string]$sourcePatch.replace) -replace "`r`n|`r|`n", $newline
                $occurrences = ($effectiveEnglish.Length - $effectiveEnglish.Replace($find, '').Length) / [Math]::Max(1, $find.Length)
                if ([int]$occurrences -ne [int]$sourcePatch.expectedOccurrences) {
                    throw "Source patch occurrence mismatch in ${relativeForward}: expected $($sourcePatch.expectedOccurrences), found $occurrences"
                }
                $effectiveEnglish = $effectiveEnglish.Replace($find, $replace)
            }
            $temporaryEnglishPath = [IO.Path]::GetTempFileName()
            [IO.File]::WriteAllText($temporaryEnglishPath, $effectiveEnglish, [Text.UTF8Encoding]::new($false))
            $englishPathForParsing = $temporaryEnglishPath
        }
        $english = ConvertFrom-JavaProperties -Path $englishPathForParsing
    } finally {
        if ($temporaryEnglishPath -and (Test-Path -LiteralPath $temporaryEnglishPath)) {
            Remove-Item -LiteralPath $temporaryEnglishPath -Force
        }
    }
    $chinese = ConvertFrom-JavaProperties -Path $chineseFile.FullName
    foreach ($key in @($english.Keys + $chinese.Keys | Sort-Object -Unique)) {
        $hasEnglish = $english.Contains($key)
        $hasChinese = $chinese.Contains($key)
        $englishValue = if ($hasEnglish) { [string]$english[$key] } else { '' }
        $chineseValue = if ($hasChinese) { [string]$chinese[$key] } else { '' }
        Add-ProvenanceRecord `
            -Context ($englishRelative.Replace('\', '/') + '::' + $key) `
            -English $englishValue `
            -Chinese $chineseValue `
            -IsMissing (-not $hasEnglish -or -not $hasChinese)
    }
    $sourceFiles++
}

$electronEnglishPath = Join-Path $SourceRoot 'src\node\desktop\src\assets\locales\en.json'
$electronChinesePath = Join-Path $overlayRoot 'src\node\desktop\src\assets\locales\zh-CN.json'
$electronEnglish = Get-JsonLeafMap -Object (Read-JsonFile -Path $electronEnglishPath)
$electronChinese = Get-JsonLeafMap -Object (Read-JsonFile -Path $electronChinesePath)
foreach ($key in @($electronEnglish.Keys + $electronChinese.Keys | Sort-Object -Unique)) {
    $hasEnglish = $electronEnglish.ContainsKey($key)
    $hasChinese = $electronChinese.ContainsKey($key)
    Add-ProvenanceRecord `
        -Context ('src/node/desktop/src/assets/locales/en.json::' + $key) `
        -English $(if ($hasEnglish) { [string]$electronEnglish[$key] } else { '' }) `
        -Chinese $(if ($hasChinese) { [string]$electronChinese[$key] } else { '' }) `
        -IsMissing (-not $hasEnglish -or -not $hasChinese)
}
$sourceFiles++

$validStatuses = @('translated', 'reviewed', 'allowed-english', 'needs-review', 'missing')
$counts = [ordered]@{}
foreach ($status in $validStatuses) {
    $counts[$status] = @($records | Where-Object status -eq $status).Count
}
# Retained for compatibility with the existing RC build report schema.
$counts['machine-draft'] = 0

$provenance = [ordered]@{
    schemaVersion = 2
    sourceFiles = $sourceFiles
    entries = $records.Count
    counts = $counts
    unknown = [int]$counts.missing
    buildReady = [int]$counts.missing -eq 0
    releaseReady = ([int]$counts.translated + [int]$counts.'needs-review' + [int]$counts.missing) -eq 0
    reviewMethod = 'Statuses reviewed and allowed-english require an explicit record in review-decisions.json. Other non-missing entries remain translated or needs-review.'
    generatedAt = (Get-Date).ToUniversalTime().ToString('o')
    records = @($records)
}

$outputPath = Join-Path $translationRoot 'translation-provenance.json'
Write-JsonFile -Path $outputPath -Value $provenance -Depth 10

[pscustomobject]@{
    Path = $outputPath
    SourceFiles = $sourceFiles
    Entries = $records.Count
    Translated = $counts.translated
    Reviewed = $counts.reviewed
    AllowedEnglish = $counts.'allowed-english'
    NeedsReview = $counts.'needs-review'
    Missing = $counts.missing
    ReleaseReady = $provenance.releaseReady
}
