# 历史架构：已停用

早期原型曾直接修改编译后的 GWT/JavaScript 字符串，并试验动态脚本、MutationObserver、缓存强名和运行时覆盖。该方案出现过灰屏、缓存切换、内存异常、上下文误译和内部标识符风险，因此已停止使用。

当前正式流程只使用 official locale resources、精确 source patches 和官方前端构建。旧 `gwt.json`、`overrides.json`、options 审计表、`dynamic-ui.zh-CN.js` 与 `tutorial-page.zh-CN.js` 均不是构建输入。

数 GiB 的历史候选和编译原型只保存在本地 `legacy-prototypes`，不会进入 GitHub。需要追溯仓库内旧小文件时使用 Git 历史，不要恢复到正式构建目录。
