# 第六批高置信度界面 i18n 修复报告

## 结论

**PASS WITH KNOWN ISSUES**

D-01～D-12 已按既有 GWT 国际化架构接入，Repository validation 12/12 通过，完整 GWT 构建成功，独立候选能够启动并建立 R session。运行时逐项触发因 Windows 界面自动化被中断而未完成；未实际看到的目标文字均按 `NOT TESTED` 记录，不据此宣称运行时通过。

## 范围

本批仅处理 D-01～D-12。未处理 D-13～D-29、E/F 类或已完成的 A/B/C 类，也未修改内部 ID、handler、URL、序列化格式、R 参数或 YAML key。

## 逐项记录

| 编号 | 文件 | 英文 | 中文 | 接入方式 | Display / internal value | Provenance | Runtime |
|---|---|---|---|---|---|---|---|
| D-01 | `CommandPalette.ui.xml` | `No results found.` | `未找到结果。` | 新增 `PaletteConstants.noResultsFoundText`，UiBinder Label 仅增加 `ui:field`，构造后设置显示文本 | 纯显示 Label；命令 ID 与搜索逻辑未变 | translated | NOT TESTED（命令面板成功打开，输入步骤被中断） |
| D-02 | `AboutDialogContents.ui.xml` | `PRE-RELEASE BUILD` | `预发布版本` | 新增 UiBinder key `preReleaseBuildText` | 仅 ribbon 显示文本；版本判断未变 | translated | NOT TESTED（当前构建条件区域未检查） |
| D-03 | `AboutDialogContents.ui.xml` | `RStudio Pro License Status` | `RStudio Pro 许可证状态` | 新增 UiBinder key `proLicenseStatusText` | 仅 FormLabel；许可证状态和值未变 | translated | NOT TESTED（Pro 条件区域不可达） |
| D-04 | `RmdTemplateChooser.ui.xml` | `Untitled` | `未命名` | 新增 UiBinder key `untitledTemplateName`，Java 保存本地化初始显示值 | 显示为“未命名”；未编辑时 `getFileName()` 仍返回内部默认值 `Untitled` | translated | NOT TESTED |
| D-05 | `RSConnectLocalAccount.ui.xml` | `About Posit Connect` | `关于 Posit Connect` | 新增 UiBinder key `aboutPositConnectCaption` | 仅 HelpLink caption；`rstudio_connect` 链接目标未变 | translated | NOT TESTED（未配置外部账户） |
| D-06 | `DataImportOptionsUiCsvLocale.ui.xml` | `Asciify` | `转换为 ASCII` | 新增 UiBinder key `asciifyText` | CheckBox caption 与布尔值分离；`getAsciify()` / `asciify_.getValue()` 未变 | translated | NOT TESTED |
| D-07 | `ConsoleError.ui.xml` | `Rerun with Debug` | `使用调试重新运行` | 新增 `StudioClientCommonConstants.rerunWithDebugText`，复用既有 `rerunText` UiField | 仅 Anchor 文本；debug handler 与命令未变 | translated | NOT TESTED |
| D-08 | `CompileNotebookOptionsDialog.ui.xml` | `(Default)` | `（默认）` | 新增 UiBinder key `defaultTypeText` | 显示文本本地化；ListBox 的 `value="default"` 原样保留 | translated | NOT TESTED |
| D-09 | `NewQuartoDocumentDialog.ui.xml` | `Title:` / `Author:` | `标题：` / `作者：` | 新增 `QuartoConstants.newDocumentTitleLabel` / `newDocumentAuthorLabel`，FormLabel 通过 UiField 设置 | 仅标签；结果对象的 `title` / `author` key 未变 | translated | NOT TESTED |
| D-10 | `NewRMarkdownDialog.ui.xml` | `Title:` / `Author:` / `Date:` | `标题：` / `作者：` / `日期：` | 新增三个 UiBinder key | 仅标签；生成内容使用的 `title` / `author` / `date` YAML key 未变 | translated | NOT TESTED |
| D-11 | `NewConnectionPreInstallOdbcHost.ui.xml` | `Download and Install?` / `License:` | `下载并安装？` / `许可证：` | 新增 `ConnectionsConstants.downloadAndInstallLabel` / `licenseLabel`，使用 InlineLabel UiField | 仅显示标签；驱动、URL、许可证正文及安装逻辑未变 | translated | NOT TESTED（需要外部驱动条件） |
| D-12 | `CommitDetail.ui.xml` | `Parent` | `父提交` | 新增 `ViewVcsConstants.parentCommitLabel`，Label UiField 设置文本 | 仅标签；parent SHA 与 commit 数据结构未变 | translated | NOT TESTED |

## Display/Internal Value Safety

### D-04 `Untitled`

- 原内部默认值：`Untitled`。
- 新显示值：`未命名`。
- `RmdTemplateChooser` 在 UiBinder 绑定后记录本地化显示值；用户未编辑时，`getFileName()` 仍返回 `Untitled`。
- 模板 ID、路径结构和序列化格式未修改。

### D-06 `Asciify`

- 内部值：`DataImportOptionsCsvLocale` 中的 boolean `asciify`。
- 新显示值：`转换为 ASCII`。
- 初始化仍调用 `locale.getAsciify()`，收集输入仍调用 `asciify_.getValue()`；没有改变 R/readr 参数名或布尔语义。

### D-08 `(Default)`

- 内部值：ListBox item 的 `value="default"`。
- 新显示值：`（默认）`。
- 仅 item 内容进入 UiBinder i18n；内部 value、比较逻辑和序列化值保持英文 `default`。

### YAML / 数据键

Quarto 与 R Markdown 的 `title`、`author`、`date` 数据键保持英文。本批只改对应 FormLabel 的用户可见文字。

## 修改文件

- `translations/2026.08.1+195/source-patches.json`
- `translations/2026.08.1+195/translation-provenance.json`
- 11 个相关 `*_zh_CN.properties` 文件
- 本报告 `i18n_batch6_high_confidence_ui.md`

锁定上游 Java / UiBinder XML 没有直接提交到仓库；所有源码级改动继续由 `source-patches.json` 对锁定上游进行精确匹配。

## Locale 与 provenance

- Source patch rules：163 → 219。
- GWT zh_CN keys：6226 → 6242。
- Provenance entries：6333 → 6349。
- `translated`：6060。
- `needs-review`：289。
- `reviewed`：0。
- `missing`：0。
- `releaseReady`：false。
- 本批新增条目未标记为 reviewed。

## 静态验证

- Repository validation：12/12 PASS。
- Source patch validation：PASS（219 rules）。
- GWT locale key / display structure parity：PASS（108 files，6242 keys）。
- Placeholder consistency：PASS。
- Properties / JSON / UTF-8：PASS。
- Provenance consistency：PASS（6349 entries）。
- Duplicate key：PASS。
- `git diff --check`：PASS（仅行尾规范提示，无实际错误）。

## GWT 构建

- 命令：`pwsh -NoProfile -File .\src\Build-RStudioZhCn.ps1 -Version '2026.08.1+195' -WorkspaceRoot 'D:\R' -SourceRoot 'D:\R\work\rstudio-upstream\v2026.08.1+195' -BuildRoot 'D:\R\work\rstudio-zh-cn-build' -ToolsRoot 'D:\R\tools' -OriginalRStudioRoot 'D:\R\RStudio\2026.08.1-original' -InstallerRoot 'D:\R\installers\rstudio-zh-cn\2026.08.1+195' -SkipElectron`
- Run root：`D:\R\work\rstudio-zh-cn-build\runs\20260909-114718`。
- 结果：BUILD SUCCESSFUL。
- 总耗时：7 分 32 秒；GWT permutation 编译 334.810 秒，链接 4.599 秒。
- Closure：0 error，0 warning。
- 新增 UiBinder / i18n / enum / YAML warning：无。
- 已有 warning：Gin 引用 `jdk.internal.reflect.ConstructorAccessorImpl`，与本批无关。

## 独立候选与运行时

- 候选：`D:\R\RStudio\2026.08.1-zh-batch6-candidate`。
- 安装状态：`CANDIDATE_REVIEW_REQUIRED`，55 个 patch files。
- 候选 `rstudio.exe` 与官方原版 SHA-256 相同：`1618F0B582E9D402C5637DA20A054D69B63C1AF9DC05A1BFDB700FB748619DB6`。
- 已实际验证：RStudio 启动、R session 建立、简体中文主界面加载、Source / Console / Environment 可见，进程响应正常，无灰屏或启动崩溃。
- D-01 命令面板已打开；输入无匹配文本前窗口自动化被中断。
- 其余目标对话框未逐项实际看到，均记录为 NOT TESTED。
- 未观察到由本批导致的运行时故障，但由于目标控件覆盖不完整，本批不能给出完整 runtime PASS。

## Git diff 摘要

- 13 个既有文件修改：`source-patches.json`、`translation-provenance.json`、11 个 zh_CN locale 文件。
- 1 个新增报告文件。
- 无 Java、UiBinder XML、JavaScript、TypeScript 或其他非本地化上游文件直接进入 Git 工作树。
- 未处理本批范围之外的 coverage candidate。
