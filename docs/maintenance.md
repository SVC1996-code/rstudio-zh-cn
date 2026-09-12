# 维护说明

面向贡献者与版本维护者。用户下载安装见[安装说明](installation.md)；精确发布来源见 [SOURCE](../SOURCE) 和 [UPSTREAM.md](../UPSTREAM.md)。

## 1. 架构

- **GWT**：使用 `*_zh_CN.properties`，通过源码补丁接入 locale、中文 permutation 和显示入口。
- **Electron**：使用 `zh-CN.json`，注册语言标识后重新编译前端资源。
- **源码修改**：既有文件使用 `source-patches.json` 的精确 find/replace/expectedOccurrences；新增源码由 `source-additions.json` 登记。不得用未登记 overlay 替换上游文件。
- **R Markdown**：稳定内部上下文 → `RmdTemplateDisplayNames` → 本地化显示。format、template、option 和 format-specific 上下文共同决定标签；category token 仍作分组键。控件和 ARIA 共用标签，label/value 分离。
- **Panmirror**：按固定 commit、archive/lockfile 哈希和源码证据重建 Visual Editor，不修改预编译 bundle。完整动态标题/说明在生成或显示入口本地化，Chunk/Cell 不混用；显示名与原英文搜索 name、keywords、action 分离。
- **内部值**：pane ID、枚举、序列化值、配置 key、语言/engine token、代码围栏、URL、引用标识及 YAML 值不翻译。树 resolver 只改内置分类标签，不改节点数据或用户标题。表格 ID 保存属于行为修复，须单独测试。
- **边界**：只分发登记的前端资源；原生 `rstudio.exe`、`rsession` 不重新编译或修改。未知显示上下文保留英文/稳定 ID fallback，但维护门禁仍对未知或漂移映射失败。

源码匹配证明兼容性，不承诺与官方 bundle 位级一致；产物使用实际构建哈希。

## 2. 目录结构

| 路径 | 用途 |
| --- | --- |
| `translations/<version>/upstream/` | 按官方路径组织的 locale 与登记新增源码，不是完整上游源码 |
| `version.json`（版本目录内） | RStudio tag/commit、源码包、工具链与官方关键哈希 |
| `source-patches.json` / `source-additions.json` | 精确修改规则及新增文件登记 |
| `rmd-template-i18n-contract.json` | R Markdown 显示上下文及内部值合同 |
| `panmirror-source.json` | 固定 Panmirror 来源、依赖 lock 和受控源码补丁 |
| `translation-policy.json` / `translation-provenance.json` / `review-decisions.json` | 例外依据、生成状态及可选真实人工审校记录 |
| `src/` / `tests/` | 正式编排脚本与回归门禁 |
| `config/` | 默认布局及本机可覆盖的路径配置 |

完整程序、源码下载副本、构建树、缓存、profile、日志、截图和审校导出不提交。提交信息应说明版本、界面与测试结果；不改写旧资产来源。

默认 workspace 为 `D:\R`，不是强制路径。主要脚本接受 `-WorkspaceRoot`，也可设置 `RSTUDIO_ZH_CN_WORKSPACE`。独立安全根可在被 Git 忽略的 `config/paths.local.psd1` 中配置，例如：

```powershell
@{
    DefaultWorkspaceRoot = 'E:\rstudio-zh-workspace'
    Roots = @{
        Tools = 'F:\rstudio-build-tools'
        RStudio = 'C:\PortableApps\RStudio'
    }
}
```

配置根不能是磁盘根；显式参数不关闭路径边界校验。

## 3. 修改翻译

1. 修改对应版本的 GWT `_zh_CN.properties` 或 Electron `zh-CN.json`，与应用 source patches 后的英文 key 对齐。
2. 保留占位符数量/语义、MessageFormat 引号、HTML/实体、换行、制表符、转义和 mnemonic；不改内部标识、正则或产品名称。
3. R、RStudio、Quarto、Shiny、Stan、Git、GitHub、Python、LaTeX、HTML、API、Posit Assistant 等技术名/品牌按语境保留。普通概念如“助手”可以翻译。
4. 新增 GWT 方法同步 en/fr/zh_CN；无可靠法语译文时保留明确的英文 fallback。相同英文只有在语义和动作相同时才共用 key，不做全局替换。
5. 更新 provenance，再运行门禁：

```powershell
.\src\Update-TranslationProvenance.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\tests\Test-Repository.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
```

`translated` 表示已提供翻译，可进入候选；`allowed-english` 是有依据的技术名、模板或上游空占位；`needs-review` 是真实语境疑问；`missing` 是缺 key 或应译非空文本缺失。`reviewed` 可选，必须有真实来源和日期，不自动批量提升。

例外与阻塞问题在 policy 中按 context、英文、中文精确绑定；变更后须重新判断。资源 `releaseReady` 仅要求 missing 为零且无未解决阻塞翻译问题，不代替构建和运行验收。非阻塞 needs-context 可保留并披露。

历史记录中的语境说明在此承接：`anchorHomeText` 的“主页/主目录”须结合文件导航位置；`authoringRPresentationsHelpDesc` 的命令名称与英文帮助文案不一致，不能按名称猜改；终端 `shellText` / `webSocketsText` 须结合诊断拼接语境。已有 policy/provenance 的历史来源文字保持原样，不因文档搬迁改审校状态。

## 4. 构建

Windows + PowerShell 7，从仓库根运行。先从可信官方安装包准备与版本清单匹配的独立原版，其根目录包含 `rstudio.exe` 和 `resources`；不要使用候选或从安装后的目录倒推基线。

```powershell
$workspace = 'E:\rstudio-zh-workspace'
$original = Join-Path $workspace 'RStudio\2026.08.1-original'
$reportDirectory = Join-Path $workspace 'installers\rstudio-zh-cn\2026.08.1+195'
if (-not (Test-Path -LiteralPath $original)) { throw '请先准备匹配的独立官方原版。' }
.\src\New-OriginalFileInventory.ps1 -WorkspaceRoot $workspace `
  -OriginalPath $original -ReportDirectory $reportDirectory
.\src\Bootstrap-BuildTools.ps1 -WorkspaceRoot $workspace
.\src\Sync-RStudioSource.ps1 -WorkspaceRoot $workspace
.\tests\Test-Repository.ps1 -WorkspaceRoot $workspace
.\src\Build-RStudioZhCn.ps1 -WorkspaceRoot $workspace `
  -OriginalRStudioRoot $original -InstallerRoot $reportDirectory
```

**inventory 必须在安装补丁之前生成。** `New-OriginalFileInventory.ps1` 调用 `Assert-OfficialRStudio`，拒绝候选标记或关键哈希不符。输出为 `ReportDirectory/original-files.sha256.csv`：相对 Path、Length、SHA256，稳定排序、UTF-8/LF，无时间戳。不得覆盖已有基线；同轮重试保留原文件，新一轮使用新的输出目录。关键哈希校验不替代官方来源可信性。

Bootstrap 校验并准备便携 JDK、Ant、Node、GWT 依赖和锁定 Yarn，生成工具链 lock；Sync 核对上游 tag/commit、archive 和 Git tree，生成 verified source lock。版本、哈希或匹配次数不符必须停止。

完整构建在全新 run 应用 patches/additions/locale，执行 GWT compile/link、Electron 和 Panmirror 集成，输出 `ReportDirectory/patch` 的 manifest 与报告。构建树默认位于 workspace 的 `work/rstudio-zh-cn-build`。正式验收采用全新完整构建，不用跳过组件的产物替代。

### 独立 Panmirror 构建

主构建默认自动构建 Panmirror。确需单独构建时，准备工具及原版后执行以下替代流程；输出目录必须尚不存在：

```powershell
$workspace = 'E:\rstudio-zh-workspace'
$original = Join-Path $workspace 'RStudio\2026.08.1-original'
$buildRoot = Join-Path $workspace 'work\rstudio-zh-cn-build'
$toolsRoot = Join-Path $workspace 'tools'
$panmirrorBuild = Join-Path $buildRoot 'panmirror-clean'
.\src\Build-PanmirrorZhCn.ps1 -Version '2026.08.1+195' `
  -OutputRoot $panmirrorBuild -BuildRoot $buildRoot `
  -ToolsRoot $toolsRoot -OriginalRStudioRoot $original
.\src\Build-RStudioZhCn.ps1 -WorkspaceRoot $workspace `
  -OriginalRStudioRoot $original -PanmirrorBuildRoot $panmirrorBuild
```

独立入口不接受 `-WorkspaceRoot`；自定义配置时传入实际安全根。可选 `-ArchivePath` 仅用于同一注册表哈希验证的下载缓存，不复用旧 dist/node_modules 充当新构建。

流程核验原 `yarn.lock`、官方 bundle/sourcemap 及来源证据，应用精确补丁，执行 `yarn install --frozen-lockfile --ignore-scripts --non-interactive`、显示/内部值 contract、TypeScript 检查与 `yarn workspace panmirror build --sourcemap`。主构建再次验证 commit、registry、bundle/map/report 哈希后登记产物。

## 5. 测试

### 静态门禁

`tests/Test-Repository.ps1` 检查 locale key/占位符/HTML/MessageFormat/转义、JSON/UTF-8/PowerShell、源码 patch/addition、provenance、Panmirror 注册表、inventory 流程及凭据/大文件策略。GitHub Actions 的静态验证不等于完整构建或实际 UI 验收。

R Markdown contract 对 missing、changed、stale、ambiguous 上下文失败；resolver fallback 不用于掩盖缺项。保留 internal fingerprint、默认值、类型、行为 flags 和 `option_list` 安全断言，不通过重置基线掩盖内部值变化。

### Candidate validation

完成第 4 节后，准备配置要求的 R runtime 和用户库，再安装到尚不存在的目录：

```powershell
$workspace = 'E:\rstudio-zh-workspace'
$original = Join-Path $workspace 'RStudio\2026.08.1-original'
$candidate = Join-Path $workspace 'RStudio\2026.08.1-zh-next'
$reportDirectory = Join-Path $workspace 'installers\rstudio-zh-cn\2026.08.1+195'
.\src\Install-RStudioZhCn.ps1 -WorkspaceRoot $workspace `
  -SourcePath $original -DestinationPath $candidate `
  -PatchRoot (Join-Path $reportDirectory 'patch')
.\src\Test-RStudioZhCn.ps1 -WorkspaceRoot $workspace `
  -OriginalPath $original -CandidatePath $candidate `
  -ReportDirectory $reportDirectory -UiReviewResult Pending
```

生成 inventory、构建 `-InstallerRoot` 和检查 `-ReportDirectory` 必须一致，均在 Installers 安全根内。读取器要求原 `original-files.sha256.csv`：缺失、空表、重复/不安全路径、格式错误仍 FAIL；完整比较原版文件数量、长度和 SHA-256，不得跳过。检查器另验候选仅修改登记前端资源、语言资源/JS、R/库及中文路径。仅在真实 UI 验收完成后使用 `-UiReviewResult Pass`。

### 运行抽样

使用准确候选路径与 manifest/资源哈希识别版本，EXE 相同不足以证明前端最新。隔离 profile 和临时文档，不操作用户文件或全局 R library；仅退出本次候选。

- 启动/退出、Console 实际计算、Source/Environment、Files/Plots/Packages/Help/Terminal、Project、Preferences、菜单/对话框、中英文切换。
- Source/Console compact 与恢复；Visual Editor 固定/动态命令、英文关键词、键盘选择和插入，检查原 engine token/围栏。
- Insert Table、Cross Reference 分类与筛选、Citation 基础面板、Emoji/Unicode 搜索插入及 UTF-8 保存。
- 表格 `tbl-*` ID 经 Visual 保存、关闭重开仍保留，引用仍为 `@tbl-*`；抽样章节/公式引用。不将中文标签写成内部 ID。
- R Markdown 新建/已有选项、不同格式、保存读回 YAML，label 本地化不改变 typed value；不以 Quarto 表格测试替代。

记录通过、失败与未覆盖范围，不把空列表、进程存在或静态 contract 当作交互成功，不将文档精简视为测试补齐。联网来源、全部语言引擎或平台组合按实际条件说明。诊断过时检查时定位根因，不删断言凑通过。

`Measure-RStudioStartup.ps1`、`Monitor-RStudioMemory.ps1` 可辅助测启动/内存；`Restore-RStudioZhCn.ps1` 从指定备份恢复到不存在的目标。核对安全根并在独立目录测试，勿影响主要安装。

## 6. 发布

- [ ] repository validation 与 GitHub Actions 通过，missing 和已知阻塞翻译问题清零，非阻塞限制有说明。
- [ ] 固定来源、完整构建、manifest 与新候选验证通过，保留真实测试结果与构建证据。
- [ ] 完成核心 smoke、Visual Editor 和表格/引用往返；验证独立安装/卸载或恢复，原版 inventory 不变。
- [ ] ZIP 只含用户必要安装文件、登记前端资源和许可证；独立解压校验安装入口、文件哈希，无凭据、缓存或个人路径。
- [ ] 计算 ZIP SHA-256；记录精确源码 commit/tag、RStudio/Panmirror 来源及产物对应关系，不改旧资产来源。
- [ ] 核对 LICENSE、NOTICE、SOURCE、UPSTREAM 和实际依赖许可证/版权，提供完整 Corresponding Source 取得方式；既有 NOTICE 不自动证明所有新依赖已覆盖。
- [ ] 确认 tag 不存在后创建 tag/Release 并上传资产，核对远端大小/摘要，同步用户文档与 CHANGELOG。

发布来源记录是事实说明，不是法律结论；技术构建、运行抽样、逐条审校与发布批准不能互相替代。

## 7. 升级到新版 RStudio

1. 新增独立 `translations/<version>/`，按官方证据更新 `version.json` 的版本、tag、commit、archive/关键文件及工具链哈希，保留已发布版本。
2. 正常 Sync 并校验 source lock；用 `Update-RStudioVersion.ps1` / 官方 locdiff 的实际支持流程列出新增、变化和删除 key，不自动沿用语义已变化的翻译。
3. 逐项核对 exact source patches/additions 和 R Markdown 显示合同；检查四类漂移诊断，先确认上游内部值变化，再有依据地更新合同。
4. 独立核对 Panmirror 源码 commit、archive、依赖锁、API 与补丁兼容性，不能把 Quarto CLI 版本当作源码 commit，也不直接拉最新分支。
5. 更新实际受影响的 locale/policy/provenance，运行完整 validation，构建全新候选。
6. 回归核心 UI、语言切换、动态搜索/插入、表格引用、YAML 与安装恢复；处理真实阻塞，明确未覆盖项。
7. 按发布清单准备版本锁定 ZIP 与来源说明，保留少量历史资产和证据，不覆盖旧版本 Release。
