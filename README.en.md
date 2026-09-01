# Simplified Chinese localization for RStudio

This unofficial Windows project targets exactly `RStudio 2026.08.1+195` at upstream commit `8d474bc4cfad0e317095cd171e8ef44db6887068`.

It uses RStudio's official localization structure: GWT `*_zh_CN.properties`, Electron `zh-CN.json`, and a version-locked list of source patches for user-visible strings that are not yet wired to i18n. GWT and Electron frontend assets are rebuilt; native programs such as `rstudio.exe` and `rsession` are not modified.

## Current status

- The supported upstream build, `RStudio 2026.08.1+195`, is a **Release Candidate** published by Posit, not a stable release.
- This repository is currently being prepared for a source-first public launch. There is no compiled frontend patch GitHub Release available for end users yet; a strictly version-locked patch Release may be provided in the future.
- RC1 has completed hands-on runtime smoke testing, with no localization-induced failures found in the core interface or workflows. Runtime acceptance is separate from item-by-item translation review.
- Current translation provenance is `translated: 6016`, `needs-review: 288`, `reviewed: 0`, `missing: 0`, `buildReady: true`, and `releaseReady: false`. Here, `reviewed=0` means that no individual translation has yet received a traceable formal review record in `review-decisions.json`; it does not mean RC1 lacked overall hands-on use and runtime acceptance. The project does not claim that every translation has been manually reviewed.

The existing developer default remains `D:\R`. Other users can supply `-WorkspaceRoot`, set `RSTUDIO_ZH_CN_WORKSPACE`, or create the ignored `config/paths.local.psd1` to configure separate safe roots.

```powershell
.\src\Bootstrap-BuildTools.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\src\Sync-RStudioSource.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\src\Build-RStudioZhCn.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
.\tests\Test-Repository.ps1 -WorkspaceRoot 'E:\rstudio-zh-workspace'
```

PowerShell 7 is the public build and CI baseline. See [README.md](README.md) and the files under `docs/` for architecture, installation, testing, and maintenance details.

The repository does not contain a complete RStudio application, a complete upstream checkout, build caches, or local candidates. It is licensed under `AGPL-3.0-only` and is not affiliated with or endorsed by Posit Software, PBC.
