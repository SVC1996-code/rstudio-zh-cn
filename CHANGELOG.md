# 更新日志

## Unreleased

- 在已有 locale 之上接入 Import File、窗格显示、无障碍标签、通用对话框、项目/VCS/程序包等显示路径；修复 Source/Console compact 标题和 Visual Editor 固定文案。
- R Markdown 模板采用稳定内部上下文到集中显示 resolver 的映射；新增 source addition 登记、显示契约和内部字段 fingerprint 检查，保留原始 option 值及 YAML 标识。
- 从固定 Panmirror 源码应用受控补丁并重新构建，增加正式来源注册表及显示/内部值测试；命令面板动态标题中文优先双语，保留英文单词搜索，交叉引用内置类型仅本地化显示。
- **文档保存行为修复：** Visual Editor 的表格原始 ID 在 Pandoc AST/DOM 往返中保留，避免保存后丢失表格引用目标；这不是纯翻译修改，也未扩展为任意表格属性重构。
- Visual Editor 已完成代表性搜索、插入、保存重开和组件回归测试；未覆盖范围及既有搜索、构建恢复限制见[测试说明](docs/testing.md)。本地静态门禁通过不代表逐条翻译审核或新 Release 就绪。

以上尚未发布，不包含在下面的 RC1 ZIP 中。

## 2026-09-01 — RStudio Simplified Chinese Localization 2026.08.1+195 RC1

- 发布首个公开 GitHub Release，tag 为 `v2026.08.1+195-zh-cn-rc1`。
- 提供严格锁定 RStudio Desktop `2026.08.1+195` 的前端补丁 ZIP 和独立安装脚本，不重新分发完整 RStudio。
- 完成最终 Release ZIP 的独立安装验证和核心 smoke test；repository validation 12/12 PASS。
- 修复 CI 中单行 `git ls-remote` 输出被 PowerShell 当作标量后仅解析首字符的问题。

## v2026.08.1-zh.1

- 首个候选版本，锁定 RStudio `2026.08.1+195` 与提交 `8d474bc4`。
- 新增 GWT `_zh_CN.properties` 和 Electron `zh-CN.json` official locale 资源。
- 通过精确 source patches 接入语言选项和少量原先硬编码的显示文本。
- 只重编译 GWT/Electron 前端，保留官方原生程序。
- 增加统一 workspace/path 配置、版本与哈希拒绝策略、repository validation 和候选运行测试。
- PowerShell 7 作为公开构建和 CI 基线。
