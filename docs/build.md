# 构建说明

公开构建基线为 Windows 和 PowerShell 7。以下命令从源码仓库根目录运行；示例 workspace 可调整，不依赖作者的旧构建目录。首次构建需要联网下载已锁定源码、工具和依赖。

## 准备并完整构建

先自行取得与 `version.json` 完全匹配、未经修改的官方 RStudio Desktop `2026.08.1+195`，将完整安装树准备在示例 `$original` 目录（该目录下应包含 `rstudio.exe` 和 `resources`）。构建脚本不会下载或重新编译原生 RStudio；缺失或哈希不匹配时停止。

```powershell
$workspace = 'E:\rstudio-zh-workspace'
$original = Join-Path $workspace 'RStudio\2026.08.1-original'
if (-not (Test-Path -LiteralPath $original)) { throw '请先准备匹配的官方 RStudio 原版目录。' }
.\src\New-OriginalFileInventory.ps1 -WorkspaceRoot $workspace -OriginalPath $original
.\src\Bootstrap-BuildTools.ps1 -WorkspaceRoot $workspace
.\src\Sync-RStudioSource.ps1 -WorkspaceRoot $workspace
.\tests\Test-Repository.ps1 -WorkspaceRoot $workspace
.\src\Build-RStudioZhCn.ps1 -WorkspaceRoot $workspace -OriginalRStudioRoot $original
```

Bootstrap 验证并准备便携 JDK、Ant、Node、GWT 依赖及 Yarn 1.22.22，生成工具链 lock；Sync 校验锁定 RStudio tag/commit/归档并生成 source lock。主构建在新 run 下应用 `source-patches.json`、登记的 source additions 和 locale，构建 GWT/Electron，再构建 Panmirror并生成前端补丁及报告。静态门禁同时检查 D-29 contract/fingerprint 和 provenance，不会因构建通过自动提升人工审核状态。

`New-OriginalFileInventory.ps1` 必须在安装补丁前执行：从通过 `Assert-OfficialRStudio` 的独立、未修改官方原版生成完整文件基线，默认输出 `$workspace\installers\rstudio-zh-cn\2026.08.1+195\original-files.sha256.csv`。CSV 仅含相对 `Path`、`Length`、`SHA256`，稳定排序、UTF-8/LF；不写入原版，也不覆盖已有基线。候选标记或关键文件哈希不符均拒绝。已有基线保留供后续比较，不因重试构建而重新生成；新的 clean-room 验收使用新的隔离 workspace。完整读取方式见[候选验证](testing.md#candidate-validation)。

默认 patch 输出为 `$workspace\installers\rstudio-zh-cn\2026.08.1+195\patch`，运行源码与缓存位于 `$workspace\work\rstudio-zh-cn-build`。以脚本实际返回的路径和 manifest 为准。安装到全新候选目录，见[安装说明](installation.md)；运行测试所需 R 和用户库须单独准备，不属于前端编译依赖。

## Panmirror 的固定来源和构建链

主构建未传 `-PanmirrorBuildRoot` 时会自动调用 `src/Build-PanmirrorZhCn.ps1`，不要求已有 Panmirror 缓存：

1. 从 `translations/2026.08.1+195/panmirror-source.json` 读取固定 commit 和归档 URL；下载到 build root 的 `panmirror-downloads` 并校验 SHA-256。不是浮动分支或 Quarto CLI 版本。
2. 在全新输出目录解压；验证原 `yarn.lock`、官方 bundle/sourcemap，以及 sourcemap 对应源码/嵌入资源；逐条应用精确源码补丁。
3. 使用工具链 lock 的 Node/Yarn，执行 `yarn install --frozen-lockfile --ignore-scripts --non-interactive`，再次验证 lockfile 未变；缓存仅在隔离 build root 中。
4. 执行 `tests/panmirror-display-contract.cjs`，再运行 `yarn workspace panmirror build --sourcemap`（包括 TypeScript 检查），检查输出 JS/JSON，生成 `panmirror-build-report.json`。
5. 主构建验证 report 的 commit、registry、bundle、sourcemap 哈希，复制新前端资源并登记 manifest。输出哈希应来自实际新构建，不要求等于官方未修改 bundle。

需要单独构建 Panmirror 时，在上述准备完成后运行以下替代流程；使用默认布局，`$panmirrorBuild` 必须不存在且位于 `$buildRoot` 内：

```powershell
$workspace = 'E:\rstudio-zh-workspace'
$buildRoot = Join-Path $workspace 'work\rstudio-zh-cn-build'
$toolsRoot = Join-Path $workspace 'tools'
$original = Join-Path $workspace 'RStudio\2026.08.1-original'
$panmirrorBuild = Join-Path $buildRoot 'panmirror-clean'
.\src\Build-PanmirrorZhCn.ps1 -Version '2026.08.1+195' `
  -OutputRoot $panmirrorBuild -BuildRoot $buildRoot `
  -ToolsRoot $toolsRoot -OriginalRStudioRoot $original
.\src\Build-RStudioZhCn.ps1 -WorkspaceRoot $workspace `
  -OriginalRStudioRoot $original -PanmirrorBuildRoot $panmirrorBuild
```

可选 `-ArchivePath` 仅用于已经取得且通过同一注册表哈希检查的源码包；不必提供。独立 Panmirror 入口不接受 `-WorkspaceRoot`，自定义 Roots 时应传入实际解析后的根目录。没有改变源码或注册表且 report/产物哈希匹配时，主构建才接受已有 Panmirror 输出。

源码匹配说明兼容性，不证明官方原 bundle 的位级构建来源。来源和下一次分发待办见 [UPSTREAM.md](../UPSTREAM.md)。

## 路径配置

默认配置仍使用 `D:\R`。如需把 tools、upstream、RStudio 安装和 installer 输出放在不同磁盘，可复制 `config/paths.psd1` 为 `config/paths.local.psd1` 并增加 `Roots`：

```powershell
@{
    DefaultWorkspaceRoot = 'E:\rstudio-zh-workspace'
    Roots = @{
        Tools = 'F:\rstudio-build-tools'
        RStudio = 'C:\PortableApps\RStudio'
    }
}
```

每个配置根都必须不是磁盘根。写入、移动和递归复制仍受对应根目录约束；显式参数不会关闭这些检查。

## 构建恢复限制

当前验收曾尝试 `-ResumeRunRoot` 配合 `-SkipGwt` / `-SkipElectron`，被 `Previously applied patch is missing during resume: PrefsConstants.java` 保护检查拒绝。没有放宽检查，改用全新完整构建成功。因此不把该恢复路径作为已验证的推荐流程；失败时保留报告并在新 run 完整构建，不删断言或覆盖旧验收产物。

当前源码重编译 GWT/Electron/Panmirror 前端并生成补丁目录，不重新编译 `rstudio.exe`、`rsession` 等原生组件。本页不表示已发布 RC1 ZIP 包含这些 Unreleased 修改。
