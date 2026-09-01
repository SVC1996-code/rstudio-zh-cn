# 安装候选

## 使用 GitHub Release 安装

普通用户无需准备源码仓库、upstream source tree、Node、JDK、Ant 或 GWT 构建环境。

1. 安装或准备未经修改的官方 RStudio Desktop `2026.08.1+195`。其他版本不受支持。
2. 从 [RStudio 简体中文本地化 2026.08.1+195 RC1](https://github.com/SVC1996-code/rstudio-zh-cn/releases/tag/v2026.08.1%2B195-zh-cn-rc1) 下载 `rstudio-zh-cn-2026.08.1+195-rc1-patch.zip`。
3. 完整解压 ZIP，并关闭所有正在运行的 RStudio 窗口。
4. 在 PowerShell 7 中进入解压后的顶层目录并运行：

```powershell
pwsh -NoProfile -File .\Install-RStudioZhCn.ps1 `
  -SourcePath "C:\Program Files\RStudio" `
  -DestinationPath "$env:LOCALAPPDATA\Programs\RStudio-2026.08.1+195-zh-cn-rc1"
```

如果官方 RStudio 位于其他位置，请相应修改 `SourcePath`。`DestinationPath` 必须是尚不存在的新目录。

安装器会验证官方版本和关键文件，从官方原版复制出新的中文版候选目录，然后只应用 manifest 登记的前端资源。官方原版不会被覆盖或修改。

安装完成后，运行新目录中的 `rstudio.exe`。在 RStudio 中打开“工具 / Tools”→“全局选项 / Global Options”，选择“简体中文”，应用设置并按提示重启。

卸载时，先退出中文版 RStudio，再删除 `DestinationPath` 指向的中文版目录即可；官方原版不受影响。

## 从源码构建的候选安装

准备与 `version.json` 完全匹配且未经修改的官方 RStudio 目录，以及由当前源码构建的 patch：

```powershell
.\src\Install-RStudioZhCn.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
```

默认路径由统一配置派生。也可以显式指定路径，但路径必须位于配置的 RStudio 或 installers 安全根内：

```powershell
.\src\Install-RStudioZhCn.ps1 `
  -WorkspaceRoot 'E:\rstudio-zh-workspace' `
  -SourcePath 'E:\rstudio-zh-workspace\RStudio\2026.08.1-original' `
  -DestinationPath 'E:\rstudio-zh-workspace\RStudio\2026.08.1-zh-next'
```

安装器拒绝覆盖已存在的目标目录。卸载候选时删除候选目录即可；官方原版没有被修改。
