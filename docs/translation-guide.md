# 翻译维护说明

## 正式资源

- GWT：`translations/<版本>/upstream/**/*_zh_CN.properties`
- Electron：`translations/<版本>/upstream/src/node/desktop/src/assets/locales/zh-CN.json`
- 未接入 i18n 的显示文本：`source-patches.json`
- 新增源码 overlay：`source-additions.json`（包括 `RmdTemplateDisplayNames.java`）
- R Markdown 稳定显示上下文与内部字段合同：`rmd-template-i18n-contract.json`
- Panmirror 固定源码、来源证据与精确源码补丁：`panmirror-source.json`
- 上游与工具链锁定：`version.json`
- 审核状态：`translation-provenance.json`、`translation-policy.json` 和可选的 `review-decisions.json`

目录 `upstream/` 只是按官方源码相对路径排列的中文 overlay，不是完整上游源码。

## 修改规则

1. GWT 中文文件的 key 必须与应用 source patches 后的英文 properties 完全一致。
2. Electron 中文 JSON 的叶节点 key 必须与英文 JSON 完全一致。
3. 保持 MessageFormat、`%s`、`${name}` 等占位符的数量和含义。
4. 保持 HTML 标签、实体、换行、制表符和转义结构。
5. 不翻译 command ID、类名、函数名、CSS 类、路径、URL、配置 key 和正则。
6. R、RStudio、Quarto、Stan、Git、GitHub、HTML、CSS、JavaScript、Python、PowerShell、Vim、Zotero、API、Posit Assistant 等名称原则上保留。

## 审核状态

- `translated`：已提供翻译，可以进入发行候选，不要求逐条签核；无汉字的合适本地化格式可明确登记为此状态。
- `reviewed`：可选的更高等级记录，有 `review-decisions.json` 中的真实审核来源和时间，不是发布必要条件。
- `allowed-english`：明确的技术/品牌英文、代码或格式模板；也包括中英文均为空的上游占位资源（不是漏翻）。
- `needs-review`：真实语境不确定或需人工判断的异常，不因缺少 reviewed 自动产生。未分类的英文需先分诊，不能自动放行。
- `missing`：中英文 key 缺失，或英文非空但中文为空/纯空白。

不得根据“含有中文字符”自动认定为 `reviewed`。运行 `Update-TranslationProvenance.ps1` 只会根据显式 review decision 提升审核状态。

采用自动一致性验证、运行时抽样验收及异常项人工确认。`translation-policy.json` 对例外登记完整 context、英文、中文、分类依据和 `releaseBlocking`；文本或 key 改变后旧记录拒绝沿用。新的已知阻塞问题必须登记 `releaseBlocking: true`，处理后根据真实依据更新，不能仅添加 reviewed 来覆盖问题。非阻塞 needs-context 以 note 披露，不强制清零。

provenance `releaseReady = missing == 0 AND 无未解决阻塞翻译问题`；它仅是资源门禁，不自动证明 repository validation、完整 clean build、关键 UI 运行验收或人工发布批准。未知未分类英文保守阻塞，明确保留英文无需伪造 review source/date。

## Source patches

每条规则必须登记上游相对路径、精确 `find`、`replace` 和 `expectedOccurrences`。构建与 CI 都会在锁定源码上检查匹配次数；任何变化都会失败，不允许模糊或全局替换。

同一英文词在不同上下文含义不同时，应分别接入 locale key 或保留原文，不能为了覆盖率使用不安全的全局替换。

## 稳定上下文与新增源码

R Markdown 采用“内部上下文 → 集中 display resolver → locale”而非翻译 model 字段。format 以稳定 ID 映射，option 同时考虑 template、所选 format、option name 与 format-specific 定义；同名英文只有语义和用户动作一致时才共用 key。category 原 token 继续作为分组键，仅标签和 ARIA 本地化。`option_list` 的 `default`、`xelatex`、主题名等是实际选择值，不能因出现在下拉框就翻译。

运行时未知上下文回退原英文/稳定 ID；维护门禁对 missing、stale、changed、ambiguous 映射失败。更新版本时先定位上游变化、同步受影响的合同/资源/调用点，再验证内部值，不为凑通过而更新 fingerprint。完整 source addition 必须登记来源、用途和构建参与情况；现有上游文件继续使用精确 patch，不允许未登记 Java overlay。

新增 GWT 方法需同步 en/fr/zh_CN key；没有可靠法语审校时明确保留英文 fallback，不自动生成法语。provenance 如实登记 `translated` / `needs-review`，不得把代码验收或“含中文”升级为 `reviewed`。

## Panmirror 显示接入

修改固定源码的生成/渲染出口，不修改预编译 bundle。整条动态消息使用完整模板，区分 Chunk/Cell，语言名、engine token、action、原关键词和代码围栏保持原样。命令面板可选 displayName 与搜索 name 分离；固定双语标题保留完整原英文，说明使用中文。双语策略仅用于相应命令面板显示，不向其他菜单扩散，也不宣称解决中文/空格搜索限制。

树标签 resolver 只改内置类型的可见与辅助名称，不改 node 数据、筛选值或用户文档标题。`Div`、`Span`、YAML、LaTeX、HTML、URL、ID 等保留技术含义。涉及文档内容保存（如表格 ID）的改动必须单独记为行为修复并测试保存读回，不能藏在翻译条目中。

## 保留的语境待确认项

以下为已有审校/coverage 记录的保留事项，不在仓库清理时自动修改：

| 位置或 key | 需要确认的边界 |
| --- | --- |
| About 法律/商标说明及 opens-in-new-window 辅助文字 | 核对上游本地化政策；版权、许可证名称和 URL 保留 |
| `PanmirrorEditMathDialog` 的 ID / `e.g. #eq-lorenz` | 技术记法不翻译，是否本地化说明词需结合界面 |
| `RequestLogDetail` 的 Request ID / REQUEST / RESPONSE | 是否把开发诊断载荷纳入本地化目标 |
| `PackratActionDialog` 的动态 `packratAction` | 来源和值域尚需确认，不对产品名或任意 action 字符串替换 |
| `anchorHomeText` | 文件导航 home 根节点；“主页/主目录”需结合实际位置 |
| `authoringRPresentationsHelpDesc` | 命令名与上游 `Guide to using R Markdown` 不一致，不按名称猜改 |
| `EditorsTextConstants.chunks` / `source` | 未在首轮30条修订中批量处理；代码块语境与 Source 动作/窗格名需分开，且候选校验器存在既有 Source 不变量冲突 |
| R Markdown 数据中的 PowerPoint `df_print`、未引用 `center`、被特定格式遮蔽的 generic option | 上游数据/可达性问题，不随显示翻译修改；`format_notes` 仍属独立范围 |

`helpRStudioAccessibilityLinkLabel` 实际指向终端帮助、CSV `doubleCapitalized` 指双引号转义，已按调用语境保留；屏幕阅读器括号/句末标点没有全局统一。R 启动信息的 free software 属于“自由软件”及 R 自身消息，不属于 RStudio locale 覆盖缺口。普通 `Assistant` 可按语境翻译，`Posit Assistant`、`Posit AI`、`GitHub Copilot` 等品牌保持原样。

运行覆盖和发布待办见[测试说明](testing.md)与[发布检查清单](release-checklist.md)。过程 CSV、人工审校原稿和 batch 报告归档在仓库外，正式资源、review decisions、provenance、合同和回归测试仍需保留。
