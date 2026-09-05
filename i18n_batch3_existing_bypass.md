# 第三批源码级 i18n 修复报告：既有 i18n 绕过路径

## 结论

**PASS WITH KNOWN ISSUES**

本批仅处理 B-03～B-10。B-03～B-06 与 B-10 已完成实际运行验证；B-07 和 B-08/B-09 已通过精确 source patch、调用链检查和实际 GWT 构建验证，但在不配置 Posit Assistant 的隔离环境中无法安全触发对应对话框或编辑器 diff 状态，因此标记为 `NOT TESTED`。没有处理 B-11 或任何 C、D、E、F 类候选。

## 修改文件

- `translations/2026.08.1+195/source-patches.json`
  - 新增 14 条针对锁定上游源码的精确、单次匹配补丁。
- `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/EditorsTextConstants_zh_CN.properties`
  - 新增 Source editor diff 自有的 `Discard` / `Apply` 中文资源。
- `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/ViewVcsConstants_zh_CN.properties`
  - 将既有 `dateCapitalized` 的半角括号改为中文全角括号，保留 `UTC`。
- `translations/2026.08.1+195/translation-provenance.json`
  - 按现有生成规则增加 2 条 `translated` 记录，并刷新 `dateCapitalized` 的中文值。
- `i18n_batch3_existing_bypass.md`
  - 本报告。

没有直接提交修改后的 Java 或 UiBinder 上游源码副本。构建时由 `source-patches.json` 在一次性源码树中对锁定上游进行精确修改。

## B-03～B-10 实现

| 编号 | 位置 | 英文 | 中文 | 实现方式 | 运行结果 |
|---|---|---|---|---|---|
| B-03 | `CommitDetail.ui.xml` | `Author` | `作者` | 将硬编码 `<td>` 改为 `authorLabel_`，绑定后复用 `ViewVcsConstants.authorCapitalized()` | PASS |
| B-04 | `CommitDetail.ui.xml` | `Date (UTC)` | `日期（UTC）` | 将硬编码 `<td>` 改为 `dateLabel_`，绑定后复用 `ViewVcsConstants.dateCapitalized()` | PASS |
| B-05 | `CommitDetail.ui.xml` | `Subject` | `主题` | 将硬编码 `<td>` 改为 `subjectLabel_`，绑定后复用 `ViewVcsConstants.subjectCapitalized()` | PASS |
| B-06 | `ConsoleError.ui.xml` | `Show Traceback` | `显示调用栈` | 移除 Anchor 内部英文 literal，绑定后复用 `StudioClientCommonConstants.showTracebackText()` | PASS |
| B-07 | `AssistantDiagnosticsDialog.java` | `Copy to Clipboard` | `复制到剪贴板` | 复用已有 `CoreClientConstants.copyToClipboardLabel()`；按钮 callback 和复制逻辑不变 | NOT TESTED |
| B-08 | `AceEditorDiffView.java` | `Discard` | `放弃` | 新增 Source editor 自有 key `diffViewDiscardLabel`，避免依赖 VCS 模块 | NOT TESTED |
| B-09 | `AceEditorDiffView.java` | `Apply` | `应用` | 新增 Source editor 自有 key `diffViewApplyLabel`，不复用语义不同的 Apply key | NOT TESTED |
| B-10 | `AboutDialogContents.ui.xml` | `Open Source Components` | `开源组件` | 移除 XML 的英文 `text`，绑定后复用 `StudioClientApplicationConstants.openSourceComponentsText()` | PASS |

### 既有 key 复用

- `ViewVcsConstants.authorCapitalized`
- `ViewVcsConstants.dateCapitalized`
- `ViewVcsConstants.subjectCapitalized`
- `StudioClientCommonConstants.showTracebackText`
- `CoreClientConstants.copyToClipboardLabel`
- `StudioClientApplicationConstants.openSourceComponentsText`

Console 使用项目现有同语境译法 `显示调用栈`，没有改为建议中的 `显示回溯`，以保持既有术语一致。

### 新增 key

| key | 英文 | 法文 | 简体中文 |
|---|---|---|---|
| `EditorsTextConstants.diffViewDiscardLabel` | `Discard` | `Abandonner` | `放弃` |
| `EditorsTextConstants.diffViewApplyLabel` | `Apply` | `Appliquer` | `应用` |

`AceEditorDiffView` 属于 Source editor，并非 VCS 对话框。为避免从 Source editor 引入不合理的 VCS constants 依赖，B-08 和 B-09 使用同模块组件自有 key。

## 行为与内部标识完整性

下列内容均未修改：

- widget ID、UiField 的既有数据字段和显示值字段。
- 按钮 callback、Anchor handler、diff Apply / Discard 行为。
- Git commit 数据、日期值、SHA、VCS 命令 ID。
- Assistant 命令、复制逻辑、默认按钮状态。
- About 对话框 URL、许可证文本和品牌内容。
- `UTC` 技术名称。

本批只改变用户可见显示文本的取得路径。新增的三个 Commit Detail `UiField` 仅承载标签文字，不参与数据或控制流。

## source patch 与 provenance

- source patch：由 77 条增加到 91 条，本批新增 14 条；每条对锁定上游的预期匹配数均为 `1`。
- 新增 provenance：2 条，均为 Source editor diff 新 key，状态为 `translated`。
- 已有 `dateCapitalized` provenance 更新为 `日期（UTC）`，状态仍为 `translated`。
- 最终 provenance：`entries=6315`、`translated=6027`、`reviewed=0`、`allowed-english=0`、`needs-review=288`、`missing=0`、`releaseReady=false`。

## 静态验证

命令：

```powershell
pwsh -NoProfile -File .\tests\Test-Repository.ps1 -WorkspaceRoot D:\R
git diff --check
```

结果：

- Repository validation：`12/12 PASS`
- source patch validation：91 条规则格式与预期匹配检查通过
- GWT locale：108 个文件、6208 个 key，一致
- Electron locale：107 个 key，一致
- placeholder consistency：PASS；本批字符串没有占位符
- properties / JSON / UTF-8：PASS
- duplicate key：未发现
- provenance consistency：PASS
- `git diff --check`：PASS
- 非本地化业务逻辑：未修改

## 实际 GWT 构建

构建命令：

```powershell
pwsh -NoProfile -File D:\R\rstudio-zh-cn\src\Build-RStudioZhCn.ps1 `
  -WorkspaceRoot D:\R `
  -InstallerRoot D:\R\installers\rstudio-zh-cn\batch3-existing-321d9e0
```

- 独立构建树：`D:\R\work\rstudio-zh-cn-build\runs\20260905-213314`
- 独立 patch：`D:\R\installers\rstudio-zh-cn\batch3-existing-321d9e0\patch`
- 总体状态：`BUILD_PASS_REVIEW_REQUIRED`
- GWT：`BUILD SUCCESSFUL`
- Ant 总耗时：6 分 52 秒
- GWT permutation 编译：297.140 秒；link：4.879 秒
- 完整前端构建约耗时：8 分 33 秒
- Closure：0 error、0 warning
- 产物：58 个 manifest 登记的前端文件
- 新增 UiBinder / i18n / Gin warning：无
- 构建日志只有既有 Gin/JDK `ConstructorAccessorImpl` warning 和上游 npm 依赖弃用 warning，未导致构建失败。

## 运行时 smoke test

- 安装来源：官方原版 + 本批独立 patch。
- 独立候选：`D:\R\RStudio\2026.08.1-zh-batch3-existing-321d9e0`
- `rstudio.exe` 版本：`2026.08.1+195`
- `rstudio.exe` SHA-256：`1618F0B582E9D402C5637DA20A054D69B63C1AF9DC05A1BFDB700FB748619DB6`，与官方原版一致。
- 使用隔离配置以 `zh_CN` 启动，R session 建立成功；正常退出后候选进程和 rsession 均为 0。

### Commit Detail（B-03～B-05）

- 创建仅含一条提交的临时 Git 项目，并从 RStudio 的 VCS History 实际打开提交详情。
- 详情区显示 `作者`、`日期（UTC）`、`主题`；SHA 与提交内容正常。
- 表格选择与提交详情加载正常，无空标签、裸 key、乱码或明显截断。
- 初次临时仓库由沙箱账户创建，RStudio libgit2 因 Windows 所有者不一致拒绝打开；仅修正临时测试目录所有者并重启后，VCS 正常识别。这是测试夹具权限问题，不是本批代码回归。

### Console Error（B-06）

- 安全触发普通错误和嵌套调用错误，错误卡片显示 `显示调用栈`。
- 点击后完整调用栈正常展开，证明 Anchor handler 和 traceback 行为保持正常。
- 未出现空标签、裸 key、乱码、占位符或布局截断。

### Assistant Diagnostics（B-07）

- `assistantDiagnostics` 命令在未配置 Posit Assistant 的隔离环境中返回，但没有打开诊断对话框。
- 因而 `复制到剪贴板` 未完成运行时目视验证，标记为 `NOT TESTED`。
- 静态调用链已确认按钮仍使用原有 callback；`CoreClientConstants.copyToClipboardLabel()` 已存在且中文为 `复制到剪贴板`；实际 GWT 构建通过。

### Ace Editor Diff（B-08、B-09）

- 该视图仅由 Posit Assistant 编辑建议路径创建，隔离环境未配置 Assistant，无法在不扩大测试范围的前提下安全触发。
- `放弃` / `应用` 标记为 `NOT TESTED`。
- 静态调用链、同模块 constants 依赖、英/法/中 locale key 和实际 GWT 构建均通过；Apply / Discard handler 未修改。

### About（B-10）

- “关于 RStudio”对话框实际显示 `开源组件`，没有英文回退、空标签或乱码。
- 点击链接成功打开“开源组件”许可证列表，关闭后返回 About 对话框正常，证明链接行为未受影响。

运行时证据保存在本地隔离构建证据目录中，不纳入源码仓库。

## Git diff 摘要

在生成本报告前：

- `source-patches.json`：新增 84 行（14 条规则）。
- `translation-provenance.json`：新增 16 行、删除 4 行（2 条新记录、计数/时间及 Date 中文刷新）。
- `EditorsTextConstants_zh_CN.properties`：新增 2 行。
- `ViewVcsConstants_zh_CN.properties`：修改 1 行。
- 合计：4 个既有 tracked 文件，103 insertions、5 deletions；另新增本报告。

