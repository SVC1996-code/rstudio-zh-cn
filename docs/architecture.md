# 架构

本项目以 RStudio 官方 locale 机制为基础，不在已压缩 JavaScript 中搜索并替换英文。

## GWT

中文资源使用与英文、法语相同的 properties key，并以 `_zh_CN.properties` 命名。`source-patches.json` 为上游加入 `zh_CN` permutation、语言选项以及少量缺失的 locale key。构建脚本在一次性源码副本中应用这些规则，然后调用官方 GWT 构建。

## Electron

桌面主进程使用 `zh-CN.json`。源码补丁只负责注册 locale 和语言标识映射，随后使用锁定的 Node 工具链重新构建 Electron 前端资源。

## 安装边界

构建产物只包含 `resources/app` 下登记的前端文件。安装器验证官方原版、补丁 manifest 和文件 SHA-256，再将原版复制到新目录并覆盖登记的前端资源。原生可执行文件不重新编译、不修改。

## 可复现性

`version.json` 锁定上游 tag、commit、源码归档、工具链和官方关键文件哈希。同步脚本生成上游 lock；构建报告记录实际规则、资源数量和输出哈希。版本或匹配次数变化均导致失败。
