# 架构

本项目以 RStudio 官方 locale 机制为基础。

## GWT

中文资源使用与英文、法语相同的 properties key，并以 `_zh_CN.properties` 命名。`source-patches.json` 为上游加入 `zh_CN` permutation、语言选项、缺失的 locale key 和显示出口。构建脚本在一次性源码副本中应用精确匹配规则，然后调用官方 GWT 构建。`source-additions.json` 登记新增源码及用途；当前新增的 `RmdTemplateDisplayNames.java` 随 overlay 参与构建，不允许以未登记的 Java overlay 替换既有上游文件。

## R Markdown 模板显示边界

数据流为：稳定内部上下文 → `RmdTemplateDisplayNames` → localized display label。`NewRMarkdownDialog` 与 `RmdTemplateOptionsWidget` 共用 resolver；boolean、nullable、choice、string、float、file 控件接收显示 label，可见文本与 ARIA 一致。

- `RmdTemplateData` 保留原始数据和英文 fallback，不按当前 locale 改写 model，也不改成依赖注入对象。
- format 通过内部 `format_name`（必要时结合 `template_name`）映射；option 使用 template、所选 format、option name 和 format-specific 定义上下文，避免相同英文跨语境误复用。
- category 的原始 token 仍作分组键，只有可见分类标题本地化；下拉框保持 label/value 分离。
- `template_name`、`format_name`、`option_name`、`option_format`、默认值、类型、行为 flags 和 `option_list` 均不翻译。保存仍通过原 option key 和 typed widget value 写入 YAML。
- 未知上下文运行时回退原英文，若其缺失则回退稳定 ID，最后才是 `Unknown`；不会把中文显示名写回数据。开发/发布门禁则对未知或漂移的定义明确失败。

`rmd-template-i18n-contract.json` 与 `tests/RmdTemplateContract.ps1` 检查显示覆盖、resolver 对齐、fallback、内部字段 fingerprint 和 `option_list`。升级不能通过重置 fingerprint 来掩盖内部值变化。诊断规则见[测试说明](testing.md)，贡献边界见[翻译维护说明](translation-guide.md)。

## Electron

桌面主进程使用 `zh-CN.json`。源码补丁只负责注册 locale 和语言标识映射，随后使用锁定的 Node 工具链重新构建 Electron 前端资源。

## Panmirror / Visual Editor（当前未发布源码）

`panmirror-source.json` 独立登记固定源码 commit、源码归档与 lockfile 哈希、官方 bundle/sourcemap 校验依据和精确源码补丁。`Build-PanmirrorZhCn.ps1` 在隔离目录取得并验证源码，安装锁定依赖，运行显示/内部值契约，重建 `panmirror.js` 和 sourcemap。主构建脚本核对来源注册表与产物报告的哈希后，将新资源加入正式 patch manifest。不是直接修改压缩后的 JavaScript。

目前使用 `quarto-dev/quarto` 的提交 `63eebf6039c74573f54a87edbc9d29b30d26ceab`。官方构建分支依据及原 sourcemap 的第一方文本、嵌入资源匹配结果记录在注册表中；这是源码兼容性证据，不是原 bundle 位级构建来源完全一致的证明。

动态代码条目在生成入口翻译完整 Chunk/Cell 标题和说明，保留语言 token、原 name、keywords 和 action。可选 `displayName` 在命令面板渲染中文优先双语，Heading 同样保留英文搜索名称；其他界面不自动改为双语。固定标题通过受控宿主翻译入口接入。原有搜索算法不变，双语显示不代表完整双语搜索。

`NavigationTree` 的可选 label resolver 默认仍返回原 `node.name`；交叉引用面板仅本地化内置分类的可见标签和辅助标签，筛选仍用原 key/type，用户章节标题与引用 ID 不翻译。另有表格原始 ID 的 Pandoc AST/DOM 保存往返修复，属于行为修复，未扩展任意 class/key-value 属性；详见[更新日志](../CHANGELOG.md)。

## 安装边界

构建产物只包含 `resources/app` 下登记的前端文件。安装器验证官方原版、补丁 manifest 和文件 SHA-256，再将原版复制到新目录并覆盖登记的前端资源。原生可执行文件不重新编译、不修改。

## 可复现性

`version.json` 锁定 RStudio 上游 tag、commit、源码归档、工具链和官方关键文件哈希；Panmirror 使用自己的来源注册表。同步脚本生成上游 lock；构建报告记录实际规则、资源数量和输出哈希。版本或匹配次数变化均导致失败。可重复的源码构建流程不等同于承诺跨环境位级一致输出。

已发布 RC1 的实现与当前未发布源码不同；旧资产必须使用其对应源码提交，而不是当前 HEAD。来源入口见 [SOURCE](../SOURCE) 和 [UPSTREAM.md](../UPSTREAM.md)。
