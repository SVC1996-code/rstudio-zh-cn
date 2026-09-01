# 安装候选

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
