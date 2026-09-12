# Simplified Chinese localization for RStudio

This is an unofficial Simplified Chinese localization project for RStudio Desktop on Windows. It adds a native Simplified Chinese interface to the IDE through RStudio's own internationalization system.

The project is strictly pinned to `RStudio 2026.08.1+195` at upstream commit `8d474bc4cfad0e317095cd171e8ef44db6887068`. This is a community-maintained project, not an official Posit project or an officially authorized or endorsed Chinese edition.

## Download

[Download RStudio Simplified Chinese Localization 2026.08.1+195 RC1](https://github.com/SVC1996-code/rstudio-zh-cn/releases/tag/v2026.08.1%2B195-zh-cn-rc1)

The current public build is a GitHub **Pre-release** strictly locked to RStudio Desktop `2026.08.1+195`; other versions are not supported. The Release does not contain the complete RStudio application. You must provide an unmodified installation of the matching official RStudio version.

This download is the published RC1. Later changes in the current source tree are **Unreleased** and are not included in that ZIP. See the [changelog](CHANGELOG.md).

## Current status

- This project supports RStudio Desktop `2026.08.1+195`, a build from the official RStudio 2026.08.1 release. The project is strictly version-locked and does not claim compatibility with other releases.
- RC1 has been published as a GitHub Pre-release and has passed an independent installation test using the final Release ZIP.
- RC1 has completed core runtime smoke testing, with no localization-induced failures found in the core interface or major workflows.
- The published RC1 passed GitHub Actions repository validation and its local gate reported 12/12 PASS at release time. Current source passes local repository validation; unpublished commits have not thereby passed remote CI.
- Current unreleased source includes further i18n fixes, an R Markdown display resolver, and a source-built Panmirror. Visual Editor has undergone hands-on sample testing, not exhaustive testing of every interface or engine. The [testing guide](docs/testing.md) records coverage and outstanding acceptance work.
- Runtime acceptance is separate from item-by-item language review. The project does not claim that every translation has been manually reviewed.

Current development-source provenance records `translated: 6264`, `needs-review: 298`, `reviewed: 0`, `missing: 0`, `buildReady: true`, and `releaseReady: false`. These are not the published RC1 resource snapshot.

Here, `reviewed=0` means that no individual translation has yet received a traceable formal review record in `review-decisions.json`. It does not mean that RC1 received no human inspection, hands-on use, or runtime acceptance. Likewise, `buildReady: true` is not completion of language review or readiness for a new Release; `releaseReady: false` remains in effect. The published RC1 remains a pre-release.

## How it works

The project uses RStudio's official locale architecture:

- GWT interface text is supplied through `*_zh_CN.properties` files.
- Electron interface text is supplied through `zh-CN.json`.
- UI strings and display paths are wired into locale resources through exact rules in `source-patches.json`; new source files are registered in `source-additions.json`.
- A centralized R Markdown display resolver maps stable internal context to locale resources. Internal IDs, `option_list`, and YAML identifiers remain unchanged, protected by contract and fingerprint checks.
- Those resources are applied to the pinned upstream source, and the GWT and Electron frontend assets are rebuilt.
- Current source also rebuilds Panmirror from the commit and controlled source patches in `panmirror-source.json`, using `Build-PanmirrorZhCn.ps1`. It no longer simply retains the official precompiled bundle. Source matching establishes compatibility, not proof of bit-identical original build provenance.

Native programs such as `rstudio.exe` and `rsession` are neither rebuilt nor modified. The repository also excludes the complete RStudio application, a complete upstream checkout, build caches, and local candidate installations.

## Version and safety boundaries

This project is strictly version-locked and does not attempt to apply a generic patch to unknown RStudio versions.

- Only the upstream version, commit, and file structure recorded in `version.json` are accepted.
- Source archives, tool downloads, the official installation, and patch files are checked by version or SHA-256; mismatches stop the process.
- The installer creates a new candidate directory from a verified official copy and does not overwrite the original.
- File writes, copies, and moves must remain within configured safe roots.
- Product names, code identifiers, function names, paths, external web content, and backend text not yet connected to i18n are intentionally allowed to remain in English.

## Usage

### End users

Download and fully extract `rstudio-zh-cn-2026.08.1+195-rc1-patch.zip` from the [RC1 Release page](https://github.com/SVC1996-code/rstudio-zh-cn/releases/tag/v2026.08.1%2B195-zh-cn-rc1), then run the following command in PowerShell 7:

```powershell
pwsh -NoProfile -File .\Install-RStudioZhCn.ps1 `
  -SourcePath "C:\Program Files\RStudio" `
  -DestinationPath "$env:LOCALAPPDATA\Programs\RStudio-2026.08.1+195-zh-cn-rc1"
```

The installer verifies the official version and critical files, creates a separate localized candidate directory, and does not overwrite the official installation. See the [installation guide](docs/installation.md) for language switching and removal instructions. End users do not need the source repository, an upstream source tree, or the GWT/Electron build toolchain.

## Building from source

The public build and CI baseline is Windows with PowerShell 7. From the repository root, first prepare the matching official installation as described in the [build guide](docs/build.md). Adjust these example paths as needed:

```powershell
$workspace = 'E:\rstudio-zh-workspace'
$original = Join-Path $workspace 'RStudio\2026.08.1-original'
if (-not (Test-Path -LiteralPath $original)) { throw 'Prepare the matching official RStudio directory first.' }
.\src\Bootstrap-BuildTools.ps1 -WorkspaceRoot $workspace
.\src\Sync-RStudioSource.ps1 -WorkspaceRoot $workspace
.\tests\Test-Repository.ps1 -WorkspaceRoot $workspace
.\src\Build-RStudioZhCn.ps1 -WorkspaceRoot $workspace -OriginalRStudioRoot $original
```

The scripts obtain and verify pinned RStudio/Panmirror source and tools, then rebuild GWT, Electron, and Panmirror frontend assets without requiring a previous local build cache. See the build guide for Panmirror source verification, dependency installation, and standalone build parameters. Candidate installation and runtime acceptance procedures are documented below.

## Path configuration

The default configuration uses `D:\R` as the workspace root. This is only the default development layout and is not required.

The main orchestration scripts accept `-WorkspaceRoot`; the standalone Panmirror builder takes explicit root parameters documented in the build guide. The workspace root can also be set through an environment variable:

```powershell
$env:RSTUDIO_ZH_CN_WORKSPACE = 'E:\rstudio-zh-workspace'
```

For separate tools, upstream, RStudio, or other safe roots, copy `config/paths.psd1` to the Git-ignored `config/paths.local.psd1` and configure `Roots`. Explicit path parameters must still remain within their corresponding safe roots.

## Documentation

- [Architecture](docs/architecture.md)
- [Build guide](docs/build.md)
- [Installation guide](docs/installation.md)
- [Testing guide](docs/testing.md)
- [Translation maintenance](docs/translation-guide.md)
- [Release checklist](docs/release-checklist.md)

## License and trademarks

The project is maintained under `AGPL-3.0-only`. See [LICENSE](LICENSE), [NOTICE](NOTICE), [SOURCE](SOURCE), [UPSTREAM.md](UPSTREAM.md), and [`licenses/`](licenses/) for upstream provenance, modification boundaries, and license details. RStudio, Posit, and related marks belong to their respective owners. This project is not affiliated with or officially endorsed by Posit.
