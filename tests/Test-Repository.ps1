[CmdletBinding()]
param(
    [string]$Version = '2026.08.1+195',
    [string]$WorkspaceRoot,
    [string]$PathConfig,
    [string]$SourceRoot,
    [int64]$MaximumRepositoryFileBytes = 5MB
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
. (Join-Path $projectRoot 'src\RStudioZhCn.Common.ps1')

$paths = Get-RStudioZhCnPathConfiguration -Version $Version -WorkspaceRoot $WorkspaceRoot -PathConfig $PathConfig
if (-not $SourceRoot) { $SourceRoot = $paths.UpstreamSourceRoot }
$SourceRoot = [IO.Path]::GetFullPath($SourceRoot)
Assert-DescendantPath -Path $SourceRoot -Parent $paths.UpstreamRoot | Out-Null

$translationRoot = Get-VersionDirectory -Version $Version
$overlayRoot = Join-Path $translationRoot 'upstream'
$manifest = Get-VersionManifest -Version $Version
$failures = [Collections.Generic.List[string]]::new()
$checks = [Collections.Generic.List[object]]::new()

function Add-Result {
    param([string]$Name, [bool]$Passed, [string]$Details)
    $checks.Add([pscustomobject]@{ Name = $Name; Passed = $Passed; Details = $Details })
    if (-not $Passed) { $failures.Add("${Name}: $Details") }
}

function Get-MarkupNames {
    param([AllowEmptyString()][string]$Value)
    $knownTags = @(
        'a', 'abbr', 'b', 'blockquote', 'br', 'button', 'code', 'col', 'dd', 'div', 'dl', 'dt',
        'em', 'fieldset', 'form', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'hr', 'i', 'img', 'input',
        'label', 'li', 'link', 'ol', 'option', 'p', 'pre', 'select', 'small', 'span', 'strong',
        'sub', 'sup', 'table', 'tbody', 'td', 'textarea', 'tfoot', 'th', 'thead', 'tr', 'u', 'ul'
    )
    @([regex]::Matches($Value, '<\s*/?\s*([A-Za-z][A-Za-z0-9:-]*)\b[^>]*>') |
        ForEach-Object { $_.Groups[1].Value.ToLowerInvariant() } |
        Where-Object { $_ -in $knownTags } | Sort-Object -Unique)
}

function Assert-BalancedMarkup {
    param([string]$Context, [AllowEmptyString()][string]$Value)
    $voidTags = @('area', 'base', 'br', 'col', 'embed', 'hr', 'img', 'input', 'link', 'meta', 'param', 'source', 'track', 'wbr')
    foreach ($name in Get-MarkupNames $Value) {
        if ($name -in $voidTags) { continue }
        $open = [regex]::Matches($Value, "<\s*$name\b[^>]*>", 'IgnoreCase').Count
        $close = [regex]::Matches($Value, "<\s*/\s*$name\s*>", 'IgnoreCase').Count
        $selfClosing = [regex]::Matches($Value, "<\s*$name\b[^>]*/\s*>", 'IgnoreCase').Count
        if (($open - $selfClosing) -ne $close) { throw "Unbalanced HTML tag <$name>: $Context" }
    }
}

function Assert-DisplayStructure {
    param([string]$Context, [AllowEmptyString()][string]$English, [AllowEmptyString()][string]$Chinese)
    Assert-PlaceholderParity -English $English -Chinese $Chinese -Context $Context
    Assert-BalancedMarkup -Context "$Context (English)" -Value $English
    Assert-BalancedMarkup -Context "$Context (Chinese)" -Value $Chinese
    $englishTags = @(Get-MarkupNames $English)
    $unexpectedTags = @(Get-MarkupNames $Chinese | Where-Object { $_ -notin $englishTags })
    if ($unexpectedTags.Count) {
        throw "Unexpected HTML tag in translation: $Context ($($unexpectedTags -join ', '))"
    }
    foreach ($character in @("`n", "`r", "`t")) {
        $left = @($English.ToCharArray() | Where-Object { $_ -eq $character }).Count
        $right = @($Chinese.ToCharArray() | Where-Object { $_ -eq $character }).Count
        if ($left -gt 0 -and $right -eq 0) { throw "Required escape structure missing: $Context" }
    }
}

try {
    $requiredVersionFields = @(
        'productVersion', 'directoryVersion', 'locale', 'upstream', 'toolchain', 'criticalFiles'
    )
    $missing = @($requiredVersionFields | Where-Object { $manifest.PSObject.Properties.Name -notcontains $_ })
    if ($missing.Count) { throw "Missing version fields: $($missing -join ', ')" }
    foreach ($field in @('repository', 'tag', 'commit', 'sourceArchiveUrl', 'sourceArchiveSHA256')) {
        if ($manifest.upstream.PSObject.Properties.Name -notcontains $field -or -not $manifest.upstream.$field) {
            throw "Missing upstream field: $field"
        }
    }
    if ($manifest.locale.gwt -ne 'zh_CN' -or $manifest.locale.electron -ne 'zh-CN') {
        throw 'Locale identifiers must remain zh_CN (GWT) and zh-CN (Electron).'
    }
    Add-Result 'version.json fields' $true "$($manifest.productVersion); $($manifest.upstream.commit)"
} catch { Add-Result 'version.json fields' $false $_.Exception.Message }

try {
    $lockPath = Join-Path $SourceRoot '.rstudio-upstream-lock.json'
    $lock = Read-JsonFile -Path $lockPath
    if ($lock.commit -ne $manifest.upstream.commit -or $lock.sourceArchiveSHA256 -ne $manifest.upstream.sourceArchiveSHA256) {
        throw 'Verified upstream source lock does not match version.json.'
    }
    Add-Result 'verified upstream source' $true $SourceRoot
} catch { Add-Result 'verified upstream source' $false $_.Exception.Message }

try {
    $strictUtf8 = New-Object Text.UTF8Encoding($false, $true)
    $textExtensions = @('.ps1', '.psd1', '.json', '.properties', '.md', '.yml', '.yaml', '.gitignore', '.gitattributes')
    $files = @(Get-ChildItem -LiteralPath $projectRoot -Recurse -File -Force | Where-Object { $_.FullName -notmatch '\\.git\\' })
    $forbiddenParts = '(?i)[\\/](node_modules|build|work|tools|smoke-test|release-staging|candidates)[\\/]'
    $forbiddenExtensions = @('.exe', '.dll', '.msi', '.node', '.dmp')
    $bad = [Collections.Generic.List[string]]::new()
    foreach ($file in $files) {
        $relative = $file.FullName.Substring($projectRoot.Length).TrimStart('\').Replace('\', '/')
        if ($file.Length -gt $MaximumRepositoryFileBytes) { $bad.Add("oversize:$relative") }
        if ($file.FullName -match $forbiddenParts) { $bad.Add("forbidden-path:$relative") }
        if ($forbiddenExtensions -contains $file.Extension.ToLowerInvariant()) { $bad.Add("binary:$relative") }
        if ($file.Name -match '\.(?:cache|nocache)\.(?:js|css|png)$') { $bad.Add("compiled-cache:$relative") }
        if ($textExtensions -contains $file.Extension.ToLowerInvariant() -or $file.Name -in @('.gitignore', '.gitattributes', 'LICENSE', 'NOTICE', 'SOURCE')) {
            $text = [IO.File]::ReadAllText($file.FullName, $strictUtf8)
            if ($text.Contains([char]0xFFFD)) { $bad.Add("replacement-character:$relative") }
        }
    }
    if ($bad.Count) { throw ($bad -join '; ') }
    Add-Result 'repository size, binary and UTF-8 policy' $true "files=$($files.Count)"
} catch { Add-Result 'repository size, binary and UTF-8 policy' $false $_.Exception.Message }

try {
    $jsonFiles = @(Get-ChildItem -LiteralPath $projectRoot -Recurse -File -Filter '*.json' | Where-Object { $_.FullName -notmatch '\\.git\\' })
    foreach ($file in $jsonFiles) { Read-JsonFile -Path $file.FullName | Out-Null }
    Add-Result 'JSON syntax' $true "files=$($jsonFiles.Count)"
} catch { Add-Result 'JSON syntax' $false $_.Exception.Message }

try {
    $parseErrors = [Collections.Generic.List[string]]::new()
    $tokens = $null
    foreach ($file in Get-ChildItem -LiteralPath $projectRoot -Recurse -File -Filter '*.ps1') {
        $errors = $null
        [Management.Automation.Language.Parser]::ParseFile($file.FullName, [ref]$tokens, [ref]$errors) | Out-Null
        foreach ($error in @($errors)) { $parseErrors.Add("$($file.Name):$($error.Message)") }
    }
    if ($parseErrors.Count) { throw ($parseErrors -join '; ') }
    Add-Result 'PowerShell syntax' $true 'PASS'
} catch { Add-Result 'PowerShell syntax' $false $_.Exception.Message }

$effectiveSource = @{}
try {
    $sourcePatches = @(Read-JsonFile -Path (Join-Path $translationRoot 'source-patches.json'))
    if ($sourcePatches.Count -eq 0) { throw 'source-patches.json is empty.' }
    foreach ($patch in $sourcePatches) {
        foreach ($field in @('path', 'find', 'replace', 'expectedOccurrences')) {
            if ($patch.PSObject.Properties.Name -notcontains $field) { throw "Source patch missing field '$field'." }
        }
        $relative = [string]$patch.path
        if ([IO.Path]::IsPathRooted($relative) -or $relative -match '(^|/)\.\.(/|$)') {
            throw "Unsafe source patch path: $relative"
        }
        if ([int]$patch.expectedOccurrences -lt 1) { throw "Invalid expectedOccurrences: $relative" }
        $sourceFile = Join-Path $SourceRoot $relative.Replace('/', '\')
        Assert-DescendantPath -Path $sourceFile -Parent $SourceRoot | Out-Null
        if (-not (Test-Path -LiteralPath $sourceFile -PathType Leaf)) { throw "Source patch target missing: $relative" }
        if (-not $effectiveSource.ContainsKey($relative)) {
            $effectiveSource[$relative] = [IO.File]::ReadAllText($sourceFile, [Text.Encoding]::UTF8)
        }
        $text = [string]$effectiveSource[$relative]
        $newline = if ($text.Contains("`r`n")) { "`r`n" } else { "`n" }
        $find = ([string]$patch.find) -replace "`r`n|`r|`n", $newline
        $replace = ([string]$patch.replace) -replace "`r`n|`r|`n", $newline
        $occurrences = ($text.Length - $text.Replace($find, '').Length) / [Math]::Max(1, $find.Length)
        if ([int]$occurrences -ne [int]$patch.expectedOccurrences) {
            throw "Source patch occurrence mismatch for ${relative}: expected $($patch.expectedOccurrences), found $occurrences"
        }
        $effectiveSource[$relative] = $text.Replace($find, $replace)
    }
    Add-Result 'source patch format and matches' $true "rules=$($sourcePatches.Count)"
} catch { Add-Result 'source patch format and matches' $false $_.Exception.Message }

try {
    $propertyFiles = @(Get-ChildItem -LiteralPath (Join-Path $overlayRoot 'src\gwt\src') -Filter '*_zh_CN.properties' -File -Recurse)
    if ($propertyFiles.Count -eq 0) { throw 'No zh_CN properties files found.' }
    $pairCount = 0
    $keyCount = 0
    foreach ($chineseFile in $propertyFiles) {
        $relative = $chineseFile.FullName.Substring($overlayRoot.Length).TrimStart('\')
        $englishRelative = $relative -replace '_zh_CN\.properties$', '_en.properties'
        $englishForward = $englishRelative.Replace('\', '/')
        $englishPath = Join-Path $SourceRoot $englishRelative
        $temporaryPath = $null
        try {
            if ($effectiveSource.ContainsKey($englishForward)) {
                $temporaryPath = [IO.Path]::GetTempFileName()
                [IO.File]::WriteAllText($temporaryPath, [string]$effectiveSource[$englishForward], [Text.UTF8Encoding]::new($false))
                $englishPath = $temporaryPath
            }
            $result = Test-PropertiesPair -EnglishPath $englishPath -ChinesePath $chineseFile.FullName -AllowEnglishValues
            $englishValues = ConvertFrom-JavaProperties -Path $englishPath
            $chineseValues = ConvertFrom-JavaProperties -Path $chineseFile.FullName
            foreach ($key in $englishValues.Keys) {
                Assert-DisplayStructure -Context "$relative::$key" -English ([string]$englishValues[$key]) -Chinese ([string]$chineseValues[$key])
            }
            $pairCount++
            $keyCount += $result.Keys
        } finally {
            if ($temporaryPath -and (Test-Path -LiteralPath $temporaryPath)) { Remove-Item -LiteralPath $temporaryPath -Force }
        }
    }
    Add-Result 'GWT locale key and display structure parity' $true "files=$pairCount; keys=$keyCount"
} catch { Add-Result 'GWT locale key and display structure parity' $false $_.Exception.Message }

try {
    $electronEnglishPath = Join-Path $SourceRoot 'src\node\desktop\src\assets\locales\en.json'
    $electronChinesePath = Join-Path $overlayRoot 'src\node\desktop\src\assets\locales\zh-CN.json'
    $result = Test-JsonLocalePair -EnglishPath $electronEnglishPath -ChinesePath $electronChinesePath -AllowEnglishValues
    $englishMap = Get-JsonLeafMap -Object (Read-JsonFile -Path $electronEnglishPath)
    $chineseMap = Get-JsonLeafMap -Object (Read-JsonFile -Path $electronChinesePath)
    foreach ($key in $englishMap.Keys) {
        Assert-DisplayStructure -Context "Electron::$key" -English ([string]$englishMap[$key]) -Chinese ([string]$chineseMap[$key])
    }
    Add-Result 'Electron locale key and display structure parity' $true "keys=$($result.Keys)"
} catch { Add-Result 'Electron locale key and display structure parity' $false $_.Exception.Message }

try {
    $provenance = Read-JsonFile -Path (Join-Path $translationRoot 'translation-provenance.json')
    $allowedStatuses = @('translated', 'reviewed', 'allowed-english', 'needs-review', 'missing')
    if ([int]$provenance.schemaVersion -ne 2) { throw 'translation-provenance.json must use schemaVersion 2.' }
    $recordList = @($provenance.records)
    $duplicateContexts = @($recordList | Group-Object context | Where-Object Count -gt 1)
    if ($duplicateContexts.Count) { throw "Duplicate provenance contexts: $($duplicateContexts.Name -join ', ')" }
    foreach ($record in $recordList) {
        if ([string]$record.status -notin $allowedStatuses) { throw "Invalid provenance status: $($record.context)" }
        if ([string]$record.status -in @('reviewed', 'allowed-english')) {
            if (-not $record.reviewSource -or -not $record.reviewedAt) {
                throw "Reviewed decision lacks source or timestamp: $($record.context)"
            }
        }
    }
    foreach ($status in $allowedStatuses) {
        $actual = @($recordList | Where-Object status -eq $status).Count
        if ([int]$provenance.counts.$status -ne $actual) { throw "Provenance count mismatch: $status" }
    }
    $expectedReleaseReady = ([int]$provenance.counts.translated + [int]$provenance.counts.'needs-review' + [int]$provenance.counts.missing) -eq 0
    if ([bool]$provenance.releaseReady -ne $expectedReleaseReady) { throw 'releaseReady is inconsistent with provenance states.' }
    Add-Result 'translation provenance state model' $true "entries=$($recordList.Count); releaseReady=$($provenance.releaseReady)"
} catch { Add-Result 'translation provenance state model' $false $_.Exception.Message }

try {
    $legacyNames = @(
        'dynamic-ui.zh-CN.js', 'tutorial-page.zh-CN.js', 'gwt.json', 'overrides.json',
        'options.json', 'options-more.json', 'options-assistant-tooltips.json',
        'options-dialogs-command-palette.json', 'electron.en-reference.json', 'electron.zh-CN.json',
        'allowlist.json', 'translation.schema.json'
    )
    $legacy = @(Get-ChildItem -LiteralPath $projectRoot -Recurse -File | Where-Object { $legacyNames -contains $_.Name })
    if ($legacy.Count) { throw "Legacy build inputs remain: $($legacy.FullName -join ', ')" }
    Add-Result 'legacy inputs absent' $true 'PASS'
} catch { Add-Result 'legacy inputs absent' $false $_.Exception.Message }

try {
    $credentialPatterns = @(
        'ghp_[A-Za-z0-9]{20,}', 'github_pat_[A-Za-z0-9_]{20,}',
        'sk-[A-Za-z0-9_-]{20,}', 'AKIA[0-9A-Z]{16}',
        '-----BEGIN (?:RSA |OPENSSH |EC )?PRIVATE KEY-----',
        'Bearer\s+[A-Za-z0-9._-]{20,}'
    )
    $hits = [Collections.Generic.List[string]]::new()
    foreach ($file in Get-ChildItem -LiteralPath $projectRoot -Recurse -File -Force | Where-Object { $_.FullName -notmatch '\\.git\\' }) {
        if ($file.Extension.ToLowerInvariant() -notin @('.ps1', '.psd1', '.json', '.properties', '.md', '.yml', '.yaml')) { continue }
        $text = [IO.File]::ReadAllText($file.FullName, [Text.Encoding]::UTF8)
        foreach ($pattern in $credentialPatterns) {
            if ($text -match $pattern) { $hits.Add($file.FullName); break }
        }
    }
    if ($hits.Count) { throw "Potential credentials: $($hits -join ', ')" }
    $scriptPaths = @(Get-ChildItem -LiteralPath (Join-Path $projectRoot 'src') -Filter '*.ps1' -File | Where-Object {
        [IO.File]::ReadAllText($_.FullName, [Text.Encoding]::UTF8) -match '[A-Za-z]:\\'
    })
    if ($scriptPaths.Count) { throw "Absolute Windows paths remain in scripts: $($scriptPaths.Name -join ', ')" }
    Add-Result 'credential and machine-path scan' $true 'PASS'
} catch { Add-Result 'credential and machine-path scan' $false $_.Exception.Message }

foreach ($check in $checks) {
    $prefix = if ($check.Passed) { '[PASS]' } else { '[FAIL]' }
    Write-Host "$prefix $($check.Name) - $($check.Details)"
}
if ($failures.Count) {
    throw "Repository validation failed:`n- $($failures -join "`n- ")"
}
Write-Host "Repository validation passed: $($checks.Count) checks."
