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
- `source-additions.json` registers the project-maintained `RmdTemplateDisplayNames.java` overlay. The R Markdown display contract and tests preserve internal fields, choice values and YAML identifiers while routing display labels through locale resources.
- Compiled frontend assets are non-source forms produced from the corresponding pinned source and registered modifications. Native `rstudio.exe` and `rsession` are not rebuilt or modified.

## Panmirror in the published localization

- Repository: <https://github.com/quarto-dev/quarto>
- Fixed commit: `63eebf6039c74573f54a87edbc9d29b30d26ceab`
- Official RStudio build-branch evidence: `release/rstudio-yellow-yarrow` (not used as a floating checkout).
- Archive SHA-256: `1A40F26A6F55E4EE8D9A83EE1653692FAD609A9F9B58D391A76D6B0D6C07D7F8`
- Source registry: `translations/2026.08.1+195/panmirror-source.json`, including archive URL, lockfile and original bundle/sourcemap hashes, and exact patches.
- The original sourcemap's 293 first-party text files and 142 embedded assets match this source. This establishes source compatibility, not proof of bit-identical original build provenance. The Quarto CLI version is not the Panmirror source commit.

`Build-PanmirrorZhCn.ps1` applies registered patches in an isolated source tree, validates dependencies and display/internal-value contracts, and rebuilds the bundle and sourcemap. `Build-RStudioZhCn.ps1` verifies and includes these outputs. Changes cover command display/search separation, built-in cross-reference labels, symbol UI text, and preservation of raw table IDs through Pandoc/DOM round trips. The table-ID change is a document-save behavior fix, not merely translation. Detailed affected paths are in the registry and build reports; see [maintenance instructions](docs/maintenance.md).

## Published assets and Corresponding Source

```text
Release: v2026.08.1+195-zh_CN
Release URL: https://github.com/SVC1996-code/rstudio-zh-cn/releases/tag/v2026.08.1%2B195-zh_CN
Release target commit: 8a4e749ecbf370145617c8efe1953a15862046c1
ZIP: RStudio-2026.08.1+195-zh_CN.zip
SHA-256: 990525F6D89CBE18BA4B3B7C5057ABE7AB2980CB4C83C194A8557AD11B415593
```

The [release target source](https://github.com/SVC1996-code/rstudio-zh-cn/tree/8a4e749ecbf370145617c8efe1953a15862046c1) contains the tested frontend implementation saved in `d932f04` plus later policy, inventory and documentation changes. The published ZIP reuses those tested frontend outputs; it is not represented as a fresh rebuild of all files at the tag. Package installation scripts are included in source form.


The published [2026.08.1+195 RC1](https://github.com/SVC1996-code/rstudio-zh-cn/releases/tag/v2026.08.1%2B195-zh-cn-rc1) uses project tag `v2026.08.1+195-zh-cn-rc1` and commit [`3227b1d4175ae026fd12de756b297325eeef561f`](https://github.com/SVC1996-code/rstudio-zh-cn/tree/3227b1d4175ae026fd12de756b297325eeef561f). It does not include the later source additions, display fixes or rebuilt Panmirror described above. Its source association must not be retargeted to development HEAD.

The current Release's Corresponding Source is obtained from its exact project target commit, the pinned RStudio and Panmirror sources above, and their locked dependencies. The locale, source registries, build scripts and dependency retrieval instructions are retained; see [SOURCE](SOURCE) and [maintenance instructions](docs/maintenance.md). Preserve all applicable upstream copyrights, licenses and notices. Review the actual dependency set for each distribution; existing RStudio notices do not alone establish coverage of every rebuilt dependency. These records are not a final legal conclusion.

No claim is made over RStudio, Posit, third-party names, or upstream code beyond the rights granted by their applicable licenses. Modified files are identified by repository history, source registries, build reports, and version metadata. No complete RStudio distribution or upstream source checkout is included in this repository.
