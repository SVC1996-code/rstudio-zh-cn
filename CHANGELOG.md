# 更新日志

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
