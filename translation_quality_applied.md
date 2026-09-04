# 第一轮翻译质量修改记录

## 范围

- 审校来源：`rstudio_zh_translation_audit.xlsx`
- 已应用：30 条（P0 8 条、P1 20 条、P2 2 条）
- 修改文件：7 个 `*_zh_CN.properties` locale 资源；另使用项目现有生成脚本同步 `translation-provenance.json` 中对应的中文值
- 未修改：key、占位符、内部 ID、Java、UiBinder XML、JavaScript、TypeScript、Electron 资源和程序逻辑
- provenance 状态未提升：`translated: 6016`、`reviewed: 0`、`allowed-english: 0`、`needs-review: 288`、`missing: 0`、`releaseReady: false`
- 本轮没有执行 i18n coverage audit，也没有新增 i18n key。

## 已应用修改

### P0

| key | 文件路径 | 英文原文 | 修改前 | 修改后 | 修改理由 |
|---|---|---|---|---|---|
| `unregisteredLiveAnnouncementMessage` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/application/StudioClientApplicationConstants_zh_CN.properties` | `Unregistered live announcement: ` | `未注册直播公告 :` | `未注册的实时播报：` | 调用位于 `AriaLiveService` 的无障碍播报诊断日志；live announcement 指屏幕阅读器实时播报，不是直播公告。 |
| `disabledAriaLiveAnnouncementsDescription` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/prefs/model/UserPrefsAccessorConstants_zh_CN.properties` | `List of aria-live announcements to disable.` | `禁用 aria- live 通知列表。` | `要禁用的 aria-live 通知列表。` | 这是用户首选项说明；`aria-live` 是固定技术名称，连字符后不能插入空格。 |
| `disabledAriaLiveAnnouncementsTitle` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/prefs/model/UserPrefsAccessorConstants_zh_CN.properties` | `Disabled aria-live announcements` | `已禁用 aria- live 通知` | `已禁用的 aria-live 通知` | 这是用户首选项标题；修复固定技术名称 `aria-live`，并补足中文定语结构。 |
| `showVCSMenuLabel` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/projects/StudioClientProjectConstants_zh_CN.properties` | `Show _{0}` | `显示  {0}` | `_显示 {0}` | `Projects` 将该值用于动态 VCS 菜单项；保留一个菜单助记键标记，并遵循现有中文菜单把 `_` 放在开头的形式。 |
| `zoomVCSMenuLabel` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/projects/StudioClientProjectConstants_zh_CN.properties` | `Zoom _{0}` | `缩放  {0}` | `_缩放 {0}` | `Projects` 将该值用于动态 VCS 窗格菜单项；恢复丢失的菜单助记键标记。 |
| `diffName` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `_Diff "{0}"` | `“{0}”的差异` | `_“{0}”的差异` | `SourceColumn` 将该值设置为 VCS 文件差异菜单标签；恢复助记键，保留 `{0}`。 |
| `logOfName` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `_Log of "{0}"` | `“{0}”的提交记录` | `_“{0}”的提交记录` | `SourceColumn` 将该值设置为 VCS 文件日志菜单标签；恢复助记键，保留 `{0}`。 |
| `viewNameOnGithub` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `_View "{0}" on GitHub` | `在 GitHub 上查看“{0}”` | `_在 GitHub 上查看“{0}”` | `SourceColumn` 将该值设置为 GitHub 查看菜单标签；恢复助记键，保留 GitHub 和 `{0}`。 |

### P1

| key | 文件路径 | 英文原文 | 修改前 | 修改后 | 修改理由 |
|---|---|---|---|---|---|
| `autoRunSetupChunkTitle` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/prefs/model/UserPrefsAccessorConstants_zh_CN.properties` | `Automatically run Setup chunk when needed` | `需要时自动运行设置块` | `需要时自动运行 setup 代码块` | 这是 R Markdown 自动运行 setup chunk 的首选项标题；与同组 `setup 代码块` 用语一致。 |
| `chunkHtmlOutputFrame` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/EditorsTextConstants_zh_CN.properties` | `Chunk HTML Output Frame` | `块 HTML 输出框架` | `代码块 HTML 输出框架` | 该值传给 `ChunkOutputFrame`，指代码块的 HTML 输出框架。 |
| `chunkHtmlPageOutputFrame` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/EditorsTextConstants_zh_CN.properties` | `Chunk HTML Page Output Frame` | `块 HTML 页面输出框架` | `代码块 HTML 页面输出框架` | 该值用于 `ChunkHtmlPage` 中的代码块页面输出框架。 |
| `chunkCapitalized` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `Chunk` | `块` | `代码块` | `StatusBarWidget` 使用该值作为代码块范围图标的替代文本。 |
| `chunkNameColon` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `Chunk Name:` | `块名称 :` | `代码块名称：` | `ChunkOptionsPopupPanel` 中的代码块名称标签；统一术语并修正中文冒号。 |
| `chunkOptions` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `Chunk options` | `块选项` | `代码块选项` | `ChunkOptionsPopupPanel` 中的帮助链接文本；此处明确指 R Markdown 代码块。 |
| `chunkSequence` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `Chunk {0}` | `块 {0}` | `代码块 {0}` | Visual Mode 使用该值标识按序号排列的代码块；保留 `{0}`。 |
| `defaultChunkOptions` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `Default Chunk Options` | `默认块选项` | `默认代码块选项` | `SetupChunkOptionsPopupPanel` 使用该值作为默认代码块选项标题。 |
| `executingChunks` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `Executing chunks` | `执行块` | `正在执行代码块` | `NotebookQueueState` 中的执行状态文本；统一 chunk 术语并明确进行时。 |
| `executingPythonChunks` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `Executing Python chunks` | `执行 Python 块` | `正在执行 Python 代码块` | `NotebookQueueState` 中的 Python 代码块执行状态；保留 Python 品牌名。 |
| `unnamedChunk` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `Unnamed chunk` | `未命名块` | `未命名代码块` | `ChunkOptionsPopupPanel` 使用该值作为未命名代码块输入框提示。 |
| `clearExistingChunkOutputMessage` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `Do you want to clear all the existing chunk output from your notebook?` | `您想要从笔记本中清除所有现有的块输出吗 ?` | `是否清除笔记本中现有的所有代码块输出？` | `TextEditingTargetNotebook` 的清除输出确认提示；统一代码块术语并修正问句和标点。 |
| `confirmGitRepoLabel` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/projects/StudioClientProjectConstants_zh_CN.properties` | `Checking for git repository...` | `正在检查 git 仓库...` | `正在检查 Git 仓库…` | 项目版本控制设置中的进度提示；这里的 Git 指版本控制系统名称。 |
| `confirmGitRepoMessage` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/projects/StudioClientProjectConstants_zh_CN.properties` | `Do you want to initialize a new git repository for this project?` | `您想要初始化此项目的新 git 仓库吗 ?` | `是否要为此项目初始化新的 Git 仓库？` | 项目版本控制设置中的确认对话框；Git 是系统名称，并修正中文问句。 |
| `initializingGitRepoMessage` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/projects/StudioClientProjectConstants_zh_CN.properties` | `Initializing git repository...` | `初始化 git 仓库...` | `正在初始化 Git 仓库…` | `Projects` 创建 Git 仓库时的进度提示；Git 是系统名称，状态使用进行时。 |
| `toggleShowMemoryUsageLabel` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/commands/CmdConstants_zh_CN.properties` | `Toggle Memory Usage Display in Environment Pane` | `在环境面板中切换内存使用显示` | `切换环境窗格中的内存使用情况显示` | 这是 Environment Pane 的命令标签；Pane 统一为“窗格”，不与 Panel“面板”混用。 |
| `vcsCommitLabel` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/commands/CmdConstants_zh_CN.properties` | `Commit Pending Changes` | `提交待决更改` | `提交待处理的更改` | 与同一命令的 `vcsCommitDesc=提交待处理的更改` 保持一致。 |
| `refreshNowCapitalized` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/ViewVcsConstants_zh_CN.properties` | `Refresh Now` | `现在刷新` | `立即刷新` | `GitPane` 使用该值生成立即刷新菜单项；“立即刷新”符合中文 UI 习惯。 |
| `checkForExternalEditFileDeletedMessage` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/EditorsTextConstants_zh_CN.properties` | `The file {0} has been deleted or moved. Do you want to close this file now?` | `文件 {0} 已删除或移动。 您现在要关闭此文件吗 ?` | `文件 {0} 已被删除或移动。是否立即关闭此文件？` | `TextEditingTarget` 检测外部删除或移动后的确认提示；保留 `{0}`，修正语序和中文标点。 |
| `saveWithPromptMessage` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/EditorsTextConstants_zh_CN.properties` | `The document ''{0}'' has unsaved changes.\n\nDo you want to save these changes?` | `文件 ''{0}'' 有未保存的更改。\n\n您要保存这些更改吗 ?` | `文档 ''{0}'' 有未保存的更改。\n\n是否保存这些更改？` | `TextEditingTarget` 的未保存文档提示；按英文 document 使用“文档”，保持 `''{0}''` 和 `\n\n` 不变。 |

### P2

| key | 文件路径 | 英文原文 | 修改前 | 修改后 | 修改理由 |
|---|---|---|---|---|---|
| `closeAllOthers` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `Close All Others` | `关闭所有其它` | `关闭其他所有标签页` | `Source` 用该值执行保留当前文档、关闭其他 Source 文档标签页的操作；明确对象并统一“其他”。 |
| `closeOther` | `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties` | `Close Other` | `关闭其它` | `关闭其他标签页` | `Source` 用该值处理关闭其他 Source 文档；明确对象并统一“其他”。 |

## 未采用的建议和保留项

“高置信度修改”工作表中的 30 条建议全部采用，没有驳回项。

以下内容来自“需上下文确认”工作表，本轮按要求保留原文：

| 条目 | 调用位置或范围 | 本轮结论 |
|---|---|---|
| `anchorHomeText` | `PathBreadcrumbWidget.java:176-184`，当文件对话框路径项被识别为 `context_.isRoot(item)` 时显示 | 实际用于文件/目录导航的 home 根节点；“主页”与“主目录”的最终取舍需要结合运行界面确认，本轮不改。 |
| `authoringRPresentationsHelpDesc` | `CmdConstants.java:1719-1723`，属于 `authoringRPresentationsHelp` 命令描述 | 上游英文自身为 `Guide to using R Markdown`，与命令名存在复用或不一致；不按词面机械修改。 |
| `helpRStudioAccessibilityLinkLabel` | `TerminalPreferencesPane.java:190`，帮助目标为 `rstudio_terminal` | key 名虽含 Accessibility，但实际是终端设置帮助链接；当前“使用 RStudio 终端”符合调用位置，本轮不改。 |
| `doubleCapitalized` | `DataImportOptionsUiCsv.java:141`，添加到 escape 选项列表并对应 `escapeDouble_` | 实际指 CSV 转义使用双引号，当前“双引号”符合上下文，本轮不改。 |
| `screenReaderStateEnabled` | `UserPrefs.java:309`，用于播报屏幕阅读器启用状态 | 仅涉及括号风格，不是语义问题；本轮不改。 |
| `enableScreenReaderDescription` | `UserPrefsAccessor.java:3414`，屏幕阅读器首选项说明 | 仅涉及句末标点；不在高置信度修改清单中，本轮不改。 |
| `free software` | R 启动信息，不属于本项目 6,304 条 RStudio i18n 资源 | GNU 语境中的“自由软件”不是误译，且不在本轮范围。 |

“术语一致性”工作表中的宽范围规则没有批量应用。本轮只修改了“高置信度修改”明确列出的条目。例如，`EditorsTextConstants_zh_CN.properties` 中仍有 `chunks=块`；该项没有列入高置信度修改表，保留给后续结合实际界面审阅。普通中文冒号、问号和省略号也没有全局替换。

“建议自动检查规则”仅用于本轮核验，没有修改测试脚本或新增自动修复逻辑。
