# Simplified Chinese localization for RStudio

This is an unofficial Simplified Chinese localization project for RStudio Desktop on Windows. It adds a native Simplified Chinese interface to the IDE through RStudio's own internationalization system.

The project is strictly pinned to `RStudio 2026.08.1+195` at upstream commit `8d474bc4cfad0e317095cd171e8ef44db6887068`. This is a community-maintained project, not an official Posit project or an officially authorized or endorsed Chinese edition.

## Download

[Download RStudio Simplified Chinese Localization 2026.08.1+195 RC1](https://github.com/SVC1996-code/rstudio-zh-cn/releases/tag/v2026.08.1%2B195-zh-cn-rc1)

The current public build is a GitHub **Pre-release** strictly locked to RStudio Desktop `2026.08.1+195`; other versions are not supported. The Release does not contain the complete RStudio application. You must provide an unmodified installation of the matching official RStudio version.

## Current status

- This project supports RStudio Desktop `2026.08.1+195`, a build from the official RStudio 2026.08.1 release. The project is strictly version-locked and does not claim compatibility with other releases.
- RC1 has been published as a GitHub Pre-release and has passed an independent installation test using the final Release ZIP.
- RC1 has completed core runtime smoke testing, with no localization-induced failures found in the core interface or major workflows.
- GitHub Actions repository validation has passed, with the local release gate reporting 12/12 PASS.
- Runtime acceptance is separate from item-by-item language review. The project does not claim that every translation has been manually reviewed.

Current translation provenance records `translated: 6016`, `needs-review: 288`, `reviewed: 0`, `missing: 0`, `buildReady: true`, and `releaseReady: false`.

Here, `reviewed=0` means that no individual translation has yet received a traceable formal review record in `review-decisions.json`. It does not mean that RC1 received no human inspection, hands-on use, or runtime acceptance. Likewise, `buildReady: true` does not change the current `releaseReady: false` status.

## How it works

The project uses RStudio's official locale architecture:

- GWT interface text is supplied through `*_zh_CN.properties` files.
- Electron interface text is supplied through `zh-CN.json`.
- A small number of hard-coded UI strings that are not yet connected to i18n are wired into locale resources through exact rules in `source-patches.json`.
- Those resources are applied to the pinned upstream source, and the GWT and Electron frontend assets are rebuilt.

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

The public build and CI baseline is Windows with PowerShell 7:

```powershell
.\src\Bootstrap-BuildTools.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\src\Sync-RStudioSource.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\src\Build-RStudioZhCn.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\tests\Test-Repository.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
```

The scripts obtain and verify the pinned upstream source and toolchain, then rebuild only the required GWT and Electron frontend assets. Candidate installation and runtime acceptance procedures are documented below.

## Path configuration

The default configuration uses `D:\R` as the workspace root. This is only the default development layout and is not required.

All primary scripts accept `-WorkspaceRoot`, and the root can also be set through an environment variable:

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

## License and trademarks

The project is maintained under `AGPL-3.0-only`. See [LICENSE](LICENSE), [NOTICE](NOTICE), [SOURCE](SOURCE), [UPSTREAM.md](UPSTREAM.md), and [`licenses/`](licenses/) for upstream provenance, modification boundaries, and license details. RStudio, Posit, and related marks belong to their respective owners. This project is not affiliated with or officially endorsed by Posit.
