[CmdletBinding()]
param(
    [string]$Version = '2026.08.1+195',
    [string]$WorkspaceRoot,
    [string]$PathConfig,
    [string]$SourceRoot,
    [string]$BuildRoot,
    [string]$ToolsRoot,
    [string]$OriginalRStudioRoot,
    [string]$InstallerRoot,
    [string]$ResumeRunRoot,
    [switch]$SkipGwt,
    [switch]$SkipElectron
)

. (Join-Path $PSScriptRoot 'RStudioZhCn.Common.ps1')

$paths = Get-RStudioZhCnPathConfiguration -Version $Version -WorkspaceRoot $WorkspaceRoot -PathConfig $PathConfig
if (-not $SourceRoot) { $SourceRoot = $paths.UpstreamSourceRoot }
if (-not $BuildRoot) { $BuildRoot = $paths.BuildRoot }
if (-not $ToolsRoot) { $ToolsRoot = $paths.ToolsRoot }
if (-not $OriginalRStudioRoot) { $OriginalRStudioRoot = $paths.OriginalRStudioRoot }
if (-not $InstallerRoot) { $InstallerRoot = $paths.InstallerVersionRoot }
$SourceRoot = [IO.Path]::GetFullPath($SourceRoot)
$BuildRoot = [IO.Path]::GetFullPath($BuildRoot)
$ToolsRoot = [IO.Path]::GetFullPath($ToolsRoot)
$OriginalRStudioRoot = [IO.Path]::GetFullPath($OriginalRStudioRoot)
$InstallerRoot = [IO.Path]::GetFullPath($InstallerRoot)
Assert-DescendantPath -Path $SourceRoot -Parent $paths.UpstreamRoot | Out-Null
Assert-DescendantPath -Path $BuildRoot -Parent $paths.BuildRoot -AllowParent | Out-Null
Assert-DescendantPath -Path $ToolsRoot -Parent $paths.ToolsRoot -AllowParent | Out-Null
Assert-DescendantPath -Path $OriginalRStudioRoot -Parent $paths.RStudioRoot | Out-Null
Assert-DescendantPath -Path $InstallerRoot -Parent $paths.InstallersRoot | Out-Null

$manifest = Get-VersionManifest -Version $Version
Assert-OfficialRStudio -RStudioRoot $OriginalRStudioRoot -Manifest $manifest | Out-Null
$translationRoot = Join-Path (Get-VersionDirectory -Version $Version) ''
$overlayRoot = Join-Path $translationRoot 'upstream'
$patchDefinitions = Read-JsonFile -Path (Join-Path $translationRoot 'source-patches.json')
$provenance = Read-JsonFile -Path (Join-Path $translationRoot 'translation-provenance.json')
if ([int]$provenance.unknown -ne 0) {
    throw "Translation resources contain $($provenance.unknown) unknown/error entries."
}

$sourceLockPath = Join-Path $SourceRoot '.rstudio-upstream-lock.json'
if (-not (Test-Path -LiteralPath $sourceLockPath -PathType Leaf)) {
    throw "Verified upstream lock is missing: $sourceLockPath"
}
$sourceLock = Read-JsonFile -Path $sourceLockPath
if ($sourceLock.commit -ne $manifest.upstream.commit) {
    throw 'The verified upstream source does not match the version manifest.'
}
$toolLockPath = Join-Path $ToolsRoot 'rstudio-zh-cn-toolchain.json'
if (-not (Test-Path -LiteralPath $toolLockPath -PathType Leaf)) {
    throw "Portable toolchain lock is missing: $toolLockPath"
}
$toolLock = Read-JsonFile -Path $toolLockPath
$tools = @{}
foreach ($tool in $toolLock.tools) { $tools[[string]$tool.name] = [string]$tool.root }
foreach ($required in @('jdk', 'ant', 'node', 'gwt')) {
    if (-not $tools.ContainsKey($required) -or -not (Test-Path -LiteralPath $tools[$required] -PathType Container)) {
        throw "Portable tool is missing: $required"
    }
}

$isResume = -not [string]::IsNullOrWhiteSpace($ResumeRunRoot)
if ($isResume) {
    $runRoot = [IO.Path]::GetFullPath($ResumeRunRoot)
    Assert-DescendantPath -Path $runRoot -Parent $BuildRoot | Out-Null
    Assert-DescendantPath -Path $runRoot -Parent (Join-Path $BuildRoot 'runs') | Out-Null
    if (-not (Test-Path -LiteralPath $runRoot -PathType Container)) {
        throw "Resume run directory is missing: $runRoot"
    }
    $runId = Split-Path -Leaf $runRoot
} else {
    $runId = Get-Date -Format 'yyyyMMdd-HHmmss'
    $runRoot = Join-Path $BuildRoot (Join-Path 'runs' $runId)
}
$buildSource = Join-Path $runRoot 'source'
$gwtOutput = Join-Path $runRoot 'gwt-www'
$electronOutput = Join-Path $runRoot 'electron-main'
$stagePatch = Join-Path $runRoot 'patch'
New-Item -ItemType Directory -Path $runRoot, $stagePatch -Force | Out-Null

if (-not $isResume) {
    Write-Host "Copying verified upstream source to disposable build tree..."
    Copy-Item -LiteralPath $SourceRoot -Destination $buildSource -Recurse -Force
    Remove-Item -LiteralPath (Join-Path $buildSource '.rstudio-upstream-lock.json') -Force
} elseif (-not (Test-Path -LiteralPath $buildSource -PathType Container)) {
    throw "Resume source directory is missing: $buildSource"
}

function Convert-Newlines {
    param([string]$Value, [string]$Newline)
    ($Value -replace "`r`n|`r|`n", $Newline)
}

$appliedPatches = [Collections.Generic.List[object]]::new()
foreach ($definition in $patchDefinitions) {
    $target = Join-Path $buildSource ([string]$definition.path).Replace('/', '\')
    if (-not (Test-Path -LiteralPath $target -PathType Leaf)) { throw "Patch target missing: $target" }
    $text = [IO.File]::ReadAllText($target)
    $newline = if ($text.Contains("`r`n")) { "`r`n" } else { "`n" }
    $find = Convert-Newlines -Value ([string]$definition.find) -Newline $newline
    $replace = Convert-Newlines -Value ([string]$definition.replace) -Newline $newline
    $occurrences = [regex]::Matches($text, [regex]::Escape($find)).Count
    if ($isResume) {
        $replacementOccurrences = [regex]::Matches($text, [regex]::Escape($replace)).Count
        if ($replacementOccurrences -lt [int]$definition.expectedOccurrences) {
            throw "Previously applied patch is missing during resume: $($definition.path)"
        }
    } else {
        if ($occurrences -ne [int]$definition.expectedOccurrences) {
            throw "Patch occurrence mismatch for $($definition.path): expected $($definition.expectedOccurrences), found $occurrences"
        }
        $updated = $text.Replace($find, $replace)
        [IO.File]::WriteAllText($target, $updated, [Text.UTF8Encoding]::new($false))
    }
    $appliedPatches.Add([pscustomobject]@{
        Path = [string]$definition.path
        Occurrences = if ($isResume) { [int]$definition.expectedOccurrences } else { $occurrences }
        SHA256 = Get-Sha256 -Path $target
    })
}

$overlayFiles = @(Get-ChildItem -LiteralPath $overlayRoot -File -Recurse -Force)
if (-not $isResume) {
    foreach ($file in $overlayFiles) {
        $relative = $file.FullName.Substring($overlayRoot.Length).TrimStart('\')
        $destination = Join-Path $buildSource $relative
        New-Item -ItemType Directory -Path (Split-Path -Parent $destination) -Force | Out-Null
        Copy-Item -LiteralPath $file.FullName -Destination $destination -Force
    }
}

$propertiesChecks = [Collections.Generic.List[object]]::new()
$englishProperties = @(Get-ChildItem -LiteralPath (Join-Path $buildSource 'src\gwt\src\org') -Filter '*_en.properties' -File -Recurse)
foreach ($englishPath in $englishProperties) {
    $chinesePath = $englishPath.FullName -replace '_en\.properties$', '_zh_CN.properties'
    if (-not (Test-Path -LiteralPath $chinesePath -PathType Leaf)) {
        throw "Chinese properties file missing: $chinesePath"
    }
    $propertiesChecks.Add((Test-PropertiesPair -EnglishPath $englishPath.FullName -ChinesePath $chinesePath -AllowEnglishValues))
}
$electronEnglish = Join-Path $buildSource 'src\node\desktop\src\assets\locales\en.json'
$electronChinese = Join-Path $buildSource 'src\node\desktop\src\assets\locales\zh-CN.json'
$electronCheck = Test-JsonLocalePair -EnglishPath $electronEnglish -ChinesePath $electronChinese -AllowEnglishValues

$oldPath = $env:PATH
$oldJavaHome = $env:JAVA_HOME
$oldAntHome = $env:ANT_HOME
$oldToolsRoot = $env:RSTUDIO_TOOLS_ROOT
$oldCorepackHome = $env:COREPACK_HOME
$oldNpmCache = $env:npm_config_cache
try {
    $env:JAVA_HOME = $tools.jdk
    $env:ANT_HOME = $tools.ant
    $env:RSTUDIO_TOOLS_ROOT = $ToolsRoot
    $env:COREPACK_HOME = Join-Path $ToolsRoot 'corepack'
    $env:npm_config_cache = Join-Path $ToolsRoot 'npm-cache'
    $env:PATH = (@(
        (Join-Path $tools.jdk 'bin'),
        (Join-Path $tools.ant 'bin'),
        $tools.node,
        $oldPath
    ) -join ';')

    $gwtAlreadyCompiled = $isResume -and
        (Test-Path -LiteralPath (Join-Path $gwtOutput 'rstudio\rstudio.nocache.js') -PathType Leaf)
    if (-not $SkipGwt -and -not $gwtAlreadyCompiled) {
        $gwtSource = Join-Path $buildSource 'src\gwt'
        $antWrapper = Join-Path $runRoot 'gwt-locale-build.xml'
        $importPath = (Join-Path $gwtSource 'build.xml').Replace('\', '/')
        $gwtBasePath = $gwtSource.Replace('\', '/')
        Write-Utf8File -Path $antWrapper -Text @"
<?xml version="1.0" encoding="utf-8"?>
<project name="rstudio-zh-cn-locale" default="gwtc" basedir="$gwtBasePath">
  <target name="panmirror" description="Preserve the upstream Panmirror bundle"/>
  <import file="$importPath"/>
</project>
"@
        New-Item -ItemType Directory -Path $gwtOutput -Force | Out-Null
        Invoke-Checked -FilePath (Join-Path $tools.ant 'bin\ant.bat') -WorkingDirectory $gwtSource -ArgumentList @(
            '-f', $antWrapper,
            "-Dwww.dir=$($gwtOutput.Replace('\', '/'))",
            "-Dbuild.dir=$((Join-Path $runRoot 'gwt-bin').Replace('\', '/'))",
            "-Dextras.dir=$((Join-Path $runRoot 'gwt-extras').Replace('\', '/'))",
            '-Dgwt.style=OBF',
            '-Dgwt.xmx=-Xmx4096M',
            'gwtc'
        )
    }

    if (-not $SkipElectron) {
        $desktopSource = Join-Path $buildSource 'src\node\desktop'
        $officialNativeRoot = Join-Path $OriginalRStudioRoot 'resources\app\.webpack\main\native_modules'
        $sourceNativeRoot = Join-Path $desktopSource 'src\native'
        New-Item -ItemType Directory -Path $sourceNativeRoot -Force | Out-Null
        Copy-Item -LiteralPath (Join-Path $officialNativeRoot 'desktop.node') -Destination (Join-Path $sourceNativeRoot 'desktop.node') -Force
        Copy-Item -LiteralPath (Join-Path $officialNativeRoot 'dock.node') -Destination (Join-Path $sourceNativeRoot 'dock.node') -Force
        $npm = Join-Path $tools.node 'npm.cmd'
        $nodeModulesReady = $isResume -and
            (Test-Path -LiteralPath (Join-Path $desktopSource 'node_modules\webpack\package.json') -PathType Leaf)
        if (-not $nodeModulesReady) {
            $npmInstalled = $false
            for ($attempt = 1; $attempt -le 3 -and -not $npmInstalled; $attempt++) {
                try {
                    Invoke-Checked -FilePath $npm -WorkingDirectory $desktopSource -ArgumentList @(
                        'ci', '--ignore-scripts', '--no-audit', '--no-fund',
                        '--fetch-retries=5', '--fetch-retry-mintimeout=5000', '--fetch-retry-maxtimeout=60000'
                    )
                    $npmInstalled = $true
                } catch {
                    if ($attempt -ge 3) { throw }
                    Write-Warning "npm ci attempt $attempt failed; retrying from the verified npm cache."
                }
            }
        }
        $unixDgramDestination = Join-Path $desktopSource 'node_modules\unix-dgram\build\Release\unix_dgram.node'
        New-Item -ItemType Directory -Path (Split-Path -Parent $unixDgramDestination) -Force | Out-Null
        Copy-Item -LiteralPath (Join-Path $officialNativeRoot 'build\Release\unix_dgram.node') -Destination $unixDgramDestination -Force
        Invoke-Checked -FilePath $npm -WorkingDirectory $desktopSource -ArgumentList @('run', 'generate')
        New-Item -ItemType Directory -Path $electronOutput -Force | Out-Null
        $webpackRunner = Join-Path $runRoot 'webpack-main.js'
        Write-Utf8File -Path $webpackRunner -Text @'
const path = require('path');
const sourceRoot = process.argv[2];
const outputRoot = process.argv[3];
const fs = require('fs');
const forgeConfig = require(path.join(sourceRoot, 'forge.config.js'));
const webpackPluginConfig = forgeConfig.plugins.find(
  (plugin) => plugin.name === '@electron-forge/plugin-webpack',
).config;
const { WebpackPlugin } = require(path.join(
  sourceRoot,
  'node_modules',
  '@electron-forge',
  'plugin-webpack',
));

(async () => {
  const plugin = new WebpackPlugin(webpackPluginConfig);
  plugin.init(sourceRoot);
  plugin.isProd = true;
  await plugin.compileMain();
  const builtMain = path.join(sourceRoot, '.webpack', 'main', 'index.js');
  if (!fs.existsSync(builtMain)) {
    throw new Error(`Electron Forge did not produce ${builtMain}`);
  }
  fs.copyFileSync(builtMain, path.join(outputRoot, 'index.js'));
})().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
'@
        Invoke-Checked -FilePath (Join-Path $tools.node 'node.exe') -WorkingDirectory $desktopSource -ArgumentList @(
            $webpackRunner, $desktopSource, $electronOutput
        )
    }
} finally {
    $env:PATH = $oldPath
    $env:JAVA_HOME = $oldJavaHome
    $env:ANT_HOME = $oldAntHome
    $env:RSTUDIO_TOOLS_ROOT = $oldToolsRoot
    $env:COREPACK_HOME = $oldCorepackHome
    $env:npm_config_cache = $oldNpmCache
}

if (-not $SkipGwt -or (Test-Path -LiteralPath (Join-Path $gwtOutput 'rstudio\rstudio.nocache.js') -PathType Leaf)) {
    $compiledModule = Join-Path $gwtOutput 'rstudio'
    if (-not (Test-Path -LiteralPath (Join-Path $compiledModule 'rstudio.nocache.js') -PathType Leaf)) {
        throw 'GWT compiler did not produce rstudio/rstudio.nocache.js.'
    }
    $destination = Join-Path $stagePatch 'resources\app\www\rstudio'
    New-Item -ItemType Directory -Path $destination -Force | Out-Null
    Copy-Item -Path (Join-Path $compiledModule '*') -Destination $destination -Recurse -Force
}

if (-not $SkipElectron) {
    $mainIndex = Join-Path $electronOutput 'index.js'
    if (-not (Test-Path -LiteralPath $mainIndex -PathType Leaf)) {
        throw 'Electron webpack did not produce index.js.'
    }
    $mainDestination = Join-Path $stagePatch 'resources\app\.webpack\main'
    $mainLocaleDestination = Join-Path $mainDestination 'assets\locales'
    $rendererLocaleDestination = Join-Path $stagePatch 'resources\app\.webpack\renderer\assets\locales'
    New-Item -ItemType Directory -Path $mainDestination, $mainLocaleDestination, $rendererLocaleDestination -Force | Out-Null
    Copy-Item -LiteralPath $mainIndex -Destination (Join-Path $mainDestination 'index.js') -Force
    Copy-Item -LiteralPath $electronChinese -Destination (Join-Path $mainLocaleDestination 'zh-CN.json') -Force
    Copy-Item -LiteralPath $electronChinese -Destination (Join-Path $rendererLocaleDestination 'zh-CN.json') -Force
}

$schemaSource = Join-Path $buildSource 'src\cpp\session\resources\schema\user-prefs-schema.json'
$schemaDestination = Join-Path $stagePatch 'resources\app\resources\schema\user-prefs-schema.json'
New-Item -ItemType Directory -Path (Split-Path -Parent $schemaDestination) -Force | Out-Null
Copy-Item -LiteralPath $schemaSource -Destination $schemaDestination -Force

$inventory = Get-RelativeFileInventory -Root $stagePatch
$gwtPermutations = @($inventory | Where-Object { $_.Path -match '/[A-F0-9]{32}\.cache\.js$' })
$buildReport = [ordered]@{
    status = 'BUILD_PASS_REVIEW_REQUIRED'
    version = $Version
    locale = $manifest.locale
    upstreamTag = $manifest.upstream.tag
    upstreamCommit = $manifest.upstream.commit
    runId = $runId
    sourcePatches = $appliedPatches
    overlayFiles = $overlayFiles.Count
    propertiesFiles = $propertiesChecks.Count
    propertiesKeys = ($propertiesChecks | Measure-Object -Property Keys -Sum).Sum
    electronKeys = $electronCheck.Keys
    translatedEntries = $provenance.counts.translated
    reviewedEntries = $provenance.counts.reviewed
    machineDraftEntries = $provenance.counts.'machine-draft'
    allowedEnglishEntries = $provenance.counts.'allowed-english'
    needsReviewEntries = $provenance.counts.'needs-review'
    missingEntries = $provenance.counts.missing
    unknownEntries = $provenance.unknown
    provenanceReleaseReady = $provenance.releaseReady
    gwtPermutations = @($gwtPermutations | ForEach-Object { $_.Path })
    patchFiles = $inventory.Count
    patchBytes = ($inventory | Measure-Object -Property Length -Sum).Sum
    generatedAt = (Get-Date).ToUniversalTime().ToString('o')
}
Write-JsonFile -Path (Join-Path $stagePatch 'build-report.json') -Value $buildReport
$inventory = Get-RelativeFileInventory -Root $stagePatch
Write-JsonFile -Path (Join-Path $stagePatch 'patch-manifest.json') -Value $inventory

New-Item -ItemType Directory -Path $InstallerRoot -Force | Out-Null
$finalPatch = Join-Path $InstallerRoot 'patch'
if (Test-Path -LiteralPath $finalPatch) {
    $archiveRoot = Join-Path $BuildRoot 'replaced-patches'
    New-Item -ItemType Directory -Path $archiveRoot -Force | Out-Null
    Move-Item -LiteralPath $finalPatch -Destination (Join-Path $archiveRoot ("patch-$runId"))
}
Move-Item -LiteralPath $stagePatch -Destination $finalPatch

[pscustomobject]@{
    Status = 'BUILD_PASS_REVIEW_REQUIRED'
    PatchRoot = $finalPatch
    RunRoot = $runRoot
    PatchFiles = $inventory.Count
    MachineDraftEntries = $provenance.counts.'machine-draft'
}
