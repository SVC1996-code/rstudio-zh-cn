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
. (Join-Path $PSScriptRoot 'RmdTemplateContract.ps1')

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
    $expectedCommit = [string]$manifest.upstream.commit
    [string]$singleLineOutput = "$expectedCommit`trefs/tags/$($manifest.upstream.tag)"
    $actualCommit = Get-GitLsRemoteCommit -Lines $singleLineOutput
    if ($actualCommit -ne $expectedCommit -or $actualCommit.Length -ne 40) {
        throw "Expected full 40-character commit '$expectedCommit', got '$actualCommit'."
    }
    Add-Result 'git ls-remote single-line parsing' $true "$actualCommit ($($actualCommit.Length) characters)"
} catch { Add-Result 'git ls-remote single-line parsing' $false $_.Exception.Message }

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
$rmdContract = $null
$rmdActual = $null
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
    $contractPath = Join-Path $translationRoot 'rmd-template-i18n-contract.json'
    $rmdContract = Read-JsonFile -Path $contractPath
    if ([int]$rmdContract.schemaVersion -ne 1) { throw 'R Markdown template contract must use schemaVersion 1.' }
    if ($rmdContract.upstream.productVersion -ne $manifest.productVersion -or
        $rmdContract.upstream.commit -ne $manifest.upstream.commit) {
        throw 'R Markdown template contract upstream identity does not match version.json.'
    }

    $templateRelative = [string]$rmdContract.sourceFiles.templateData
    $categoryRelative = [string]$rmdContract.sourceFiles.categoryFallback
    foreach ($relative in @($templateRelative, $categoryRelative)) {
        if ([IO.Path]::IsPathRooted($relative) -or $relative -match '(^|/)\.\.(/|$)') {
            throw "Unsafe R Markdown template contract source path: $relative"
        }
    }
    $templatePath = Join-Path $SourceRoot $templateRelative.Replace('/', '\')
    $categoryPath = Join-Path $SourceRoot $categoryRelative.Replace('/', '\')
    foreach ($path in @($templatePath, $categoryPath)) {
        Assert-DescendantPath -Path $path -Parent $SourceRoot | Out-Null
        if (-not (Test-Path -LiteralPath $path -PathType Leaf)) { throw "Contract source file missing: $path" }
    }
    $templateText = if ($effectiveSource.ContainsKey($templateRelative)) {
        [string]$effectiveSource[$templateRelative]
    } else {
        [IO.File]::ReadAllText($templatePath, [Text.Encoding]::UTF8)
    }
    $categoryText = if ($effectiveSource.ContainsKey($categoryRelative)) {
        [string]$effectiveSource[$categoryRelative]
    } else {
        [IO.File]::ReadAllText($categoryPath, [Text.Encoding]::UTF8)
    }
    $rmdActual = Get-RmdTemplateContractData `
        -TemplateSourceText $templateText -TemplateSourceFile $templateRelative `
        -CategoryFallbackSourceText $categoryText -CategoryFallbackSourceFile $categoryRelative

    $actualStats = $rmdActual.statistics
    $expectedStats = $rmdContract.statistics
    foreach ($field in @(
        'formatDefinitions', 'optionDefinitions', 'explicitCategoryDefinitions',
        'uniqueExplicitDisplayStrings', 'categoryContextsIncludingSynthetic'
    )) {
        if ([int]$actualStats.$field -ne [int]$expectedStats.$field) {
            throw "R Markdown template contract count changed for ${field}: expected $($expectedStats.$field), actual $($actualStats.$field)."
        }
    }
    if ([int]$actualStats.formatDefinitions -ne 8 -or
        [int]$actualStats.optionDefinitions -ne 45 -or
        [int]$actualStats.explicitCategoryDefinitions -ne 23 -or
        [int]$actualStats.uniqueExplicitDisplayStrings -ne 42) {
        throw 'Locked D-29 source counts differ from the reviewed 8/45/23/42 baseline.'
    }
    $categories = @($rmdActual.displayContexts | Where-Object fieldType -eq 'category')
    if (@($categories.rawCategory | Sort-Object -Unique) -join '|' -cne 'Advanced|Figures|General') {
        throw "R Markdown category contract must contain Advanced, Figures and synthetic General."
    }

    $diagnostics = @(Compare-RmdDisplayContract `
        -ActualContexts @($rmdActual.displayContexts) `
        -ExpectedContexts @($rmdContract.displayContexts))
    if ($diagnostics.Count) {
        throw (($diagnostics | ForEach-Object {
            "$($_.diagnosticCode):$($_.fieldType):$($_.templateName):$($_.formatName):$($_.optionName):$($_.optionFormat):$($_.rawCategory):'$($_.oldFallbackEnglish)'->'$($_.newFallbackEnglish)'"
        }) -join '; ')
    }
    Add-Result 'R Markdown template display i18n coverage' $true `
        "formats=$($actualStats.formatDefinitions); options=$($actualStats.optionDefinitions); explicitCategories=$($actualStats.explicitCategoryDefinitions); uniqueStrings=$($actualStats.uniqueExplicitDisplayStrings); categories=Advanced,Figures,General"
} catch { Add-Result 'R Markdown template display i18n coverage' $false $_.Exception.Message }

try {
    if ($null -eq $rmdActual -or $null -eq $rmdContract) { throw 'R Markdown template contract was not loaded.' }
    $fixtures = Test-RmdContractDiagnosticFixtures `
        -ActualContexts @($rmdActual.displayContexts) `
        -ExpectedContexts @($rmdContract.displayContexts) `
        -SourceFile ([string]$rmdContract.sourceFiles.templateData)
    $codes = @(
        $fixtures.Missing.diagnosticCode,
        $fixtures.Changed.diagnosticCode,
        $fixtures.Stale.diagnosticCode,
        $fixtures.Ambiguous.diagnosticCode
    )
    Add-Result 'R Markdown template contract diagnostic fixtures' $true ($codes -join ',')
} catch { Add-Result 'R Markdown template contract diagnostic fixtures' $false $_.Exception.Message }

try {
    if ($null -eq $rmdActual -or $null -eq $rmdContract) { throw 'R Markdown template contract was not loaded.' }
    $actualCanonical = ConvertTo-RmdCanonicalJson -Value $rmdActual.internalSnapshot
    $expectedCanonical = ConvertTo-RmdCanonicalJson -Value $rmdContract.internalSnapshot
    $actualFingerprint = Get-RmdTextSha256 -Text $actualCanonical
    if ($actualCanonical -cne $expectedCanonical) {
        throw "R Markdown template internal field snapshot changed (actual fingerprint $actualFingerprint)."
    }
    if ($actualFingerprint -cne [string]$rmdContract.internalFingerprintSha256) {
        throw "R Markdown template internal fingerprint mismatch: expected $($rmdContract.internalFingerprintSha256), actual $actualFingerprint."
    }
    $optionListCount = 0
    foreach ($template in @($rmdContract.internalSnapshot.templates)) {
        foreach ($option in @($template.template_options)) {
            if ($null -ne $option.PSObject.Properties['option_list']) { $optionListCount++ }
        }
    }
    if ($optionListCount -eq 0) { throw 'Internal snapshot does not protect any option_list values.' }
    Add-Result 'R Markdown template internal field integrity' $true `
        "sha256=$actualFingerprint; optionLists=$optionListCount; display fields excluded"
} catch { Add-Result 'R Markdown template internal field integrity' $false $_.Exception.Message }

try {
    $registryPath = Join-Path $translationRoot 'source-additions.json'
    $registry = Read-JsonFile -Path $registryPath
    if ([int]$registry.schemaVersion -ne 1) { throw 'source-additions.json must use schemaVersion 1.' }
    if ($registry.upstream.productVersion -ne $manifest.productVersion -or
        $registry.upstream.commit -ne $manifest.upstream.commit) {
        throw 'Source addition registry upstream identity does not match version.json.'
    }
    if ([bool]$registry.policy.unregisteredJavaSourceAdditionsAllowed -or
        [bool]$registry.policy.upstreamJavaOverridesAllowed) {
        throw 'Source addition registry must reject unregistered additions and upstream Java overrides.'
    }
    $requiredAdditionFields = @(
        'path', 'purpose', 'rationale', 'upstreamVersion',
        'participatesInGwtBuild', 'maintainedByProject'
    )
    if ((@($registry.policy.requiredEntryFields) -join '|') -cne ($requiredAdditionFields -join '|')) {
        throw 'Source addition registry policy has an unexpected required-field contract.'
    }
    $registered = [Collections.Generic.Dictionary[string,object]]::new([StringComparer]::OrdinalIgnoreCase)
    foreach ($addition in @($registry.additions)) {
        foreach ($field in $requiredAdditionFields) {
            if ($addition.PSObject.Properties.Name -notcontains $field) { throw "Source addition missing field '$field'." }
        }
        $relative = [string]$addition.path
        if ([IO.Path]::IsPathRooted($relative) -or $relative -match '(^|/)\.\.(/|$)' -or
            -not $relative.StartsWith('src/gwt/src/', [StringComparison]::Ordinal) -or
            -not $relative.EndsWith('.java', [StringComparison]::OrdinalIgnoreCase)) {
            throw "Unsafe or non-Java source addition path: $relative"
        }
        if ($registered.ContainsKey($relative)) { throw "Duplicate source addition registration: $relative" }
        if ([string]::IsNullOrWhiteSpace([string]$addition.purpose)) { throw "Source addition purpose is empty: $relative" }
        if ([string]::IsNullOrWhiteSpace([string]$addition.rationale)) { throw "Source addition rationale is empty: $relative" }
        if ([string]$addition.upstreamVersion -ne $manifest.productVersion) { throw "Source addition version mismatch: $relative" }
        if ($addition.participatesInGwtBuild -isnot [bool] -or
            $addition.maintainedByProject -isnot [bool] -or
            -not $addition.participatesInGwtBuild -or -not $addition.maintainedByProject) {
            throw "Source addition must be a project-maintained GWT build input: $relative"
        }
        $overlayFile = Join-Path $overlayRoot $relative.Replace('/', '\')
        $upstreamFile = Join-Path $SourceRoot $relative.Replace('/', '\')
        Assert-DescendantPath -Path $overlayFile -Parent $overlayRoot | Out-Null
        Assert-DescendantPath -Path $upstreamFile -Parent $SourceRoot | Out-Null
        if (-not (Test-Path -LiteralPath $overlayFile -PathType Leaf)) { throw "Registered source addition is missing: $relative" }
        if (Test-Path -LiteralPath $upstreamFile -PathType Leaf) {
            throw "Registered source addition shadows an upstream file; use an exact source patch instead: $relative"
        }
        $registered[$relative] = $addition
    }
    $actualAdditions = [Collections.Generic.List[string]]::new()
    foreach ($file in Get-ChildItem -LiteralPath $overlayRoot -Recurse -File -Filter '*.java') {
        $relative = $file.FullName.Substring($overlayRoot.Length).TrimStart('\').Replace('\', '/')
        $upstreamFile = Join-Path $SourceRoot $relative.Replace('/', '\')
        if (Test-Path -LiteralPath $upstreamFile -PathType Leaf) {
            throw "Java overlay shadows an upstream source file outside source-patches.json: $relative"
        }
        $actualAdditions.Add($relative)
        if (-not $registered.ContainsKey($relative)) { throw "Unregistered Java source addition overlay: $relative" }
    }
    $stale = @($registered.Keys | Where-Object { $_ -notin $actualAdditions })
    if ($stale.Count) { throw "Stale source addition registrations: $($stale -join ', ')" }
    Add-Result 'Source addition overlay registry' $true "registered=$($registered.Count); actual=$($actualAdditions.Count)"
} catch { Add-Result 'Source addition overlay registry' $false $_.Exception.Message }

try {
    if ($null -eq $rmdContract) { throw 'R Markdown template contract was not loaded.' }
    $resolverRelative = 'src/gwt/src/org/rstudio/studio/client/rmarkdown/ui/RmdTemplateDisplayNames.java'
    $resolverPath = Join-Path $overlayRoot $resolverRelative.Replace('/', '\')
    if (-not (Test-Path -LiteralPath $resolverPath -PathType Leaf)) {
        throw "R Markdown display resolver is missing: $resolverRelative"
    }
    $resolverText = [IO.File]::ReadAllText($resolverPath, [Text.Encoding]::UTF8)
    $resolverResult = Test-RmdDisplayResolverContract `
        -ContractContexts @($rmdContract.displayContexts) `
        -ResolverSourceText $resolverText

    $newDialogRelative = 'src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/ui/NewRMarkdownDialog.java'
    $optionsWidgetRelative = 'src/gwt/src/org/rstudio/studio/client/rmarkdown/ui/RmdTemplateOptionsWidget.java'
    foreach ($relative in @($newDialogRelative, $optionsWidgetRelative)) {
        if (-not $effectiveSource.ContainsKey($relative)) {
            throw "Effective patched source was not captured for resolver display path: $relative"
        }
    }
    $newDialogText = [string]$effectiveSource[$newDialogRelative]
    $optionsWidgetText = [string]$effectiveSource[$optionsWidgetRelative]
    if ($newDialogText -notmatch 'RmdTemplateDisplayNames\.formatLabel\s*\(\s*currentTemplate_\.getName\(\)\s*,\s*format\.getName\(\)\s*,\s*format\.getUiName\(\)\s*\)') {
        throw 'NewRMarkdownDialog format display does not use the shared resolver with stable internal identity.'
    }
    if ($optionsWidgetText -notmatch 'RmdTemplateDisplayNames\.formatLabel\s*\(\s*template_\.getName\(\)\s*,\s*format\.getName\(\)\s*,\s*format\.getUiName\(\)\s*\)\s*,\s*format\.getName\(\)') {
        throw 'RmdTemplateOptionsWidget format list does not preserve format_name as the ListBox value.'
    }
    if ($optionsWidgetText -notmatch 'tabs_\.put\s*\(\s*category\s*,\s*panel\s*\)' -or
        $optionsWidgetText -match 'tabs_\.put\s*\(\s*RmdTemplateDisplayNames') {
        throw 'RmdTemplateOptionsWidget category grouping no longer uses the raw category token.'
    }
    if ($optionsWidgetText -notmatch 'new Label\s*\(\s*RmdTemplateDisplayNames\.categoryLabel\s*\(\s*category\s*,\s*category\s*\)\s*\)') {
        throw 'RmdTemplateOptionsWidget visible category tab does not use the shared resolver.'
    }
    Add-Result 'R Markdown template resolver alignment and fallback' $true `
        "mappings=$($resolverResult.Mappings); formats=$($resolverResult.Formats); categories=$($resolverResult.Categories); fallbackFixtures=$($resolverResult.FallbackFixtures); internal values preserved"
} catch { Add-Result 'R Markdown template resolver alignment and fallback' $false $_.Exception.Message }

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
