[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)][string]$BaseZip,
    [Parameter(Mandatory=$true)][string]$OutputDirectory,
    [Parameter(Mandatory=$true)][string]$PatchRoot,
    [string]$ProjectRef = 'v2026.09.0+174-zh_CN-r2'
)
$ErrorActionPreference='Stop'
$repo=Split-Path -Parent $PSScriptRoot
$expected='D77D47182DF8A7BD841F2621E74580E65BE5DD34C0F8F9C73C2FD82FA17F7D15'
if((Get-FileHash -LiteralPath $BaseZip).Hash -ne $expected){throw 'Base release ZIP SHA-256 mismatch.'}
if(Test-Path -LiteralPath $OutputDirectory){throw 'Output directory exists; choose a fresh directory.'}
$output=[IO.Path]::GetFullPath($OutputDirectory)
New-Item -ItemType Directory -Path $output|Out-Null
Add-Type -AssemblyName System.IO.Compression.FileSystem
$archive=[IO.Compression.ZipFile]::OpenRead($BaseZip)
$base=Join-Path $output 'base'
try {
    foreach($entry in $archive.Entries){
        $dest=[IO.Path]::GetFullPath((Join-Path $base $entry.FullName))
        if(-not $dest.StartsWith($base+'\',[StringComparison]::OrdinalIgnoreCase)){throw 'Unsafe archive entry.'}
    }
} finally {$archive.Dispose()}
[IO.Compression.ZipFile]::ExtractToDirectory($BaseZip,$base)
$old=Join-Path $base 'RStudio-2026.09.0+174-zh_CN'
$name='RStudio-2026.09.0+174-zh_CN-r2'
$package=Join-Path $output $name
New-Item -ItemType Directory -Path $package|Out-Null
foreach($nameToCopy in @('LICENSE','NOTICE','licenses')){Copy-Item -LiteralPath (Join-Path $old $nameToCopy) -Destination $package -Recurse}
Copy-Item -LiteralPath (Join-Path $repo 'translations/2026.09.0+174/version.json') -Destination $package
if(-not (Test-Path -LiteralPath (Join-Path $PatchRoot 'patch-manifest.json'))){throw 'Accepted frontend patch manifest is required.'}
Copy-Item -LiteralPath $PatchRoot -Destination (Join-Path $package 'patch') -Recurse
# PS5.1 interprets UTF-8 scripts without a BOM as the current ANSI code page.
$bom=New-Object Text.UTF8Encoding($true)
foreach($file in Get-ChildItem (Join-Path $PSScriptRoot 'portable') -File){
    $text=[IO.File]::ReadAllText($file.FullName)
    $encoding=if($file.Extension -eq '.cmd'){[Text.Encoding]::ASCII}else{$bom}
    [IO.File]::WriteAllText((Join-Path $package $file.Name),($text -replace '\r?\n',"`r`n"),$encoding)
}
Copy-Item -LiteralPath (Join-Path $repo 'src/RStudioZhCn.Common.ps1') -Destination $package
$hashes=[ordered]@{}
foreach($file in @('version.json','patch/patch-manifest.json','patch/build-report.json')){$hashes[$file]=(Get-FileHash (Join-Path $package $file)).Hash}
[IO.File]::WriteAllText((Join-Path $package 'package-integrity.json'),(($hashes|ConvertTo-Json)+"`n"),[Text.UTF8Encoding]::new($false))
$source=@"
Release: v2026.09.0+174-zh_CN-r2
Project source: https://github.com/SVC1996-code/rstudio-zh-cn/tree/$ProjectRef
Portable installer source: packaging/portable; packaging/New-UserPackage.ps1.
Frontend files are the accepted r2 build with shortcut and Data Viewer display improvements.
r1 portable installer behavior is unchanged. RStudio/Panmirror upstream revisions are unchanged.
License/notice baseline ZIP SHA256: $expected
RStudio upstream: 870df5ed7859c758db7aed6f510a3edca3c74bd7
Panmirror upstream: 828ae28e53b796fb95a33bd7f3c7c109e0709649
Complete archive hashes, source patches, dependencies and source evidence:
translations/2026.09.0+174/version.json and panmirror-source.json at the project ref above.
Build instructions: docs/maintenance.md. Preserve LICENSE, NOTICE and licenses/.
This package does not contain a complete RStudio installation.
"@
[IO.File]::WriteAllText((Join-Path $package 'SOURCE'),$source,[Text.UTF8Encoding]::new($false))
$entries=@(Get-Content (Join-Path $PatchRoot 'patch-manifest.json') -Raw|ConvertFrom-Json)
foreach($entry in $entries){if((Get-FileHash (Join-Path $package ('patch/'+$entry.Path))).Hash -ne $entry.SHA256){throw 'Frontend changed during packaging.'}}
$zip=Join-Path $output ($name+'.zip')
[IO.Compression.ZipFile]::CreateFromDirectory($package,$zip,[IO.Compression.CompressionLevel]::Optimal,$true)
$sha=(Get-FileHash $zip).Hash
[IO.File]::WriteAllText((Join-Path $output 'SHA256SUMS.txt'),"$sha  $name.zip`n",[Text.UTF8Encoding]::new($false))
[pscustomobject]@{Zip=$zip;SHA256=$sha;Bytes=(Get-Item $zip).Length;Package=$package}
