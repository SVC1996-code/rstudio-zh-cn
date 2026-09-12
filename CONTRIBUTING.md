# 贡献指南

## 基本原则

- 不提交官方或修改后的 RStudio 完整程序文件。
- 不提交 `work`、备份、安装目录、AppData、截图中的个人信息或本机配置。
- 只修改明确登记的版本目录；新版本必须新增独立版本清单和词典。
- 产品名、代码、包名、函数名和路径不要机械翻译。

## 修改翻译

1. 修改对应版本 `upstream/` 下的 `_zh_CN.properties` 或 Electron `zh-CN.json`。
2. 现有上游文件的显示接入使用带精确匹配次数的 `source-patches.json` 规则。完整新增源码通过 `source-additions.json` 登记；不得用 overlay 偷换未登记的上游 Java 文件。R Markdown 显示 resolver 与 `rmd-template-i18n-contract.json` 同步维护。
3. 对已逐条人工确认的内容，在 `review-decisions.json` 登记 context、状态、审核来源和时间。
4. 运行 `Update-TranslationProvenance.ps1`，不要手工伪造 `reviewed` 或 `releaseReady`。
5. 在锁定的英文上游源码上运行 `tests/Test-Repository.ps1`。
6. 从未经修改的原版重新生成候选并完成运行验收。

提交信息应说明 RStudio 版本、受影响界面和测试结果。若文本在不同上下文含义不同，不要用全局替换强行翻译；请记录问题并设计上下文安全的规则。

## Panmirror 与内部值安全

Panmirror 来源和精确源码补丁登记在 `panmirror-source.json`；使用 `src/Build-PanmirrorZhCn.ps1` 和正式构建链，不修改预编译 bundle。保留固定 commit、源码包/lockfile 哈希、原 sourcemap 匹配证据和生成产物报告。源码兼容性不能表述为原 bundle 位级来源已获证明。

显示文本不能反写为 pane ID、command name、搜索字段、语言 token、引用 ID 或 YAML 参数。R Markdown 修改必须通过现有 internal fingerprint、`option_list`、resolver fallback 和 UI/ARIA 路径检查；不得更新基线掩盖意外内部值变化。表格 ID 保存等行为修复须单独说明并测试，不能归入文字润色。

构建通过、静态契约、实际运行抽样和逐条人工语言审核分别记录。已知限制见[测试说明](docs/testing.md)，语境待确认项见[翻译维护说明](docs/translation-guide.md)。过程报告、截图和审校导出放在仓库外；长期维护规则放在现有 docs 中。未发布修改写入 CHANGELOG 的 Unreleased，不改写旧 Release 的来源或验收快照。
