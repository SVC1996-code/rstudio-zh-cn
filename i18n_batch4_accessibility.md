# 第四批源码级 i18n 修复报告：无障碍显示文本

## 结论

**PASS WITH KNOWN ISSUES**

本批严格限定在 C-02～C-15 的 `aria-label`、`altText`、`title` 和隐藏无障碍文本接入。静态验证与实际 GWT 构建全部通过；独立候选正常启动、建立 R session、加载简体中文界面并正常退出。能够在当前隔离环境中安全触发的项目已完成实际 DOM、悬停提示或 accessibility tree 验证；需要 Web 版入口、外部账户、ODBC、大型 VCS 变更或未安装程序包的项目标记为 `NOT TESTED`，没有为扩大覆盖范围配置外部服务或安装额外程序包。

未处理 B-11，也未处理任何 D、E、F 类候选。

## 修改文件

### 仓库中实际修改

- `translations/2026.08.1+195/source-patches.json`
  - 新增 58 条针对锁定上游源码的精确、单次匹配补丁。
- `translations/2026.08.1+195/translation-provenance.json`
  - 按项目既有规则登记本批 18 个新 key。
- `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/application/StudioClientApplicationConstants_zh_CN.properties`
- `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/panmirror/PanmirrorConstants_zh_CN.properties`
- `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/ui/UIConstants_zh_CN.properties`
- `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/connections/ConnectionsConstants_zh_CN.properties`
- `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/ViewEnvironmentConstants_zh_CN.properties`
- `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/EditorsTextConstants_zh_CN.properties`
- `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/rmd/ChunkContextToolbarChunkContextToolbarUiBinderImplGenMessages_zh_CN.properties`
- `translations/2026.08.1+195/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/dialog/SizeWarningWidgetBinderImplGenMessages_zh_CN.properties`
- `i18n_batch4_accessibility.md`
  - 本报告。

仓库没有直接保存修改后的 Java 或 UiBinder 上游源码副本。构建时由 `source-patches.json` 在一次性源码树中精确应用改动。

## C-02～C-15 实现与验证

| 编号 | 位置 | 英文 | 简体中文 | 接入方式 | 运行结果 |
|---|---|---|---|---|---|
| C-02 | `WebApplicationHeader.java` | `Main menu and toolbar` / `Main menu` | `主菜单和工具栏` / `主菜单` | 新增 `StudioClientApplicationConstants` key，原 aria 设置点改为读取 constants | NOT TESTED |
| C-03 | `WorkbenchScreen.java` | `Workbench` | `工作区` | 新增 `UIConstants.workbenchAriaLabel`，保留原 main role | PASS |
| C-04 | `PanmirrorHRefSelect.java` | `HRef` / `Heading` / `IDs` | `链接目标` / `标题` / `ID` | 新增三个 `PanmirrorConstants` key，保留 textbox/listbox role | NOT TESTED |
| C-05 | `PanmirrorOutlineWidget.java` | `Document Outline` | `文档大纲` | 新增 `PanmirrorConstants.documentOutlineAriaLabel` | PASS |
| C-06 | `InfoBar.ui.xml` | `Dismiss infobar` | `关闭信息栏` | 复用文件中已经存在的 UiBinder `dismissInfobarTitle` | PASS |
| C-07 | `RSConnectCloudAccount.ui.xml` | `ShinyApps Token and Secret` | `ShinyApps 令牌和密钥` | 复用文件中已经存在的 UiBinder `shinyAppsAriaLabelText` | NOT TESTED |
| C-08 | `SizeWarningWidget.ui.xml` | `Warning` | `警告` | 为原 Image 的 `altText` 增加同控件 UiBinder key | NOT TESTED |
| C-09 | `ChunkHtmlPreview.ui.xml` | `HTML Widget` | `HTML 组件` | 保留原 Image，增加 `UiField`，绑定后读取 `EditorsTextConstants` 设置 altText | NOT TESTED |
| C-10 | `ChunkConditionBar.ui.xml` | `Info` / `Warning` | `信息` / `警告` | 保留两个原 Image，增加 `UiField`，绑定后读取 `EditorsTextConstants` 设置 altText | NOT TESTED |
| C-11 | `CallFramePanel.ui.xml` | `Current` | `当前` | 保留执行箭头 Image，绑定后读取 `ViewEnvironmentConstants` 设置 altText | PASS |
| C-12 | `NewConnectionPreInstallOdbcHost.ui.xml` | `Warning` | `警告` | 保留原警告 Image，绑定后读取 `ConnectionsConstants` 设置 altText | NOT TESTED |
| C-13 | `NotebookProgressWidget.ui.xml` | `Interrupt` | `中断` | 绑定后读取 `EditorsTextConstants.notebookInterruptAltText` | PASS |
| C-14 | `ChunkOutputWidget.ui.xml` | `Show in New Window` / `Clear Output` / `Expand/Collapse Output` | `在新窗口中显示` / `清除输出` / `展开/折叠输出` | 原三个控件和 handler 不变，绑定后从 `EditorsTextConstants` 设置 title | PASS |
| C-15 | `ChunkContextToolbar.ui.xml` | `Change Chunk Type` | `更改代码块类型` | 为原 Label 的 title 增加同控件 UiBinder key | PASS |

### 运行时未覆盖说明

- C-02：Windows Desktop 不实例化 `WebApplicationHeader`，本候选中没有对应 Web header 运行路径；精确 patch、调用链和 GWT 构建已通过。
- C-04：隔离测试环境未安全触发 Panmirror 链接选择器；constants、role 调用点和构建均已验证。
- C-07：需要 RStudio Connect / shinyapps.io 账户设置状态；本批不配置外部账户。
- C-08：需要触发大型 VCS 变更警告；本批不制造可能影响测试仓库的大规模变更。
- C-09：隔离 R library 未安装 `htmlwidgets` / `rmarkdown`，不为本批增加依赖。
- C-10：当前隔离文档未安全触发 chunk condition bar；Image 字段、constants 调用链和构建均已验证。
- C-12：需要进入 ODBC 预安装连接流程；本批不配置外部数据源或驱动。

这些条目是运行时覆盖缺口，不是已发现功能故障。

## 新增 i18n key

| 资源 | key | 英文 | 简体中文 |
|---|---|---|---|
| `StudioClientApplicationConstants` | `mainMenuAndToolbarAriaLabel` | `Main menu and toolbar` | `主菜单和工具栏` |
| `StudioClientApplicationConstants` | `mainMenuAriaLabel` | `Main menu` | `主菜单` |
| `UIConstants` | `workbenchAriaLabel` | `Workbench` | `工作区` |
| `PanmirrorConstants` | `hrefAriaLabel` | `HRef` | `链接目标` |
| `PanmirrorConstants` | `headingAriaLabel` | `Heading` | `标题` |
| `PanmirrorConstants` | `idsAriaLabel` | `IDs` | `ID` |
| `PanmirrorConstants` | `documentOutlineAriaLabel` | `Document Outline` | `文档大纲` |
| `SizeWarningWidget` UiBinder | `warningAltText` | `Warning` | `警告` |
| `EditorsTextConstants` | `htmlWidgetAltText` | `HTML Widget` | `HTML 组件` |
| `EditorsTextConstants` | `infoAltText` | `Info` | `信息` |
| `EditorsTextConstants` | `warningAltText` | `Warning` | `警告` |
| `EditorsTextConstants` | `notebookInterruptAltText` | `Interrupt` | `中断` |
| `EditorsTextConstants` | `showInNewWindowTitle` | `Show in New Window` | `在新窗口中显示` |
| `EditorsTextConstants` | `clearOutputTitle` | `Clear Output` | `清除输出` |
| `EditorsTextConstants` | `expandCollapseOutputTitle` | `Expand/Collapse Output` | `展开/折叠输出` |
| `ViewEnvironmentConstants` | `currentCallFrameAltText` | `Current` | `当前` |
| `ConnectionsConstants` | `warningAltText` | `Warning` | `警告` |
| `ChunkContextToolbar` UiBinder | `changeChunkTypeTitle` | `Change Chunk Type` | `更改代码块类型` |

C-06 的 `dismissInfobarTitle` 与 C-07 的 `shinyAppsAriaLabelText` 在锁定上游的 UiBinder 资源中已经存在并已有 `zh_CN` 翻译，因此没有重复新增 key。

## 行为与内部标识完整性

下列内容均未修改：

- DOM ID、widget ID、既有数据字段、输入值与序列化值。
- role、tabindex、aria role 类型和 accessibility widget 初始化顺序。
- 命令 ID、handler、callback、点击逻辑和业务数据结构。
- R 参数、连接参数、VCS 数据、Notebook 状态和 chunk 类型值。
- 产品名 `ShinyApps`、HTML 技术名称和其他品牌/技术标识。

本批新增的 `UiField` 只引用原有 Image/Label 控件，并在 `createAndBindUi(this)` 后设置其显示属性；没有替换控件或改变事件绑定。

## source patch 与 provenance

- source patch：由 91 条增加到 149 条，本批新增 58 条；每条对锁定上游的预期匹配数均为 `1`。
- GWT locale：由 6208 个 key 增加到 6226 个 key，本批新增 18 个。
- provenance：由 6315 条增加到 6333 条。
- `translated`：6027 → 6044（增加 17）。
- `needs-review`：288 → 289（增加 1）。
- `reviewed=0`、`allowed-english=0`、`missing=0`、`releaseReady=false`，遵循项目现有审核规则，没有将新增中文自动标记为正式人工 reviewed。
- 本批字符串均不含 MessageFormat 占位符。

## 静态验证

命令：

```powershell
pwsh -NoProfile -File .\tests\Test-Repository.ps1 -WorkspaceRoot D:\R
git diff --check
```

结果：

- Repository validation：`12/12 PASS`
- source patch validation：149 条规则格式、哈希和预期单次匹配检查通过
- GWT locale：108 个文件、6226 个 key，一致
- Electron locale：107 个 key，一致
- placeholder consistency：PASS
- properties / JSON / UTF-8：PASS
- duplicate key：未发现
- provenance consistency：PASS
- `git diff --check`：PASS（仅有 Git 行尾规范化提示）
- patched source 复核：新增 key 在英、法、简体中文资源和调用点均存在；C-06/C-07 的既有 UiBinder attribute 继续生效
- 非本地化业务逻辑：未修改

## 实际 GWT 构建

构建命令：

```powershell
pwsh -NoProfile -File D:\R\rstudio-zh-cn\src\Build-RStudioZhCn.ps1 `
  -WorkspaceRoot D:\R `
  -InstallerRoot D:\R\installers\rstudio-zh-cn\batch4-accessibility-9001bdc
```

- 独立构建树：`D:\R\work\rstudio-zh-cn-build\runs\20260906-023725`
- 独立 patch：`D:\R\installers\rstudio-zh-cn\batch4-accessibility-9001bdc\patch`
- 总体状态：`BUILD_PASS_REVIEW_REQUIRED`
- GWT：`BUILD SUCCESSFUL`
- Ant 总耗时：7 分 5 秒
- GWT permutation 编译：304.059 秒；link：4.805 秒
- Closure：0 error、0 warning
- 最终 manifest：58 个前端资源文件
- 新增 UiBinder / i18n / Gin / enum / preference error 或 warning：无
- 构建日志仅有既有 Gin/JDK `ConstructorAccessorImpl` warning 和上游 npm 依赖弃用 warning，未导致构建失败。

## 运行时 smoke test

- 安装来源：官方原版 + 本批独立 patch。
- 独立候选：`D:\R\RStudio\2026.08.1-zh-batch4-accessibility-9001bdc`
- `rstudio.exe` 版本：`2026.08.1+195`
- 官方原版与候选 `rstudio.exe` SHA-256：均为 `1618F0B582E9D402C5637DA20A054D69B63C1AF9DC05A1BFDB700FB748619DB6`。
- 使用隔离配置以 `zh_CN` 启动；R session 建立成功，Source、Console、Environment 和中文主界面正常，无灰屏、崩溃、乱码或裸露占位符。
- 实际执行 R Markdown 测试代码块并产生内联绘图输出；候选持续响应。

### 已实际验证的目标

- C-03：实际 DOM 中 main workbench 的 `aria-label` 为 `工作区`。
- C-05：实际 DOM 中 outline tree 的 `aria-label` 为 `文档大纲`。
- C-06：信息栏关闭按钮悬停和 DOM title 均为 `关闭信息栏`。
- C-11：实际 DOM 中当前调用帧图标 alt 为 `当前`。
- C-13：实际 DOM 中 Notebook 中断图标 alt 为 `中断`。
- C-14：三个输出控件的悬停提示和 DOM title 分别为 `在新窗口中显示`、`清除输出`、`展开/折叠输出`；内联输出功能正常。
- C-15：实际 DOM 中 chunk type 控件 title 为 `更改代码块类型`。

验证后通过候选自身的正常关闭流程退出；候选 RStudio 和 rsession 残留进程均为 0。运行时证据保存在本地隔离构建证据目录中，不纳入源码仓库。

## Git diff 摘要

在生成本报告前：

- 10 个既有 tracked 文件发生修改。
- `source-patches.json`：新增 348 行（58 条精确规则）。
- `translation-provenance.json`：新增 116 行、删除 4 行（18 条新记录及计数/时间刷新）。
- 8 个 `zh_CN.properties` 文件合计新增 18 个 key。
- 合计 478 insertions、4 deletions；另新增本报告。

