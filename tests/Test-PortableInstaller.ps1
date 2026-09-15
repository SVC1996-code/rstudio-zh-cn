[CmdletBinding()]
param()
$ErrorActionPreference = 'Stop'
$repo = Split-Path -Parent $PSScriptRoot
. (Join-Path $repo 'src/RStudioZhCn.Common.ps1')
. (Join-Path $repo 'packaging/portable/Install.Core.ps1')
$root = Join-Path ([IO.Path]::GetTempPath()) ('portable-fixture-' + [guid]::NewGuid().ToString('N'))
$package = Join-Path $root ('package (test)+ ' + [char]0x4e2d + [char]0x6587)
$source = Join-Path $root 'original source'
$destination = Join-Path $root 'installed (test)+'
$script:passed = 0
function Check($Condition, $Name) {
    if (-not $Condition) { throw "FAIL: $Name" }
    $script:passed++; Write-Host "PASS: $Name"
}
function Reject([scriptblock]$Action, [string]$Pattern) {
    $message = ''
    try { & $Action | Out-Null } catch { $message = $_.Exception.Message }
    Check ($message -match $Pattern) "reject $Pattern (actual: $message)"
}
function Refresh-Integrity {
    $hashes = [ordered]@{}
    foreach ($name in @('version.json','patch/patch-manifest.json','patch/build-report.json')) { $hashes[$name] = Get-Sha256 (Join-Path $package $name) }
    Write-JsonFile (Join-Path $package 'package-integrity.json') $hashes
}
try {
    New-Item -ItemType Directory -Path $source,(Join-Path $package 'patch/resources/app') -Force | Out-Null
    # A small genuine Windows PE fixture, never executed as RStudio.
    Copy-Item -LiteralPath (Join-Path $env:SystemRoot 'System32/where.exe') -Destination (Join-Path $source 'rstudio.exe')
    $originalHash = Get-Sha256 (Join-Path $source 'rstudio.exe')
    $version = [ordered]@{productVersion=(Get-RStudioProductVersion $source);locale='zh_CN';upstream=@{commit='fixture';tag='fixture'};criticalFiles=@{'rstudio.exe'=$originalHash}}
    Write-JsonFile (Join-Path $package 'version.json') $version
    $report = @{status='BUILD_PASS_REVIEW_REQUIRED';upstreamCommit='fixture';unknownEntries=0;reviewedEntries=0;machineDraftEntries=1;allowedEnglishEntries=0}
    Write-JsonFile (Join-Path $package 'patch/build-report.json') $report
    Write-Utf8File (Join-Path $package 'patch/resources/app/locale.json') '{"label":"fixture"}'
    $entries = @(foreach($name in @('build-report.json','resources/app/locale.json')) {
        $file = Join-Path $package ('patch/' + $name)
        @{Path=$name;Length=(Get-Item $file).Length;SHA256=(Get-Sha256 $file)}
    })
    Write-JsonFile (Join-Path $package 'patch/patch-manifest.json') $entries
    Refresh-Integrity
    $argsInstall = @{PackageRoot=$package;SourcePath=$source;DestinationPath=$destination}
    $result = Invoke-PortableInstall @argsInstall
    Check (Test-Path (Join-Path $destination 'resources/app/RSTUDIO-ZH-CN-MANIFEST.json')) 'embedded manifest'
    Check ((Get-Sha256 (Join-Path $destination 'resources/app/locale.json')) -eq $entries[1].SHA256) 'installed SHA'
    Check ((Get-Sha256 (Join-Path $source 'rstudio.exe')) -eq $originalHash) 'original unchanged'
    Reject { Invoke-PortableInstall @argsInstall } 'Destination already exists'
    $argsInstall.DestinationPath = Join-Path $root 'second'
    Reject { Invoke-PortableInstall @argsInstall -Version 'wrong' } 'version mismatch'
    $argsInstall.DestinationPath = $source
    Reject { Invoke-PortableInstall @argsInstall } 'must be different'
    $argsInstall.DestinationPath = Join-Path $source 'nested'
    Reject { Invoke-PortableInstall @argsInstall } 'must not contain'
    $argsInstall.DestinationPath = Join-Path $root 'second'
    $version.productVersion = 'wrong'
    Write-JsonFile (Join-Path $package 'version.json') $version
    Refresh-Integrity
    Reject { Invoke-PortableInstall @argsInstall } 'Unsupported RStudio version'
    $version.productVersion = Get-RStudioProductVersion $source
    $version.criticalFiles['rstudio.exe'] = ('0' * 64)
    Write-JsonFile (Join-Path $package 'version.json') $version
    Refresh-Integrity
    Reject { Invoke-PortableInstall @argsInstall } 'Original file SHA-256 mismatch'
    $version.criticalFiles['rstudio.exe'] = $originalHash
    Write-JsonFile (Join-Path $package 'version.json') $version
    Refresh-Integrity
    Write-Utf8File (Join-Path $package 'patch/resources/app/locale.json') 'tampered'
    Reject { Invoke-PortableInstall @argsInstall } 'Patch SHA/length mismatch'
    Write-Utf8File (Join-Path $package 'patch/patch-manifest.json') '[]'
    Reject { Invoke-PortableInstall @argsInstall } 'metadata SHA-256 mismatch'
    Check (-not (Test-Path $argsInstall.DestinationPath)) 'rejections leave no destination'
    Write-Utf8File (Join-Path $package 'patch/resources/app/locale.json') '{"label":"fixture"}'
    Write-JsonFile (Join-Path $package 'patch/patch-manifest.json') $entries
    Refresh-Integrity
    Write-Utf8File (Join-Path $source 'resources') 'fixture blocks directory creation'
    Reject { Invoke-PortableInstall @argsInstall } 'resources.*app.*locale.json'
    Check (-not (Test-Path $argsInstall.DestinationPath)) 'failed staging leaves no destination'
    Check (@(Get-ChildItem $root -Force -Filter '.rstudio-zh-cn-stage-*').Count -eq 0) 'no stages after rejection'
    # Scoped UI decision fixtures. These exercise choices, not real GUI input.
    & {
        . (Join-Path $repo 'packaging/portable/Install.UI.ps1')
        $manifest = Read-JsonFile (Join-Path $package 'version.json')
        function Get-OfficialCandidates { $source }
        function Read-InstallChoice { 'Q' }
        Check ($null -eq (Get-SimpleInstallPaths -Manifest $manifest)) 'cancel at discovered original'
        function Get-OfficialCandidates { @() }
        function Select-InstallFolder { $null }
        Check ($null -eq (Get-SimpleInstallPaths -Manifest $manifest)) 'cancel folder picker'
        function Select-InstallFolder { $source }
        function Read-InstallChoice { 'Y' }
        $paths = Get-SimpleInstallPaths -Manifest $manifest -DestinationPath (Join-Path $root 'manual')
        Check ($paths.SourcePath -eq $source) 'manual source validation and destination selection'
        function Read-InstallChoice { 'Q' }
        Check ($null -eq (Get-SimpleInstallPaths -Manifest $manifest -SourcePath $source -DestinationPath $destination)) 'existing destination cancel'
        $manifest.productVersion='wrong'
        Check (-not (Test-FriendlyOfficial -Path $source -Manifest $manifest)) 'friendly version rejection'
    }
    foreach($file in @(Get-ChildItem (Join-Path $repo 'packaging/portable') -Filter '*.ps1') + @(Get-Item (Join-Path $repo 'src/RStudioZhCn.Common.ps1'))) {
        $tokens=$null; $errors=$null
        [Management.Automation.Language.Parser]::ParseFile($file.FullName,[ref]$tokens,[ref]$errors) | Out-Null
        Check (@($errors).Count -eq 0) "PS $($PSVersionTable.PSVersion) parser: $($file.Name)"
    }
    $cmd = [IO.File]::ReadAllText((Join-Path $repo 'packaging/portable/Install-RStudioZhCn.cmd'))
    Check ($cmd.Contains('"%~dp0Install-RStudioZhCn.ps1"')) 'launcher quotes script-relative path'
    Check ($cmd.Contains('DisableDelayedExpansion') -and $cmd.Contains('WindowsPowerShell\v1.0\powershell.exe')) 'launcher fallback and literal path handling'
    # Execute the unchanged launcher with a tiny host/argument probe, in both
    # process-only PATH environments. This does not pretend to be UI acceptance.
    $launcher = Join-Path $package 'Install-RStudioZhCn.cmd'
    Copy-Item (Join-Path $repo 'packaging/portable/Install-RStudioZhCn.cmd') $launcher
    $probe = 'param([string]$SourcePath,[string]$DestinationPath) if($SourcePath -ne "space (source)+" -or $DestinationPath -ne "space (dest)+"){exit 17}; Write-Output ("HOST=" + $PSVersionTable.PSVersion.Major)'
    Write-Utf8File (Join-Path $package 'Install-RStudioZhCn.ps1') $probe
    $pwsh = Get-Command pwsh.exe -ErrorAction SilentlyContinue
    foreach($major in @(5,7)) {
        if($major -eq 7 -and -not $pwsh) { throw 'PS7 is needed to exercise both launcher branches.' }
        $start = New-Object Diagnostics.ProcessStartInfo
        $start.FileName = Join-Path $env:SystemRoot 'System32/cmd.exe'
        $start.Arguments = '/d /c ""' + $launcher + '" -SourcePath "space (source)+" -DestinationPath "space (dest)+""'
        $start.UseShellExecute=$false; $start.CreateNoWindow=$true
        $start.RedirectStandardOutput=$true; $start.RedirectStandardError=$true; $start.RedirectStandardInput=$true
        $start.EnvironmentVariables['PATH'] = Join-Path $env:SystemRoot 'System32'
        if($major -eq 7) { $start.EnvironmentVariables['PATH'] += ';' + (Split-Path -Parent $pwsh.Source) }
        $process = [Diagnostics.Process]::Start($start)
        $process.StandardInput.WriteLine(); $process.StandardInput.Close()
        $stdout=$process.StandardOutput.ReadToEnd(); $stderr=$process.StandardError.ReadToEnd()
        $process.WaitForExit()
        Check ($process.ExitCode -eq 0 -and $stdout -match "HOST=$major") "CMD host $major and spaced/Unicode path ($stderr)"
        $process.Dispose()
    }
    Write-Host "Portable installer regression passed: $script:passed checks; PowerShell $($PSVersionTable.PSVersion)."
} finally {
    $resolved = [IO.Path]::GetFullPath($root)
    Assert-DescendantPath $resolved ([IO.Path]::GetTempPath()) | Out-Null
    if ((Split-Path -Leaf $resolved) -notmatch '^portable-fixture-[0-9a-f]{32}$') { throw 'Unsafe test cleanup root.' }
    if(Test-Path -LiteralPath $resolved) { Remove-Item -LiteralPath $resolved -Recurse -Force }
}
