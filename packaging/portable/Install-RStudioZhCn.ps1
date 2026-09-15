[CmdletBinding(SupportsShouldProcess = $true)]
param([string]$SourcePath,[string]$DestinationPath,[string]$Version,[string]$PatchRoot,[string]$ReportPath)
$ErrorActionPreference = 'Stop'
. (Join-Path $PSScriptRoot 'RStudioZhCn.Common.ps1')
. (Join-Path $PSScriptRoot 'Install.Core.ps1')
. (Join-Path $PSScriptRoot 'Install.UI.ps1')
$simple = -not ($SourcePath -and $DestinationPath)
try {
    Write-Host "PowerShell $($PSVersionTable.PSVersion)"
    Assert-PortableIntegrity -PackageRoot $PSScriptRoot
    $manifest = Read-JsonFile (Join-Path $PSScriptRoot 'version.json')
    if ($simple) {
        if ($WhatIfPreference) { throw 'WhatIf 模式请同时指定 SourcePath 和 DestinationPath。' }
        $paths = Get-SimpleInstallPaths -Manifest $manifest -SourcePath $SourcePath -DestinationPath $DestinationPath
        if (-not $paths) { Write-Host '安装已取消，未创建中文版。'; return }
        $SourcePath = $paths.SourcePath; $DestinationPath = $paths.DestinationPath
    }
    $result = Invoke-PortableInstall -PackageRoot $PSScriptRoot -Version $Version -SourcePath $SourcePath -DestinationPath $DestinationPath -PatchRoot $PatchRoot -ReportPath $ReportPath -WhatIf:$WhatIfPreference
    if ($result) {
        $result
        if ($simple) { Complete-SimpleInstall -DestinationPath $DestinationPath }
    }
} catch {
    Write-Host "安装未完成：$($_.Exception.Message)" -ForegroundColor Red
    throw
}
