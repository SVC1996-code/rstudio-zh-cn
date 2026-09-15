function Get-OfficialCandidates {
    $paths = @()
    foreach ($base in @($env:ProgramW6432,$env:ProgramFiles,${env:ProgramFiles(x86)})) {
        if ($base) { $paths += Join-Path $base 'RStudio' }
    }
    foreach ($key in @('HKCU:\Software\RStudio','HKLM:\Software\RStudio','HKLM:\Software\WOW6432Node\RStudio')) {
        $p = Get-ItemProperty -LiteralPath $key -ErrorAction SilentlyContinue
        if ($p) { foreach ($name in @('InstallPath','InstallLocation')) { if ($p.PSObject.Properties[$name]) { $paths += [string]$p.$name } } }
    }
    foreach ($root in @('HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall','HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall','HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall')) {
        foreach ($key in Get-ChildItem -LiteralPath $root -ErrorAction SilentlyContinue) {
            $p = Get-ItemProperty -LiteralPath $key.PSPath -ErrorAction SilentlyContinue
            if ($p -and $p.PSObject.Properties['DisplayName'] -and $p.DisplayName -match '^RStudio(?:\s|$)' -and $p.PSObject.Properties['InstallLocation']) { $paths += [string]$p.InstallLocation }
        }
    }
    $app = Get-Command rstudio.exe -CommandType Application -ErrorAction SilentlyContinue
    if ($app) { $paths += Split-Path -Parent $app.Source }
    @($paths | Where-Object { $_ -and (Test-Path -LiteralPath $_ -PathType Container) } | Select-Object -Unique)
}

function Read-InstallChoice {
    param([string]$Prompt,[string[]]$Allowed,[string]$Default)
    while ($true) {
        $answer = Read-Host $Prompt
        if ($null -eq $answer) { return 'Q' }
        $answer = $answer.Trim().ToUpperInvariant()
        if (-not $answer) { $answer = $Default }
        if ($answer -in $Allowed) { return $answer }
        Write-Host ('请选择：' + ($Allowed -join ' / '))
    }
}

function Select-InstallFolder {
    param([string]$Description)
    try {
        Add-Type -AssemblyName System.Windows.Forms
        $dialog = New-Object Windows.Forms.FolderBrowserDialog
        $dialog.Description = $Description
        $dialog.ShowNewFolderButton = $true
        try {
            if ($dialog.ShowDialog() -eq [Windows.Forms.DialogResult]::OK) { return $dialog.SelectedPath }
            return $null
        } finally { $dialog.Dispose() }
    } catch {
        Write-Host '文件夹选择器不可用，请直接粘贴目录路径（无需参数名），空白取消。'
        $value = Read-Host $Description
        if ($value) { return $value.Trim().Trim('"') }
        return $null
    }
}

function Test-FriendlyOfficial {
    param([string]$Path,$Manifest,[switch]$Quiet)
    try {
        # No candidate is accepted even if some original critical files survived.
        if (Test-Path -LiteralPath (Join-Path $Path 'resources/app/RSTUDIO-ZH-CN-MANIFEST.json')) { throw '此目录已安装中文补丁，请选择独立官方原版。' }
        Assert-OfficialRStudio -RStudioRoot $Path -Manifest $Manifest | Out-Null
        return $true
    } catch {
        if (-not $Quiet) {
            $actual = '无法读取'
            try { $actual = Get-RStudioProductVersion -RStudioRoot $Path } catch {}
            Write-Host "选择的目录不是此汉化包支持的完整、未修改官方 RStudio。"
            Write-Host "此汉化包需要：RStudio Desktop $($Manifest.productVersion)；你选择的是：$actual"
            Write-Host '请安装/选择正确的官方版本后重试；版本相同但哈希不符时也不能继续。'
            Write-Host $_.Exception.Message
        }
        return $false
    }
}

function Get-SimpleInstallPaths {
    param($Manifest,[string]$SourcePath,[string]$DestinationPath)
    Write-Host '========================================'
    Write-Host 'RStudio 简体中文本地化安装程序'
    Write-Host '========================================'
    if (-not $SourcePath) {
        $valid = @(Get-OfficialCandidates | Where-Object { Test-FriendlyOfficial -Path $_ -Manifest $Manifest -Quiet })
        foreach ($path in $valid) {
            Write-Host "检测到官方 RStudio：`n$path`n版本：$($Manifest.productVersion)"
            $choice = Read-InstallChoice '是否使用这个 RStudio？[Y] 是 [N] 重新选择 [Q] 退出（回车=Y）' @('Y','N','Q') 'Y'
            if ($choice -eq 'Q') { return $null }
            if ($choice -eq 'Y') { $SourcePath = $path; break }
            break
        }
    }
    while (-not $SourcePath -or -not (Test-FriendlyOfficial -Path $SourcePath -Manifest $Manifest)) {
        $SourcePath = Select-InstallFolder '请选择包含 rstudio.exe 的官方 RStudio 安装目录'
        if (-not $SourcePath) { return $null }
    }
    $leaf = 'RStudio-' + $Manifest.productVersion + '-zh_CN'
    if (-not $DestinationPath) { $DestinationPath = Join-Path (Join-Path $env:LOCALAPPDATA 'Programs') $leaf }
    while ($true) {
        Write-Host "中文版将安装到：`n$DestinationPath"
        if (Test-Path -LiteralPath $DestinationPath) {
            Write-Host '目标目录已经存在，为避免覆盖现有文件，安装程序不会继续。'
            $choice = Read-InstallChoice '[R] 重新选择 [Q] 退出（回车=Q）' @('R','Q') 'Q'
            if ($choice -eq 'Q') { return $null }
        } else {
            $choice = Read-InstallChoice '继续安装？[Y] 继续 [C] 更改位置 [Q] 退出（回车=Y）' @('Y','C','Q') 'Y'
            if ($choice -eq 'Q') { return $null }
            if ($choice -eq 'Y') { return @{SourcePath=$SourcePath;DestinationPath=$DestinationPath} }
        }
        $parent = Select-InstallFolder '请选择中文版的父目录（将在其中创建新的 RStudio 目录）'
        if (-not $parent) { return $null }
        $DestinationPath = Join-Path $parent $leaf
    }
}

function Complete-SimpleInstall {
    param([string]$DestinationPath)
    Write-Host "========================================`n安装完成`n========================================"
    Write-Host "RStudio 简体中文版已安装到：`n$DestinationPath`n官方 RStudio 未被修改。"
    Write-Host '首次启动后，在 Tools / 工具 → Global Options / 全局选项选择简体中文并重启。'
    if ((Read-InstallChoice '是否创建当前用户桌面快捷方式？[Y/N]（回车=N）' @('Y','N','Q') 'N') -eq 'Y') {
        $linkPath = Join-Path ([Environment]::GetFolderPath('Desktop')) 'RStudio 简体中文版.lnk'
        if (Test-Path -LiteralPath $linkPath) { Write-Host '同名快捷方式已存在，未覆盖。' }
        else {
            try {
                $shell = New-Object -ComObject WScript.Shell
                $link = $shell.CreateShortcut($linkPath)
                $link.TargetPath = Join-Path $DestinationPath 'rstudio.exe'
                $link.WorkingDirectory = $DestinationPath
                $link.IconLocation = $link.TargetPath + ',0'
                $link.Save()
            } catch { Write-Warning "安装已完成，但快捷方式创建失败：$($_.Exception.Message)" }
        }
    }
    if ((Read-InstallChoice '是否立即启动中文版？[Y] 启动 [N] 退出（回车=Y）' @('Y','N','Q') 'Y') -eq 'Y') {
        try { Start-Process -FilePath (Join-Path $DestinationPath 'rstudio.exe') -WorkingDirectory $DestinationPath | Out-Null }
        catch { Write-Warning "安装已完成，但启动失败：$($_.Exception.Message)" }
    }
}
