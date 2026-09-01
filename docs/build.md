# 构建说明

公开构建基线为 Windows 和 PowerShell 7。

```powershell
$workspace = 'E:\rstudio-zh-workspace'
.\src\Bootstrap-BuildTools.ps1 -WorkspaceRoot $workspace
.\src\Sync-RStudioSource.ps1 -WorkspaceRoot $workspace
.\tests\Test-Repository.ps1 -WorkspaceRoot $workspace
.\src\Build-RStudioZhCn.ps1 -WorkspaceRoot $workspace
```

默认配置仍使用 `D:\R`。如需把 tools、upstream、RStudio 安装和 installer 输出放在不同磁盘，可复制 `config/paths.psd1` 为 `config/paths.local.psd1` 并增加 `Roots`：

```powershell
@{
    DefaultWorkspaceRoot = 'E:\rstudio-zh-workspace'
    Roots = @{
        Tools = 'F:\rstudio-build-tools'
        RStudio = 'C:\PortableApps\RStudio'
    }
}
```

每个配置根都必须不是磁盘根。写入、移动和递归复制仍受对应根目录约束；显式参数不会关闭这些检查。

构建仅重编译 GWT/Electron 前端并生成补丁目录，不重新编译原生组件。
