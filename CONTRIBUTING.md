# 贡献指南

## 基本原则

- 不提交官方或修改后的 RStudio 完整程序文件。
- 不提交 `work`、备份、安装目录、AppData、截图中的个人信息或本机配置。
- 只修改明确登记的版本目录；新版本必须新增独立版本清单和词典。
- 产品名、代码、包名、函数名和路径不要机械翻译。

## 修改翻译

1. 修改对应版本 `upstream/` 下的 `_zh_CN.properties` 或 Electron `zh-CN.json`。
2. 若上游显示文本尚未接入 i18n，只能新增带精确匹配次数的 `source-patches.json` 规则。
3. 对已逐条人工确认的内容，在 `review-decisions.json` 登记 context、状态、审核来源和时间。
4. 运行 `Update-TranslationProvenance.ps1`，不要手工伪造 `reviewed` 或 `releaseReady`。
5. 在锁定的英文上游源码上运行 `tests/Test-Repository.ps1`。
6. 从未经修改的原版重新生成候选并完成运行验收。

提交信息应说明 RStudio 版本、受影响界面和测试结果。若文本在不同上下文含义不同，不要用全局替换强行翻译；请记录问题并设计上下文安全的规则。
