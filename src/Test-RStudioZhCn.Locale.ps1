[CmdletBinding()]
param(
    [string]$Version = '2026.08.1+195',
    [string]$WorkspaceRoot,
    [string]$PathConfig,
    [string]$OriginalPath,
    [string]$CandidatePath,
    [string]$SourceRoot,
    [string]$ToolsRoot,
    [string]$RRoot,
    [string]$ExpectedLibrary,
    [string]$TestDirectory,
    [ValidateSet('Pending', 'Pass', 'Fail')][string]$UiReviewResult = 'Pending',
    [string]$ReportDirectory
)

. (Join-Path $PSScriptRoot 'RStudioZhCn.Common.ps1')

$paths = Get-RStudioZhCnPathConfiguration -Version $Version -WorkspaceRoot $WorkspaceRoot -PathConfig $PathConfig
if (-not $OriginalPath) { $OriginalPath = $paths.OriginalRStudioRoot }
if (-not $CandidatePath) { $CandidatePath = $paths.CandidateRStudioRoot }
if (-not $SourceRoot) { $SourceRoot = $paths.UpstreamSourceRoot }
if (-not $ToolsRoot) { $ToolsRoot = $paths.ToolsRoot }
if (-not $RRoot) { $RRoot = $paths.RRoot }
if (-not $ExpectedLibrary) { $ExpectedLibrary = $paths.RLibraryRoot }
if (-not $ReportDirectory) { $ReportDirectory = $paths.InstallerVersionRoot }
if (-not $TestDirectory) { $TestDirectory = Join-Path $paths.BuildRoot '中文路径测试' }
Assert-DescendantPath -Path $OriginalPath -Parent $paths.RStudioRoot | Out-Null
Assert-DescendantPath -Path $CandidatePath -Parent $paths.RStudioRoot | Out-Null
Assert-DescendantPath -Path $SourceRoot -Parent $paths.UpstreamRoot | Out-Null
Assert-DescendantPath -Path $ToolsRoot -Parent $paths.ToolsRoot -AllowParent | Out-Null
Assert-DescendantPath -Path $RRoot -Parent $paths.RRoot -AllowParent | Out-Null
Assert-DescendantPath -Path $ExpectedLibrary -Parent $paths.RLibraryRoot -AllowParent | Out-Null
Assert-DescendantPath -Path $ReportDirectory -Parent $paths.InstallersRoot | Out-Null
Assert-DescendantPath -Path $TestDirectory -Parent $paths.BuildRoot | Out-Null

$checks = [Collections.Generic.List[object]]::new()
function Add-Check {
    param([string]$Name, [bool]$Passed, [string]$Details)
    $checks.Add([pscustomobject]@{ Name = $Name; Passed = $Passed; Details = $Details })
}

$manifest = Get-VersionManifest -Version $Version
$translationProvenance = Read-JsonFile -Path (Join-Path (Get-VersionDirectory -Version $Version) 'translation-provenance.json')
$patchRoot = Join-Path $ReportDirectory 'patch'
$patchManifestPath = Join-Path $patchRoot 'patch-manifest.json'
$buildReportPath = Join-Path $patchRoot 'build-report.json'

try {
    $validation = Assert-OfficialRStudio -RStudioRoot $OriginalPath -Manifest $manifest
    Add-Check '原版版本与关键文件哈希' $true $validation.ProductVersion
} catch {
    Add-Check '原版版本与关键文件哈希' $false $_.Exception.Message
}

try {
    $baselinePath = Join-Path $ReportDirectory 'original-files.sha256.csv'
    $baseline = @(Import-Csv -LiteralPath $baselinePath)
    $current = Get-RelativeFileInventory -Root $OriginalPath
    $currentMap = @{}
    foreach ($item in $current) { $currentMap[[string]$item.Path] = $item }
    $mismatches = [Collections.Generic.List[string]]::new()
    foreach ($item in $baseline) {
        if (-not $currentMap.ContainsKey([string]$item.Path) -or
            [int64]$currentMap[[string]$item.Path].Length -ne [int64]$item.Length -or
            [string]$currentMap[[string]$item.Path].SHA256 -ne [string]$item.SHA256) {
            $mismatches.Add([string]$item.Path)
            if ($mismatches.Count -ge 20) { break }
        }
    }
    $passed = $baseline.Count -eq $current.Count -and $mismatches.Count -eq 0
    Add-Check '原版完整目录保持不变' $passed "基线 $($baseline.Count) 个文件；当前 $($current.Count) 个文件；差异 $($mismatches -join ', ')"
} catch {
    Add-Check '原版完整目录保持不变' $false $_.Exception.Message
}

$patchManifest = $null
$buildReport = $null
try {
    $patchManifest = @(Read-JsonFile -Path $patchManifestPath)
    $buildReport = Read-JsonFile -Path $buildReportPath
    $badPatch = @()
    foreach ($entry in $patchManifest) {
        $file = Join-Path $patchRoot ([string]$entry.Path).Replace('/', '\')
        if (-not (Test-Path -LiteralPath $file -PathType Leaf) -or
            (Get-Sha256 -Path $file) -ne ([string]$entry.SHA256).ToUpperInvariant()) {
            $badPatch += [string]$entry.Path
        }
    }
    $passed = $buildReport.status -eq 'BUILD_PASS_REVIEW_REQUIRED' -and
        $buildReport.upstreamCommit -eq $manifest.upstream.commit -and
        [int]$buildReport.unknownEntries -eq 0 -and $badPatch.Count -eq 0
    Add-Check '构建报告与补丁 SHA-256' $passed "补丁记录 $($patchManifest.Count)；错误 $($badPatch -join ', ')"
} catch {
    Add-Check '构建报告与补丁 SHA-256' $false $_.Exception.Message
}

$candidateManifest = $null
try {
    $candidateManifestPath = Join-Path $CandidatePath 'resources\app\RSTUDIO-ZH-CN-MANIFEST.json'
    $candidateManifest = Read-JsonFile -Path $candidateManifestPath
    $passed = $candidateManifest.status -eq 'CANDIDATE_REVIEW_REQUIRED' -and
        $candidateManifest.upstreamCommit -eq $manifest.upstream.commit -and
        [int]$candidateManifest.patchFiles -gt 0
    Add-Check '候选版内嵌清单' $passed "状态=$($candidateManifest.status)；补丁文件=$($candidateManifest.patchFiles)"
} catch {
    Add-Check '候选版内嵌清单' $false $_.Exception.Message
}

try {
    $allowedChanges = @{}
    foreach ($entry in $patchManifest) {
        if (([string]$entry.Path).StartsWith('resources/app/')) {
            $allowedChanges[[string]$entry.Path] = ([string]$entry.SHA256).ToUpperInvariant()
        }
    }
    $originalInventory = Get-RelativeFileInventory -Root $OriginalPath
    $candidateInventory = Get-RelativeFileInventory -Root $CandidatePath
    $candidateMap = @{}
    foreach ($item in $candidateInventory) { $candidateMap[[string]$item.Path] = $item }
    $unexpected = [Collections.Generic.List[string]]::new()
    foreach ($item in $originalInventory) {
        if (-not $candidateMap.ContainsKey([string]$item.Path)) {
            $unexpected.Add("missing:$($item.Path)")
        } elseif ($item.SHA256 -ne $candidateMap[[string]$item.Path].SHA256 -and
            -not $allowedChanges.ContainsKey([string]$item.Path)) {
            $unexpected.Add("changed:$($item.Path)")
        }
        if ($unexpected.Count -ge 20) { break }
    }
    foreach ($path in $allowedChanges.Keys) {
        if (-not $candidateMap.ContainsKey($path) -or $candidateMap[$path].SHA256 -ne $allowedChanges[$path]) {
            $unexpected.Add("patch-mismatch:$path")
        }
    }
    $permittedNew = @($allowedChanges.Keys) + @('resources/app/RSTUDIO-ZH-CN-MANIFEST.json')
    $originalPaths = @{}
    foreach ($item in $originalInventory) { $originalPaths[[string]$item.Path] = $true }
    foreach ($item in $candidateInventory) {
        if (-not $originalPaths.ContainsKey([string]$item.Path) -and [string]$item.Path -notin $permittedNew) {
            $unexpected.Add("unexpected-new:$($item.Path)")
            if ($unexpected.Count -ge 20) { break }
        }
    }
    Add-Check '候选版仅修改登记的前端资源' ($unexpected.Count -eq 0) ($unexpected -join ', ')
} catch {
    Add-Check '候选版仅修改登记的前端资源' $false $_.Exception.Message
}

try {
    $nocachePath = Join-Path $CandidatePath 'resources\app\www\rstudio\rstudio.nocache.js'
    $nocache = [IO.File]::ReadAllText($nocachePath, [Text.Encoding]::UTF8)
    $webRoot = Split-Path -Parent $nocachePath
    $javascript = @($nocachePath) + @(Get-ChildItem -LiteralPath $webRoot -File -Filter '*.cache.js' | ForEach-Object FullName)
    $combined = [string]::Join([char]0, @($javascript | ForEach-Object {
        [IO.File]::ReadAllText($_, [Text.Encoding]::UTF8)
    }))
    $required = @('zh_CN', '简体中文', '主页', '缩放图形', '助手', '项目')
    $missing = @($required | Where-Object {
        $literal = [string]$_
        $escaped = -join @($literal.ToCharArray() | ForEach-Object {
            if ([int][char]$_ -gt 127) { '\u{0:X4}' -f [int][char]$_ } else { [string]$_ }
        })
        $doubleEscaped = $escaped.Replace('\u', '\\u')
        $combined.IndexOf($literal, [StringComparison]::Ordinal) -lt 0 -and
            $combined.IndexOf($escaped, [StringComparison]::OrdinalIgnoreCase) -lt 0 -and
            $combined.IndexOf($doubleEscaped, [StringComparison]::OrdinalIgnoreCase) -lt 0
    })
    Add-Check 'GWT 中文 locale 与关键界面词' ($missing.Count -eq 0) "缺少：$($missing -join ', ')；JS 文件=$($javascript.Count)"
} catch {
    Add-Check 'GWT 中文 locale 与关键界面词' $false $_.Exception.Message
}

try {
    $translationRoot = Get-VersionDirectory -Version $Version
    $sourcePatches = @(Read-JsonFile -Path (Join-Path $translationRoot 'source-patches.json'))
    $pairs = 0
    foreach ($english in Get-ChildItem -LiteralPath (Join-Path $sourceRoot 'src\gwt\src\org') -Filter '*_en.properties' -File -Recurse) {
        $relative = $english.FullName.Substring($sourceRoot.Length).TrimStart('\')
        $relativeForward = $relative.Replace('\', '/')
        $chinese = Join-Path (Join-Path $translationRoot 'upstream') ($relative -replace '_en\.properties$', '_zh_CN.properties')
        $effectiveEnglishPath = $english.FullName
        $temporaryEnglishPath = $null
        try {
            $matchingPatches = @($sourcePatches | Where-Object { [string]$_.path -eq $relativeForward })
            if ($matchingPatches.Count -gt 0) {
                $effectiveEnglish = [IO.File]::ReadAllText($english.FullName, [Text.Encoding]::UTF8)
                foreach ($sourcePatch in $matchingPatches) {
                    $find = [string]$sourcePatch.find
                    $replace = [string]$sourcePatch.replace
                    $occurrences = ($effectiveEnglish.Length - $effectiveEnglish.Replace($find, '').Length) / [Math]::Max(1, $find.Length)
                    if ([int]$occurrences -ne [int]$sourcePatch.expectedOccurrences) {
                        throw "Source patch occurrence mismatch while testing ${relativeForward}: expected $($sourcePatch.expectedOccurrences), found $occurrences"
                    }
                    $effectiveEnglish = $effectiveEnglish.Replace($find, $replace)
                }
                $temporaryEnglishPath = [IO.Path]::GetTempFileName()
                [IO.File]::WriteAllText($temporaryEnglishPath, $effectiveEnglish, [Text.UTF8Encoding]::new($false))
                $effectiveEnglishPath = $temporaryEnglishPath
            }
            Test-PropertiesPair -EnglishPath $effectiveEnglishPath -ChinesePath $chinese -AllowEnglishValues | Out-Null
        } finally {
            if ($temporaryEnglishPath -and (Test-Path -LiteralPath $temporaryEnglishPath)) {
                Remove-Item -LiteralPath $temporaryEnglishPath -Force
            }
        }
        $pairs++
    }
    $electronEnglish = Join-Path $sourceRoot 'src\node\desktop\src\assets\locales\en.json'
    $electronChinese = Join-Path $translationRoot 'upstream\src\node\desktop\src\assets\locales\zh-CN.json'
    Test-JsonLocalePair -EnglishPath $electronEnglish -ChinesePath $electronChinese -AllowEnglishValues | Out-Null
    Add-Check 'properties/JSON 键、占位符与引号' $true "properties=$pairs；Electron=PASS"
} catch {
    Add-Check 'properties/JSON 键、占位符与引号' $false $_.Exception.Message
}

try {
    $translationRoot = Get-VersionDirectory -Version $Version
    $invariants = @(
        'upstream\src\gwt\src\org\rstudio\studio\client\workbench\views\source\ViewsSourceConstants_zh_CN.properties',
        'upstream\src\gwt\src\org\rstudio\studio\client\workbench\views\source\editors\text\EditorsTextConstants_zh_CN.properties'
    )
    $violations = [Collections.Generic.List[string]]::new()
    foreach ($relative in $invariants) {
        $path = Join-Path $translationRoot $relative
        $values = ConvertFrom-JavaProperties -Path $path
        if ([string]$values.source -ne 'Source') {
            $violations.Add("$relative::source=$($values.source)")
        }
    }
    Add-Check '内部 Source 窗格标识保持不翻译' ($violations.Count -eq 0) ($violations -join ', ')
} catch {
    Add-Check '内部 Source 窗格标识保持不翻译' $false $_.Exception.Message
}

try {
    $translationRoot = Get-VersionDirectory -Version $Version
    $localeFiles = @(Get-ChildItem -LiteralPath (Join-Path $translationRoot 'upstream\src\gwt\src') -Filter '*_zh_CN.properties' -File -Recurse)
    $bannedPhrases = @(
        '请回答', '老年人 Posit', '被抄袭了', '开除', '(过失)',
        '大赦国际助理', '小贝', '米贝', '全球选项', '标记下',
        '减值产出', '光子视觉', '空洞视觉', '工程'
    )
    $traditionalOnly = '[檔視軟啟設選連資夾執緒預佈網儲顯開關擇]'
    $violations = [Collections.Generic.List[string]]::new()
    foreach ($file in $localeFiles) {
        $lineNumber = 0
        foreach ($line in [IO.File]::ReadLines($file.FullName, [Text.Encoding]::UTF8)) {
            $lineNumber++
            if ($line -match '[\uE000-\uF8FF]') {
                $violations.Add("$($file.Name):${lineNumber}:private-use")
            }
            foreach ($phrase in $bannedPhrases) {
                if ($line.Contains($phrase)) {
                    $violations.Add("$($file.Name):${lineNumber}:$phrase")
                }
            }
            if ($line -match $traditionalOnly) {
                $violations.Add("$($file.Name):${lineNumber}:疑似繁体字")
            }
            if ($violations.Count -ge 50) { break }
        }
        if ($violations.Count -ge 50) { break }
    }
    Add-Check '中文质量禁用词、Project 术语、乱码与繁体字' ($violations.Count -eq 0) ($violations -join ', ')
} catch {
    Add-Check '中文质量禁用词、Project 术语、乱码与繁体字' $false $_.Exception.Message
}

try {
    $electronLocale = Join-Path $CandidatePath 'resources\app\.webpack\main\assets\locales\zh-CN.json'
    $rendererLocale = Join-Path $CandidatePath 'resources\app\.webpack\renderer\assets\locales\zh-CN.json'
    $electronMain = Join-Path $CandidatePath 'resources\app\.webpack\main\index.js'
    $mainText = [IO.File]::ReadAllText($electronMain, [Text.Encoding]::UTF8)
    $locale = Read-JsonFile -Path $electronLocale
    $passed = (Get-Sha256 -Path $electronLocale) -eq (Get-Sha256 -Path $rendererLocale) -and
        $mainText.Contains('zh-CN') -and $mainText.Contains('zh_CN') -and
        $locale.contextMenu.reload -and $locale.contextMenu.inspectElement
    Add-Check 'Electron 中文 locale 注册' $passed "Reload=$($locale.contextMenu.reload)；Inspect=$($locale.contextMenu.inspectElement)"
} catch {
    Add-Check 'Electron 中文 locale 注册' $false $_.Exception.Message
}

try {
    $schema = Read-JsonFile -Path (Join-Path $CandidatePath 'resources\app\resources\schema\user-prefs-schema.json')
    $schemaText = $schema | ConvertTo-Json -Depth 30 -Compress
    Add-Check '语言偏好 schema 接受 zh_CN' ($schemaText.Contains('"zh_CN"')) 'zh_CN enum'
} catch {
    Add-Check '语言偏好 schema 接受 zh_CN' $false $_.Exception.Message
}

$oldLibrary = $env:R_LIBS_USER
try {
    $toolLock = Read-JsonFile -Path (Join-Path $ToolsRoot 'rstudio-zh-cn-toolchain.json')
    $nodeRoot = @($toolLock.tools | Where-Object { $_.name -eq 'node' } | Select-Object -First 1).root
    if (-not $nodeRoot) { throw 'Node toolchain entry is missing.' }
    $node = Join-Path ([string]$nodeRoot) 'node.exe'
    $jsFiles = @($patchManifest | Where-Object { ([string]$_.Path).EndsWith('.js') } | ForEach-Object {
        Join-Path $CandidatePath ([string]$_.Path).Replace('/', '\')
    })
    $parseErrors = @()
    foreach ($file in $jsFiles) {
        $output = & $node --check $file 2>&1
        if ($LASTEXITCODE -ne 0) { $parseErrors += "$file : $($output -join ' ')" }
    }
    Add-Check '生成 JavaScript 可解析' ($parseErrors.Count -eq 0) "文件=$($jsFiles.Count)；错误=$($parseErrors -join ' | ')"
} catch {
    Add-Check '生成 JavaScript 可解析' $false $_.Exception.Message
}

try {
    $rscript = Join-Path $RRoot 'bin\Rscript.exe'
    if (-not (Test-Path -LiteralPath $rscript -PathType Leaf)) { throw "Rscript not found: $rscript" }
    $env:R_LIBS_USER = $ExpectedLibrary.Replace('\', '/')
    $expression = "cat(R.version.string, '\n', R.version`$arch, '\n', paste(.libPaths(), collapse='|'), sep='')"
    $output = (& $rscript --vanilla -e $expression 2>&1) -join [Environment]::NewLine
    if ($LASTEXITCODE -ne 0) { throw $output }
    $expected = $ExpectedLibrary.Replace('\', '/').ToLowerInvariant()
    $passed = $output -match 'R version 4\.6\.1' -and $output -match 'x86_64' -and
        $output.Replace('\', '/').ToLowerInvariant().Contains($expected)
    Add-Check 'R 4.6.1、64 位与用户库' $passed $output
} catch {
    Add-Check 'R 4.6.1、64 位与用户库' $false $_.Exception.Message
} finally {
    $env:R_LIBS_USER = $oldLibrary
}

$oldTestDirectory = $env:RSTUDIO_ZH_CN_TEST_DIR
try {
    New-Item -ItemType Directory -Path $TestDirectory -Force | Out-Null
    $env:RSTUDIO_ZH_CN_TEST_DIR = $TestDirectory
    $rscript = Join-Path $RRoot 'bin\Rscript.exe'
    $expression = "p <- Sys.getenv('RSTUDIO_ZH_CN_TEST_DIR'); f <- file.path(p, intToUtf8(c(32534,30721,27979,35797,46,116,120,116))); value <- intToUtf8(c(20013,25991,32534,30721,27979,35797)); writeLines(value, f, useBytes=TRUE); stopifnot(identical(readLines(f, encoding='UTF-8'), value)); cat(f)"
    $output = (& $rscript --vanilla -e $expression 2>&1) -join [Environment]::NewLine
    if ($LASTEXITCODE -ne 0) { throw $output }
    $written = Join-Path $TestDirectory '编码测试.txt'
    $passed = (Test-Path -LiteralPath $written -PathType Leaf) -and
        [IO.File]::ReadAllText($written, [Text.Encoding]::UTF8).Trim() -eq '中文编码测试'
    Add-Check '中文路径与 UTF-8 读写' $passed $written
} catch {
    Add-Check '中文路径与 UTF-8 读写' $false $_.Exception.Message
} finally {
    $env:RSTUDIO_ZH_CN_TEST_DIR = $oldTestDirectory
}

Add-Check '界面逐页人工复核' ($UiReviewResult -eq 'Pass') "Result=$UiReviewResult"

$automatedFailed = @($checks | Where-Object { -not $_.Passed -and $_.Name -ne '界面逐页人工复核' })
$status = if ($automatedFailed.Count -gt 0 -or $UiReviewResult -eq 'Fail') {
    'FAIL'
} elseif ($UiReviewResult -eq 'Pass') {
    'PASS'
} else {
    'AUTOMATED_PASS_REVIEW_REQUIRED'
}
$coverage = [ordered]@{
    reviewed = if ($buildReport) { [int]$buildReport.reviewedEntries } else { 0 }
    machineDraft = if ($buildReport) { [int]$buildReport.machineDraftEntries } else { 0 }
    allowedEnglish = if ($buildReport) { [int]$buildReport.allowedEnglishEntries } else { 0 }
    unknown = if ($buildReport) { [int]$buildReport.unknownEntries } else { -1 }
    releaseReady = $status -eq 'PASS' -and [bool]$translationProvenance.releaseReady
}
$report = [ordered]@{
    generatedAt = (Get-Date).ToUniversalTime().ToString('o')
    status = $status
    version = $Version
    originalPath = $OriginalPath
    candidatePath = $CandidatePath
    coverage = $coverage
    checks = $checks
}
New-Item -ItemType Directory -Path $ReportDirectory -Force | Out-Null
$jsonPath = Join-Path $ReportDirectory 'test-report.json'
$markdownPath = Join-Path $ReportDirectory 'test-report.md'
$coveragePath = Join-Path $ReportDirectory 'coverage-report.json'
Write-JsonFile -Path $jsonPath -Value $report -Depth 10
Write-JsonFile -Path $coveragePath -Value $coverage
$markdown = @(
    '# RStudio 简体中文 locale 检查报告',
    '',
    "- 状态：**$status**",
    "- 版本：$Version",
    "- 候选目录：$CandidatePath",
    ''
)
foreach ($check in $checks) {
    $mark = if ($check.Passed) { 'PASS' } else { 'FAIL' }
    $markdown += "## [$mark] $($check.Name)"
    $markdown += ''
    $markdown += [string]$check.Details
    $markdown += ''
}
Write-Utf8File -Path $markdownPath -Text (($markdown -join [Environment]::NewLine) + [Environment]::NewLine)

[pscustomobject]@{
    Status = $status
    AutomatedFailed = $automatedFailed.Count
    Report = $jsonPath
    Coverage = $coveragePath
}
if ($status -eq 'FAIL') { exit 1 }
