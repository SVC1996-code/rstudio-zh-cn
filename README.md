# RStudio 简体中文本地化

这是一个面向 Windows 的非官方 RStudio Desktop 简体中文本地化项目。当前锁定的上游版本是 `RStudio 2026.08.1+195`，提交为 `8d474bc4cfad0e317095cd171e8ef44db6887068`。

项目使用 RStudio 官方国际化结构：GWT 文本位于 `*_zh_CN.properties`，Electron 文本位于 `zh-CN.json`。少量尚未接入国际化的纯显示文本通过 `source-patches.json` 精确登记，在锁定的上游源码上应用后重新编译 GWT 和 Electron 前端。`rstudio.exe`、`rsession` 及其他原生程序不修改。

## 当前状态

- 当前支持的上游 `RStudio 2026.08.1+195` 是 Posit 发布的 **Release Candidate**，不是稳定正式版。
- 本仓库当前准备首先公开源码；目前尚无可供普通用户直接下载的编译前端补丁 GitHub Release。未来可能提供严格锁定版本的补丁 Release。
- RC1 已完成实际运行 smoke test，核心界面与功能未发现由汉化造成的故障。运行验收不等同于逐条翻译审核。
- 当前 translation provenance 为：`translated: 6016`、`needs-review: 288`、`reviewed: 0`、`missing: 0`、`buildReady: true`、`releaseReady: false`。`reviewed=0` 表示尚未通过 `review-decisions.json` 为单条翻译建立可追溯的正式人工审核记录，并不表示 RC1 未经过整体人工使用和运行验收；本项目不宣称所有翻译均已完成人工审核。

## 安全和版本边界

- 只支持版本清单登记的官方构建。
- 同步源码、工具下载、原版 RStudio 和补丁文件均进行版本或 SHA-256 校验。
- 安装器从已验证的原版创建新候选目录，不覆盖原版。
- 路径写入和移动操作必须位于配置的安全根目录内。
- 产品名、代码标识符、函数名、路径、外部网页和未接入 i18n 的后端内容可以保留英文。

## 路径配置

默认开发布局仍以 `D:\R` 为 workspace，因此现有开发机可以不加参数运行。其他用户可用统一参数或环境变量指定根目录：

```powershell
.\src\Sync-RStudioSource.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\src\Build-RStudioZhCn.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
```

也可以设置：

```powershell
$env:RSTUDIO_ZH_CN_WORKSPACE = 'E:\rstudio-zh-workspace'
```

高级布局可复制 `config/paths.psd1` 为被 Git 忽略的 `config/paths.local.psd1`，通过 `Roots` 为 upstream、tools、RStudio 等分别设置安全根。显式路径参数仍必须位于相应配置根内。

## 构建和测试

```powershell
.\src\Bootstrap-BuildTools.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\src\Sync-RStudioSource.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\src\Build-RStudioZhCn.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\tests\Test-Repository.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
```

本项目当前以 PowerShell 7 作为公开构建和 CI 基线。安装候选和运行验收见 [安装说明](docs/installation.md) 与 [测试说明](docs/testing.md)。

## 项目状态

RC1 已在本地完成运行验收，但源码仓库与未来的二进制前端补丁 Release 分开管理。本仓库不包含完整 RStudio、完整上游源码、构建缓存或本机候选目录。

架构见 [docs/architecture.md](docs/architecture.md)，构建见 [docs/build.md](docs/build.md)，翻译维护见 [docs/translation-guide.md](docs/translation-guide.md)。旧动态 JavaScript 替换方案仅在 [docs/legacy-architecture.md](docs/legacy-architecture.md) 中作为历史记录。

## 许可与商标

项目按 `AGPL-3.0-only` 维护。中文翻译和源码补丁属于基于 RStudio 上游源码的修改作品；上游来源与修改边界见 [UPSTREAM.md](UPSTREAM.md)、[SOURCE](SOURCE) 和 [NOTICE](NOTICE)。RStudio、Posit 及相关标识属于其各自权利人，本项目与 Posit 无隶属或认可关系。
