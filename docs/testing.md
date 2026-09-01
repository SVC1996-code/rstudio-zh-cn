# 测试说明

## Repository validation

先同步锁定的上游源码，再运行静态门禁：

```powershell
.\src\Sync-RStudioSource.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\tests\Test-Repository.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
```

检查范围包括：

- GWT 英文/中文 key、占位符、MessageFormat 引号、HTML/实体和基本转义结构。
- Electron 英文/中文 JSON key 与显示结构。
- source patch 格式、路径安全和锁定源码上的匹配次数。
- JSON、UTF-8、PowerShell 语法和 `version.json` 必需字段。
- provenance 状态、计数和显式审核来源。
- 禁止完整程序、node_modules、编译缓存和超大临时文件。
- 高可信度凭据与核心脚本绝对本机路径。

CI 只同步源码并进行静态验证，不完整编译 RStudio。

## Candidate validation

`src/Test-RStudioZhCn.ps1` 面向本机候选，检查官方原版哈希、补丁清单、编译资源、JavaScript 语法、R/用户库、中文路径和人工 UI 复核状态。报告写入配置的 installer version root，不进入 Git。

人工 smoke test 至少覆盖启动/退出、Source、Console、Environment、Files、Plots、Packages、Help、Terminal、Project、Global Options、语言切换、菜单、右键菜单和对话框。
