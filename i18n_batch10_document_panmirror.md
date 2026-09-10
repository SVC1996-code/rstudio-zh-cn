# 第十批 Document / Panmirror i18n 修复报告

## 结论

**PASS WITH KNOWN ISSUES**

D-26～D-28 已按既有 GWT 国际化架构接入。Repository validation 12/12 通过，完整 GWT 构建成功；独立候选能够启动并建立 R session。D-26 的 Quarto 默认标题和 D-28 的 Panmirror 链接类型均已实际验证。D-27 的源码调用链、locale、完整构建和标题/文件名边界已验证，但当前隔离运行环境缺少 R Markdown 所需程序包，依赖门禁阻止了新建对话框显示，因此其运行时状态记为 `NOT TESTED`；没有安装到系统库，也没有伪造依赖来制造通过结果。

## 范围

本批仅处理 D-26、D-27、D-28。未处理 D-29、E/F 类或其他 coverage candidate；没有修改文档内部类型、文件名参数、Panmirror link type 数值、链接目标、数据结构、序列化值或程序逻辑。

## 逐项记录

| 编号 | 文件 | 英文 | 中文 | 新增 key | Runtime |
|---|---|---|---|---|---|
| D-26 | `NewQuartoDocumentDialog.java` | `Untitled` | `未命名` | `QuartoConstants.untitledDocumentTitle()` | PASS |
| D-27 | `NewRMarkdownDialog.java` | `Untitled` | `未命名` | `ViewsSourceConstants.untitledDocumentTitle()` | NOT TESTED（隔离环境缺少 R Markdown 依赖） |
| D-28 | `PanmirrorHRefSelect.java` | `URL`; `Heading`; `ID` | `URL`; `标题`; `ID` | `PanmirrorConstants.urlLinkTypeLabel()`、`headingLinkTypeLabel()`、`idLinkTypeLabel()` | PASS |

## D-26 / D-27 标题语义与调用链

### Quarto

- `NewQuartoDocumentDialog` 只把默认编辑框内容从硬编码 `"Untitled"` 改为 `constants_.untitledDocumentTitle()`。
- `getResult()` 仍读取 `txtTitle_.getText().trim()` 并写入 `Result.title`。
- `QuartoCommands.newQuarto()` 仍把该字段写入 YAML `title`；创建 source document 时传入的文件名参数仍为 `""`。
- 相关调用链没有把 `"Untitled"` 当作 sentinel、command ID、内部枚举或分支条件。
- 实际运行中，新建 Quarto 文档的标题输入框显示“未命名”；创建后的未保存标签页仍由 RStudio 命名为 `Untitled2`，而 YAML 显示 `title: "未命名"`。这证明显示/文档标题已本地化，内部未保存文件名没有被污染。

### R Markdown

- `NewRMarkdownDialog` 只把默认编辑框内容从硬编码 `"Untitled"` 改为 `constants_.untitledDocumentTitle()`。
- `collectInput()` 仍把编辑后的标题传入 `RmdNewDocument`；后续仍由 `RmdFrontMatter.applyCreateOptions()` 和 `frontMatterToYAML()` 生成 front matter。
- `SourceColumnManager.newRMarkdownV2Doc()` 创建 source document 时传入的文件名参数仍为 `""`。
- 相关调用链没有把 `"Untitled"` 当作 sentinel、文件名、内部 ID 或逻辑比较值。
- 本批没有改变用户输入标题后生成文档内容的语义；仅将默认标题值本地化为“未命名”。

## D-28 display / internal value 边界

- `type_.addItem(displayText, Integer.toString(PanmirrorLinkType.*))` 的第二参数保持不变。
- `PanmirrorLinkType.URL`、`PanmirrorLinkType.Heading`、`PanmirrorLinkType.ID` 的定义和值未改。
- `getType()` 仍解析 combo value，并按原有 numeric link type 分支；只替换用户可见的第一参数。
- 实际运行中下拉列表显示 `URL / 标题 / ID`。
- 切换到“标题”后仍能列出 `Quarto`、`Running Code` 等 heading target；切换到 `ID` 后仍能列出测试目标 `#batch10-id`。链接类型切换和目标列表功能正常。

## 源码接入方式

- `NewQuartoDocumentDialog` 复用已有的 `QuartoConstants` 实例；新增一个无参数字符串 key。
- `NewRMarkdownDialog` 复用已有的 `ViewsSourceConstants` 实例；新增一个无参数字符串 key。
- `PanmirrorHRefSelect` 复用已有的 `PanmirrorConstants` 实例；新增三个仅用于 display label 的无参数字符串 key。
- 英文、法文通过 14 条 `source-patches.json` 精确规则接入锁定上游；每条均为 `expectedOccurrences: 1`。
- 简体中文值保存在对应 `*_zh_CN.properties` 中。
- Source patch 总数由 260 增至 274；没有提交 patched upstream Java 或生成后的英文/法文资源副本。

## Locale 与 provenance

- 新增 i18n key：5 个。
- GWT zh_CN：108 个文件，6264 个 key。
- Provenance entries：6371。
- `translated`：6080。
- `needs-review`：291。
- `reviewed`：0。
- `missing`：0。
- `releaseReady`：false。
- `URL` 和 `ID` 按现有 provenance 规则记为 `needs-review`；其余三个新增条目记为 `translated`。没有自动标记为 reviewed。

## 静态验证

- Repository validation：12/12 PASS。
- Source patch validation：PASS（274 rules）。
- GWT locale key / display structure parity：PASS（108 files，6264 keys）。
- MessageFormat / placeholder consistency：PASS。
- Properties / JSON / UTF-8：PASS。
- Provenance consistency：PASS（6371 entries）。
- Duplicate key：PASS。
- `git diff --check`：PASS（仅行尾规范提示，无实际错误）。
- 两处 `Untitled` 硬编码只存在于锁定的原始上游副本中，构建时由精确 source patch 替换；没有全局字符串替换。

## GWT 构建

- 命令：`pwsh -NoProfile -File .\src\Build-RStudioZhCn.ps1 -Version '2026.08.1+195' -WorkspaceRoot 'D:\R' -SourceRoot 'D:\R\work\rstudio-upstream\v2026.08.1+195' -BuildRoot 'D:\R\work\rstudio-zh-cn-build' -ToolsRoot 'D:\R\tools' -OriginalRStudioRoot 'D:\R\RStudio\2026.08.1-original' -InstallerRoot 'D:\R\installers\rstudio-zh-cn\2026.08.1+195' -SkipElectron`
- Run root：`D:\R\work\rstudio-zh-cn-build\runs\20260910-001908`。
- 结果：BUILD SUCCESSFUL；发布门禁状态 `BUILD_PASS_REVIEW_REQUIRED`。
- 总耗时：6 分 46 秒；GWT permutation 编译 294.423 秒，链接 4.648 秒。
- Closure：0 error，0 warning。
- 新增 Document / Panmirror / i18n / UiBinder warning：无。
- 已有 warning：Gin 引用 `jdk.internal.reflect.ConstructorAccessorImpl`，与本批无关。

## 独立候选与 Runtime smoke test

- 候选：`D:\R\RStudio\2026.08.1-zh-batch10-candidate-20260910`。
- 安装报告：`D:\R\installers\rstudio-zh-cn\2026.08.1+195\batch10-install-report.json`。
- 安装状态：`CANDIDATE_REVIEW_REQUIRED`；安装器应用 55 个 patch files。
- 候选 `rstudio.exe` 与官方原版 SHA-256 相同：`1618F0B582E9D402C5637DA20A054D69B63C1AF9DC05A1BFDB700FB748619DB6`。
- 基础运行：PASS。候选正常启动、建立 R session、简体中文主界面加载，Source / Console / Environment 可见，无灰屏或启动崩溃。
- D-26：PASS。新建 Quarto 对话框默认标题显示“未命名”；创建后 YAML 标题为“未命名”，未保存标签页仍使用 RStudio 的通用 `Untitled2` 名称。
- D-27：NOT TESTED（runtime）。入口正常触发，但依赖门禁报告隔离环境缺少 `digest`、`htmltools`、`jsonlite`、`knitr`、`rmarkdown`、`yaml`，因此对话框未显示。未修改系统/用户程序包库，未以伪造包绕过门禁。
- D-28：PASS。链接对话框下拉列表显示 `URL / 标题 / ID`；Heading 与 ID 目标列表均正常生成和切换。
- 测试进程已退出；候选 RStudio 与 rsession 残留进程均为 0。

## Git diff 摘要

- 5 个既有文件修改：`source-patches.json`、`translation-provenance.json`、`QuartoConstants_zh_CN.properties`、`ViewsSourceConstants_zh_CN.properties`、`PanmirrorConstants_zh_CN.properties`。
- 1 个新增报告文件：`i18n_batch10_document_panmirror.md`。
- 本批 14 条 source patch 在构建时修改 9 个锁定上游文件，但没有把修改后的上游文件提交到仓库。
- 未处理本批范围之外的 coverage candidate。
