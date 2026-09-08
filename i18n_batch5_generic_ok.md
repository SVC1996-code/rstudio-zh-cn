# 第五批源码级 i18n 修复报告：通用“确定”按钮

## 结论

**PASS WITH KNOWN ISSUES**

本批严格限定在 B-11 的 5 个硬编码 `"OK"` 显示出口。全部改为复用既有 `CoreClientConstants.okayLabel()`；英文资源仍为 `OK`，简体中文资源仍为 `确定`。没有新增 i18n key，没有修改 locale、provenance、内部 ID、API 参数、序列化值、回调或业务逻辑。

静态验证和完整 GWT 构建通过。普通 GWT `ModalDialog` 以及 RStudioAPI 信息对话框完成实际运行验证。Windows Desktop 原生 message box 无法通过当前可用的安全自动化通道可靠读取按钮文字，Web factory 也不在 Windows Desktop 候选中实例化，因此这两条运行路径标记为 `NOT TESTED`；其精确源码调用链和 GWT 编译已验证。

未处理其他 B 项，也未处理任何 D、E、F 类候选。

## 修改文件

- `translations/2026.08.1+195/source-patches.json`
  - 新增 14 条针对锁定上游源码的精确补丁规则。
- `i18n_batch5_generic_ok.md`
  - 本报告。

仓库没有直接保存修改后的上游 Java 文件。构建时由 `source-patches.json` 在一次性源码树中精确应用改动。

## 五个显示出口

| 位置 | 修改前 | 修改后 | 语义与行为核对 | 运行结果 |
|---|---|---|---|---|
| `org/rstudio/core/client/widget/ModalDialog.java`，普通 `OperationWithInput` 构造路径 | `new ThemedButton("OK", ...)` | `new ThemedButton(coreConstants_.okayLabel(), ...)` | 只替换按钮 caption；输入收集、校验、关闭、operation、cancel 和 `onSuccess()` 均未变 | PASS |
| `org/rstudio/core/client/widget/ModalDialog.java`，`ProgressOperationWithInput` 构造路径 | `new ThemedButton("OK", ...)` | `new ThemedButton(coreConstants_.okayLabel(), ...)` | 只替换按钮 caption；进度指示器、校验、progress operation 和 cancel 均未变 | BUILD PASS；该构造分支未单独运行触发 |
| `org/rstudio/studio/client/common/dialog/DesktopDialogBuilderFactory.java` | 无显式按钮时 `addButton("OK", DIALOG_OK_BUTTON)` | `addButton(coreConstants_.okayLabel(), DIALOG_OK_BUTTON)` | Electron bridge 仍按原顺序传递按钮；返回值仍按数字索引选择 operation，default/cancel 索引未变，标签不参与逻辑比较 | NOT TESTED（原生窗口不可可靠读取） |
| `org/rstudio/studio/client/common/dialog/WebDialogBuilderFactory.java` | 无显式按钮时 `addButton("OK", DIALOG_OK_BUTTON)` | `addButton(coreConstants_.okayLabel(), DIALOG_OK_BUTTON)` | `MessageDialog` 的 operation、progress operation、default/cancel 标志、element ID 和顺序均未变 | NOT TESTED（Windows Desktop 不实例化该替换分支） |
| `org/rstudio/studio/client/common/rstudioapi/RStudioAPI.java` | 信息对话框 `dlg.addButton("OK", DIALOG_OK_BUTTON, ...)` | `dlg.addButton(coreConstants_.okayLabel(), DIALOG_OK_BUTTON, ...)` | 仅非 prompt、非 question 的信息对话框使用该通用显示标签；完成回调仍为 `showDialogCompleted(null, false, ...)` | PASS |

构建后的源码中共有 5 处 `coreConstants_.okayLabel()` 使用点，对应上述 5 个原硬编码显示出口；这四个 Java 文件中不含直接硬编码的中文 `确定`。

## 复用的既有 i18n 资源

| 资源 | key | 英文 | 简体中文 |
|---|---|---|---|
| `CoreClientConstants` | `okayLabel` | `OK` | `确定` |

本批没有新增或修改任何 properties key，也没有更新 `translation-provenance.json`。GWT locale 仍为 108 个文件、6226 个 key；provenance 总数仍为 6333 条（`translated=6044`、`needs-review=289`、`reviewed=0`、`missing=0`、`releaseReady=false`）。

## 行为与兼容性核对

以下内容保持不变：

- `ElementIds.DIALOG_OK_BUTTON` 及其他 element/widget ID。
- `Operation`、`OperationWithInput`、`ProgressOperationWithInput`、ClickHandler 和 callback。
- 按钮角色、默认按钮、取消按钮、按钮顺序、焦点处理以及 Enter/Escape 路径。
- Desktop bridge 的按钮索引、默认索引、取消索引和返回结果解析。
- RStudioAPI event 中的 `ok` / `cancel` 字段、prompt/question 分支、RPC 参数与 R 返回值。
- C++ `rs_showDialog`、`showDialogCompleted` 协议以及所有序列化结构。

RStudioAPI 的 caller-supplied `event.getOK()` / `event.getCancel()` 仍只用于 question 分支，本批没有把调用者提供的 API 字符串替换为 locale 文本。

## 静态验证

命令：

```powershell
pwsh -NoProfile -File .\tests\Test-Repository.ps1 -WorkspaceRoot D:\R
git diff --check
```

结果：

- Repository validation：`12/12 PASS`
- source patch validation：163 条规则格式、哈希和预期匹配检查通过
- GWT locale：108 个文件、6226 个 key，一致
- Electron locale：107 个 key，一致
- placeholder consistency：PASS
- properties / JSON / UTF-8：PASS
- provenance consistency：PASS
- `git diff --check`：PASS
- 新增 key：0；重复 key：0
- locale / provenance 修改：0
- 非本地化逻辑修改：0

## 实际 GWT 构建

构建命令：

```powershell
pwsh -NoProfile -File D:\R\rstudio-zh-cn\src\Build-RStudioZhCn.ps1 `
  -WorkspaceRoot D:\R `
  -InstallerRoot D:\R\installers\rstudio-zh-cn\batch5-generic-ok-617fb9a
```

- 独立构建树：`D:\R\work\rstudio-zh-cn-build\runs\20260908-224157`
- 独立 patch：`D:\R\installers\rstudio-zh-cn\batch5-generic-ok-617fb9a\patch`
- 总体状态：`BUILD_PASS_REVIEW_REQUIRED`
- GWT：`BUILD SUCCESSFUL`
- Ant 总耗时：7 分 9 秒
- GWT permutation 编译：308.401 秒；link：4.613 秒
- Closure：0 error、0 warning
- 最终 manifest：58 个前端资源文件
- 新增 i18n、UiBinder、DialogBuilder、RStudioAPI 或 GWT error/warning：无
- 构建日志仅有既有 Gin/JDK `ConstructorAccessorImpl` warning 和上游 npm 依赖弃用 warning，未导致构建失败。

## 运行时 smoke test

- 安装来源：官方原版 + 本批独立 patch。
- 独立候选：`D:\R\RStudio\2026.08.1-zh-batch5-generic-ok-617fb9a`
- 使用隔离配置以 `zh_CN` 启动；R session 建立成功，Source、Console、Environment 和中文主界面正常。
- `rstudio.exe` 版本：`2026.08.1+195`。
- 官方原版与候选 `rstudio.exe` SHA-256 均为 `1618F0B582E9D402C5637DA20A054D69B63C1AF9DC05A1BFDB700FB748619DB6`。

### 普通 GWT ModalDialog

实际打开继承 `ModalDialog<String>` 且未覆盖确认按钮 caption 的“选择编码”对话框：

- 按钮显示为 `确定`，element ID 仍为 `rstudio_dlg_ok`。
- 初始焦点仍位于编码选择控件，没有被新常量初始化改变。
- 鼠标点击“确定”：对话框正常关闭。
- 聚焦输入控件时按 Enter：默认确认路径正常关闭对话框。
- 按 Escape：取消路径正常关闭对话框。
- 多次重新打开均无空白按钮、重复按钮、乱码或布局截断。

该对话框覆盖普通 `OperationWithInput` 构造路径；`ProgressOperationWithInput` 路径由相同显示替换规则覆盖并通过完整 GWT 编译，但本轮未另行触发带进度的具体对话框。

### RStudioAPI 信息对话框

在候选 R session 中直接调用已注册的 `rs_showDialog`，传入独立的 API `ok` / `cancel` 测试值：

- 实际信息对话框标题和消息正常，确认按钮显示 `确定`。
- 按钮 ID 仍为 `rstudio_dlg_ok`，默认焦点位于该按钮。
- 点击确认后对话框正常关闭。
- R 端实际输出 `B11_RETURN_IS_NULL= TRUE`，证明信息对话框原有 `NULL` 返回契约未变。
- 测试传入的 API 字段没有被当作显示标签或内部判断条件；question/prompt 分支没有修改。

### 未覆盖的运行路径

- Desktop builder：当前 Windows Desktop 候选具备原生 message box 分支，但当前可用的安全自动化通道不能可靠读取或操作 Electron 原生对话框，因此未触发可能阻塞测试会话的窗口。精确源码、索引驱动回调、GWT deferred binding 和完整编译均已核对。
- Web builder：Windows Desktop 构建不实例化 Web replacement；本批没有另行部署 RStudio Server。其 `MessageDialog` 构造调用链与完整 GWT 编译已核对。

这些是运行时覆盖缺口，不是已发现功能故障。

验证后通过 RStudio 自身的“退出当前 R 会话”命令正常退出；候选 RStudio 与 rsession 残留进程均为 0。无灰屏、崩溃、乱码或裸露占位符。

## Git diff 摘要

生成本报告前，仓库中仅 `translations/2026.08.1+195/source-patches.json` 发生修改：新增 84 行，共 14 条精确规则；另新增本报告。没有修改 Java 源码副本、locale、provenance、版本锁定文件或其他 B/C/D/E/F 项。
