[CmdletBinding()]
param(
    [string]$Version = '2026.08.1+195',
    [Parameter(Mandatory = $true)][string]$OutputRoot,
    [Parameter(Mandatory = $true)][string]$BuildRoot,
    [Parameter(Mandatory = $true)][string]$ToolsRoot,
    [Parameter(Mandatory = $true)][string]$OriginalRStudioRoot,
    [string]$ArchivePath
)

. (Join-Path $PSScriptRoot 'RStudioZhCn.Common.ps1')
$OutputRoot = [IO.Path]::GetFullPath($OutputRoot)
$BuildRoot = [IO.Path]::GetFullPath($BuildRoot)
Assert-DescendantPath -Path $OutputRoot -Parent $BuildRoot | Out-Null
if (Test-Path -LiteralPath $OutputRoot) { throw "Panmirror output already exists: $OutputRoot" }
$registryPath = Join-Path (Get-VersionDirectory -Version $Version) 'panmirror-source.json'
$registry = Read-JsonFile -Path $registryPath
$originalBundle = Join-Path $OriginalRStudioRoot 'resources/app/www/js/panmirror/panmirror.js'
$originalMap = "$originalBundle.map"
if ((Get-Sha256 $originalBundle) -ne $registry.originalBundleSha256) { throw 'Original Panmirror bundle mismatch.' }
& (Join-Path $PSScriptRoot '../tests/Test-PanmirrorSource.ps1') -Version $Version
if (-not $ArchivePath) {
    $ArchivePath = Join-Path $BuildRoot "panmirror-downloads/quarto-$($registry.commit).zip"
    if (-not (Test-Path -LiteralPath $ArchivePath)) {
        New-Item -ItemType Directory -Path (Split-Path -Parent $ArchivePath) -Force | Out-Null
        Invoke-WebRequest -Uri $registry.archiveUrl -OutFile $ArchivePath
    }
}
if ((Get-Sha256 $ArchivePath) -ne $registry.archiveSha256) { throw 'Panmirror source archive SHA-256 mismatch.' }
New-Item -ItemType Directory -Path $OutputRoot | Out-Null
$sourceContainer = Join-Path $OutputRoot 'source'
Expand-Archive -LiteralPath $ArchivePath -DestinationPath $sourceContainer
$source = Join-Path $sourceContainer $registry.archiveDirectory
& (Join-Path $PSScriptRoot '../tests/Test-PanmirrorSource.ps1') -Version $Version -SourceRoot $source -OriginalSourceMap $originalMap
$patched = [Collections.Generic.List[object]]::new()
foreach ($definition in $registry.patches) {
    $path = Join-Path $source $definition.path
    Assert-DescendantPath -Path $path -Parent $source | Out-Null
    $text = [IO.File]::ReadAllText($path).Replace("`r`n", "`n")
    $find = $definition.find.Replace("`r`n", "`n")
    if ([regex]::Matches($text, [regex]::Escape($find)).Count -ne 1) { throw "Exact Panmirror source patch failed: $($definition.path)" }
    [IO.File]::WriteAllText($path, $text.Replace($find, $definition.replace.Replace("`r`n", "`n")), [Text.UTF8Encoding]::new($false))
}
foreach ($relative in @($registry.patches.path | Sort-Object -Unique)) {
    $patched.Add([pscustomobject]@{ Path = $relative; SHA256 = Get-Sha256 (Join-Path $source $relative) })
}
$lock = Read-JsonFile -Path (Join-Path $ToolsRoot 'rstudio-zh-cn-toolchain.json')
$nodeRoot = [string]($lock.tools | Where-Object name -eq 'node').root
$node = Join-Path $nodeRoot 'node.exe'
$yarn = Join-Path $nodeRoot 'yarn.cmd'
$previousPath = $env:PATH; $previousCorepack = $env:COREPACK_HOME; $previousCache = $env:YARN_CACHE_FOLDER
$start = Get-Date
$log = Join-Path $OutputRoot 'build.log'
try {
    $env:PATH = "$nodeRoot;$env:PATH"
    $env:COREPACK_HOME = Join-Path $ToolsRoot 'corepack'
    $env:YARN_CACHE_FOLDER = Join-Path $BuildRoot 'panmirror-yarn-cache'
    Push-Location $source
    try {
        & $yarn install --frozen-lockfile --ignore-scripts --non-interactive 2>&1 | Tee-Object -FilePath $log | Out-Host
        if ($LASTEXITCODE -ne 0) { throw "Panmirror dependency install failed: $LASTEXITCODE" }
        if ((Get-Sha256 (Join-Path $source 'yarn.lock')) -ne $registry.yarnLockSha256) { throw 'Panmirror install changed yarn.lock.' }
        & $node (Join-Path $PSScriptRoot '../tests/panmirror-display-contract.cjs') $source 2>&1 | Tee-Object -FilePath $log -Append | Out-Host
        if ($LASTEXITCODE -ne 0) { throw 'Panmirror display/internal-value contract failed.' }
        & $yarn workspace panmirror build --sourcemap 2>&1 | Tee-Object -FilePath $log -Append | Out-Host
        if ($LASTEXITCODE -ne 0) { throw "Panmirror build failed: $LASTEXITCODE" }
    } finally { Pop-Location }
} finally {
    $env:PATH = $previousPath; $env:COREPACK_HOME = $previousCorepack; $env:YARN_CACHE_FOLDER = $previousCache
}
$bundle = Join-Path $source 'apps/panmirror/dist/panmirror.js'
$map = "$bundle.map"
foreach ($path in @($bundle,$map)) { if (-not (Test-Path -LiteralPath $path -PathType Leaf)) { throw "Panmirror output missing: $path" } }
& $node --check $bundle
if ($LASTEXITCODE -ne 0) { throw 'Panmirror JavaScript syntax check failed.' }
$null = Read-JsonFile -Path $map
$report = [ordered]@{
    status = 'BUILD_PASS_RUNTIME_REVIEW_REQUIRED'
    commit = $registry.commit
    archiveSHA256 = $registry.archiveSha256
    yarnLockSHA256 = $registry.yarnLockSha256
    registrySHA256 = Get-Sha256 $registryPath
    sourceEvidence = $registry.sourceEvidence
    sourcePatches = $patched
    command = 'yarn install --frozen-lockfile --ignore-scripts --non-interactive; yarn workspace panmirror build --sourcemap'
    elapsedSeconds = [math]::Round(((Get-Date) - $start).TotalSeconds, 2)
    nodeVersion = (& $node --version)
    bundleSHA256 = Get-Sha256 $bundle
    sourceMapSHA256 = Get-Sha256 $map
}
Write-JsonFile -Path (Join-Path $OutputRoot 'panmirror-build-report.json') -Value $report -Depth 10
[pscustomobject]@{ Bundle = $bundle; SourceMap = $map; Report = $report }
