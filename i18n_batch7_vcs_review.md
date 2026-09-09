# 第七批 VCS review i18n 修复报告

## 结论

**PASS WITH KNOWN ISSUES**

D-13～D-16 已按既有 GWT 国际化架构接入。Repository validation 12/12 通过，完整 GWT 构建成功；独立候选能够启动并建立 R session。Git Review 已完成实际运行验证，五个上下文行数显示项全部为中文，且切换 10 行、5 行、所有行后 diff 范围分别变为 21、11、40 行，证明本地化显示文字没有污染数值参数。当前机器没有可安全复用的本地 SVN 测试环境，因此 D-14～D-16 的运行时状态按任务允许记为 `NOT TESTED`；其源码、locale、构建及 internal value 均已验证。

## 范围

本批仅处理 D-13、D-14、D-15、D-16。未处理 D-17～D-29、E/F 类或已完成的 A/B/C/D 项目；没有修改 Git/SVN 命令、handler、内部 ID、numeric value、SVN resolution value 或后端参数。

## 逐项记录

| 编号 | 文件 | 英文 | 中文 | 接入方式 | Existing / new key | Runtime |
|---|---|---|---|---|---|---|
| D-13 | `GitReviewPanel.ui.xml` / `GitReviewPanel.java` | `{0} lines`; `All lines` | `{0} 行`; `所有行` | UiBinder ListBox 保留五个原始 `value`，Java 绑定后通过 `setItemText()` 设置本地化显示文字 | 新增共用 `ViewVcsConstants.linesText(int)` 与 `allLinesText()` | PASS |
| D-14 | `SVNReviewPanel.ui.xml` / `SVNReviewPanel.java` | `Context` | `上下文` | 移除 UiBinder 的硬编码 `text`，绑定后通过 `ViewVcsConstants.contextText()` 设置 FormLabel | 新增共用 `contextText()` | NOT TESTED（无安全可复用的本地 SVN 环境） |
| D-15 | `SVNReviewPanel.ui.xml` / `SVNReviewPanel.java` | `{0} lines`; `All lines` | `{0} 行`; `所有行` | 与 Git Review 共用 `ViewVcsConstants`；ListBox 仅替换 display text | 复用本批新增 `linesText(int)` 与 `allLinesText()` | NOT TESTED（无安全可复用的本地 SVN 环境） |
| D-16 | `SVNResolveDialog.ui.xml` | `Mine-All`; `Theirs-All` | `全部采用本地版本`; `全部采用对方版本` | label 内容接入 UiBinder `<ui:msg>`；radio input value 保持原样 | 新增 `labelMineAll` 与 `labelTheirsAll` | NOT TESTED（未创建 SVN conflict） |

D-16 的用词依据同一对话框已有翻译：`本地版本（仅冲突）`、`对方版本（仅冲突）`、`所有冲突均接受本地版本`、`所有冲突均接受对方版本`。因此使用“本地版本 / 对方版本”，不引入“我的 / 传入”等另一套术语。

## Display/Internal Value Safety

### Git Review

- 显示 `5 行`，internal value = `"5"`。
- 显示 `10 行`，internal value = `"10"`。
- 显示 `25 行`，internal value = `"25"`。
- 显示 `50 行`，internal value = `"50"`。
- 显示 `所有行`，internal value = `"-1"`。
- 运行时切换 10 行后 hunk 为 `@@ -10,21 +10,21 @@`；切换 5 行后为 `@@ -15,11 +15,11 @@`；切换所有行后为 `@@ -1,40 +1,40 @@`。显示变化实际传递到了 Git diff 的上下文行数逻辑。

### SVN Review

- 显示 `5 行`，internal value = `"5"`。
- 显示 `10 行`，internal value = `"10"`。
- 显示 `25 行`，internal value = `"25"`。
- 显示 `50 行`，internal value = `"50"`。
- 显示 `所有行`，internal value = `"-1"`。
- 锁定上游构建源中五个 UiBinder item 的 value 已逐项核对，Java 只调用 `setItemText()`。

### SVN Resolve

- 显示 `全部采用本地版本`，internal value = `"mine-all"`。
- 显示 `全部采用对方版本`，internal value = `"theirs-all"`。
- 锁定上游构建源中 radio input 的 `value="mine-all"` / `value="theirs-all"` 原样保留；仅相邻 label 使用 UiBinder message。

## Source patch 与 locale

- `source-patches.json` 新增 12 条精确、单次匹配规则，总数 231。
- Git 与 SVN Review 共用 `ViewVcsConstants` 的三个新 key：
  - `contextText=Context` / `上下文`
  - `linesText={0} lines` / `{0} 行`
  - `allLinesText=All lines` / `所有行`
- SVN Resolve 新增两个 UiBinder key：
  - `labelMineAll=Mine-All` / `全部采用本地版本`
  - `labelTheirsAll=Theirs-All` / `全部采用对方版本`
- 英文、法文与简体中文资源同步；`{0}` 占位符在英文、法文和中文中一致。
- 所有 source patch 均为 `expectedOccurrences: 1`；没有提交 patched upstream 副本。

## Provenance

- GWT zh_CN：108 个文件，6247 个 key。
- Provenance entries：6354。
- `translated`：6065。
- `needs-review`：289。
- `reviewed`：0。
- `missing`：0。
- `releaseReady`：false。
- 本批新增条目未自动标记为 reviewed。

## 静态验证

- Repository validation：12/12 PASS。
- Source patch validation：PASS（231 rules）。
- GWT locale key / display structure parity：PASS（108 files，6247 keys）。
- Placeholder consistency：PASS。
- Properties / JSON / UTF-8：PASS。
- Provenance consistency：PASS（6354 entries）。
- Duplicate key：PASS。
- `git diff --check`：PASS（只有行尾规范提示，无实际错误）。
- 构建源复核：`5`、`10`、`25`、`50`、`-1`、`mine-all`、`theirs-all` 全部原样；Git/SVN command 与 handler 未改。

## GWT 构建

- 命令：`pwsh -NoProfile -File .\src\Build-RStudioZhCn.ps1 -Version '2026.08.1+195' -WorkspaceRoot 'D:\R' -SourceRoot 'D:\R\work\rstudio-upstream\v2026.08.1+195' -BuildRoot 'D:\R\work\rstudio-zh-cn-build' -ToolsRoot 'D:\R\tools' -OriginalRStudioRoot 'D:\R\RStudio\2026.08.1-original' -InstallerRoot 'D:\R\installers\rstudio-zh-cn\2026.08.1+195' -SkipElectron`
- Run root：`D:\R\work\rstudio-zh-cn-build\runs\20260909-180424`。
- 结果：BUILD SUCCESSFUL。
- 总耗时：6 分 18 秒；GWT permutation 编译 278.314 秒，链接 4.527 秒。
- Closure：0 error，0 warning。
- 新增 UiBinder / i18n / VCS warning：无。
- 已有 warning：Gin 引用 `jdk.internal.reflect.ConstructorAccessorImpl`，与本批无关。

## 独立候选与 Runtime smoke test

- 候选：`D:\R\RStudio\2026.08.1-zh-batch7-candidate`。
- 安装状态：`CANDIDATE_REVIEW_REQUIRED`；安装器应用 55 个 patch files。
- 候选 `rstudio.exe` 与官方原版 SHA-256 相同：`1618F0B582E9D402C5637DA20A054D69B63C1AF9DC05A1BFDB700FB748619DB6`。
- 已实际验证：候选正常启动、建立 R session、简体中文主界面加载，Source / Console / Environment / Git 可见，无灰屏或启动崩溃。
- Git Review：PASS。实际看到 `上下文`，展开下拉实际看到 `5 行`、`10 行`、`25 行`、`50 行`、`所有行`；切换 10 行、5 行、所有行时 diff hunk 范围分别按数值变化。
- SVN Review：NOT TESTED（runtime）。当前没有可安全复用的本地 SVN 测试环境；未搭建服务或远程仓库。
- SVN Resolve：NOT TESTED（runtime）。未为两个 label 构造 SVN conflict；源码、locale、value 和完整 GWT 构建均通过。
- 测试完成后通过窗口正常退出；batch6 / batch7 candidate 的 RStudio 与 rsession 进程均为 0。

## Git diff 摘要

- 4 个既有文件修改：`source-patches.json`、`translation-provenance.json`、2 个 zh_CN locale 文件。
- 1 个新增报告文件：`i18n_batch7_vcs_review.md`。
- 本批 source patch 在构建时修改 10 个锁定上游源文件位置，但没有将 Java、UiBinder XML 或生成后的英文/法文资源副本直接提交到仓库。
- 未处理本批范围之外的 coverage candidate。
