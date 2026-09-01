# 更新日志

## v2026.08.1-zh.1

- 首个候选版本，锁定 RStudio `2026.08.1+195` 与提交 `8d474bc4`。
- 新增 GWT `_zh_CN.properties` 和 Electron `zh-CN.json` official locale 资源。
- 通过精确 source patches 接入语言选项和少量原先硬编码的显示文本。
- 只重编译 GWT/Electron 前端，保留官方原生程序。
- 增加统一 workspace/path 配置、版本与哈希拒绝策略、repository validation 和候选运行测试。
- PowerShell 7 作为公开构建和 CI 基线。
