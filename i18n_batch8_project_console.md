# 第八批 Project / Console i18n 修复报告

## 结论

**PASS WITH KNOWN ISSUES**

D-17～D-19 已按既有 GWT 国际化架构接入。Repository validation 12/12 通过，完整 GWT 构建成功；独立候选能够启动并建立 R session。D-17 与 D-18 已完成实际运行验证，项目选项中的完整项目临时路径提示和“高级”标题均显示为中文，路径选择控件可以正常打开并取消。D-19 位于取得 R 版本失败时的错误分支；为避免人为破坏当前 R 环境，本批按任务要求将该分支的运行时状态记为 `NOT TESTED`，其调用链、locale 和完整构建均已验证。

## 范围

本批仅处理 D-17、D-18、D-19。未处理 D-20～D-29、E/F 类或已完成的 A/B/C/D 项目；没有修改项目路径值、R 版本取得逻辑、RPC、handler、内部 ID、配置 key 或任何后端参数。

## 逐项记录

| 编号 | 文件 | 英文 | 中文 | 接入方式 | Runtime |
|---|---|---|---|---|---|
| D-17 | `ProjectGeneralPreferencesPane.java` | `The project scratch path is used to store internal RStudio state for this project. You may want to customize this path if the project is located on a high-latency network filesystem.`（空一行）`In this scenario, consider using a local filesystem for RStudio's project scratch path.` | `项目临时路径用于存储此项目的 RStudio 内部状态。如果项目位于高延迟网络文件系统上，您可能需要自定义此路径。`（空一行）`在这种情况下，请考虑将本地文件系统用于 RStudio 的项目临时路径。` | 将 `setTitle()` 的硬编码三句英文替换为 `StudioClientProjectConstants.projectScratchPathTooltip()` | PASS |
| D-18 | `ProjectGeneralPreferencesPane.java` | `Advanced` | `高级` | 将 `headerLabel("Advanced")` 替换为 `headerLabel(constants_.advancedTitle())` | PASS |
| D-19 | `ConsoleInterpreterVersion.java` | `Error fetching R version` | `获取 R 版本时出错` | 将错误回调中的硬编码文字替换为 `ConsoleConstants.errorFetchingRVersion()` | NOT TESTED（未人为制造 R 版本取得失败） |

## 新增 i18n key

- `StudioClientProjectConstants.projectScratchPathTooltip`
  - English：`The project scratch path is used to store internal RStudio state for this project. You may want to customize this path if the project is located on a high-latency network filesystem.\n\nIn this scenario, consider using a local filesystem for RStudio''s project scratch path.`
  - 简体中文：`项目临时路径用于存储此项目的 RStudio 内部状态。如果项目位于高延迟网络文件系统上，您可能需要自定义此路径。\n\n在这种情况下，请考虑将本地文件系统用于 RStudio 的项目临时路径。`
  - 特殊格式：保留一个 `\n\n` 段落分隔；无参数占位符。properties 中英文所有格的单引号按 GWT MessageFormat 规则写为 `RStudio''s`，运行时仍显示一个单引号。
- `StudioClientProjectConstants.advancedTitle`
  - English：`Advanced`
  - 简体中文：`高级`
  - 占位符：无。
- `ConsoleConstants.errorFetchingRVersion`
  - English：`Error fetching R version`
  - 简体中文：`获取 R 版本时出错`
  - 占位符：无。

英文、法文和简体中文资源同步。未复用语义不匹配的既有 key，也未修改任何既有 key。

## Source patch 与源码边界

- `source-patches.json` 新增 9 条精确、单次匹配规则，总数 240。
- 所有规则均为 `expectedOccurrences: 1`。
- 构建源中 D-17 只改变 `setTitle()` 的文本来源；scratch path 控件、placeholder、clear button、browse 行为和保存逻辑未变。
- D-18 只改变 `headerLabel()` 的文本来源。
- D-19 只改变 `onError(ServerError error)` 中 `label_.setText()` 的文本来源；`Debug.logError(error)`、RPC 和成功分支未变。
- 没有提交 patched upstream 副本。

## Provenance

- GWT zh_CN：108 个文件，6250 个 key。
- Provenance entries：6357。
- `translated`：6068。
- `needs-review`：289。
- `reviewed`：0。
- `missing`：0。
- `releaseReady`：false。
- 本批新增条目未自动标记为 reviewed。

## 静态验证

- Repository validation：12/12 PASS。
- Source patch validation：PASS（240 rules）。
- GWT locale key / display structure parity：PASS（108 files，6250 keys）。
- Placeholder consistency：PASS。
- Properties / JSON / UTF-8：PASS。
- Provenance consistency：PASS（6357 entries）。
- Duplicate key：PASS。
- `git diff --check`：PASS（只有行尾规范提示，无实际错误）。
- 构建源复核：3 个新方法、英文/法文/简体中文资源及 3 个调用位置均存在；项目路径值和 Console 错误流程未改变。

## GWT 构建

- 命令：`pwsh -NoProfile -File .\src\Build-RStudioZhCn.ps1 -Version '2026.08.1+195' -WorkspaceRoot 'D:\R' -SourceRoot 'D:\R\work\rstudio-upstream\v2026.08.1+195' -BuildRoot 'D:\R\work\rstudio-zh-cn-build' -ToolsRoot 'D:\R\tools' -OriginalRStudioRoot 'D:\R\RStudio\2026.08.1-original' -InstallerRoot 'D:\R\installers\rstudio-zh-cn\2026.08.1+195' -SkipElectron`
- 最终成功 run root：`D:\R\work\rstudio-zh-cn-build\runs\20260909-185742`。
- 结果：BUILD SUCCESSFUL。
- 总耗时：6 分 33 秒；GWT permutation 编译 285.598 秒，链接 4.580 秒。
- Closure：0 error，0 warning。
- 新增 Project / Console / i18n warning：无。
- 已有 warning：Gin 引用 `jdk.internal.reflect.ConstructorAccessorImpl`，与本批无关。
- 首次构建发现英文 properties 中 `RStudio's` 的 MessageFormat 单引号必须转义，构建报 `Unterminated single quote`；已将资源表示修正为 `RStudio''s`。修正后完整构建通过，运行时文本语义不变。

## 独立候选与 Runtime smoke test

- 候选：`D:\R\RStudio\2026.08.1-zh-batch8-candidate`。
- 安装报告：`D:\R\installers\rstudio-zh-cn\2026.08.1+195\batch8-install-report.json`。
- 安装状态：`CANDIDATE_REVIEW_REQUIRED`；安装器应用 55 个 patch files。
- 候选 `rstudio.exe` 与官方原版 SHA-256 相同：`1618F0B582E9D402C5637DA20A054D69B63C1AF9DC05A1BFDB700FB748619DB6`。
- 已实际验证：候选正常启动、建立 R session、简体中文主界面加载，Source / Console / Environment 可见，无灰屏或启动崩溃。
- D-17：PASS。项目选项的 accessibility description 实际载入完整三句中文；locale 中的 `\n\n` 段落分隔保持不变，界面中未出现英文、空提示、乱码或裸露转义符。
- 项目临时路径控件：PASS。当前 `.Rproj.user` 值保持不变；“浏览…”可正常打开系统目录选择器，取消后未改变配置。
- D-18：PASS。“高级”标题实际显示，无截断或布局异常。
- D-19：NOT TESTED（runtime）。没有通过移除 R、阻断 RPC 或破坏 session 来强制触发错误；已验证错误回调实际调用 `constants_.errorFetchingRVersion()`，且完整 GWT 构建通过。
- 测试完成后通过窗口正常退出；batch8 candidate 的 RStudio 与 rsession 进程均为 0。

## Git diff 摘要

- 4 个既有文件修改：`source-patches.json`、`translation-provenance.json`、2 个 zh_CN locale 文件。
- 1 个新增报告文件：`i18n_batch8_project_console.md`。
- 本批 9 条 source patch 在构建时修改 8 个锁定上游文件，但没有将 Java 或生成后的英文/法文资源副本直接提交到仓库。
- 未处理本批范围之外的 coverage candidate。
