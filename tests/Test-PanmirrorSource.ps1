[CmdletBinding()]
param(
    [string]$Version = '2026.08.1+195',
    [string]$SourceRoot,
    [string]$OriginalSourceMap
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
. (Join-Path $PSScriptRoot '../src/RStudioZhCn.Common.ps1')
$registry = Read-JsonFile -Path (Join-Path (Get-VersionDirectory -Version $Version) 'panmirror-source.json')
if ($registry.schemaVersion -ne 1 -or $registry.commit -notmatch '^[a-f0-9]{40}$' -or
    $registry.repository -ne 'https://github.com/quarto-dev/quarto' -or
    $registry.archiveUrl -ne "https://api.github.com/repos/quarto-dev/quarto/zipball/$($registry.commit)") {
    throw 'Invalid pinned Panmirror source registry.'
}
foreach ($field in @('archiveSha256','yarnLockSha256','originalBundleSha256','originalSourceMapSha256')) {
    if ($registry.$field -notmatch '^[A-F0-9]{64}$') { throw "Invalid Panmirror hash: $field" }
}
$texts = @{}
foreach ($patch in $registry.patches) {
    if ($patch.path -notmatch '^packages/editor/src/[A-Za-z0-9_/-]+\.tsx?$' -or
        $patch.path.Contains('..') -or $patch.expectedOccurrences -ne 1 -or -not $patch.find) {
        throw "Invalid Panmirror source patch: $($patch.path)"
    }
    if ($SourceRoot) {
        if (-not $texts.ContainsKey($patch.path)) {
            $path = Join-Path $SourceRoot $patch.path
            Assert-DescendantPath -Path $path -Parent $SourceRoot | Out-Null
            $texts[$patch.path] = [IO.File]::ReadAllText($path).Replace("`r`n", "`n")
        }
        $find = $patch.find.Replace("`r`n", "`n")
        if ([regex]::Matches($texts[$patch.path], [regex]::Escape($find)).Count -ne 1) {
            throw "Panmirror exact patch mismatch: $($patch.path)"
        }
        $texts[$patch.path] = $texts[$patch.path].Replace($find, $patch.replace.Replace("`r`n", "`n"))
    }
}
if ($SourceRoot) {
    if ((Get-Sha256 (Join-Path $SourceRoot 'yarn.lock')) -ne $registry.yarnLockSha256) {
        throw 'Panmirror yarn.lock changed.'
    }
}
if ($SourceRoot -and $OriginalSourceMap) {
    if ((Get-Sha256 $OriginalSourceMap) -ne $registry.originalSourceMapSha256) { throw 'Original Panmirror sourcemap mismatch.' }
    $map = Read-JsonFile -Path $OriginalSourceMap
    $textCount = 0; $assetCount = 0
    for ($i = 0; $i -lt $map.sources.Count; $i++) {
        $source = [string]$map.sources[$i]
        $relative = $null
        if ($source -eq '../src/index.ts') { $relative = 'apps/panmirror/src/index.ts' }
        elseif ($source -match '^\.\./\.\./\.\./(packages/.*)$' -and $source -notmatch '/node_modules/') { $relative = $Matches[1] }
        if (-not $relative) { continue }
        $path = Join-Path $SourceRoot $relative
        Assert-DescendantPath -Path $path -Parent $SourceRoot | Out-Null
        if (-not (Test-Path -LiteralPath $path -PathType Leaf)) { throw "Mapped source missing: $relative" }
        $expected = [string]$map.sourcesContent[$i]
        if ($relative -match '\.(png|gif)$') {
            if ($expected -notmatch 'base64,([^"'']+)') { throw "Unknown asset wrapper: $relative" }
            if ([Convert]::ToBase64String([IO.File]::ReadAllBytes($path)) -cne $Matches[1]) { throw "Mapped asset differs: $relative" }
            $assetCount++
        } else {
            if ([IO.File]::ReadAllText($path).Replace("`r`n", "`n") -cne $expected.Replace("`r`n", "`n")) { throw "Mapped source differs: $relative" }
            $textCount++
        }
    }
    if ($textCount -ne $registry.sourceEvidence.projectTextFiles -or $assetCount -ne $registry.sourceEvidence.embeddedAssets) {
        throw 'Panmirror sourcemap coverage count mismatch.'
    }
}
Write-Host "Panmirror source registry PASS: $($registry.commit), $($registry.patches.Count) exact patches."
