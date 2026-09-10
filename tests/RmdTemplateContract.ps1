Set-StrictMode -Version Latest

function Get-RmdObjectProperty {
    param(
        [Parameter(Mandatory)]$Object,
        [Parameter(Mandatory)][string]$Name,
        $Default = $null
    )

    $property = $Object.PSObject.Properties[$Name]
    if ($null -eq $property) { return $Default }
    return $property.Value
}

function Get-RmdJsniArrayLiteral {
    param([Parameter(Mandatory)][string]$SourceText)

    $method = [regex]::Match(
        $SourceText,
        'public\s+static\s+native\s+JsArray<RmdTemplate>\s+getTemplates\s*\(\s*\)\s*/\*-\{',
        [Text.RegularExpressions.RegexOptions]::Singleline
    )
    if (-not $method.Success) { throw 'RmdTemplateData.getTemplates() JSNI method was not found.' }

    $return = [regex]::Match(
        $SourceText.Substring($method.Index + $method.Length),
        'return\s*\[',
        [Text.RegularExpressions.RegexOptions]::Singleline
    )
    if (-not $return.Success) { throw 'RmdTemplateData.getTemplates() return array was not found.' }

    $start = $method.Index + $method.Length + $return.Index + $return.Value.LastIndexOf('[')
    $depth = 0
    $quote = [char]0
    $escaped = $false
    for ($index = $start; $index -lt $SourceText.Length; $index++) {
        $character = $SourceText[$index]
        if ($quote -ne [char]0) {
            if ($escaped) {
                $escaped = $false
                continue
            }
            if ($character -eq '\') {
                $escaped = $true
                continue
            }
            if ($character -eq $quote) { $quote = [char]0 }
            continue
        }
        if ($character -eq '"' -or $character -eq "'") {
            $quote = $character
            continue
        }
        if ($character -eq '[') {
            $depth++
            continue
        }
        if ($character -eq ']') {
            $depth--
            if ($depth -eq 0) {
                return $SourceText.Substring($start, $index - $start + 1)
            }
        }
    }
    throw 'RmdTemplateData.getTemplates() return array is unbalanced.'
}

function ConvertFrom-RmdJsObjectLiteral {
    param([Parameter(Mandatory)][string]$Literal)

    # The locked source uses a strict JSON-compatible JavaScript object subset:
    # quoted strings, booleans, arrays, objects, unquoted property names and
    # optional trailing commas. Convert only the two non-JSON constructs before
    # using the PowerShell JSON parser; do not extract display text with grep.
    $json = [regex]::Replace(
        $Literal,
        '([\{\[,]\s*)([A-Za-z_][A-Za-z0-9_]*)\s*:',
        '$1"$2":'
    )
    $json = [regex]::Replace($json, ',\s*(?=[}\]])', '')
    try {
        return @($json | ConvertFrom-Json -Depth 100)
    } catch {
        throw "Unable to parse RmdTemplateData JSNI object literal: $($_.Exception.Message)"
    }
}

function Get-RmdSelectedOptionIndex {
    param(
        [Parameter(Mandatory)]$Template,
        [Parameter(Mandatory)][string]$FormatName,
        [Parameter(Mandatory)][string]$OptionName
    )

    $result = -1
    $options = @($Template.template_options)
    for ($index = 0; $index -lt $options.Count; $index++) {
        $option = $options[$index]
        if ([string]$option.option_name -cne $OptionName) { continue }
        $optionFormat = [string](Get-RmdObjectProperty -Object $option -Name 'option_format' -Default '')
        if ($optionFormat.Length -gt 0) {
            if ($optionFormat -ceq $FormatName) { return $index }
            continue
        }
        $result = $index
    }
    return $result
}

function ConvertTo-RmdInternalRecord {
    param(
        [Parameter(Mandatory)]$Object,
        [Parameter(Mandatory)][string[]]$ExcludedProperties
    )

    $record = [ordered]@{}
    foreach ($name in @($Object.PSObject.Properties.Name | Sort-Object)) {
        if ($name -in $ExcludedProperties) { continue }
        $value = $Object.$name
        if ($value -is [Array]) { $record[$name] = @($value) }
        else { $record[$name] = $value }
    }
    return [pscustomobject]$record
}

function New-RmdDisplayContext {
    param(
        [Parameter(Mandatory)][ValidateSet('format', 'option', 'category')][string]$FieldType,
        [string]$TemplateName = '',
        [string]$FormatName = '',
        [string]$OptionName = '',
        [string]$OptionFormat = '',
        [string]$RawCategory = '',
        [string[]]$RelatedFormatNames = @(),
        [Parameter(Mandatory)][AllowEmptyString()][string]$FallbackEnglish,
        [Parameter(Mandatory)][string]$SourceFile,
        [bool]$Synthetic = $false,
        [int]$Occurrences = 1
    )

    $identity = switch ($FieldType) {
        'format' { "format::$TemplateName::$FormatName" }
        'option' { "option::$TemplateName::$OptionName::$OptionFormat" }
        'category' { "category::$RawCategory" }
    }
    [pscustomobject][ordered]@{
        identity = $identity
        fieldType = $FieldType
        templateName = $TemplateName
        formatName = $FormatName
        optionName = $OptionName
        optionFormat = $OptionFormat
        rawCategory = $RawCategory
        relatedFormatNames = @($RelatedFormatNames)
        fallbackEnglish = $FallbackEnglish
        sourceFile = $SourceFile
        synthetic = $Synthetic
        occurrences = $Occurrences
    }
}

function Get-RmdTemplateContractData {
    param(
        [Parameter(Mandatory)][string]$TemplateSourceText,
        [Parameter(Mandatory)][string]$TemplateSourceFile,
        [Parameter(Mandatory)][string]$CategoryFallbackSourceText,
        [Parameter(Mandatory)][string]$CategoryFallbackSourceFile
    )

    $literal = Get-RmdJsniArrayLiteral -SourceText $TemplateSourceText
    $templates = @(ConvertFrom-RmdJsObjectLiteral -Literal $literal)
    $contexts = [Collections.Generic.List[object]]::new()
    $internalTemplates = [Collections.Generic.List[object]]::new()
    $formatDefinitions = 0
    $optionDefinitions = 0
    $explicitCategories = [Collections.Generic.List[string]]::new()

    foreach ($template in $templates) {
        $templateName = [string]$template.template_name
        $internalFormats = [Collections.Generic.List[object]]::new()
        foreach ($format in @($template.template_formats)) {
            $formatDefinitions++
            $formatName = [string]$format.format_name
            $contexts.Add((New-RmdDisplayContext -FieldType format `
                -TemplateName $templateName -FormatName $formatName `
                -FallbackEnglish ([string]$format.format_ui_name) `
                -SourceFile $TemplateSourceFile))
            $internalFormats.Add((ConvertTo-RmdInternalRecord -Object $format `
                -ExcludedProperties @('format_ui_name', 'format_notes')))
        }

        $internalOptions = [Collections.Generic.List[object]]::new()
        $options = @($template.template_options)
        for ($optionIndex = 0; $optionIndex -lt $options.Count; $optionIndex++) {
            $option = $options[$optionIndex]
            $optionDefinitions++
            $optionName = [string]$option.option_name
            $optionFormat = [string](Get-RmdObjectProperty -Object $option -Name 'option_format' -Default '')
            $relatedFormats = [Collections.Generic.List[string]]::new()
            foreach ($format in @($template.template_formats)) {
                $formatName = [string]$format.format_name
                if ($optionName -cnotin @($format.format_options)) { continue }
                if ((Get-RmdSelectedOptionIndex -Template $template -FormatName $formatName -OptionName $optionName) -eq $optionIndex) {
                    $relatedFormats.Add($formatName)
                }
            }
            $contexts.Add((New-RmdDisplayContext -FieldType option `
                -TemplateName $templateName -OptionName $optionName -OptionFormat $optionFormat `
                -RelatedFormatNames @($relatedFormats) `
                -FallbackEnglish ([string]$option.option_ui_name) `
                -SourceFile $TemplateSourceFile))
            $categoryProperty = $option.PSObject.Properties['option_category']
            if ($null -ne $categoryProperty) { $explicitCategories.Add([string]$categoryProperty.Value) }
            $internalOptions.Add((ConvertTo-RmdInternalRecord -Object $option `
                -ExcludedProperties @('option_ui_name', 'option_category')))
        }

        $internalTemplates.Add([pscustomobject][ordered]@{
            template_name = $templateName
            template_formats = @($internalFormats)
            template_options = @($internalOptions)
        })
    }

    foreach ($category in @($explicitCategories | Sort-Object -Unique)) {
        $count = @($explicitCategories | Where-Object { $_ -ceq $category }).Count
        $contexts.Add((New-RmdDisplayContext -FieldType category -RawCategory $category `
            -FallbackEnglish $category -SourceFile $TemplateSourceFile -Occurrences $count))
    }
    $categoryFallbackMatch = [regex]::Match(
        $CategoryFallbackSourceText,
        'return\s+this\.option_category\s*\|\|\s*"(?<fallback>[^"]+)"\s*;',
        [Text.RegularExpressions.RegexOptions]::Singleline
    )
    if (-not $categoryFallbackMatch.Success) {
        throw 'RmdTemplateFormatOption.getCategory() fallback was not found.'
    }
    $categoryFallback = $categoryFallbackMatch.Groups['fallback'].Value
    $contexts.Add((New-RmdDisplayContext -FieldType category -RawCategory $categoryFallback `
        -FallbackEnglish $categoryFallback -SourceFile $CategoryFallbackSourceFile -Synthetic $true))

    $explicitDisplayStrings = @(
        @($contexts | Where-Object { -not $_.synthetic } | ForEach-Object fallbackEnglish) |
            Sort-Object -Unique
    )
    [pscustomobject][ordered]@{
        statistics = [pscustomobject][ordered]@{
            formatDefinitions = $formatDefinitions
            optionDefinitions = $optionDefinitions
            explicitCategoryDefinitions = $explicitCategories.Count
            uniqueExplicitDisplayStrings = $explicitDisplayStrings.Count
            categoryContextsIncludingSynthetic = @($contexts | Where-Object fieldType -eq 'category').Count
        }
        displayContexts = @($contexts)
        internalSnapshot = [pscustomobject][ordered]@{
            templates = @($internalTemplates)
        }
    }
}

function ConvertTo-RmdCanonicalJson {
    param([Parameter(Mandatory)]$Value)
    return ($Value | ConvertTo-Json -Depth 100 -Compress)
}

function Get-RmdTextSha256 {
    param([Parameter(Mandatory)][string]$Text)
    $sha = [Security.Cryptography.SHA256]::Create()
    try {
        $bytes = [Text.Encoding]::UTF8.GetBytes($Text)
        return ([BitConverter]::ToString($sha.ComputeHash($bytes))).Replace('-', '')
    } finally {
        $sha.Dispose()
    }
}

function New-RmdDiagnostic {
    param(
        [Parameter(Mandatory)][string]$Code,
        [Parameter(Mandatory)]$Context,
        [AllowEmptyString()][string]$OldFallbackEnglish = '',
        [AllowEmptyString()][string]$NewFallbackEnglish = ''
    )

    $formatName = [string]$Context.formatName
    if (-not $formatName -and @($Context.relatedFormatNames).Count) {
        $formatName = @($Context.relatedFormatNames) -join ','
    }
    [pscustomobject][ordered]@{
        diagnosticCode = $Code
        sourceFile = [string]$Context.sourceFile
        fieldType = [string]$Context.fieldType
        templateName = [string]$Context.templateName
        formatName = $formatName
        optionName = [string]$Context.optionName
        optionFormat = [string]$Context.optionFormat
        rawCategory = [string]$Context.rawCategory
        oldFallbackEnglish = $OldFallbackEnglish
        newFallbackEnglish = $NewFallbackEnglish
    }
}

function Compare-RmdDisplayContract {
    param(
        [Parameter(Mandatory)][object[]]$ActualContexts,
        [Parameter(Mandatory)][object[]]$ExpectedContexts
    )

    $diagnostics = [Collections.Generic.List[object]]::new()
    $actualGroups = [Collections.Generic.Dictionary[string,Collections.Generic.List[object]]]::new(
        [StringComparer]::Ordinal
    )
    foreach ($context in $ActualContexts) {
        $identity = [string]$context.identity
        if (-not $actualGroups.ContainsKey($identity)) {
            $actualGroups[$identity] = [Collections.Generic.List[object]]::new()
        }
        $actualGroups[$identity].Add($context)
    }
    foreach ($group in $actualGroups.GetEnumerator()) {
        $fallbackSet = [Collections.Generic.HashSet[string]]::new([StringComparer]::Ordinal)
        foreach ($context in $group.Value) { $fallbackSet.Add([string]$context.fallbackEnglish) | Out-Null }
        $fallbacks = @($fallbackSet | Sort-Object)
        if ($fallbacks.Count -gt 1) {
            $diagnostics.Add((New-RmdDiagnostic -Code 'AMBIGUOUS_I18N_DISPLAY_NAME' `
                -Context $group.Value[0] -OldFallbackEnglish $fallbacks[0] `
                -NewFallbackEnglish ($fallbacks[1..($fallbacks.Count - 1)] -join ' | ')))
        }
    }

    $actual = [Collections.Generic.Dictionary[string,object]]::new([StringComparer]::Ordinal)
    foreach ($context in $ActualContexts) {
        if (-not $actual.ContainsKey([string]$context.identity)) { $actual[[string]$context.identity] = $context }
    }
    $expected = [Collections.Generic.Dictionary[string,object]]::new([StringComparer]::Ordinal)
    foreach ($context in $ExpectedContexts) {
        $identity = [string]$context.identity
        if ($expected.ContainsKey($identity)) {
            $diagnostics.Add((New-RmdDiagnostic -Code 'AMBIGUOUS_I18N_DISPLAY_NAME' `
                -Context $context -OldFallbackEnglish ([string]$expected[$identity].fallbackEnglish) `
                -NewFallbackEnglish ([string]$context.fallbackEnglish)))
            continue
        }
        $expected[$identity] = $context
    }

    foreach ($identity in @($actual.Keys | Sort-Object)) {
        $context = $actual[$identity]
        if (-not $expected.ContainsKey($identity)) {
            $diagnostics.Add((New-RmdDiagnostic -Code 'MISSING_I18N_DISPLAY_NAME' `
                -Context $context -NewFallbackEnglish ([string]$context.fallbackEnglish)))
            continue
        }
        $old = [string]$expected[$identity].fallbackEnglish
        $new = [string]$context.fallbackEnglish
        if ($old -cne $new) {
            $diagnostics.Add((New-RmdDiagnostic -Code 'UPSTREAM_DISPLAY_NAME_CHANGED' `
                -Context $context -OldFallbackEnglish $old -NewFallbackEnglish $new))
        }
    }
    foreach ($identity in @($expected.Keys | Sort-Object)) {
        if ($actual.ContainsKey($identity)) { continue }
        $context = $expected[$identity]
        $diagnostics.Add((New-RmdDiagnostic -Code 'STALE_I18N_DISPLAY_NAME' `
            -Context $context -OldFallbackEnglish ([string]$context.fallbackEnglish)))
    }
    return @($diagnostics)
}

function Test-RmdContractDiagnosticFixtures {
    param(
        [Parameter(Mandatory)][object[]]$ActualContexts,
        [Parameter(Mandatory)][object[]]$ExpectedContexts,
        [Parameter(Mandatory)][string]$SourceFile
    )

    $newOption = New-RmdDisplayContext -FieldType option -TemplateName 'Document' `
        -OptionName 'some_new_option' -RelatedFormatNames @('html_document') `
        -FallbackEnglish 'Some New Option' -SourceFile $SourceFile
    $missingDiagnostics = @(Compare-RmdDisplayContract `
        -ActualContexts @($ActualContexts + $newOption) -ExpectedContexts $ExpectedContexts)
    $missing = @($missingDiagnostics | Where-Object {
        $_.diagnosticCode -eq 'MISSING_I18N_DISPLAY_NAME' -and
        $_.optionName -eq 'some_new_option' -and
        $_.newFallbackEnglish -eq 'Some New Option'
    })
    if ($missing.Count -ne 1) { throw 'Missing-option fixture did not produce MISSING_I18N_DISPLAY_NAME.' }

    $changedContexts = @($ActualContexts | ForEach-Object {
        $copy = $_ | Select-Object *
        if ($copy.identity -eq 'option::Document::toc::') {
            $copy.fallbackEnglish = 'Show table of contents'
        }
        $copy
    })
    $changedDiagnostics = @(Compare-RmdDisplayContract `
        -ActualContexts $changedContexts -ExpectedContexts $ExpectedContexts)
    $changed = @($changedDiagnostics | Where-Object {
        $_.diagnosticCode -eq 'UPSTREAM_DISPLAY_NAME_CHANGED' -and
        $_.optionName -eq 'toc' -and
        $_.oldFallbackEnglish -eq 'Include table of contents' -and
        $_.newFallbackEnglish -eq 'Show table of contents'
    })
    $wrongMissing = @($changedDiagnostics | Where-Object {
        $_.diagnosticCode -eq 'MISSING_I18N_DISPLAY_NAME' -and $_.optionName -eq 'toc'
    })
    if ($changed.Count -ne 1 -or $wrongMissing.Count -ne 0) {
        throw 'Wording-change fixture did not produce only UPSTREAM_DISPLAY_NAME_CHANGED for toc.'
    }

    $staleActual = @($ActualContexts | Where-Object identity -ne 'format::Document::html_notebook')
    $staleDiagnostics = @(Compare-RmdDisplayContract `
        -ActualContexts $staleActual -ExpectedContexts $ExpectedContexts)
    if (@($staleDiagnostics | Where-Object {
        $_.diagnosticCode -eq 'STALE_I18N_DISPLAY_NAME' -and $_.formatName -eq 'html_notebook'
    }).Count -ne 1) { throw 'Removed-format fixture did not produce STALE_I18N_DISPLAY_NAME.' }

    $duplicate = ($ActualContexts | Where-Object identity -eq 'category::Advanced' | Select-Object -First 1) | Select-Object *
    $duplicate.fallbackEnglish = 'Advanced options'
    $ambiguousDiagnostics = @(Compare-RmdDisplayContract `
        -ActualContexts @($ActualContexts + $duplicate) -ExpectedContexts $ExpectedContexts)
    if (@($ambiguousDiagnostics | Where-Object {
        $_.diagnosticCode -eq 'AMBIGUOUS_I18N_DISPLAY_NAME' -and $_.rawCategory -eq 'Advanced'
    }).Count -ne 1) { throw 'Conflicting-context fixture did not produce AMBIGUOUS_I18N_DISPLAY_NAME.' }

    [pscustomobject]@{
        Missing = $missing[0]
        Changed = $changed[0]
        Stale = @($staleDiagnostics | Where-Object diagnosticCode -eq 'STALE_I18N_DISPLAY_NAME')[0]
        Ambiguous = @($ambiguousDiagnostics | Where-Object diagnosticCode -eq 'AMBIGUOUS_I18N_DISPLAY_NAME')[0]
    }
}

function Get-RmdDisplayResolverMappings {
    param([Parameter(Mandatory)][string]$ResolverSourceText)

    $mappings = [Collections.Generic.List[object]]::new()
    $formatPattern = 'addFormatLabel\s*\(\s*labels\s*,\s*"(?<template>[^"]+)"\s*,\s*"(?<format>[^"]+)"\s*,\s*constants_\.(?<key>[A-Za-z0-9_]+)\s*\(\s*\)\s*\)\s*;'
    foreach ($match in [regex]::Matches($ResolverSourceText, $formatPattern, 'Singleline')) {
        $mappings.Add([pscustomobject][ordered]@{
            identity = "format::$($match.Groups['template'].Value)::$($match.Groups['format'].Value)"
            fieldType = 'format'
            localeKey = $match.Groups['key'].Value
        })
    }

    $categoryPattern = 'addCategoryLabel\s*\(\s*labels\s*,\s*"(?<category>[^"]+)"\s*,\s*constants_\.(?<key>[A-Za-z0-9_]+)\s*\(\s*\)\s*\)\s*;'
    foreach ($match in [regex]::Matches($ResolverSourceText, $categoryPattern, 'Singleline')) {
        $mappings.Add([pscustomobject][ordered]@{
            identity = "category::$($match.Groups['category'].Value)"
            fieldType = 'category'
            localeKey = $match.Groups['key'].Value
        })
    }
    return @($mappings)
}

function Resolve-RmdDisplayLabelFixture {
    param(
        [Parameter(Mandatory)][hashtable]$Labels,
        [Parameter(Mandatory)][string]$Identity,
        [AllowEmptyString()][string]$FallbackLabel,
        [AllowEmptyString()][string]$IdentityFallback
    )

    if ($Labels.ContainsKey($Identity) -and -not [string]::IsNullOrEmpty([string]$Labels[$Identity])) {
        return [string]$Labels[$Identity]
    }
    if (-not [string]::IsNullOrEmpty($FallbackLabel)) { return $FallbackLabel }
    if (-not [string]::IsNullOrEmpty($IdentityFallback)) { return $IdentityFallback }
    return 'Unknown'
}

function Test-RmdDisplayResolverContract {
    param(
        [Parameter(Mandatory)][object[]]$ContractContexts,
        [Parameter(Mandatory)][string]$ResolverSourceText
    )

    $mappings = @(Get-RmdDisplayResolverMappings -ResolverSourceText $ResolverSourceText)
    $duplicates = @($mappings | Group-Object identity | Where-Object Count -gt 1)
    if ($duplicates.Count) {
        throw "Duplicate R Markdown resolver identities: $($duplicates.Name -join ', ')"
    }

    $expected = @($ContractContexts | Where-Object fieldType -in @('format', 'category'))
    $missing = @($expected.identity | Where-Object { $_ -notin $mappings.identity })
    $stale = @($mappings.identity | Where-Object { $_ -notin $expected.identity })
    if ($missing.Count) { throw "Contract contexts missing from resolver: $($missing -join ', ')" }
    if ($stale.Count) { throw "Resolver contexts missing from contract: $($stale -join ', ')" }
    if (@($mappings | Where-Object fieldType -eq 'format').Count -ne 8 -or
        @($mappings | Where-Object fieldType -eq 'category').Count -ne 3) {
        throw 'R Markdown resolver must contain exactly 8 format and 3 category mappings in Batch 2.'
    }
    if ($ResolverSourceText -match '\boptionLabel\s*\(') {
        throw 'Batch 2 resolver must not implement optionLabel.'
    }

    $fixtureLabels = @{ 'known' = 'Localized' }
    if ((Resolve-RmdDisplayLabelFixture -Labels $fixtureLabels -Identity 'future-format' `
            -FallbackLabel 'Some New Format' -IdentityFallback 'some_new_format') -cne 'Some New Format') {
        throw 'Unknown-format resolver fixture did not preserve the provided fallback.'
    }
    if ((Resolve-RmdDisplayLabelFixture -Labels $fixtureLabels -Identity 'future-category' `
            -FallbackLabel 'Some New Category' -IdentityFallback 'some_new_category') -cne 'Some New Category') {
        throw 'Unknown-category resolver fixture did not preserve the provided fallback.'
    }
    if ((Resolve-RmdDisplayLabelFixture -Labels $fixtureLabels -Identity 'future-format' `
            -FallbackLabel '' -IdentityFallback 'some_new_format') -cne 'some_new_format') {
        throw 'Empty-fallback resolver fixture did not preserve the internal identity fallback.'
    }

    [pscustomobject]@{
        Mappings = $mappings.Count
        Formats = @($mappings | Where-Object fieldType -eq 'format').Count
        Categories = @($mappings | Where-Object fieldType -eq 'category').Count
        FallbackFixtures = 3
    }
}
