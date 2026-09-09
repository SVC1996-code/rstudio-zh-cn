# 第九批 Packages / Commands i18n 修复报告

## 结论

**PASS WITH KNOWN ISSUES**

D-20～D-25 已按既有 GWT 国际化架构接入。Repository validation 12/12 通过，完整 GWT 构建成功；独立候选能够启动并建立 R session。D-25 已通过 RStudio 自带的 command invocation 实际触发并验证。当前环境没有 Posit Package Manager 仓库入口，也没有可安全复用的漏洞数据，因此 D-20～D-24 的运行时状态按任务允许记为 `NOT TESTED`；其调用链、locale、占位符、完整构建和内部数据边界均已验证。

## 范围

本批仅处理 D-20、D-21、D-22、D-23、D-24、D-25。未处理 D-26～D-29、E/F 类或已完成的项目；没有修改 repository ID、URL、snapshot date、checkbox boolean、程序包名称、程序包版本、漏洞数据、navigation index、update callback、command ID、command lookup、protocol value 或后端参数。

## 逐项记录

| 编号 | 文件 | 英文 | 中文 | Existing / new key | Runtime |
|---|---|---|---|---|---|
| D-20 | `PackageManagerSelectRepositoryModalDialog.java` | `Select Repository` | `选择仓库` | 新增 `PackagesConstants.selectRepositoryCaption()` | NOT TESTED（当前无 Posit Package Manager 仓库入口） |
| D-21 | 同上 | `Show hidden repositories` | `显示隐藏的仓库` | 新增 `PackagesConstants.showHiddenRepositoriesLabel()` | NOT TESTED（当前无 Posit Package Manager 仓库入口） |
| D-22 | 同上 | `Use repository snapshot from specific date` | `使用指定日期的仓库快照` | 新增 `PackagesConstants.useRepositorySnapshotFromSpecificDateLabel()` | NOT TESTED（当前无 Posit Package Manager 仓库入口） |
| D-23 | `PackageVulnerabilityModalDialog.java` | `{0} {1}: Known Vulnerabilities` | `{0} {1}：已知漏洞` | 新增 `PackagesConstants.knownVulnerabilitiesTitle(String, String)` | NOT TESTED（当前无可安全复用的漏洞数据） |
| D-24 | 同上 | `Previous`; `Next`; `Update` | `上一个`; `下一个`; `更新` | 新增 Packages 模块自身的 `previousButtonText()`、`nextButtonText()`、`updateButtonText()` | NOT TESTED（当前无可安全复用的漏洞数据） |
| D-25 | `ApplicationCommandManager.java` | `Invalid Command`; `The command '{0}' does not exist.` | `无效命令`; `命令“{0}”不存在。` | 新增 `CoreClientConstants.invalidCommandCaption()` 与 `commandDoesNotExistMessage(String)` | PASS |

D-22 在现有简体中文资源中没有同一 Packages / repository 语境的可复用 key；项目其他模块已将 snapshot 译为“快照”，因此本批采用“仓库快照”，未复用 Packrat 或 renv 的业务专用 key。

D-24 的 `Update` 调用链实际发送 `install.packages("<package name>")` 后关闭对话框，语义是更新存在漏洞的程序包，不是刷新漏洞信息，因此译为“更新”。三个按钮均留在 Packages 模块，未跨模块复用语义或依赖方向不明确的通用 key。

## 源码接入方式

- `PackageManagerSelectRepositoryModalDialog` 新增一个 `PackagesConstants` 实例；对话框标题和两个 CheckBox 仅改用 locale display text。
- `PackageVulnerabilityModalDialog` 新增一个 `PackagesConstants` 实例；标题改为一次完整的双参数 MessageFormat 调用，三个按钮只替换构造时的显示文字。
- `ApplicationCommandManager` 新增一个 `CoreClientConstants` 实例；错误标题与正文改用 locale，`evt.getData().command()` 仍作为未修改的 command ID 传入。
- `source-patches.json` 新增 20 条精确、单次匹配规则，总数 260；涉及 9 个锁定上游文件。
- 所有规则均为 `expectedOccurrences: 1`，没有提交 patched upstream Java 或生成后的英文/法文资源副本。

## Internal / Display Safety

### D-20～D-22

- repository 表格数据、`PackageManagerRepository.getName()`、ID、URL 和 metadata 未改。
- `drawTable(event.getValue())` 及 hidden filtering 逻辑未改。
- snapshot checkbox 仍只控制 date input 的可见性。
- date input 的 `type="date"`、属性值读取和 `repository.setSnapshot(date)` 未改。
- 未选 snapshot 时仍写入内部值 `latest`。

### D-23～D-24

- 标题参数仍直接来自 `info.getName()` 和 `info.getVersion()`，仅由一个 locale message 负责排列和标点。
- `index_ = index_ - 1`、`index_ = index_ + 1`、按钮 enable 条件和漏洞列表未改。
- Update 仍通过原调用链构造并执行 `install.packages("<package name>")`，随后关闭对话框；程序包名称未本地化。

### D-25

- command lookup 仍为 `commands_.getCommandById(evt.getData().command())`。
- error condition 仍为 `command == null && !evt.getData().quiet()`。
- command ID 作为 `commandDoesNotExistMessage(...)` 的唯一参数原样传入。
- quiet、satellite forwarding、window mode 和 `command.execute()` 路径未改。

## Dynamic Message Safety

### D-23：package name / version

- Java 方法：`knownVulnerabilitiesTitle(String packageName, String packageVersion)`。
- English template：`{0} {1}: Known Vulnerabilities`。
- zh_CN template：`{0} {1}：已知漏洞`。
- `{0}` = package name，`{1}` = package version；英文、法文和简体中文的数量及顺序一致。
- 示例输入：package name = `dplyr`，version = `1.1.4`。
- English output：`dplyr 1.1.4: Known Vulnerabilities`。
- 中文输出：`dplyr 1.1.4：已知漏洞`。
- `dplyr` 和 `1.1.4` 未被本地化或改写。

### D-25：command ID

- Java 方法：`commandDoesNotExistMessage(String commandId)`。
- English resource template：`The command ''{0}'' does not exist.`；GWT MessageFormat 输出单个英文单引号。
- zh_CN template：`命令“{0}”不存在。`。
- `{0}` 在英文、法文和简体中文中均为唯一占位符。
- 示例 command ID：`batch9_missing_command`。
- English output：`The command 'batch9_missing_command' does not exist.`。
- 中文实际运行输出：`命令“batch9_missing_command”不存在。`。
- command ID 在界面中逐字符保持不变。

## Locale 与 provenance

- `PackagesConstants` 新增 7 个 key，`CoreClientConstants` 新增 2 个 key。
- 英文、法文和简体中文资源同步。
- GWT zh_CN：108 个文件，6259 个 key。
- Provenance entries：6366。
- `translated`：6077。
- `needs-review`：289。
- `reviewed`：0。
- `missing`：0。
- `releaseReady`：false。
- 9 个新增条目均按项目规则记为 `translated`，未自动标记为 reviewed。

## 静态验证

- Repository validation：12/12 PASS。
- Source patch validation：PASS（260 rules）。
- GWT locale key / display structure parity：PASS（108 files，6259 keys）。
- MessageFormat / placeholder consistency：PASS。
- Properties / JSON / UTF-8：PASS。
- Provenance consistency：PASS（6366 entries）。
- Duplicate key：PASS。
- `git diff --check`：PASS（仅行尾规范提示，无实际错误）。
- 构建源复核：9 个新方法、英文/法文/简体中文资源以及全部 display 调用位置均存在；本批规定的内部值和业务路径均保持不变。

## GWT 构建

- 命令：`pwsh -NoProfile -File .\src\Build-RStudioZhCn.ps1 -Version '2026.08.1+195' -WorkspaceRoot 'D:\R' -SourceRoot 'D:\R\work\rstudio-upstream\v2026.08.1+195' -BuildRoot 'D:\R\work\rstudio-zh-cn-build' -ToolsRoot 'D:\R\tools' -OriginalRStudioRoot 'D:\R\RStudio\2026.08.1-original' -InstallerRoot 'D:\R\installers\rstudio-zh-cn\2026.08.1+195' -SkipElectron`
- Run root：`D:\R\work\rstudio-zh-cn-build\runs\20260909-213222`。
- 结果：BUILD SUCCESSFUL。
- 总耗时：6 分 46 秒；GWT permutation 编译 291.396 秒，链接 4.655 秒。
- Closure：0 error，0 warning。
- 新增 Packages / CoreClient / MessageFormat / UiBinder / i18n / Gin warning：无。
- 已有 warning：Gin 引用 `jdk.internal.reflect.ConstructorAccessorImpl`，与本批无关。

## 独立候选与 Runtime smoke test

- 候选：`D:\R\RStudio\2026.08.1-zh-batch9-candidate`。
- 安装报告：`D:\R\installers\rstudio-zh-cn\2026.08.1+195\batch9-install-report.json`。
- 安装状态：`CANDIDATE_REVIEW_REQUIRED`；安装器应用 55 个 patch files。
- 候选 `rstudio.exe` 与官方原版 SHA-256 相同：`1618F0B582E9D402C5637DA20A054D69B63C1AF9DC05A1BFDB700FB748619DB6`。
- 基础运行：PASS。候选正常启动、建立 R session、简体中文主界面加载，Source / Console / Environment / Packages 可见，无灰屏或启动崩溃。
- D-20～D-22：NOT TESTED（runtime）。当前 session 的 Packages 窗格没有暴露 `packages_pane_repository_button`，说明没有可用的 Posit Package Manager 仓库上下文；未配置外部服务或修改真实 repository 设置。
- D-23～D-24：NOT TESTED（runtime）。当前没有可安全复用的漏洞数据或对应 Package Manager 服务；未伪造 vulnerability data，也未触发真实程序包更新。
- D-25：PASS。`rstudioapi` 程序包在该隔离 R library 中不可用，随后使用 RStudio 自带的 `.Call("rs_executeAppCommand", ..., PACKAGE = "(embedding)")` 安全触发 `batch9_missing_command`；实际对话框标题为“无效命令”，正文为“命令“batch9_missing_command”不存在。”。未修改或持久化 command 表。
- 测试完成后通过窗口正常退出；batch9 candidate 的 RStudio 与 rsession 进程均为 0。

## Git diff 摘要

- 4 个既有文件修改：`source-patches.json`、`translation-provenance.json`、`PackagesConstants_zh_CN.properties`、`CoreClientConstants_zh_CN.properties`。
- 1 个新增报告文件：`i18n_batch9_packages_commands.md`。
- 本批 20 条 source patch 在构建时修改 9 个锁定上游文件，但没有把修改后的上游文件提交到仓库。
- 未处理本批范围之外的 coverage candidate。
