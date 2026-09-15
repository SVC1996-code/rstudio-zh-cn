# 更新日志

## Unreleased

暂无。

## 2026-09-15 — v2026.09.0+174-zh_CN-r1

- 不改变汉化前端内容，主要改进普通用户安装体验。
- 支持 Windows PowerShell 5.1 / PowerShell 7，无需另外安装 PowerShell 7；双击 CMD 即可安装。
- 自动检测官方 RStudio，支持手动选择目录、更改安装位置，以及可选启动和当前用户桌面快捷方式。
- 保留版本、关键文件和 patch SHA 严格校验，不覆盖原版或已有目标目录。

## 2026-09-13 — v2026.09.0+174-zh_CN

- 适配 RStudio 2026.09.0+174 Autumn Hawkbit，继续支持 GWT / Electron / Panmirror。
- 新增 editor split / administrator-managed Assistant 等界面翻译。
- Panmirror 固定到 `828ae28e53b796fb95a33bd7f3c7c109e0709649`；继续保留表格 reference ID 保存行为修复。
- 修复 Pane Layout extra Source column 预览中的英文 Source。
- 完善 New R Markdown 的“文档 / 演示文稿”及主要 guidance 文案；内部 ID / YAML 保持不变。
- 旧版 2026.08.1+195 继续保留。
- 已知上游行为：多 Source 列连续 zoom/restore 后部分 pane 可能暂时不可见；官方原版可复现，重启可恢复，本项目未修改该行为。

## 2026-09-12 — v2026.08.1+195-zh_CN

- 发布正式前端补丁包 `RStudio-2026.08.1+195-zh_CN.zip`，不包含完整 RStudio。
- 完善导入、窗格、无障碍标签、对话框、项目、VCS 与程序包等界面本地化，修复 Source/Console compact 标题。
- 本地化 R Markdown 模板与选项显示，保持内部值和 YAML 标识。
- 从固定源码重建 Visual Editor / Panmirror，完善动态命令、Citation、Cross Reference、Emoji 和 Unicode 界面，保留英文关键词搜索。
- **文档保存行为修复：** 保留表格原始 ID 的 Pandoc AST/DOM 往返，避免 Visual 保存后丢失表格引用目标；不是纯翻译修改。

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
