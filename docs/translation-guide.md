# 翻译维护说明

## 正式资源

- GWT：`translations/<版本>/upstream/**/_zh_CN.properties`
- Electron：`translations/<版本>/upstream/src/node/desktop/src/assets/locales/zh-CN.json`
- 未接入 i18n 的显示文本：`source-patches.json`
- 上游与工具链锁定：`version.json`
- 审核状态：`translation-provenance.json` 和 `review-decisions.json`

目录 `upstream/` 只是按官方源码相对路径排列的中文 overlay，不是完整上游源码。

## 修改规则

1. GWT 中文文件的 key 必须与应用 source patches 后的英文 properties 完全一致。
2. Electron 中文 JSON 的叶节点 key 必须与英文 JSON 完全一致。
3. 保持 MessageFormat、`%s`、`${name}` 等占位符的数量和含义。
4. 保持 HTML 标签、实体、换行、制表符和转义结构。
5. 不翻译 command ID、类名、函数名、CSS 类、路径、URL、配置 key 和正则。
6. R、RStudio、Quarto、Stan、Git、GitHub、HTML、CSS、JavaScript、Python、PowerShell、Vim、Zotero、API、Posit Assistant 等名称原则上保留。

## 审核状态

- `translated`：已有中文，但没有逐条人工审核记录。
- `reviewed`：有 `review-decisions.json` 中的明确审核来源和时间。
- `allowed-english`：有明确依据允许保留英文。
- `needs-review`：有值但缺少翻译或保留英文的审核依据。
- `missing`：中英文 key 缺失或值为空。

不得根据“含有中文字符”自动认定为 `reviewed`。运行 `Update-TranslationProvenance.ps1` 只会根据显式 review decision 提升审核状态。

## Source patches

每条规则必须登记上游相对路径、精确 `find`、`replace` 和 `expectedOccurrences`。构建与 CI 都会在锁定源码上检查匹配次数；任何变化都会失败，不允许模糊或全局替换。

同一英文词在不同上下文含义不同时，应分别接入 locale key 或保留原文，不能为了覆盖率使用不安全的全局替换。
