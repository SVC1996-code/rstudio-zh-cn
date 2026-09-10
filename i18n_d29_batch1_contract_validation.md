# D-29 Batch 1：契约与验证报告

本批只建立静态契约、升级检测和 source-addition 登记规则。没有改变运行时 UI，没有新增 resolver 或 locale key，没有修改 GWT production source，也没有执行 GWT build。

# Git Baseline

- Branch：`main`
- HEAD：`2a6bf1b812186376662effe77b964851c3602f2c`
- Commit：`Localize new document and Panmirror UI`
- HEAD 来源：本批开始前已经存在的预期本地提交，不是 D-29 调查或本批创建。
- `git show --stat --oneline HEAD`：该提交包含 batch 10 报告、`source-patches.json`、provenance 和三份 locale 资源，共 6 个文件，230 insertions、4 deletions。
- 本批开始时 tracked worktree clean；唯一未跟踪文件为上一阶段生成的 `i18n_d29_rmd_template_design.md`。
- `origin/main` 当时为 `57d12bfc41bb5641cf82b846d43ca4497641cb1d`，本地后续提交尚未推送；不影响本批本地基线判断。
- 未发现来源异常，因此没有执行 reset、checkout 或 revert。

# Extractor

新增只读工具：`tests/RmdTemplateContract.ps1`。

提取方式：

1. 精确定位 `RmdTemplateData.getTemplates()` JSNI 方法。
2. 使用识别引号和转义的括号扫描器提取完整 return array，而不是 grep 英文字符串。
3. 仅转换该锁定源码使用的 JSON-compatible JavaScript 子集：未加引号的属性名和 trailing comma。
4. 交给 PowerShell JSON parser 解析为结构化 template/format/option 对象。
5. 模拟 `RmdTemplateOptionsWidget.findOption()` 的 generic/specific 选择规则，为每个 option definition 计算实际相关 format。
6. 从 `RmdTemplateFormatOption.getCategory()` 的返回表达式解析缺省分类；当前得到 `General`，不是在统计结果中盲目追加固定数量。

提取字段包括：

- display：`format_ui_name`、`option_ui_name`、显式 `option_category`；
- format context：`template_name`、`format_name`、`format_extension`、`format_options`、其他非显示属性；
- option context：`option_name`、`option_format`、`option_type`、`option_default`、`option_list`、`option_transferable`、`option_nullable`、`option_for_create`、`option_add_header` 及未来出现的其他非显示属性。

# Coverage Baseline

机器可读契约：

`translations/2026.08.1+195/rmd-template-i18n-contract.json`

实际源码提取结果：

| 项目 | 数量 |
|---|---:|
| `format_ui_name` definitions | 8 |
| `option_ui_name` definitions | 45 |
| explicit `option_category` definitions | 23 |
| unique explicit display strings | 42 |
| category contexts（含合成默认项） | 3 |
| 全部稳定 display contexts | 56 |

三个 category context 为：

- 显式 `Advanced`
- 显式 `Figures`
- `getCategory()` 合成默认 `General`

契约不仅保存数量，还保存每个 context、英文 fallback、相关 format 和完整 internal snapshot。`format_notes` 被明确排除在 D-29 当前 display contract 外。

继续记录但未修复：

1. `format_notes` 用户可见英文；
2. PowerPoint 引用 `df_print`，但 Presentation template 没有对应定义；
3. `center` 当前未被 format 引用；
4. generic `Theme` 被 format-specific 定义遮蔽；
5. generic `Slide transition` 被 format-specific 定义遮蔽。

# Stable Context Model

descriptor identity 不使用英文 literal 作为唯一标识：

| 类型 | identity | fallback 的作用 |
|---|---|---|
| format | `format::<template_name>::<format_name>` | 保存上游英文及运行时回退依据 |
| option | `option::<template_name>::<option_name>::<option_format>` | 保存上游英文；`relatedFormatNames` 记录 generic/specific 实际适用范围 |
| category | `category::<raw category token>` | raw token 为分组标识；英文只作为显示 fallback |

示例：

```text
format::Document::html_document
option::Document::toc::
option::Presentation::transition::ioslides_presentation
category::General
```

未来 resolver 应直接对应这些 identity。选定 format、option key、category 分组 token 和 fallback display text 不需要各自维护另一套互不关联的清单。

# Diagnostics

`Compare-RmdDisplayContract` 实现以下诊断，并统一输出 source file、field type、template、format、option、option format、raw category、old/new fallback English 和 diagnostic code。

| Diagnostic | 触发条件 | 本批 fixture 示例 |
|---|---|---|
| `MISSING_I18N_DISPLAY_NAME` | 上游实际 context 存在，descriptor 不存在 | 新增 `some_new_option` / `Some New Option` |
| `STALE_I18N_DISPLAY_NAME` | descriptor context 存在，上游已删除 | 移除 `html_notebook` actual context |
| `UPSTREAM_DISPLAY_NAME_CHANGED` | identity 不变，fallback wording 改变 | `toc` 从 `Include table of contents` 改为 `Show table of contents` |
| `AMBIGUOUS_I18N_DISPLAY_NAME` | 同一 identity 出现冲突 fallback 或 descriptor 重复 | `category::Advanced` 同时出现 `Advanced` 与 `Advanced options` |

正式当前源码与 descriptor 比较结果为零诊断。

# Fixture Tests

fixture 只修改内存中的 context 对象，不修改或复制回 `RmdTemplateData.java`。

实际结果：

```text
new option     -> MISSING_I18N_DISPLAY_NAME
toc wording    -> UPSTREAM_DISPLAY_NAME_CHANGED
removed format -> STALE_I18N_DISPLAY_NAME
conflict       -> AMBIGUOUS_I18N_DISPLAY_NAME
```

wording change fixture 特别确认：稳定 identity `option::Document::toc::` 未变时，不会误报 `MISSING_I18N_DISPLAY_NAME`。

# Internal Field Integrity

契约保存完整结构化 internal snapshot，并对 canonical UTF-8 JSON 计算 SHA-256：

```text
C2CC2D86B72FA5DEEC9C53113A62FD9B87AC01A61B5FC322C9367E050211E1AA
```

验证不是只比较数量或 hash：先比较实际 canonical snapshot 与登记 snapshot 的完整字段和值，再验证 fingerprint。

纳入保护：

- `template_name`；
- 所有 format 属性，但排除 `format_ui_name`、`format_notes`；
- 所有 option 属性，但排除 `option_ui_name`、`option_category`。

因此当前已保护 `format_name`、`format_extension`、`format_options`、`option_name`、`option_format`、`option_type`、`option_default`、`option_list` 和所有行为 flags。未来新增非显示属性也会自动进入 snapshot，而不是依赖固定字段白名单。

# option_list Safety

`option_list` 明确位于 internal snapshot，当前共有 13 个包含该字段的 option definition。

示例值包括：

- `default`
- `xelatex`
- `paged`
- `tibble`
- `none`
- `hide`
- `show`

extractor 只把 `format_ui_name`、`option_ui_name` 和 category fallback 纳入 display coverage；`option_list` 不会进入可翻译字段集合。任何未来对 choice tokens 的修改都会触发 internal snapshot failure。

# Source Addition Policy

新增登记文件：

`translations/2026.08.1+195/source-additions.json`

当前登记和实际 Java source addition 均为 0。验证规则为：

- 扫描 `translations/<version>/upstream` 内全部 `*.java`；
- 只允许 `src/gwt/src/` 下的项目新增 Java source；
- overlay 若覆盖上游已存在 Java 文件则失败，要求改用精确 source patch；
- 新增文件必须登记，未登记即失败；
- 登记存在但文件不存在即失败；
- registry 的 upstream version/commit 必须与 `version.json` 相同；
- 每个登记项必须提供：
  - `path`
  - `purpose`
  - `rationale`
  - `upstreamVersion`
  - `participatesInGwtBuild`
  - `maintainedByProject`
- 后两个字段必须是真正的 JSON boolean `true`，不能用字符串伪装。

未来 `RmdTemplateDisplayNames.java` 若作为 source addition overlay 实施，应先加入文件，再按上述字段登记；否则 repository validation 会拒绝。

# Repository Validation

`tests/Test-Repository.ps1` 新增四个清晰可见的门禁：

1. `R Markdown template display i18n coverage`
2. `R Markdown template contract diagnostic fixtures`
3. `R Markdown template internal field integrity`
4. `Source addition overlay registry`

总门禁由 12 项增加为 16 项。最终运行结果：

```text
[PASS] R Markdown template display i18n coverage
       formats=8; options=45; explicitCategories=23;
       uniqueStrings=42; categories=Advanced,Figures,General
[PASS] R Markdown template contract diagnostic fixtures
       MISSING_I18N_DISPLAY_NAME,UPSTREAM_DISPLAY_NAME_CHANGED,
       STALE_I18N_DISPLAY_NAME,AMBIGUOUS_I18N_DISPLAY_NAME
[PASS] R Markdown template internal field integrity
       sha256=C2CC2D86B72FA5DEEC9C53113A62FD9B87AC01A61B5FC322C9367E050211E1AA;
       optionLists=13; display fields excluded
[PASS] Source addition overlay registry
       registered=0; actual=0

Repository validation passed: 16 checks.
```

`git diff --check`：PASS。

本批没有修改任何 `src/gwt` production source，没有创建 `RmdTemplateDisplayNames`，因此按批次要求没有执行 GWT build。

# Git Diff

本批实际文件：

- 新增 `tests/RmdTemplateContract.ps1`
- 修改 `tests/Test-Repository.ps1`
- 新增 `translations/2026.08.1+195/rmd-template-i18n-contract.json`
- 新增 `translations/2026.08.1+195/source-additions.json`
- 新增 `i18n_d29_batch1_contract_validation.md`

本批开始前已存在、未被本批修改：

- `i18n_d29_rmd_template_design.md`

明确未修改：

- `RmdTemplateData.java`
- `NewRMarkdownDialog.java`
- `RmdTemplateOptionsWidget.java`
- 所有 Rmd option widget
- `source-patches.json`
- en/fr/zh_CN locale
- translation provenance
- GWT/Electron build 输入和运行时逻辑

**最终结果：PASS**
