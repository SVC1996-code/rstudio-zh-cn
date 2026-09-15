param([hashtable]$EffectiveSource,[string]$TranslationRoot,[string]$SourceRoot)
. (Join-Path (Split-Path -Parent $PSScriptRoot) 'src/RStudioZhCn.Common.ps1')
$ErrorActionPreference='Stop'
$keyboardPath='src/gwt/src/org/rstudio/core/client/widget/ModifyKeyboardShortcutsWidget.java'
$gridPath='src/cpp/session/resources/grid/DataViewer.js'
$tablePath='src/gwt/src/org/rstudio/studio/client/dataviewer/DataTable.java'
foreach($path in @($keyboardPath,$gridPath,$tablePath)) { if(-not $EffectiveSource.ContainsKey($path)){throw "Missing display source: $path"} }
$original=[IO.File]::ReadAllText((Join-Path $SourceRoot $keyboardPath)) -replace '\r\n',"`n"
$modified=$EffectiveSource[$keyboardPath] -replace '\r\n',"`n"
$insert=@'
      // Use the existing localized menu display, never change the command ID.
      String menuLabel = command.getMenuLabel(false);
      if (!StringUtil.isNullOrEmpty(menuLabel))
         return menuLabel;
'@
$displayPatches=@(Read-JsonFile -Path (Join-Path $TranslationRoot 'source-patches.json') | Where-Object { $_.path -eq $keyboardPath -and ($_.replace -match 'shortcutCommandDisplay|shortcutScopeDisplay') })
if($displayPatches.Count -ne 4){throw 'Expected exactly four supplemental display-only widget patches'}
$restored=$modified
for($i=$displayPatches.Count-1;$i -ge 0;$i--){
    $patch=$displayPatches[$i]
    $replacement=$patch.replace -replace '\r\n',"`n"
    if(-not $restored.Contains($replacement)){throw 'Shortcut display consumer patch missing'}
    $restored=$restored.Replace($replacement,($patch.find -replace '\r\n',"`n"))
}
if(-not $restored.Contains($insert) -or $restored.Replace($insert+"`n",'') -cne $original){throw 'Shortcut change must be limited to display fallback; identity/binding/scope must remain byte-identical.'}
$shortcutLocale=ConvertFrom-JavaProperties -Path (Join-Path $TranslationRoot 'upstream/src/gwt/src/org/rstudio/core/client/CoreClientConstants_zh_CN.properties')
$mapped=[regex]::Matches($modified,'case "([^"]+)": return constants_\.(shortcut(?:Display|Scope)\w+)\(\);')
if($mapped.Count -lt 90){throw 'Expected full ordinary editor command and scope display coverage'}
foreach($entry in $mapped){
    $key=$entry.Groups[2].Value
    if(-not $shortcutLocale.Contains($key) -or $shortcutLocale[$key] -notmatch '[\u4e00-\u9fff]'){throw "Missing shortcut display translation: $key"}
}
if($modified -notmatch 'shortcutCommandDisplay\(id, command.getDisplayName\(\)\)' -or $modified -notmatch 'shortcutScopeDisplay\(object.getDisplayType\(\)\)'){throw 'Localized display must be consumed by actual shortcut rows/column'}
foreach($technical in @('Bash','Python','Julia','SQL','Stan','D3','GraphViz','Mermaid','R','C / C++','R Markdown','Sweave','VCS')){
    if($mapped | Where-Object {$_.Groups[1].Value -ceq $technical}){throw "Technical identity must fall through unchanged: $technical"}
}
$labels=@{}
$locale=Join-Path $TranslationRoot 'upstream/src/gwt/src/org/rstudio/studio/client/dataviewer/DataViewerConstants_zh_CN.properties'
foreach($line in [IO.File]::ReadAllLines($locale)) {
    if($line -match '^grid([^=]+)=(.*)$') {
        $key=$Matches[1].Substring(0,1).ToLowerInvariant()+$Matches[1].Substring(1)
        $labels[$key]=$Matches[2].Replace('\ ',' ')
        if($EffectiveSource[$tablePath] -notmatch ('DataViewerConstants::grid'+[regex]::Escape($Matches[1])+'\(\)\(\)')){throw "GWT label not consumed: $key"}
    }
}
$cmdLocale=ConvertFrom-JavaProperties -Path (Join-Path $TranslationRoot 'upstream/src/gwt/src/org/rstudio/studio/client/workbench/commands/CmdConstants_zh_CN.properties')
foreach($id in @('clearBackgroundJobs','clearCommandPaletteMru','clearKnitrCache','clearPrerenderedOutput','clearWorkspace','compileNotebook','disconnectConnection','editCodeSnippets','findInFiles','focusMainToolbar','focusConsoleOutputEnd','focusNextPane','focusPreviousPane','focusLeftSeparator','focusRightSeparator','focusCenterSeparator','focusSourceColumnSeparator','focusSidebarSeparator','freeUnusedMemory','helpSearch','loadServerHome','macPreferences')){
    $key=$id+'MenuLabel'
    if(-not $cmdLocale.Contains($key) -or $cmdLocale[$key] -notmatch '[\u4e00-\u9fff]'){throw "Missing/nonlocalized shortcut menu label: $key"}
}
$inputFile=Join-Path ([IO.Path]::GetTempPath()) ('ui-display-'+[guid]::NewGuid().ToString('N')+'.json')
try {
    Write-JsonFile -Path $inputFile -Value @{grid=$EffectiveSource[$gridPath];labels=$labels;keyboard=$modified;shortcutLabels=$shortcutLocale}
    $node=(Get-Command node -ErrorAction Stop).Source
    & $node (Join-Path $PSScriptRoot 'ui-display-fixtures.cjs') $inputFile
    if($LASTEXITCODE -ne 0){throw 'Data Viewer runtime fixtures failed'}
} finally { if(Test-Path -LiteralPath $inputFile){Remove-Item -LiteralPath $inputFile} }
Write-Host 'UI display paths PASS: localized menu fallback, identical shortcut identity/scope/bindings, GWT-to-grid messages and JS runtime fixtures.'
