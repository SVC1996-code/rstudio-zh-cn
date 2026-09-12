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
- source addition 登记与实际 overlay 对齐，禁止未登记 Java 新增或上游 Java 覆盖。
- R Markdown 显示契约、resolver 对齐/fallback、控件与 ARIA 显示路径、内部字段 fingerprint 和 `option_list` 不变。
- JSON、UTF-8、PowerShell 语法和 `version.json` 必需字段。
- provenance 状态、计数和显式审核来源。
- 禁止完整程序、node_modules、编译缓存和超大临时文件。
- 高可信度凭据与核心脚本绝对本机路径。
- 固定 Panmirror 来源注册表及精确补丁格式。

CI 只同步 RStudio 源码并进行静态验证，不完整编译 RStudio 或 Panmirror，也不能替代实际 UI 验收。当前本地门禁通过不表示未推送代码已经通过远端 CI；检查数量以当次输出为准，不覆盖历史 Release 的测试快照。

## R Markdown 契约与升级诊断

`tests/RmdTemplateContract.ps1` 从锁定的 `RmdTemplateData.java` 提取 format、option、category 的显示定义及稳定上下文，与 `rmd-template-i18n-contract.json`、resolver 和资源对照：

- 新上下文没有映射：`MISSING_I18N_DISPLAY_NAME`。
- 上游英文变化：`UPSTREAM_DISPLAY_NAME_CHANGED`，需要重新确认语境，而不是自动继承旧审校。
- 已删除定义残留映射：`STALE_I18N_DISPLAY_NAME`。
- 同一上下文存在歧义：`AMBIGUOUS_I18N_DISPLAY_NAME`。

测试包含这些诊断的夹具以及未知 format/category/option 的 fallback。运行时保留英文 fallback 以避免空界面；门禁对未知/漂移项失败，不能把运行时 fallback 当作已完成本地化。

内部 fingerprint 排除显示字段，但包含模板/格式/选项 ID、扩展名、类型、默认值、`option_list`、format-specific 匹配和行为 flags。升级时先比较真实上游变化与本地补丁影响，不更新基线掩盖内部值变化。UI 必须保持 format label/value、category 分组 token/可见标题分离。还需真实保存 YAML 并读回，静态检查不代替该运行验证。

## Panmirror 验证层次

1. `tests/Test-PanmirrorSource.ps1` 默认只验证注册表结构；提供未修改的 `-SourceRoot` 和 `-OriginalSourceMap` 时，验证固定 lockfile、按顺序精确匹配补丁、源码及嵌入资源与官方 sourcemap 的一致性，不改源码。
2. `src/Build-PanmirrorZhCn.ps1` 取得源码、校验归档、应用补丁和安装锁定依赖后，实际执行 `tests/panmirror-display-contract.cjs`。此测试使用隔离源码的 TypeScript/React 依赖，检查动态 Chunk/Cell 标题、英文名称/keywords、动作入口、七类树节点、默认无 resolver 行为及表格 ID AST/DOM 往返等合同。
3. 实际构建执行 TypeScript、bundle JS 和 sourcemap JSON 检查。主构建比对 commit/registry/report/产物哈希，再纳入 patch manifest。
4. 通过准确候选路径和 manifest 逐文件哈希识别运行版本；仅 EXE 与原版相同不能证明前端最新。鼠标、键盘、滚动、插入、源码检查和保存重开必须实际操作，不以契约或进程存在代替。

全新构建步骤与已知恢复限制见[构建说明](build.md)。

## Candidate validation

`src/Test-RStudioZhCn.ps1` 面向本机候选，检查官方原版哈希、补丁清单、编译资源、JavaScript 语法、R/用户库、中文路径和人工 UI 复核状态。报告写入配置的 installer version root，不进入 Git。

人工 smoke test 至少覆盖启动/退出、Source、Console、Environment、Files、Plots、Packages、Help、Terminal、Project、Global Options、语言切换、菜单、右键菜单和对话框。

使用隔离 profile、临时文档与明确的测试数据，不操作用户正在编辑的文件，不在默认 R library 安装测试依赖。必要时对临时文件显式使用 UTF-8；ASCII 夹具无法保存 Emoji/中文不应直接归因于汉化。

辅助工具仍有维护价值：`src/Measure-RStudioStartup.ps1` 按指定 locale/候选测启动，`src/Monitor-RStudioMemory.ps1` 记录运行内存，`src/Restore-RStudioZhCn.ps1` 从指定备份恢复到不存在的目标目录。使用前核对参数与安全根，报告放仓库外，且仅退出本次测试实例。

## 当前 Unreleased 验收范围与限制

以下是已有运行证据的边界，不是宣称全部通过的新验收记录。RC1 的独立 ZIP 安装与 smoke test 属于已发布资产的历史结果，不代表当前源码的新 Release 已就绪。

| 组件 | 已有证据 | 仍未覆盖 / 限制 |
| --- | --- | --- |
| 动态命令面板 | 列表、滚动、中文优先双语标题；Bash/Python/Mermaid/GraphViz 英文关键词搜索、Enter 插入、原 token 保存重开；Heading 英文搜索、方向键与 Esc | 全部引擎只有生成路径/契约覆盖，未逐个执行语言运行环境；中文斜杠查询和带空格短语受原输入规则限制。双语显示不等于完整双语搜索；长英文后缀可能按原宽度省略 |
| 交叉引用 | 七个类型点击、显示及选中；真实章节/表格/公式目标；表格和公式筛选、引用插入、保存重开及原 ID 保留 | 图形、代码清单、定理缺正向目标插入；空状态点击不是插入验证。自定义/其他前缀模式未穷举 |
| Citation | 七来源面板切换及固定提示、按钮、空面板 | 未完整测试联网查询、登录、提交真实文献及服务错误状态 |
| Insert Table / 符号 | 实际 3×3 表格插入、单冒号；Emoji 与 Unicode 码位搜索插入、UTF-8 保存读回；肤色按钮和 Emoji 空状态 | 共享空状态最终未在 Unicode 模式重复操作；字符名称查询不保证全匹配，不改字符数据库 |
| Source / Console | compact/minimize/restore 中文标题；实际 R 表达式执行成功；候选正常退出 | 不是所有布局/语言组合的穷举验证 |
| D-29 R Markdown | 完整构建及显示契约、内部 fingerprint、option_list/fallback 检查 | 新建/已有 Format Options 的完整交互、HTML/PDF/Word/Presentation 文档生成、中英文 YAML 结构比较、保存读回仍缺运行证据；不能用本轮 Quarto 表格测试替代 |

其他过程报告中未补齐的测试仍保留为待验收，不因报告归档而变为 PASS：

- Assistant diagnostics 的复制按钮、AceEditorDiffView 的 Apply/Discard；需要相应服务/编辑状态。
- Web 主菜单 ARIA、Desktop 原生及 Web message-box builder 路径；链接控件 ARIA 未被后续可见链接类型测试等同覆盖。
- ShinyApps 账户标签、VCS 大文件警告、HTML widget/代码块条件图标、ODBC 安装警告的无障碍状态；aria-live 禁用/异常播报和逐项 mnemonic。
- 普通命令面板无结果、About 条件区域（含 Pro）、模板文件名、CSV Asciify、Rerun with Debug、Notebook 默认类型、新文档标签、ODBC 许可/下载、提交详情父提交等早期固定文案未全部逐项复测；不从其他对话框正常推断通过。
- SVN review/conflict、取得 R 版本失败、Package Manager 仓库选择与漏洞导航/更新、外部文件删除/移动提示，仍缺对应安全运行场景。

已有 D-29 独立候选检查曾报告：缺少原版全量 inventory、Import File properties 顺序匹配冲突、`source=Source` 不变量与显示资源“运行脚本”的冲突，以及 GWT-only 构建被检查为缺 Electron locale。当前 repository validation 通过不消除这些候选检查问题；本次清理不修改测试或将其失败记作通过。发布前需在完整新候选上重新执行并分类处理，不能跳过断言。

仍有效的语境待确认项见[翻译维护说明](translation-guide.md)。未来发行前按[发布检查清单](release-checklist.md)补充运行与来源证据；构建成功、抽样运行通过、逐条语言审核完成和 Release 就绪是四件不同的事。
