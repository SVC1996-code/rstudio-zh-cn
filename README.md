# RStudio 简体中文本地化

这是一个面向 Windows 的非官方 RStudio Desktop 简体中文本地化项目，使用 RStudio 自身的国际化机制为 IDE 增加简体中文界面支持。

当前严格锁定 `RStudio 2026.08.1+195`，对应上游提交 `8d474bc4cfad0e317095cd171e8ef44db6887068`。本仓库目前首先公开源码，尚未提供可供普通用户直接下载和安装的编译前端补丁 GitHub Release。本项目由社区维护，不是 Posit 官方项目，也不代表由 Posit 授权或认可的官方中文版本。

## 当前状态

- 当前支持的上游 `RStudio 2026.08.1+195` 是 Posit 发布的 **Release Candidate**，不是稳定正式版。
- 当前没有 compiled GitHub Release；未来可能在完成补丁审核后提供严格锁定版本的 GitHub Release。
- RC1 已完成实际运行 smoke test，核心界面和主要功能未发现由汉化造成的故障。
- 运行验收不等于逐条语言审核，本项目不宣称所有翻译均已完成人工审核。

翻译资源当前记录为：`translated: 6016`、`needs-review: 288`、`reviewed: 0`、`missing: 0`、`buildReady: true`、`releaseReady: false`。

其中，`reviewed=0` 表示目前还没有通过 `review-decisions.json` 为单条翻译建立逐条、可追溯的正式人工审核记录；它不表示 RC1 完全没有经过人工查看、实际使用或运行验收。`buildReady: true` 也不改变当前 `releaseReady: false` 的状态。

## 实现方式

本项目采用 RStudio 官方 locale 架构：

- GWT 界面文本使用 `*_zh_CN.properties`。
- Electron 界面文本使用 `zh-CN.json`。
- 少量尚未接入 i18n 的硬编码界面文本通过 `source-patches.json` 精确登记并接入本地化资源。
- 在锁定的上游源码上应用这些资源后，重新构建 GWT 和 Electron 前端资源。

`rstudio.exe`、`rsession` 及其他原生程序不会被重新编译或修改。本仓库也不包含完整 RStudio、完整上游源码、构建缓存或本机候选目录。

## 版本与安全边界

本项目采用严格版本锁定，不尝试对未知 RStudio 版本进行通用补丁。

- 只接受 `version.json` 登记的上游版本、提交和文件结构。
- 同步源码、工具下载、官方原版和补丁文件均进行版本或 SHA-256 校验；不匹配时拒绝继续。
- 安装器从已验证的官方原版创建新的候选目录，不覆盖原版。
- 文件写入、复制和移动操作必须位于配置的安全根目录内。
- 产品名、代码标识符、函数名、路径、外部网页以及尚未接入 i18n 的后端内容会有意保留英文。

## 使用

### 普通用户

当前暂无可直接下载安装的 compiled Release。如果后续完成前端补丁的发布审核，将通过 GitHub Releases 提供版本锁定的下载内容。

如果你只希望安装和使用中文版，目前不需要把下面的源码构建流程视为必需步骤；可以等待后续发布公告。当前构建流程主要面向开发者、贡献者和希望自行验证源码的用户。

## 从源码构建

公开构建和 CI 基线为 Windows 与 PowerShell 7：

```powershell
.\src\Bootstrap-BuildTools.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\src\Sync-RStudioSource.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\src\Build-RStudioZhCn.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\tests\Test-Repository.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
```

脚本会取得并验证锁定的上游源码与工具链，只重新构建需要的 GWT/Electron 前端资源。安装候选和运行验收流程见下方文档。

## 路径配置

默认配置使用 `D:\R` 作为 workspace 根目录。该值仅代表默认开发布局，并非强制要求。

所有主要脚本都可通过 `-WorkspaceRoot` 使用其他目录，也可以设置环境变量：

```powershell
$env:RSTUDIO_ZH_CN_WORKSPACE = 'E:\rstudio-zh-workspace'
```

如需分别配置 tools、upstream、RStudio 等安全根，可复制 `config/paths.psd1` 为被 Git 忽略的 `config/paths.local.psd1` 并设置 `Roots`。显式路径参数仍必须位于对应的安全根内。

## 文档

- [架构说明](docs/architecture.md)
- [构建说明](docs/build.md)
- [安装说明](docs/installation.md)
- [测试说明](docs/testing.md)
- [翻译维护说明](docs/translation-guide.md)

## 许可与商标

本项目按 `AGPL-3.0-only` 维护。上游来源、修改边界和许可证详情见 [LICENSE](LICENSE)、[NOTICE](NOTICE)、[SOURCE](SOURCE)、[UPSTREAM.md](UPSTREAM.md) 和 [`licenses/`](licenses/)。RStudio、Posit 及相关标识属于其各自权利人；本项目与 Posit 无隶属关系，也未获得其官方认可。
