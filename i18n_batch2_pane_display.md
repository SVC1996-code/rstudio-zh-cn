# 第二批源码级 i18n 修复报告：Pane 显示名称

## 结论

**PASS**

本批仅处理 B-01 和 B-02。窗格内部 enum / pane ID 继续保持英文，用户可见标题统一通过现有的本地化 display-name mapping 生成；没有处理 B-03～B-11、C-02～C-15、D、E、F 类候选，也没有进行中文翻译润色。

## 根因

### B-01：最小化或窄布局后回退英文

`PaneManager.getTabLabel()` 仅对 VCS、Presentation、Presentations 和 Connections 使用 `WorkbenchTab.getTitle()`；其他 `Tab` 值在默认分支直接返回 `tab.toString()`。窗格最小化、窄布局或重新生成 tab 标签时，这条路径会把 `Environment`、`History`、`Tutorial` 等内部 enum 名称直接显示给用户。

### B-02：Pane Layout 中的 Presentation 未本地化

`PaneConfig.getPaneDisplayLabel()` 已映射复数内部 ID `Presentations`，但未映射单数内部 ID `Presentation`，因此单数 ID 会落入 `return paneId` 并显示英文。

## 修改文件

- `translations/2026.08.1+195/source-patches.json`
  - 新增 3 条针对锁定上游源码的精确、单次匹配补丁。
- `i18n_batch2_pane_display.md`
  - 本报告。

没有直接修改仓库中的 Java、locale、provenance、preference schema 或默认布局数据。构建时由 `source-patches.json` 在一次性源码树中对锁定的官方源码应用声明式修改。

## 修改前后逻辑

### `PaneManager.java`

修改前，`getTabLabel()` 的默认分支返回：

```java
return tab.toString();
```

修改后，默认分支返回：

```java
return PaneConfig.getPaneDisplayLabel(tab.toString());
```

这样仍以内部 enum 字符串作为输入，但在用户可见出口统一转换为本地化显示名。

### `PaneConfig.java`

- 单数 `PaneManager.PRESENTATION_PANE` 与复数 `PaneManager.PRESENTATIONS_PANE` 均映射到既有 `presentationsPaneDisplayLabel()`。
- `PaneManager.SOURCE_COLUMN` 映射到既有 `sourcePaneDisplayLabel()`，避免 `SourceColumn` 成为默认路径中唯一缺失的 `Tab` 映射。

本批检查了 `PaneManager.Tab` 的全部 17 个值：`History`、`Files`、`Plots`、`Packages`、`Help`、`VCS`、`Tutorial`、`Build`、`Connections`、`Presentation`、`Presentations`、`Environment`、`Viewer`、`Source`、`Console`、`SourceColumn`、`Chat`。既有特殊分支保持不变；其余值通过 `PaneConfig.getPaneDisplayLabel()` 取得显示名。

## i18n 资源复用

- 复用 `PrefsConstants.presentationsPaneDisplayLabel()`。
- 复用 `PrefsConstants.sourcePaneDisplayLabel()`。
- 未新增 i18n key。
- 未修改任何中文资源值或 translation provenance。

`Presentation` 与 `Presentations` 是为配置兼容保留的不同内部 ID；上游源码注释和现有显示资源均将两者作为同一用户可见窗格名称处理，简体中文 `演示` 不涉及单复数歧义。

## 内部标识与配置完整性

下列内容均未修改：

- `PaneManager.Tab` enum 名称。
- `PRESENTATION_PANE` / `PRESENTATIONS_PANE` 等 pane ID 的字符串值。
- `UserPrefsAccessor.Panes` 的默认值。
- Pane Layout 的 JSON / preference 序列化结构。
- `@Named` 注入名、命令 ID、widget ID 和程序逻辑。

运行时保存后的隔离偏好文件仍包含英文内部值，例如：

- `tabSet1`: `Environment`, `History`, `Connections`, `Build`, `VCS`, `Tutorial`, `Presentation`
- `tabSet2`: `Files`, `Plots`, `Packages`, `Help`, `Viewer`, `Presentations`

## 静态验证

命令：

```powershell
pwsh -NoProfile -File .\tests\Test-Repository.ps1 -WorkspaceRoot D:\R
git diff --check
```

结果：

- Repository validation：`12/12 PASS`
- source patch：`77` 条全部通过格式与预期匹配检查
- GWT locale：`108` 个文件、`6206` 个 key，一致
- Electron locale：`107` 个 key，一致
- placeholder consistency：PASS
- properties / JSON / UTF-8：PASS
- provenance consistency：PASS；本批未新增或修改翻译条目
- enum / pane ID / preference 默认值：未修改
- `git diff --check`：PASS

## 构建结果

构建命令：

```powershell
pwsh -NoProfile -File D:\R\rstudio-zh-cn\src\Build-RStudioZhCn.ps1 `
  -WorkspaceRoot D:\R `
  -InstallerRoot D:\R\installers\rstudio-zh-cn\batch2-pane-5db5344
```

- 独立构建树：`D:\R\work\rstudio-zh-cn-build\runs\20260905-191239`
- 独立 patch：`D:\R\installers\rstudio-zh-cn\batch2-pane-5db5344\patch`
- 总体状态：`BUILD_PASS_REVIEW_REQUIRED`
- GWT：`BUILD SUCCESSFUL`
- Ant 总耗时：8 分 04 秒
- GWT permutation 编译：356.436 秒；link：5.091 秒
- Closure：0 error、0 warning
- 产物：58 个 manifest 登记的前端文件
- 新增 Pane / Gin / DI / enum / preferences / i18n warning：无
- 构建日志仅有既有 Gin/JDK 反射类 warning 和上游 npm 依赖弃用 warning，均未导致构建失败。

## 运行时 smoke test

- 安装来源：官方原版 + 本批独立 patch。
- 独立候选：`D:\R\RStudio\2026.08.1-zh-batch2-pane-5db5344`
- `rstudio.exe` 版本：`2026.08.1+195`
- `rstudio.exe` SHA-256：`1618F0B582E9D402C5637DA20A054D69B63C1AF9DC05A1BFDB700FB748619DB6`，与官方原版一致。
- 使用隔离配置以 `zh_CN` 启动；R session 建立成功，所有候选进程均响应。

### B-01：resize / minimize / restore

- 正常布局：Source、Console、Environment、Files 等主要窗格正常显示。
- TabSet1 最小化后显示 `环境 / 历史 / 连接 / Git / 教程`，未出现 `Environment / History / Tutorial` 回退。
- TabSet2 最小化后显示 `文件 / 图形 / 程序包 / 帮助 / 查看器 / 演示`，未出现 `Files / Plots / Packages / Help / Viewer / Presentation(s)` 回退。
- 两组窗格均可通过 `恢复 TabSet1` / `恢复 TabSet2` 正常恢复。
- 将主窗口缩窄至约 1150×950 后，用户可见 tab 仍为本地化名称；未出现空白、重复或裸露内部 ID。
- 整个 RStudio 窗口最小化后可正常恢复，窗格布局和本地化标题保持正常。
- 重复恢复后 Console、Source、Environment 和 Files 均正常工作，无灰屏或崩溃。

### B-02：Pane Layout 保存与重启

- Global Options → Pane Layout 中单数 `Presentation` 显示为 `演示`。
- 同页其他条目正常显示为 `环境`、`历史`、`连接`、`构建`、`版本控制`、`教程`、`文件`、`图形`、`程序包`、`帮助`、`查看器`；品牌名 Posit Assistant 保持英文。
- 在隔离配置中切换“显示侧边栏”并点击“应用”，偏好成功写入且主界面立即重新布局。
- 点击“确定”正常关闭对话框和 RStudio；无残留候选进程。
- 以同一隔离配置重启后，侧边栏状态和窗格布局成功恢复；再次打开 Pane Layout，单数 Presentation 仍显示为 `演示`。
- 保存后的配置文件仍使用英文内部 ID，显示名本地化没有污染 preference。

运行时证据位于：

`D:\R\work\rstudio-zh-cn-build\runtime-batch2-pane-final\evidence`

关键截图包括：

- `15-upper-minimized-after-restart.png`
- `16-lower-minimized.png`
- `17-window-narrow.png`
- `19-window-minimize-restore.png`
- `14-pane-layout-after-restart.png`

## Git diff 摘要

- `translations/2026.08.1+195/source-patches.json`：新增 3 条精确 source patch，共 18 行。
- `i18n_batch2_pane_display.md`：新增本报告。
- 没有其他 tracked 文件变化。
