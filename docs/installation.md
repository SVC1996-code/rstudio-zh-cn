# 安装说明

## 下载与准备

本包仅适用于 Windows RStudio Desktop **2026.09.0+174**，不包含完整 RStudio。

1. 准备未经修改的对应官方 RStudio。
2. 从[正式 Release](https://github.com/SVC1996-code/rstudio-zh-cn/releases/tag/v2026.09.0%2B174-zh_CN-r3) 下载 `RStudio-2026.09.0+174-zh_CN-r3.zip`，可使用同页 `SHA256SUMS.txt` 核对摘要。
3. 完整解压，并关闭准备使用的 RStudio 窗口。

普通用户不需要源码仓库、上游源码、Node、JDK、Ant 或 GWT 构建环境。

## 安装

双击解压目录中的 `Install-RStudioZhCn.cmd`，按中文提示确认自动检测到的官方 RStudio，或在文件夹选择器中选择官方安装目录。默认目标位于当前用户的 `LOCALAPPDATA\Programs`，也可选择其他父目录。目标已存在时不会覆盖。

安装完成后可创建当前用户桌面快捷方式并立即启动。取消安装不会创建中文版目录；不要求管理员权限。

构建项目仍需要 PowerShell 7，但安装已发布汉化包不需要另外安装 PowerShell 7。启动器优先使用已有 PowerShell 7，否则使用 Windows 自带的 PowerShell 5.1。

CMD 为运行下载的未签名安装脚本，仅对这一次子进程传入 `-ExecutionPolicy Bypass`，不修改用户或机器执行策略，也不能覆盖组织策略。请仅运行可信 Release，并先核对 ZIP 摘要。

### 高级命令行安装

同时提供两个路径时，不进入交互模式。Windows PowerShell 5.1 或 PowerShell 7 均可：

```powershell
powershell.exe -NoProfile -File .\Install-RStudioZhCn.ps1 `
  -SourcePath "C:\Program Files\RStudio" `
  -DestinationPath "$env:LOCALAPPDATA\Programs\RStudio-2026.09.0+174-zh_CN"
```

请按实际位置修改 `SourcePath`，并始终显式指定尚不存在的 `DestinationPath`。安装器验证官方版本和关键文件，复制原版后只应用 manifest 登记的前端资源，不覆盖或修改官方原版。不要绕过版本或哈希错误；错误通常表示版本不符、原版已修改或文件不完整。

## 启动与语言切换

运行新目录中的 `rstudio.exe`，打开 Tools / 工具 → Global Options / 全局选项，选择“简体中文”，应用设置并按提示重启。

部分 R、程序包、Help 或外部内容仍可能是英文；Visual Editor 的 `/` 快捷插入主要使用英文关键词搜索。

## 卸载

退出中文版 RStudio，删除 `DestinationPath` 指向的独立中文版目录即可，官方原版不受影响。

## 从源码安装候选

源码仓库中的安装入口使用配置的安全根，和 ZIP 内的便携安装入口有所区别。构建、inventory 准备与候选验证的完整流程见[维护说明](maintenance.md)。

旧版 2026.08.1+195 用户继续使用对应历史 Release，不能混用新版补丁。
