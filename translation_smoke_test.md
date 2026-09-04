# Translation Smoke Test

本报告针对提交 `2a236ff6e26bb9a149e99b110cb47b6992ed8578` 中的 30 条简体中文翻译修订。测试只验证构建、加载和代表性界面文本，没有修改翻译，也没有进行 i18n coverage audit。

## Baseline

- Branch：`main`
- HEAD：`2a236ff6e26bb9a149e99b110cb47b6992ed8578`
- 测试开始时 Git 工作树：clean
- 测试使用的官方原版：`D:\R\RStudio\2026.08.1-original`
- 独立测试候选：`D:\R\RStudio\2026.08.1-zh-smoke-2a236ff`
- 冻结 RC1 和正式 patch 未作为本次构建输出目标。

## Validation

执行命令：

```powershell
.\tests\Test-Repository.ps1 -WorkspaceRoot 'D:\R'
git diff --check
```

结果：

- Repository validation：`12/12 PASS`，耗时 22.28 秒。
- GWT locale：108 个中文 properties 文件、6197 个 key，解析、key 和显示结构检查通过。
- Electron locale：107 个 key，JSON 解析和显示结构检查通过。
- source patches：64 条规则全部匹配。
- translation provenance：6304 条，状态模型一致，`releaseReady=False`。
- placeholders / MessageFormat / HTML / 转义：PASS。
- 本轮涉及的 5 个 mnemonic 条目：英文和中文资源中的 mnemonic 标记数量一致，`5/5 PASS`。
- `git diff --check`：PASS。

补充运行了现有候选校验。除下列一项外，其余自动检查均通过：

- `内部 Source 窗格标识保持不翻译`：校验器要求 `EditorsTextConstants.source=Source`，当前已提交资源为既有的 `source=运行脚本`。该值不是本轮 30 条修改之一；实际 Source 窗格、编辑器和命令均可正常使用。本轮按要求只记录，不修改校验器或资源。

候选校验中通过的项目包括：原版版本/哈希、原版完整目录、补丁 SHA-256、候选内嵌清单、仅修改登记资源、GWT 中文 locale、properties/JSON key 和占位符、Electron locale、`zh_CN` schema、49 个 JavaScript 文件解析、R 4.6.1、中文路径及 UTF-8 读写。

## Build

执行命令：

```powershell
.\src\Build-RStudioZhCn.ps1 `
  -WorkspaceRoot 'D:\R' `
  -InstallerRoot 'D:\R\installers\rstudio-zh-cn\smoke-translation-2a236ff'
```

- 结果：`BUILD_PASS_REVIEW_REQUIRED`
- 总耗时：494.4 秒
- GWT 编译：`BUILD SUCCESSFUL`，6 分 33 秒
- 构建运行目录：`D:\R\work\rstudio-zh-cn-build\runs\20260905-042902`
- 独立 patch：`D:\R\installers\rstudio-zh-cn\smoke-translation-2a236ff\patch`
- patch manifest：59 个文件；安装到候选中的前端资源为 58 个。
- Electron generate / webpack：成功。
- GWT/JavaScript 前置检查：0 errors、0 warnings。

构建输出出现以下非本地化 warning：

- Gin 使用的 `jdk.internal.reflect.ConstructorAccessorImpl` 不可用于 GWT client code。
- npm 报告若干上游依赖已弃用，例如旧版 xterm、glob、lodash.get 和 inflight。
- R 进程报告当前测试环境的 `LC_COLLATE`、`LC_CTYPE`、`LC_MONETARY`、`LC_TIME` 无法设为 `C.UTF-8`。

没有出现与 `zh_CN`、中文 properties、占位符或本轮 30 条翻译有关的 warning/error。

## Runtime startup

| 检查项 | 实际结果 | 状态 |
| --- | --- | --- |
| RStudio 启动 | 主窗口创建成功，进程响应正常 | PASS |
| 中文 locale | 顶部菜单、窗格、工具栏和设置页以简体中文加载 | PASS |
| R session | R 4.6.1 session 建立成功 | PASS |
| Console | 执行临时脚本后输出 `[1] 55`，绘图命令正常执行 | PASS |
| Source | 成功打开 `smoke.R`、`smoke.Rmd`，并新建 `Untitled1` R 脚本 | PASS |
| Project | 成功打开临时 `smoke.Rproj` | PASS |
| 正常退出 | 界面完全加载后使用 `Ctrl+Q`；15 秒内本次候选的 RStudio/rsession 进程全部退出 | PASS |

测试全部使用 `D:\R\work\rstudio-zh-cn-build\translation-smoke-2a236ff` 下的隔离配置和临时项目。

## UI checks

### A. R Markdown / Notebook 的 Chunk 术语

| 项目 | 测试步骤 | 预期结果 | 实际结果 | 状态 | 备注 |
| --- | --- | --- | --- | --- | --- |
| R Markdown 编辑器 | 打开临时 `smoke.Rmd` | 文档和代码块工具正常加载 | 出现“插入新代码块”“修改代码块选项”“运行当前代码块”等控件 | PASS | 工具按钮可正常生成 |
| Chunk 命令 | 打开命令面板并检查 R Markdown/Editor 命令 | 使用“代码块”，不显示孤立的“块” | 可见“插入新的 R/Python/Stan/SQL 代码块”“运行当前代码块”“运行初始设置代码块”等 | PASS | 未发现本轮目标条目的孤立“块” |
| 设置项 | 检查命令面板设置 | setup / 默认代码块相关翻译正常加载 | 可见“需要时自动运行 setup 代码块”等修改后文本 | PASS | 无裸露占位符 |

### B. Git / VCS

| 项目 | 测试步骤 | 预期结果 | 实际结果 | 状态 | 备注 |
| --- | --- | --- | --- | --- | --- |
| 临时 Git 项目 | 在临时项目执行 `git init`，打开 `.Rproj` | Git 窗格正常出现 | Git 标签页、差异、提交、状态、暂存控件均正常 | PASS | 未执行真实 commit/push |
| 刷新菜单 | 展开 Git 窗格“刷新选项” | 显示“立即刷新” | 菜单显示“自动刷新”“仅手动刷新”“立即刷新” | PASS | 菜单可展开/折叠 |
| Pending changes | 在命令面板检查 VCS 命令 | 统一为“待处理的更改” | 显示“VCS 提交待处理的更改” | PASS | 术语已进入运行界面 |
| Git 审查窗口 | 点击临时项目的“提交”按钮 | 审查窗口正常显示 | “RStudio: 审查更改”窗口、提交消息、历史等控件正常 | PASS | 未提交数据，随后正常关闭 |
| Diff / Log / GitHub | 检查 Git 窗格、版本控制菜单和命令面板 | 相关命令正常生成 | “差异”“历史”“显示文件的差异/更改日志”正常 | PASS | 临时仓库没有 GitHub remote，特定“在 GitHub 查看”运行入口未触发；构建和资源检查通过 |

### C. 菜单 mnemonic / `_`

| 项目 | 测试步骤 | 预期结果 | 实际结果 | 状态 | 备注 |
| --- | --- | --- | --- | --- | --- |
| 静态标记 | 比较 5 条英文/中文资源的 mnemonic 标记 | 数量一致 | `5/5 PASS` | PASS | `showVCSMenuLabel`、`zoomVCSMenuLabel`、`viewNameOnGithub`、`logOfName`、`diffName` |
| 菜单生成 | 打开工具、版本控制、Git 刷新和 Source 标签页右键菜单 | 菜单项存在且不直接显示 `_` | 菜单正常生成，未发现裸露或多余 `_` | PASS | 运行时检查 |
| 键盘 mnemonic 行为 | Windows/GWT 自动验证 | 不猜测不可靠结果 | 未进行可靠的按键级逐项验证 | NOT TESTED | 构建正常、菜单显示正常 |

### D. Environment Pane / Memory Usage

| 项目 | 测试步骤 | 预期结果 | 实际结果 | 状态 | 备注 |
| --- | --- | --- | --- | --- | --- |
| Environment | 运行 `smoke_value <- 1:10` 后切换 Environment | 变量可见，窗格正常 | `smoke_value` 出现在环境列表 | PASS | 创建/显示变量正常 |
| Memory Usage | 检查 Environment 可见控件和命令面板 | Pane 使用“窗格” | 可见内存使用率；命令面板显示“切换环境窗格中的内存使用情况显示”和“在环境窗格中显示内存使用情况” | PASS | 未出现本轮旧译“环境面板” |

### E. Accessibility / aria-live

| 项目 | 测试步骤 | 预期结果 | 实际结果 | 状态 | 备注 |
| --- | --- | --- | --- | --- | --- |
| Accessibility 页面 | 打开全局选项 → 辅助功能 → 常规/通知 | 页面可正常加载 | 屏幕阅读器、通知及 ARIA 实时区域相关设置正常显示 | PASS | 未发现白屏或空白标签 |
| `aria-live` 两条修订 | 尝试从常规界面和命令面板触发 | 不修改 feature flag | 本轮 `disabledAriaLiveAnnouncements*` 具体文本未从当前可见 UI 触发 | NOT TESTED | 静态 properties、provenance 和完整 GWT 构建均通过 |
| 未注册实时播报 | 正常运行期间观察 | 不应再出现“直播公告” | 正常路径未触发该公告 | NOT TESTED | 未人为制造辅助功能异常 |

### F. Source 编辑器常见操作

| 项目 | 测试步骤 | 预期结果 | 实际结果 | 状态 | 备注 |
| --- | --- | --- | --- | --- | --- |
| 文件打开/新建 | 从 Files 打开 `smoke.R`、`smoke.Rmd`，快捷键新建 R 脚本 | Source 正常工作 | 两个文件和 `Untitled1` 标签页均创建成功 | PASS | 临时项目内操作 |
| 标签页右键菜单 | 右击 `smoke.Rmd` 标签页 | 修改后菜单正常显示 | 显示“关闭其他所有标签页”，菜单无异常字符 | PASS | 菜单随后关闭 |
| 保存/外部变化提示 | 避免破坏用户文件 | 不强制触发高风险对话框 | 未完整触发外部删除/移动提示 | NOT TESTED | 对应字符串已通过 properties、placeholder 和完整构建检查 |

## Layout observations

- 对 2400×1800 的项目主窗口进行了窗口句柄截图检查。
- Source、Console、Environment、Git、Files、Global Options 和菜单未发现本轮中文引起的明显截断、异常换行、空文本或过宽按钮。
- 未发现乱码、裸露 `{0}`、多余 mnemonic `_`、异常空格或本轮相关的标点结构损坏。
- R 启动说明、程序包/Help 等外部来源内容仍可能显示英文，这是允许保留的内容。

## Known pre-existing issues

以下项目按既有记录保留，不视为本轮 30 条翻译修改造成的 regression，本轮没有修复：

1. `ImportFileSettingsDialog` 中 Encoding、Heading、Row names、Separator、Decimal、Quote、Comment、`na.strings` 尚未接入 i18n。
2. 部分 Pane 在 resize / narrow layout 后可能重新显示 Environment、History、Tutorial 等英文名称。
3. Pane Layout 中可能直接显示内部名称 `Presentation`。
4. 候选校验器的 `EditorsTextConstants.source=Source` 不变量与当前既有资源 `source=运行脚本` 不一致；实际 Source 功能正常，需后续人工确认测试规则和资源意图。

`Posit Assistant`、`Posit AI`、`GitHub Copilot` 按产品/服务名称有意保留英文，不计为漏翻。

## Final result

**PASS WITH KNOWN ISSUES**

依据：

- 当前 HEAD 的 repository validation 为 `12/12 PASS`。
- GWT 和 Electron 前端实际重新构建成功。
- 新构建的 patch 已安装到独立候选，RStudio、`zh_CN` locale、R session、Console、Source、Project 和正常退出均通过。
- 本轮主要翻译类型已在实际 UI 或命令面板中抽样验证，没有发现由 30 条修改引起的功能 regression。
- 已知 coverage 问题和候选校验器的一项既有不变量不一致已记录，但没有在本轮修改。

