param(
    [Parameter(Mandatory)][Collections.IDictionary]$EffectiveSource,
    [Parameter(Mandatory)][string]$SourceRoot,
    [Parameter(Mandatory)][string]$TranslationRoot
)
$ErrorActionPreference = 'Stop'
$prefix = 'src/gwt/src/org/rstudio/studio/client/'
function Assert-Text([string]$Text, [string]$Expected) {
    if (-not $Text.Contains($Expected)) { throw "Display-only contract missing: $Expected" }
}
function Get-Effective([string]$Relative) {
    $path = $prefix + $Relative
    if (-not $EffectiveSource.Contains($path)) { throw "Missing patched source: $path" }
    return [string]$EffectiveSource[$path]
}
$pane = Get-Effective 'workbench/prefs/views/PaneLayoutPreferencesPane.java'
Assert-Text $pane 'label.setText(PaneConfig.getPaneDisplayLabel(UserPrefsAccessor.Panes.QUADRANTS_SOURCE));'
$prefs = [IO.File]::ReadAllText((Join-Path $SourceRoot ($prefix + 'workbench/prefs/model/UserPrefsAccessor.java')))
if ($prefs -cnotmatch 'QUADRANTS_SOURCE\s*=\s*"Source"') { throw 'Internal Source preference ID changed.' }
$paneConfig = Get-Effective 'workbench/ui/PaneConfig.java'
Assert-Text $paneConfig 'constants_.sourcePaneDisplayLabel()'
$locale = ConvertFrom-JavaProperties -Path (Join-Path $TranslationRoot ('upstream/' + $prefix + 'workbench/prefs/PrefsConstants_zh_CN.properties'))
if ($locale['sourcePaneDisplayLabel'] -cne '源代码') { throw 'Source preview display translation changed.' }
$menu = Get-Effective 'common/newdocument/TemplateMenuItem.java'
foreach ($text in @('this(templateName, templateName);', 'wrapper_.add(new InlineLabel(displayLabel));', 'name_ = templateName;', 'return name_;')) { Assert-Text $menu $text }
$dialog = Get-Effective 'workbench/views/source/editors/text/ui/NewRMarkdownDialog.java'
Assert-Text $dialog 'templateName, RmdTemplateDisplayNames.templateLabel(templateName)'
Assert-Text $dialog 'return templates_.get(idx).getName();'
Assert-Text $dialog 'currentTemplate_.getName(), format.getName(), format.getNotes())'
$options = Get-Effective 'rmarkdown/ui/RmdTemplateOptionsWidget.java'
Assert-Text $options 'template_.getName(), format.getName(), format.getNotes())'
$caption = Get-Effective 'rmarkdown/ui/RmdTemplateOptionsDialog.java'
Assert-Text $caption 'RmdTemplateDisplayNames.templateLabel(template.getName())'
$resolver = [IO.File]::ReadAllText((Join-Path $TranslationRoot ('upstream/' + $prefix + 'rmarkdown/ui/RmdTemplateDisplayNames.java')))
foreach ($text in @('return templateName;', 'return fallbackNotes;', '"Document::html_document"', '"Document::pdf_document"', '"Presentation::beamer_presentation"', '"Document::word_document"')) { Assert-Text $resolver $text }
$english = Get-Effective 'rmarkdown/RMarkdownConstants_en.properties'
$constants = Get-Effective 'rmarkdown/RMarkdownConstants.java'
$zh = ConvertFrom-JavaProperties -Path (Join-Path $TranslationRoot ('upstream/' + $prefix + 'rmarkdown/RMarkdownConstants_zh_CN.properties'))
foreach ($key in @('rmdTemplateDocumentLabel','rmdTemplatePresentationLabel','rmdHtmlAuthoringGuidance','rmdPdfTexGuidance','rmdWordPreviewGuidance')) {
    Assert-Text $resolver ("constants_." + $key + "()")
    if ($english -notmatch ("(?m)^" + $key + "=")) { throw "Missing English key $key" }
    if ($constants -notmatch ('@DefaultMessage\("[^"]+"\)\s+String ' + $key + '\(\);')) {
        throw "Missing default message for non-Chinese locale binding: $key"
    }
    if (-not $zh.Contains($key) -or [string]::IsNullOrWhiteSpace($zh[$key])) { throw "Missing Chinese key $key" }
}
$patches = @(Read-JsonFile -Path (Join-Path $TranslationRoot 'source-patches.json'))
if (@($patches | Where-Object path -match 'RmdTemplateData.java$').Count) { throw 'Do not patch RmdTemplateData to translate display text.' }
Write-Host 'Upgrade display-only paths PASS: Source identity, template identity, captions, guidance and fallback.'
