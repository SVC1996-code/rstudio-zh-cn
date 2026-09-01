# Upstream and modification record

## Upstream

- Project: RStudio IDE
- Copyright holder identified by upstream: Posit Software, PBC and contributors
- Repository: <https://github.com/rstudio/rstudio>
- Tag: `v2026.08.1+195`
- Commit: `8d474bc4cfad0e317095cd171e8ef44db6887068`
- Source archive SHA-256: `25E2AC0EFFCE6D62594B406C3AABFE1E5B2E354339EA8C57EC30147358E8D514`
- Upstream license: GNU Affero General Public License version 3

The upstream COPYING and third-party NOTICE files for this exact source are preserved under `licenses/`.

## Project-authored material

The PowerShell orchestration, repository validation, project documentation, path configuration, translation review metadata format, and CI configuration in this repository were authored for `rstudio-zh-cn`.

## Derivative and modified upstream material

- `translations/<version>/upstream/**/*_zh_CN.properties` translates and follows the key structure of upstream English/French GWT locale resources.
- `translations/<version>/upstream/**/zh-CN.json` translates and follows the key structure of the upstream Electron locale.
- `source-patches.json` describes exact changes to upstream Java, properties, XML, TypeScript, and schema files needed to register the locale or route hardcoded user-visible text through i18n.
- Future compiled GWT/Electron patch assets are non-source forms produced from upstream RStudio plus these modifications.

No claim is made over RStudio, Posit, third-party names, or upstream code beyond the rights granted by their applicable licenses. Modified files are identified by repository history, `source-patches.json`, build reports, and version metadata.
