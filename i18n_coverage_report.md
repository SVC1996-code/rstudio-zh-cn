# RStudio GWT i18n coverage audit

## 审计范围与结论

- 审计基线：`main`，HEAD `02534d3e69d589418aef986b07f3e71cad1c12a1`。任务给出的 `2a236ff6e26bb9a149e99b110cb47b6992ed8578` 是其父提交；后一提交仅增加 smoke-test 文档，没有改变 GWT、locale 或运行逻辑。
- 上游锁定：RStudio Desktop `2026.08.1+195`，commit `8d474bc4cfad0e317095cd171e8ef44db6887068`。
- 扫描树：当前补丁已应用、最近一次成功构建使用的 `src/gwt/src`。同时以锁定上游源码和仓库中的 `source-patches.json` 交叉核对。
- 扫描文件：`2,789` 个（`2,687` 个 Java，`102` 个 UiBinder XML）。
- 方法：扫描 UiBinder 文本节点和显示/可访问性属性；扫描 Java 中 widget 构造、标题、标签、tooltip、ARIA、对话框和列表项；再沿调用链确认数据是否进入 UI，并与现有英文/中文 properties 按 key 或精确英文值交叉匹配。
- 本轮只生成报告；没有修改 Java、UiBinder、JavaScript、TypeScript、locale、source patch、构建或测试逻辑。

最重要的结论：

1. `ImportFileSettingsDialog.ui.xml` 中截图指出的 8 个标签均确认是直接写死的可见文本；`Heading` 另有一处隐藏 legend 未国际化。
2. 缩窄/最小化窗格后出现 `Environment`、`History`、`Tutorial` 的直接原因已定位：`PaneManager.getTabLabel()` 默认返回 `tab.toString()`。
3. Pane Layout 中单数 `Presentation` 的直接原因已定位：`PaneConfig.getPaneDisplayLabel()` 只映射了内部 ID `Presentations`，未映射 `Presentation`，最终回退原始 pane ID。
4. 另发现一组范围较大的明确绕行：`RmdTemplateData.java` 的 `format_ui_name`、`option_ui_name`、`option_category` 共 76 次直接进入 R Markdown 格式选项 UI，没有经过 GWT i18n。
5. `Posit Assistant`、`Posit AI`、`GitHub Copilot` 等品牌名没有列为漏翻。

## 分类说明

- **A — CONFIRMED HARD-CODED UI STRING**：截图或明确运行现象确认，且源码直接写死。
- **B — EXISTING I18N BYPASSED**：已有可用的本地化资源，但当前路径仍输出原始文本或内部值。
- **C — ACCESSIBILITY I18N GAP**：ARIA、alt、隐藏 legend 或 tooltip 未接入 i18n。
- **D — HIGH-CONFIDENCE CANDIDATE**：调用链明确进入 UI，但尚无本轮运行截图确认。
- **E — NEEDS CONTEXT**：用户可见性明确或可能明确，但是否应翻译、由谁维护仍需人工确认。
- **F — INTERNAL / DO NOT TRANSLATE**：内部标识、协议值、命令、代码或品牌；不得直接翻译。

路径均相对于锁定上游的 `src/gwt/src/`；行号以当前有效构建源为准。

## A. CONFIRMED HARD-CODED UI STRING

| 编号 | 文件与位置 | 英文 literal | 组件 / 可见性依据 | 现有 key | 推荐接入方式 | 风险 | 截图确认 | 下一阶段 |
|---|---|---|---|---|---|---|---|---|
| A-01 | `org/rstudio/studio/client/workbench/views/environment/dataimport/ImportFileSettingsDialog.ui.xml:25` | `Encoding` | 导入文件设置表单的可见 `FormLabel` | 本 Binder 无；其他导入界面有语义相近 key，不应直接猜测复用 | 在本 UiBinder 中增加有稳定 key 的 `ui:msg`/本地化属性 | 低 | 是 | 建议修改 |
| A-02 | `org/rstudio/studio/client/workbench/views/environment/dataimport/ImportFileSettingsDialog.ui.xml:30` | `Heading` | 表头选项左侧可见 `FormLabel` | 本 Binder 无 | 为可见 label 增加 UiBinder key；与 C-01 的 legend 使用同一语义、可分别设 key | 低 | 是 | 建议修改 |
| A-03 | `org/rstudio/studio/client/workbench/views/environment/dataimport/ImportFileSettingsDialog.ui.xml:43` | `Row names` | 行名选择框标签 | 本 Binder 无 | 增加 UiBinder key | 低 | 是 | 建议修改 |
| A-04 | `org/rstudio/studio/client/workbench/views/environment/dataimport/ImportFileSettingsDialog.ui.xml:48` | `Separator` | 分隔符选择框标签 | 本 Binder 无 | 增加 UiBinder key | 低 | 是 | 建议修改 |
| A-05 | `org/rstudio/studio/client/workbench/views/environment/dataimport/ImportFileSettingsDialog.ui.xml:53` | `Decimal` | 小数点选择框标签 | 本 Binder 无 | 增加 UiBinder key | 低 | 是 | 建议修改 |
| A-06 | `org/rstudio/studio/client/workbench/views/environment/dataimport/ImportFileSettingsDialog.ui.xml:58` | `Quote` | 引号选择框标签 | 本 Binder 无；`EditorsTextConstants.quote` 是另一语境 | 增加本 Binder 专用 key | 低 | 是 | 建议修改 |
| A-07 | `org/rstudio/studio/client/workbench/views/environment/dataimport/ImportFileSettingsDialog.ui.xml:63` | `Comment` | 注释符选择框标签 | 本 Binder 无；其他导入界面有相近 key | 增加本 Binder 专用 key | 低 | 是 | 建议修改 |
| A-08 | `org/rstudio/studio/client/workbench/views/environment/dataimport/ImportFileSettingsDialog.ui.xml:68` | `na.strings` | 缺失值字符串输入框标签；虽接近 R 参数名，但当前是明确的 UI label | 本 Binder 无 | 增加 UiBinder key；是否保留参数拼写由人工翻译阶段决定 | 低 | 是 | 建议修改 |

本文件已经正确接入的对照项是 `nameText`、`yesText`、`noText`、`stringsAsFactorsText`、`inputFileText`、`dataFrameText`。建议沿用同一机制，不应改控件 ID 或输入值。

## B. EXISTING I18N BYPASSED

| 编号 | 文件与位置 | 英文 literal / 原始值 | 组件 / 为什么可见 | 已有 key | 当前生成方式 | 推荐接入方式 | 风险 | 截图确认 | 下一阶段 |
|---|---|---|---|---|---|---|---|---|---|
| B-01 | `org/rstudio/studio/client/workbench/ui/PaneManager.java:2675-2690` | `Environment`、`History`、`Tutorial` 等 enum 名 | 最小化/窄布局的 tab label；`populateTabPanel()` 把 `getTabLabel()` 结果交给 `minimized.setTabs()` | `PrefsConstants.environmentPaneDisplayLabel`、`historyPaneDisplayLabel`、`tutorialPaneDisplayLabel` 等 | VCS/Presentation/Connections 取 `WorkbenchTab.getTitle()`，其余默认 `tab.toString()` | 以内部 enum/ID 查 `PaneConfig.getPaneDisplayLabel()` 或使用已本地化的 tab title；内部 enum 不变 | 中 | 是 | 建议小批修复并重点做 resize/minimize/restore 回归 |
| B-02 | `org/rstudio/studio/client/workbench/ui/PaneConfig.java:186-218` | 内部 ID `Presentation` | Pane Layout 列表调用 `getPaneDisplayLabel()`；单数 ID 未匹配，最终 `return paneId` | `PrefsConstants.presentationsPaneDisplayLabel` | 仅映射 `PRESENTATIONS_PANE`（复数），漏掉 `PRESENTATION_PANE`（单数） | 为单数内部 ID增加显示映射；不得改 ID 常量 | 低 | 是 | 建议修改 |
| B-03 | `org/rstudio/studio/client/workbench/views/vcs/dialog/CommitDetail.ui.xml:98` | `Author` | Git/SVN 提交详情表格标题 | `ViewVcsConstants.authorCapitalized` | UiBinder 原始文本节点 | 使用现有 VCS constant 或为 Binder 加对应 key | 低 | 否 | 建议修改 |
| B-04 | `org/rstudio/studio/client/workbench/views/vcs/dialog/CommitDetail.ui.xml:102` | `Date (UTC)` | 提交详情日期标题 | `ViewVcsConstants.dateCapitalized` | UiBinder 原始文本节点 | 使用现有 VCS constant 或为 Binder 加对应 key | 低 | 否 | 建议修改 |
| B-05 | `org/rstudio/studio/client/workbench/views/vcs/dialog/CommitDetail.ui.xml:106` | `Subject` | 提交详情主题标题 | `ViewVcsConstants.subjectCapitalized` | UiBinder 原始文本节点 | 使用现有 VCS constant 或为 Binder 加对应 key | 低 | 否 | 建议修改 |
| B-06 | `org/rstudio/studio/client/common/debugging/ui/ConsoleError.ui.xml:79-81` | `Show Traceback` | Console 错误块中的可点击命令 | `StudioClientCommonConstants.showTracebackText` | UiBinder 原始文本节点 | 绑定现有 constant，或为 Binder 增 key 并保持中文资源同源 | 低 | 否 | 建议修改 |
| B-07 | `org/rstudio/studio/client/workbench/assistant/ui/AssistantDiagnosticsDialog.java:65` | `Copy to Clipboard` | Assistant 诊断对话框按钮 | `CoreClientConstants.copyToClipboardLabel` | 直接 `new ThemedButton("...")` | 使用已注入的 `coreConstants_` | 低 | 否 | 建议修改；品牌名不动 |
| B-08 | `org/rstudio/studio/client/workbench/views/source/editors/text/AceEditorDiffView.java:103` | `Discard` | 编辑器 diff 状态栏可点击标签 | `ViewVcsConstants.discardCapitalized`（语义相符，但跨模块复用需确认） | 直接 `new Label("...")` | 优先为该编辑器组件增加自己的 constant；不要用字符串替换行为判断 | 低 | 否 | 建议修改 |
| B-09 | `org/rstudio/studio/client/workbench/views/source/editors/text/AceEditorDiffView.java:110` | `Apply` | 编辑器 diff 状态栏可点击标签 | `CoreClientConstants.addButtonTitle` / `applyThemeButtonText` 有相同英文但语境不同 | 直接 `new Label("...")` | 为该组件增加语义明确的 key，不建议复用名称不符的 key | 低 | 否 | 建议修改 |
| B-10 | `org/rstudio/studio/client/application/ui/AboutDialogContents.ui.xml:208` | `Open Source Components` | About 对话框可点击链接 | `StudioClientApplicationConstants.openSourceComponentsText` | UiBinder `text` 直接写死 | 绑定现有 key | 低 | 否 | 建议修改 |
| B-11 | `org/rstudio/core/client/widget/ModalDialog.java:43,84`；`org/rstudio/studio/client/common/dialog/DesktopDialogBuilderFactory.java:48`；`org/rstudio/studio/client/common/dialog/WebDialogBuilderFactory.java:39`；`org/rstudio/studio/client/common/rstudioapi/RStudioAPI.java:116` | `OK` | 多条通用对话框确认按钮路径 | Core 资源已有 OK/确认按钮语义资源 | 多处直接构造按钮 | 汇总到通用 Core constant；逐调用点确认按钮语义，不改回调或默认按钮行为 | 中 | 否 | 建议分批修改 |

## C. ACCESSIBILITY I18N GAP

| 编号 | 文件与位置 | 英文 literal | 组件 / 为什么用户可感知 | 已有 key | 推荐接入方式 | 风险 | 截图确认 | 下一阶段 |
|---|---|---|---|---|---|---|---|---|
| C-01 | `org/rstudio/studio/client/workbench/views/environment/dataimport/ImportFileSettingsDialog.ui.xml:32` | `Heading` | `FieldSetPanel` 的隐藏 legend，供辅助技术读取 | 无 | 为 `legend` 增 UiBinder attribute key；与 A-02 保持语义一致 | 低 | 部分（可见标签已确认） | 建议修改 |
| C-02 | `org/rstudio/studio/client/application/ui/impl/WebApplicationHeader.java:260,275` | `Main menu and toolbar`；`Main menu` | 顶部导航 landmark 的 ARIA label | 无精确 key | 在 `StudioClientApplicationConstants` 增两个可访问性 key | 低 | 否 | 建议修改 |
| C-03 | `org/rstudio/studio/client/workbench/ui/WorkbenchScreen.java:142` | `Workbench` | 主工作区 `main` landmark 的 ARIA label | 无精确 key | 在合适的 Workbench/Core constants 中增 key | 低 | 否 | 建议修改 |
| C-04 | `org/rstudio/studio/client/panmirror/dialogs/PanmirrorHRefSelect.java:76,81,91` | `HRef`；`Heading`；`IDs` | 可视化编辑器链接目标输入框/列表的 ARIA label | 无精确 key | 在 `PanmirrorConstants` 增语义明确的 accessibility keys | 低 | 否 | 建议修改 |
| C-05 | `org/rstudio/studio/client/panmirror/outline/PanmirrorOutlineWidget.java:76` | `Document Outline` | 文档大纲树的 ARIA label | `PanmirrorConstants` 当前无精确 key；其他模块已有 `documentOutline` | 使用 Panmirror 自己的 key，或经架构确认后复用现有 source key | 低 | 否 | 建议修改 |
| C-06 | `org/rstudio/core/client/widget/InfoBar.ui.xml:78` | `Dismiss infobar` | 信息栏关闭控件 title | 无精确 key | 给 UiBinder title 增 key | 低 | 否 | 建议修改 |
| C-07 | `org/rstudio/studio/client/rsconnect/ui/RSConnectCloudAccount.ui.xml:34` | `ShinyApps Token and Secret` | 令牌/密钥文本区域的 ariaLabel | 无当前 Binder key | 增 ariaLabel key；保留 ShinyApps 产品名 | 低 | 否 | 建议修改 |
| C-08 | `org/rstudio/studio/client/workbench/views/vcs/dialog/SizeWarningWidget.ui.xml:29` | `Warning` | 大文件警告图标 altText | 可在通用资源中找到警告语义，但本 Binder 未接入 | 给 altText 增 key | 低 | 否 | 建议修改 |
| C-09 | `org/rstudio/studio/client/workbench/views/source/editors/text/ChunkHtmlPreview.ui.xml:20` | `HTML Widget` | 代码块 HTML 预览图标 altText | 无当前 Binder key | 给 altText 增 key；HTML 保留 | 低 | 否 | 建议修改 |
| C-10 | `org/rstudio/studio/client/workbench/views/source/editors/text/ChunkConditionBar.ui.xml:42,47` | `Info`；`Warning` | 代码块条件提示图标 altText | 无当前 Binder key | 增两个 altText key | 低 | 否 | 建议修改 |
| C-11 | `org/rstudio/studio/client/workbench/views/environment/view/CallFramePanel.ui.xml:14` | `Current` | 当前调用帧箭头 altText | 无当前 Binder key | 增 altText key | 低 | 否 | 建议修改 |
| C-12 | `org/rstudio/studio/client/workbench/views/connections/ui/NewConnectionPreInstallOdbcHost.ui.xml:68` | `Warning` | ODBC 安装警告图标 altText | 无当前 Binder key | 增 altText key | 低 | 否 | 建议修改 |
| C-13 | `org/rstudio/studio/client/workbench/views/source/editors/text/status/NotebookProgressWidget.ui.xml:47` | `Interrupt` | Notebook 进度中断按钮 altText | 无当前 Binder key | 增 altText key | 低 | 否 | 建议修改 |
| C-14 | `org/rstudio/studio/client/workbench/views/source/editors/text/ChunkOutputWidget.ui.xml:258,262,266` | `Show in New Window`；`Clear Output`；`Expand/Collapse Output` | 代码块输出操作的 title；既是 hover 文本，也参与辅助说明 | 无当前 Binder key；仅有语义相近的 `interruptAndClearOutput` | 为三个 title 分别增 key | 低 | 否 | 建议修改 |
| C-15 | `org/rstudio/studio/client/workbench/views/source/editors/text/rmd/ChunkContextToolbar.ui.xml:78` | `Change Chunk Type` | R Markdown 代码块类型控件 title | 当前 Binder 只有 `modifyChunkTitle`，没有此 key | 为 title 增新 key | 低 | 否 | 建议修改 |

以下命中经检查不是 gap：About 对话框 `RStudio Logo`、Launcher 的 `Return to RStudio Workbench Home`、Chunk toolbar 的 `Modify Chunk Options`、Visual Mode 的帮助链接均已在紧邻的 `<ui:attribute>` 中接入 i18n。

## D. HIGH-CONFIDENCE CANDIDATE

| 编号 | 文件与位置 | 英文 literal | 组件 / 调用链 | 已有 key | 推荐接入方式 | 风险 | 截图确认 | 下一阶段 |
|---|---|---|---|---|---|---|---|---|
| D-01 | `org/rstudio/studio/client/palette/ui/CommandPalette.ui.xml:88` | `No results found.` | 命令面板无匹配结果的 visible label | 无 | 为 UiBinder 文本增 key | 低 | 否 | 建议修改 |
| D-02 | `org/rstudio/studio/client/application/ui/AboutDialogContents.ui.xml:151` | `PRE-RELEASE BUILD` | About 对话框条件显示的预发布 ribbon | 无 | 为 UiBinder 文本增 key | 低 | 否 | 建议修改 |
| D-03 | `org/rstudio/studio/client/application/ui/AboutDialogContents.ui.xml:213` | `RStudio Pro License Status` | Pro 许可证区域的 visible label（条件显示） | 无精确 key | 增 UiBinder key，保留 RStudio Pro 名称 | 低 | 否 | 建议修改 |
| D-04 | `org/rstudio/studio/client/rmarkdown/ui/RmdTemplateChooser.ui.xml:84` | `Untitled` | 模板选择器的名称输入默认文本 | 无 | 增 UiBinder key；确认它是默认值而非序列化值 | 低 | 否 | 建议修改 |
| D-05 | `org/rstudio/studio/client/rsconnect/ui/RSConnectLocalAccount.ui.xml:49` | `About Posit Connect` | Posit Connect 账户页帮助链接 caption | 无 | 本地化普通词 `About`，保留 Posit Connect 品牌；以完整 key 管理 | 低 | 否 | 建议修改 |
| D-06 | `org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiCsvLocale.ui.xml:95` | `Asciify` | CSV locale 高级选项 checkbox | 无 | 为 checkbox text 增 key；译法留人工审校 | 低 | 否 | 建议修改 |
| D-07 | `org/rstudio/studio/client/common/debugging/ui/ConsoleError.ui.xml:89-91` | `Rerun with Debug` | Console 错误块可点击命令 | 无精确 key | 为 Binder 增 key | 低 | 否 | 建议修改 |
| D-08 | `org/rstudio/studio/client/notebook/CompileNotebookOptionsDialog.ui.xml:42` | `(Default)` | 报告类型下拉框项 | 其他模块有 Default key，但没有本 Binder key | 增本 Binder key，保留下拉 value | 低 | 否 | 建议修改 |
| D-09 | `org/rstudio/studio/client/quarto/ui/NewQuartoDocumentDialog.ui.xml:20,29` | `Title:`；`Author:` | 新建 Quarto 文档表单 label | 无当前 Binder key | 增两个 UiBinder key | 低 | 否 | 建议修改 |
| D-10 | `org/rstudio/studio/client/workbench/views/source/editors/text/ui/NewRMarkdownDialog.ui.xml:24,33,42` | `Title:`；`Author:`；`Date:` | 新建 R Markdown 文档表单 label | 本 Binder 仅 `defaultOutputFormat` 已接入；三项无 key | 增三个 UiBinder key | 低 | 否 | 建议修改 |
| D-11 | `org/rstudio/studio/client/workbench/views/connections/ui/NewConnectionPreInstallOdbcHost.ui.xml:74,82` | `Download and Install?`；`License:` | ODBC 驱动安装确认与许可证标题 | 无 | 用 `ui:msg` 接入；驱动/路径值保持原样 | 低 | 否 | 建议修改 |
| D-12 | `org/rstudio/studio/client/workbench/views/vcs/dialog/CommitDetail.ui.xml:110` | `Parent` | 提交详情父提交标题 | VCS constants 无精确 `Parent` key | 为 VCS/Binder 增 key | 低 | 否 | 建议修改 |
| D-13 | `org/rstudio/studio/client/workbench/views/vcs/git/dialog/GitReviewPanel.ui.xml:71-75` | `5/10/25/50 lines`；`All lines` | Git diff 上下文行数下拉框显示文本 | 无 | 本地化显示文本，保持 values `5/10/25/50/-1` 不变；数量宜用 Messages | 低 | 否 | 建议修改 |
| D-14 | `org/rstudio/studio/client/workbench/views/vcs/svn/dialog/SVNReviewPanel.ui.xml:27` | `Context` | SVN diff 工具栏 label；Git 对应项已用 `contextText` | SVN Binder 无 | 为 SVN Binder 增 key或共用 VCS key | 低 | 否 | 建议修改 |
| D-15 | `org/rstudio/studio/client/workbench/views/vcs/svn/dialog/SVNReviewPanel.ui.xml:29-33` | `5/10/25/50 lines`；`All lines` | SVN diff 上下文行数下拉框 | 无 | 同 D-13；保持 values 不变 | 低 | 否 | 建议修改 |
| D-16 | `org/rstudio/studio/client/workbench/views/vcs/svn/SVNResolveDialog.ui.xml:87,103` | `Mine-All`；`Theirs-All` | SVN 冲突解决单选项 label；相邻说明已使用 `ui:msg` | 无 | 给 label 增 key，保持 radio value `mine-all`/`theirs-all` 不变 | 低 | 否 | 建议修改 |
| D-17 | `org/rstudio/studio/client/projects/ui/prefs/ProjectGeneralPreferencesPane.java:68-71` | 三句 project scratch path tooltip | Project Options 高级 scratch path 的 title | 无 | 加入 `StudioClientProjectConstants` message，保留换行 | 低 | 否 | 建议修改 |
| D-18 | `org/rstudio/studio/client/projects/ui/prefs/ProjectGeneralPreferencesPane.java:130` | `Advanced` | Project Options 分节标题 | 其他模块有同英文 key，但本模块无语义对应 key | 在 project constants 增 key | 低 | 否 | 建议修改 |
| D-19 | `org/rstudio/studio/client/workbench/views/console/ConsoleInterpreterVersion.java:278` | `Error fetching R version` | Console 解释器版本控件错误状态 | 无 | 加入 Console constants；`R` 产品/语言名保留 | 低 | 否 | 建议修改 |
| D-20 | `org/rstudio/studio/client/workbench/views/packages/ui/PackageManagerSelectRepositoryModalDialog.java:63` | `Select Repository` | 包管理器选择仓库对话框 caption | 无 | 为该对话框引入 constants key | 低 | 否 | 建议修改 |
| D-21 | `org/rstudio/studio/client/workbench/views/packages/ui/PackageManagerSelectRepositoryModalDialog.java:156` | `Show hidden repositories` | checkbox label | 无 | 增 key | 低 | 否 | 建议修改 |
| D-22 | `org/rstudio/studio/client/workbench/views/packages/ui/PackageManagerSelectRepositoryModalDialog.java:167` | `Use repository snapshot from specific date` | checkbox label | 无 | 增 key | 低 | 否 | 建议修改 |
| D-23 | `org/rstudio/studio/client/workbench/views/packages/ui/PackageVulnerabilityModalDialog.java:50` | `: Known Vulnerabilities` | 包漏洞对话框动态标题 | 无 | 使用 Messages 占位符拼接包名/版本，不改变数据值 | 中 | 否 | 建议修改 |
| D-24 | `org/rstudio/studio/client/workbench/views/packages/ui/PackageVulnerabilityModalDialog.java:66,76,86` | `Previous`；`Next`；`Update` | 漏洞对话框导航和更新按钮 | `CoreClientConstants.nextButtonText` 可覆盖 Next；其余无本组件 key | 使用通用或新增 package UI keys，逐项确认语义 | 低 | 否 | 建议修改 |
| D-25 | `org/rstudio/core/client/command/ApplicationCommandManager.java:119-120` | `Invalid Command`；`The command '{id}' does not exist.` | 外部/自动化请求未知命令时显示错误对话框 | 无 | 使用 Core Messages，保留 command ID 占位符原值 | 低 | 否 | 建议修改 |
| D-26 | `org/rstudio/studio/client/quarto/ui/NewQuartoDocumentDialog.java:153` | `Untitled` | 新建 Quarto 文档的默认标题值 | 无 | 加入 `QuartoConstants`；不改最终文档字段结构 | 低 | 否 | 建议修改 |
| D-27 | `org/rstudio/studio/client/workbench/views/source/editors/text/ui/NewRMarkdownDialog.java:190` | `Untitled` | 新建 R Markdown 文档的默认标题值 | 无精确 key | 加入 `ViewsSourceConstants` | 低 | 否 | 建议修改 |
| D-28 | `org/rstudio/studio/client/panmirror/dialogs/PanmirrorHRefSelect.java:59,62,64` | `URL`；`Heading`；`ID` | 可视化编辑器链接类型下拉框显示文本；第二参数才是内部数值 | 无 | 将第一个参数接入 `PanmirrorConstants`；URL/ID 是否保持英文由翻译审校决定 | 低 | 否 | 建议修改显示层，不动 `PanmirrorLinkType` |
| D-29 | `org/rstudio/studio/client/rmarkdown/model/RmdTemplateData.java:28-452` | 8 个 `format_ui_name`、45 个 `option_ui_name`、23 个 `option_category`（76 次，42 个唯一显示文本） | `RmdTemplateOptionsWidget`、`RmdBooleanOption`、`RmdNullableOption` 直接调用 `getUiName()`，将这些字段放入格式列表、checkbox 和 label；`option_category` 也用于 UI 分类 | 无统一 i18n 层 | 设计“内部 name/value 不变、ui_name/category 经 key 映射”的集中接入；不要翻译 `format_name`、`option_name`、`option_value` | 中 | 否（调用链确认） | 建议单独批次处理并完整回归新建 R Markdown/格式选项 |

D-29 的 42 个唯一显示文本包括普通 UI 说明（如 `Include table of contents`、`Apply theme`、`Figures`、`Advanced`）和应保留/谨慎处理的技术或产品名称（如 HTML、PDF、PowerPoint）。这里确认的是“显示数据未接入 i18n”，不是主张每个值都必须翻译。

## E. NEEDS CONTEXT

| 编号 | 文件与位置 | 英文 literal | 当前情况 | 为什么不能直接判断 | 推荐调查 | 风险 | 截图确认 | 下一阶段 |
|---|---|---|---|---|---|---|---|---|
| E-01 | `org/rstudio/studio/client/application/ui/AboutDialogContents.ui.xml:189-203` | 商标说明、AGPL 说明、`(opens in new window)` | About 对话框可见/可访问文本直接写死 | 法律与商标原文是否允许/需要本地化应由上游政策确认；URL 和许可证名不应翻译 | 确认 Posit 对 About 法律文本的本地化政策，再决定只本地化说明句还是整体保留 | 中 | 否 | 暂不修改 |
| E-02 | `org/rstudio/studio/client/panmirror/dialogs/PanmirrorEditMathDialog.ui.xml:20-21` | `ID`；`(e.g. #eq-lorenz)` | 数学公式 ID 表单标签与示例 | `ID`/`#eq-...` 是技术记法，是否只本地化 `e.g.` 需结合运行界面 | 截图确认该对话框及产品术语策略 | 低 | 否 | 暂不修改 |
| E-03 | `org/rstudio/studio/client/application/ui/RequestLogDetail.java:46-51` | `Request ID`、`REQUEST`、`RESPONSE` | Request Log 调试详情可见文本 | 面向开发者的诊断载荷，可能有意保持英文以便支持排查 | 确认该调试界面是否纳入中文化目标 | 低 | 否 | 暂不修改 |
| E-04 | `org/rstudio/studio/client/packrat/ui/PackratActionDialog.java:31` | `Packrat ` + `packratAction` | Packrat 操作对话框标题 | `packratAction` 的来源和值域需要确认；直接翻译可能破坏产品名或产生中英混排 | 追踪每个 action 的来源与是否仅用于显示 | 中 | 否 | 暂不修改 |

## F. INTERNAL / DO NOT TRANSLATE

以下是扫描中反复命中、但明确不能通过替换 literal 来处理的类别。统计按“内部类别/调用族”记录，而不是把数千个代码常量当作漏翻。

| 编号 | 文件与位置示例 | literal / 类别 | 用途 | 结论 |
|---|---|---|---|---|
| F-01 | `org/rstudio/studio/client/workbench/ui/PaneManager.java:2991-3000` | `History`、`Files`、`Presentation`、`Environment` 等 | pane internal ID / DI `@Named` / 配置匹配 | 不翻译；只修复 ID 到显示标签的映射 |
| F-02 | `org/rstudio/studio/client/workbench/ui/PaneManager.java:101-103` | `enum Tab` 值 | 程序控制流、序列化和查找 | 不翻译；B-01 只改显示出口 |
| F-03 | `org/rstudio/studio/client/workbench/prefs/model/UserPrefsAccessor.java:704,708` | `tabSet1`/`tabSet2` 中英文数组值 | 用户偏好序列化默认值 | 不翻译 |
| F-04 | `org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiCsvLocale.java:134-145` | `UTF-8`、`ISO-8859-1`、`GB18030` 等 | 编码标准名称，同时作为显示值和实际值 | 保持原样 |
| F-05 | `org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiSav.java:56-60` | `SAV`、`DTA`、`POR`、`SAS`、`Stata` | 文件格式/产品名和内部 value | 保持原样 |
| F-06 | `org/rstudio/core/client/widget/VimKeyInfo.ui.xml:20-337` | `gg`、`:wq`、`Ctrl+R`、`{motion}` 等 | Vim 命令和元语法 | 命令本身不翻译；周围说明若有独立 i18n key则正常翻译 |
| F-07 | 多处 RadioButton/MenuItem 第一参数，如 `snapshot`、`library`、`align`、`DefaultOutputFormat`、`shiny` | radio group name、command/help topic ID | DOM 分组、帮助主题、内部标识 | 不翻译 |
| F-08 | `RmdTemplateData.java` 中 `format_name`、`option_name`、`option_value` | R Markdown 格式/参数/序列化值 | 生成 YAML/R Markdown 配置 | 不翻译；仅 `_ui_name`/`_category` 是 D-29 显示层候选 |
| F-09 | `SVNResolveDialog.ui.xml:82-100` | `svnResolve`、`mine-all`、`theirs-all` | radio name/value | 不翻译；只处理相邻可见 label |
| F-10 | 多处 `RStudio`、`Quarto`、`Shiny`、`Python`、`PowerPoint`、`Posit Assistant`、`Posit AI`、`GitHub Copilot` | 产品、语言或服务名 | 品牌/技术名称 | 原则上保留；可以本地化其周围普通描述 |

## 已知但本轮不处理的语义项

- `org/rstudio/studio/client/workbench/views/source/editors/text/EditorsTextConstants_en.properties`：`source=Source`
- 对应中文：`EditorsTextConstants_zh_CN.properties`：`source=运行脚本`

这是既有翻译语义待确认项，不属于 coverage 缺口。本轮没有修改，也不应为了让候选检查器通过而改动。

## 统计

统计同时给出“报告条目组”和“实际 literal/调用点”，避免把同一组件的一组紧密相关文本夸大或缩小：

| 指标 | 报告条目组 | literal / 调用点 |
|---|---:|---:|
| 扫描文件 | — | 2,789（Java 2,687；UiBinder 102） |
| A：截图确认 hard-coded UI | 8 | 8 |
| B：existing i18n bypass | 11 | 15（B-11 覆盖 5 个 OK 调用点） |
| C：accessibility i18n gap | 15 | 21 |
| D：high-confidence candidate | 29 | 122（其中 D-29 为 76 次、42 个唯一显示文本） |
| E：needs context | 4 | 14 |
| F：internal / do not translate | 10 类 | 不以 literal 总数计数 |
| 高置信度可修复（A+B+C+D） | 63 组 | 166 个 literal / 调用点 |

## 建议的下一阶段顺序

1. 先修 A-01 至 A-08 与 C-01：单一 UiBinder、风险低、已有截图。
2. 再修 B-01/B-02：只调整 internal ID 到 localized display label 的出口，随后专测 resize、minimize、restore、Pane Layout。
3. 分批处理其余 B/C 和低风险 D，每批重新构建并做对应界面 smoke test。
4. D-29 单独设计和验证，避免把内部 YAML/format key 与 UI name 混在一起。
5. E 类保持不动，等待人工或上游政策确认。

本报告没有提出任何全局字符串替换，也没有建议翻译 pane ID、enum、协议值、JSON/preference key、路径、正则、命令或品牌名。
