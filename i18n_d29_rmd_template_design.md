# D-29：R Markdown 模板显示文本 i18n 架构设计

本报告仅针对锁定上游 `RStudio Desktop 2026.08.1+195` 中 `RmdTemplateData.java` 的显示字段进行调查和设计。报告没有实施源码修改、没有新增 locale key、没有更新 provenance，也没有执行构建。

# 1. Current Architecture

## 1.1 数据来源与生命周期

`org/rstudio/studio/client/rmarkdown/model/RmdTemplateData.java` 是客户端 GWT 代码中的纯静态数据类。`getTemplates()` 是一个 `static native` JSNI 方法，每次调用都会创建并返回一组新的 JavaScript overlay object；该类：

- 不是 Gin/Guice 管理的实例；
- 没有 `@Inject` 构造或实例生命周期；
- 没有 Java static initializer；
- 不从服务器反序列化这些模板；
- 不把模板显示名写回用户设置或文档；
- 当前只保存英文显示字段和内部 R Markdown/YAML 字段。

目前有两个调用入口：

1. `NewRMarkdownDialog` 调用 `RmdTemplateData.getTemplates()`，使用模板和 format 定义创建“新建 R Markdown”界面。
2. `TextEditingTargetRMarkdownHelper.getTemplateForFormat()` 调用同一方法，为已有文档的 format options 对话框查找模板。

## 1.2 完整数据流

```text
RmdTemplateData.getTemplates()
  ├─ template_name                         内部模板标识
  ├─ template_formats[]
  │    ├─ format_name                      R Markdown output format key
  │    ├─ format_ui_name                   用户可见格式名
  │    ├─ format_options[]                 option_name 列表
  │    ├─ format_extension                 输出扩展名
  │    └─ format_notes                     用户可见说明（D-29 本批范围外）
  └─ template_options[]
       ├─ option_name                      YAML option key
       ├─ option_ui_name                   用户可见控件标签
       ├─ option_category                  用户可见分类；缺省时为 General
       ├─ option_format                    format-specific 匹配条件
       ├─ option_type/default/list         类型、默认值和候选值
       └─ flags                            transferable/nullable 等行为

NewRMarkdownDialog
  ├─ format_ui_name → 新建文档格式单选项
  └─ format_name    → 最终选择的内部 format

RmdTemplateOptionsWidget.setTemplate()
  ├─ ListBox.addItem(format_ui_name, format_name)
  ├─ format_name → findOption(format_name, option_name)
  ├─ option_category → tabs_ 的原始分组键 + 可见 tab 标签
  └─ option_ui_name → RmdBooleanOption / RmdNullableOption 的可见标签
                         ├─ choice/string/float/file 输入控件
                         └─ 用户输入值（不来自显示标签）

RmdFormatOptionsHelper.optionsListToJson()
  ├─ option.getName() → JSON/YAML key
  ├─ option.getType() → 类型转换
  └─ widget.getValue() → boolean/number/string/file/choice value

RmdFrontMatter.setOutputOption(format_name, options)
  ↓
frontMatterToYAML()
  ↓
最终 R Markdown YAML
```

例如 format 下拉框已经明确分开 display/value：

```text
显示：HTML（未来可本地化）
值：  html_document（保持不变）
```

## 1.3 创建、读取、显示、比较和序列化位置

| 数据 | 创建位置 | 读取/显示位置 | 比较位置 | 序列化位置 |
|---|---|---|---|---|
| `template_name` | `RmdTemplateData` | `RmdTemplate.getName()` | `NewRMarkdownDialog`、`RmdTemplate.getTemplate()` | 不作为 D-29 UI 文本序列化 |
| `format_name` | `RmdTemplateData` | `RmdTemplateFormat.getName()` | format 选择、`findOption()`、front matter cache | `RmdFrontMatter.output[format]` |
| `format_ui_name` | `RmdTemplateData` | `getUiName()`；新建文档和 options format 标签 | 不用于 format 逻辑比较 | 不序列化 |
| `option_name` | `RmdTemplateData` | `getName()`、format 的 `format_options` | `findOption()`、cache、transfer | `optionList[option.option_name]` |
| `option_ui_name` | `RmdTemplateData` | `getUiName()`；checkbox/form label/ARIA label | 不用于 option 逻辑比较 | 不序列化 |
| `option_category` | `RmdTemplateData` | `getCategory()`；分类 tab | 当前也作为 `tabs_` 的临时分组键 | 不序列化 |
| `option_format` | `RmdTemplateData` | `getFormatName()` | 选择 format-specific option definition | 不直接序列化 |
| `option_default` / `option_list` | `RmdTemplateData` | widget 初始化和 choice 列表 | default 判断/选择 | 用户选择后以原值写入 |
| widget value | 用户操作 | `RmdFormatOption.getValue()` | default/type 判断 | 写入 YAML option value |

`RmdChoiceOption` 当前直接把 `option_list` 的每个值既作为显示项也作为实际值。这些值（如 `default`、`xelatex`、`paged`）不在 D-29 的 76 个字段内，不能随显示标签一起翻译。

# 2. Inventory

## 2.1 统计口径

- `format_ui_name`：8 次，8 个唯一文本。
- `option_ui_name`：45 次，32 个唯一文本。
- 显式 `option_category`：23 次，2 个唯一文本。
- 合计：76 次，42 个唯一文本。

“已有 key”按当前上游 `*_en.properties` 的完整英文值精确匹配。跨模块存在同文 key 不代表适合复用；“相近术语”只记录当前 zh_CN 已出现的词法，不表示本报告已决定译文。

## 2.2 42 个唯一显示文本

| # | English | 字段 / 次数 | 所属 format / option | 最终 UI 位置 | 进入内部数据？ | 已有项目内 i18n / zh_CN 相近术语 | 分类 |
|---:|---|---|---|---|---|---|---|
| 1 | `Notebook` | format / 1 | `html_notebook` | 新建 R Markdown 格式项；format options 列表 | 否，value 为 `html_notebook` | 无完整同文 key；项目中有 `R Notebook`、`笔记本` | C |
| 2 | `HTML` | format / 1 | `html_document` | 同上 | 否 | 有：Quarto、Rsconnect 的 `HTML`；zh_CN 保留 `HTML` | B |
| 3 | `PDF` | format / 1 | `pdf_document` | 同上 | 否 | 无完整同文 key；有 `PDF (LaTeX)`，`PDF` 作为技术名保留 | B |
| 4 | `Word` | format / 1 | `word_document` | 同上 | 否 | 有：Quarto `wordFormatText`；zh_CN 为 `Word` | C |
| 5 | `HTML (ioslides)` | format / 1 | `ioslides_presentation` | 同上 | 否 | 无完整同文 key；`HTML`/`ioslides` 在项目中按技术/格式名使用 | C |
| 6 | `HTML (Slidy)` | format / 1 | `slidy_presentation` | 同上 | 否 | 无完整同文 key；`HTML`/`Slidy` 按技术/格式名使用 | C |
| 7 | `PDF (Beamer)` | format / 1 | `beamer_presentation` | 同上 | 否 | 无完整同文 key；项目已有 Beamer/LaTeX format 文本 | C |
| 8 | `PowerPoint` | format / 1 | `powerpoint_presentation` | 同上 | 否 | 有：Quarto `powerPointFormatText`；zh_CN 保留 `PowerPoint` | C |
| 9 | `Include table of contents` | option / 1 | Document 全部 format；`toc` | boolean checkbox | 否，写入 `toc: true/false` | 无完整同文 key；已有“目录”词法 | A |
| 10 | `Depth of headers for table of contents` | option / 1 | Document 全部 format；`toc_depth` | integer/nullable label | 否，写入 `toc_depth` | 无完整同文 key；已有“目录”词法 | D |
| 11 | `Create a standalone HTML document` | option / 1 | `html_document`；`self_contained` | boolean checkbox，Advanced | 否，写入 `self_contained` | 无完整同文 key；Notebook 模块有“独立 HTML 报告”相近表达 | A |
| 12 | `Apply theme` | option / 1 | `html_notebook`, `html_document`；`theme` | choice/nullable label | 否，候选值保持英文 token | 无完整同文 key；大量 zh_CN 使用“主题” | A |
| 13 | `Syntax highlighting` | option / 3 | Document 四种；ioslides/Slidy/Beamer；`highlight` | choice/nullable label | 否，候选值保持原值 | 无完整同文 key；已有“语法高亮” | A |
| 14 | `Print dataframes as` | option / 1 | `html_document`；`df_print` | choice label | 否，值为 `default/kable/paged/tibble` | 无完整同文 key；已有“数据框” | D |
| 15 | `Use smart punctuation` | option / 2 | Notebook/HTML；ioslides/Slidy/PowerPoint；`smart` | boolean checkbox，Advanced | 否 | 无完整同文 key | D |
| 16 | `Number section headings` | option / 1 | Notebook/HTML/PDF；`number_sections` | boolean checkbox | 否 | 无完整同文 key | D |
| 17 | `LaTeX Engine` | option / 1 | `pdf_document`；`latex_engine` | choice label，Advanced | 否，值为 TeX engine token | 无完整同文 key；已有 `LaTeX`/“渲染引擎”相关词法 | A/B |
| 18 | `Keep markdown source file` | option / 2 | HTML/Word；ioslides/Slidy；`keep_md` | boolean checkbox，Advanced | 否 | 无完整同文 key；已有“源文件”，`Markdown` 保留 | A |
| 19 | `Keep tex source file used to produce PDF` | option / 2 | PDF/Beamer；`keep_tex` | boolean checkbox，Advanced | 否 | 无完整同文 key；已有“源文件”、`PDF`/`LaTeX` | A/B |
| 20 | `Default figure width in inches` | option / 2 | Document：HTML-specific + Notebook/PDF/Word generic；`fig_width` | float label，Figures | 否，写入数值 | 无完整同文 key；已有“图形” | A |
| 21 | `Default figure height in inches` | option / 2 | Document：HTML-specific + Notebook/PDF/Word generic；`fig_height` | float label，Figures | 否，写入数值 | 无完整同文 key；已有“图形” | A |
| 22 | `Crop figures with pdfcrop (if available)` | option / 2 | PDF/Beamer；`fig_crop` | boolean checkbox，Figures | 否 | 无完整同文 key；已有“裁剪”“图形”，`pdfcrop` 应保留 | A/B |
| 23 | `Render figures with captions` | option / 2 | Document 和 Presentation 全部 format；`fig_caption` | boolean checkbox，Figures | 否 | 无完整同文 key；已有“图形” | A |
| 24 | `Apply CSS file` | option / 2 | Notebook/HTML/Slidy；`css` | file/nullable label | 否，值为文件路径 | 无完整同文 key；已有“CSS 文件” | A/B |
| 25 | `Fold R code chunks` | option / 1 | `html_notebook`；`code_folding` | choice label | 否，值为 `none/hide/show` | 无完整同文 key；已有“代码块” | A |
| 26 | `Vertically center content on slides` | option / 1 | option `center`，当前未被任何 `format_options` 引用 | 定义上为 boolean checkbox；当前实际 UI 不可达 | 否 | 无完整同文 key；已有“幻灯片” | A（需验证可达性） |
| 27 | `Render slide bullets incrementally` | option / 1 | ioslides/Slidy/Beamer；`incremental` | boolean checkbox | 否 | 无完整同文 key；已有“幻灯片” | D |
| 28 | `Create a standalone HTML presentation` | option / 1 | ioslides/Slidy；`self_contained` | boolean checkbox，Advanced | 否 | 无完整同文 key；有“独立 HTML”相近表达 | A |
| 29 | `Theme` | option / 2 | Presentation generic + Beamer-specific；`theme` | choice label | 否，值为主题 token | 有同文 key但在 UserPrefs 语境；zh_CN 使用“主题”，不宜跨模块直接复用 | D |
| 30 | `Slide transition` | option / 1 | generic `transition`；当前被 ioslides-specific 定义遮蔽 | 定义上为 choice label；当前实际 UI 不可达 | 否 | 无完整同文 key；已有“幻灯片” | D |
| 31 | `Slide transition speed` | option / 1 | `ioslides_presentation`；`transition` | choice label | 否，值为 `default/slower/faster` | 无完整同文 key；已有“幻灯片” | D |
| 32 | `Use widescreen dimensions` | option / 1 | ioslides；`widescreen` | boolean checkbox，Advanced | 否 | 无完整同文 key | A |
| 33 | `Use smaller text on all slides` | option / 1 | ioslides；`smaller` | boolean checkbox | 否 | 无完整同文 key；已有“幻灯片” | A |
| 34 | `Default figure width (in inches)` | option / 2 | Presentation：ioslides/Slidy/PowerPoint generic + Beamer-specific；`fig_width` | float label，Figures | 否 | 无完整同文 key；已有“图形” | A |
| 35 | `Default figure height (in inches)` | option / 2 | Presentation：ioslides/Slidy/PowerPoint generic + Beamer-specific；`fig_height` | float label，Figures | 否 | 无完整同文 key；已有“图形” | A |
| 36 | `Include a table of contents` | option / 1 | Beamer/PowerPoint；`toc` | boolean checkbox | 否 | 无完整同文 key；与 #9 同语义、英文仅冠词不同 | A |
| 37 | `Font theme` | option / 1 | Beamer；`fonttheme` | choice label | 否，值为 Beamer theme token | 无完整同文 key；已有“主题” | D |
| 38 | `Color theme` | option / 1 | Beamer；`colortheme` | choice label | 否，值为 Beamer theme token | 无完整同文 key；已有“颜色主题”概念 | D |
| 39 | `Show logo (square, at least 128x128)` | option / 1 | ioslides；`logo` | file/nullable label | 否，值为文件路径 | 无完整同文 key；`logo` 为常见技术词 | A/B |
| 40 | `Figure scaling for Retina displays` | option / 1 | ioslides/Slidy；`fig_retina` | float/nullable label，Figures | 否，写入数值 | 无完整同文 key；`Retina` 应保留 | D/B |
| 41 | `Advanced` | category / 10 | `self_contained`, `smart`, `latex_engine`, `keep_md`, `keep_tex`, `widescreen` 等 | options 分类 tab | 否；当前仅作 `tabs_` 临时分组键 | 有：Panmirror/Prefs 多个同文 key；zh_CN 为“高级” | A |
| 42 | `Figures` | category / 13 | `fig_width`, `fig_height`, `fig_crop`, `fig_caption`, `fig_retina` | options 分类 tab | 否；当前仅作 `tabs_` 临时分组键 | 无完整同文 key；Plots 模块稳定使用“图形” | A |

分类说明：A 为普通 UI 文本；B 为技术名称或包含需保留技术名称的文本；C 为产品/格式名称；D 为语义或译法应在实施阶段结合实际界面人工确认。

## 2.3 清单外但与同一显示路径有关的事实

1. `RmdTemplateFormatOption.getCategory()` 在没有 `option_category` 时返回硬编码 `"General"`。它不属于 23 次显式字段，因此不计入上述 42 项，但它同样会成为可见分类 tab。未来实现必须将这个合成默认分类纳入 i18n 覆盖，否则 D-29 完成后仍会显示英文 `General`。
2. Presentation 的 `powerpoint_presentation.format_options` 包含 `df_print`，但 Presentation 自己的 `template_options` 没有对应定义；`findOption()` 会返回 `null`，因此该项当前不会渲染。这是上游数据一致性问题，不是本设计应顺带修复的 i18n 问题。
3. `center` 定义未被任何 Presentation format 引用；generic `Theme` 与 generic `Slide transition` 也会被当前 format-specific 定义遮蔽。它们仍应纳入静态覆盖，以免上游未来重新启用时裸露英文。
4. `format_notes` 也是用户可见英文，但不属于 D-29 指定的 76 次字段。本轮只记录边界，不把它扩入方案实施范围。

# 3. Internal vs Display Fields

| 字段 | 可翻译？ | 原因与约束 |
|---|---|---|
| `template_name` | 否 | 稳定模板标识，用于选择 `Document` / `Presentation`。 |
| `format_name` | 否 | R Markdown output format key，例如 `html_document`；进入 YAML。 |
| `format_ui_name` | 是 | 纯显示文本；当前与 list box 的 `format_name` value 已分离。 |
| `format_extension` | 否 | 文件扩展名和输出行为。 |
| `format_options[]` | 否 | `option_name` 的内部列表。 |
| `format_notes` | 是，但不在本批 | 用户可见说明；应在独立 coverage 项中处理。 |
| `option_name` | 否 | YAML option key，例如 `toc`、`fig_width`。 |
| `option_ui_name` | 是 | checkbox、form label 和 ARIA label 的显示文本。 |
| `option_category` | 是（只在显示出口） | 原始值继续作为分组 token；仅 tab 标签本地化。 |
| `option_format` | 否 | format-specific definition 的选择条件。 |
| `option_type` | 否 | 控件类型和序列化类型。 |
| `option_default` | 否 | YAML/API 默认值。 |
| `option_list` | 否 | 目前同时是 choice 显示和实际值；未经单独 display/value 分层前不能翻译。 |
| `option_transferable` / `option_nullable` 等 | 否 | 程序行为标志。 |
| widget `getValue()` | 否 | 用户最终选择的数据，写入 front matter。 |

# 4. Candidate Architectures

## 方案 A：在 `RmdTemplateData` 构造时注入本地化字符串

概念上用 `constants.rmdOptionTableOfContentsLabel()` 直接替代 JSNI 数据里的英文 `option_ui_name`。

优点：

- 后续 widget 代码可以继续调用 `getUiName()`，调用点改动少。
- 模板对象创建后天然携带本地化显示文本。

缺点和风险：

- `RmdTemplateData` 是纯 static model data，不是 DI 管理对象；不能自然使用 `@Inject`。
- 虽然 GWT client class 可使用 `static final ... = GWT.create(...)`，但把 locale 依赖放入纯 model/JSNI 数据层会破坏职责边界。
- native JSNI 对 Java constants 的引用会提高编译和初始化耦合；调用发生在 static 工厂中，而不是现有 UI 生命周期。
- model 内容随 locale 改变，使“原始上游 display fallback”丢失，不利于运行时安全回退和升级差异比较。
- 仍需改动约 76 个 data literal 或每个对象的构造表达式，source patch 面积最大。

结论：不推荐。

## 方案 B：在模板数据中增加稳定 display key

例如保留内部 `option_name: "toc"`，另加 `option_ui_key: "rmdOptionTableOfContentsLabel"`，显示时由 mapper 解析。

优点：

- display key 明确且不依赖英文措辞。
- 上游英文改变时可以单独更新 fallback，不改变 key。
- 同文异义可以使用不同 key。

缺点：

- 要给 76 个定义逐项增加或替换字段，升级 diff 很大。
- 在当前只有两套静态模板的数据规模下，新 identifier 层偏重。
- 必须定义 key 缺失、key 拼写错误和 fallback 的双重校验。
- 上游新增 option 时会同时引入上游数据与本项目私有 key，合并成本高。

结论：结构正确，但当前项目中维护成本高于收益，不作为首选。

## 方案 C：保留英文 `ui_name`，在显示时按英文做受控映射

例如 `localizeUiName("Include table of contents")`，仅允许显式 `switch`/map，不做全局替换。

优点：

- 原始数据不变，改动集中。
- 未知文本可以直接回退原英文。
- 上游 wording 变化会造成 mapping miss，容易被静态检查发现。

缺点：

- 英文文案不是理想的稳定 identifier。
- 同一个英文在不同语境可能需要不同译法，仅用 literal 无法区分。
- 标点或大小写变化会使映射失效。
- 容易逐渐演变成局部 magic-string 表。

结论：可作为低成本 fallback 方案，但不适合作为长期主架构。

## 方案 D：在 UI 边界按稳定内部上下文解析 display label，并保留英文 fallback

新增一个只负责显示的集中 resolver，例如 `RmdTemplateDisplayNames`：

```text
formatLabel(template_name, format_name, fallback_ui_name)
optionLabel(template_name, selected_format_name, option_name,
            option_format, fallback_ui_name)
categoryLabel(raw_category, fallback_category)
```

resolver 用稳定内部上下文选择 i18n key，但返回值只进入 UI。原始 model 完全不修改。未知组合返回传入的英文 fallback。

优点：

- 内部字段和本地化显示层物理分离。
- format/option 的查找不依赖英文 literal。
- 同一个英文在不同 option/format 中可按上下文使用不同 key。
- 新版未知定义运行时安全回退英文，开发期 validation 可以准确报警。
- `NewRMarkdownDialog` 和 `RmdTemplateOptionsWidget` 可复用同一 resolver。
- 不需要改 76 个 data literal。

缺点：

- 需要一个共享 resolver 及少量 widget 构造参数调整。
- `option_category` 没有独立内部 ID；现阶段需把原始 category token 作为受控分组标识，同时保留 fallback。
- 需要新增专门的 coverage validator，避免 mapper 与数据源漂移。

结论：推荐。

# 5. Recommended Architecture

唯一推荐方案是 **方案 D：UI 边界的上下文感知 display resolver**。

核心规则：

1. `RmdTemplateData` 保持上游原样，继续提供内部值和英文 fallback。
2. resolver 只根据稳定内部上下文选择 `RMarkdownConstants` 的显示资源。
3. format label 映射主键为 `format_name`；需要时附加 `template_name`。
4. option label 映射主键为 `template_name + selected format_name + option_name + option_format`，允许同名 option 在不同语境使用不同 key。
5. category 的原始字符串继续作为 `tabs_` 分组键；只有 `new Label(...)` 接收本地化文本。
6. resolver 对未知项目返回原始英文 `format_ui_name` / `option_ui_name` / category。
7. repository validation 对未知项目失败并报告 `MISSING_I18N_DISPLAY_NAME`，但发布构建之外的运行时不会空白或崩溃。

constants 最适合在 UI/display resolver 层通过 `GWT.create(RMarkdownConstants.class)` 获得。这里与现有 `RmdTemplateOptionsWidget` 的做法一致，不需要把 `RmdTemplateData` 改成 DI 对象，也不需要在 model 层保存当前 locale 的值。

# 6. Proposed Code Changes

以下只是未来实施建议，本轮未修改任何文件。

| 文件/类 | 建议变化 | 目的 |
|---|---|---|
| 新增 `rmarkdown/ui/RmdTemplateDisplayNames.java` | 集中持有 `RMarkdownConstants`，提供 format/option/category resolver 和英文 fallback | 单一显示出口；避免 model locale 化 |
| `RmdTemplateOptionsWidget.java` | format 下拉和 Shiny format label 调用 resolver；创建 option widget 时先解析 label；category 使用 raw key 分组、localized label 显示 | 覆盖 format、option、category 三条显示路径 |
| `NewRMarkdownDialog.java` | `createFormatOption(RmdTemplateFormat)` 使用同一 format resolver | 覆盖新建 R Markdown 格式列表 |
| `RmdBooleanOption.java` | 构造函数接收已经解析的 `displayLabel` | checkbox 不再直接读取英文 `getUiName()` |
| `RmdNullableOption.java` | 构造函数接收 `displayLabel`，同时用于可见 label 和 aria-label | nullable/非 nullable 路径一致 |
| `RmdChoiceOption.java` | 透传 `displayLabel`；choice value 列表保持原样 | 不污染内部候选值 |
| `RmdStringOption.java` | 透传 `displayLabel` | 同上 |
| `RmdFloatOption.java` | 透传 `displayLabel` | 同上 |
| `RmdFileOption.java` | 透传 `displayLabel` | 文件路径值保持原样 |
| `RMarkdownConstants.java` | 声明专用 format/option/category 方法 | GWT i18n 合同 |
| `RMarkdownConstants_en.properties` | 添加英文资源值 | 默认和英文 permutation |
| `RMarkdownConstants_fr.properties` | 同步 key；没有经过法语审核时使用英文 fallback 值 | 不破坏法语 permutation 的 key 合同 |
| `RMarkdownConstants_zh_CN.properties` | 添加经人工审校的简体中文值 | 中文 permutation |
| repository validation | 从 `RmdTemplateData` 提取所有显示定义，与 resolver 覆盖表比对 | 升级时自动发现新增/变更/删除 |

当前 build 会递归复制 `translations/<version>/upstream` 下的 overlay 文件，因此技术上可以承载一个新增 Java resolver 文件；但正式实施前应在 repository validation 中明确登记“source addition”的来源和用途。若项目政策坚持所有 Java 变化必须只由 `source-patches.json` 表达，则可将 resolver 作为 `RmdTemplateOptionsWidget` 的 public static helper，再由 `NewRMarkdownDialog` 调用；这不需要改 build 逻辑，但类职责较差，仅作为备选。

# 7. Proposed i18n Keys

建议把 key 放在 `RMarkdownConstants`，命名以领域和语义标识为主，不按出现顺序命名。以下共 40 个建议 key；中文值必须在实施阶段另行人工确认，本报告不创建或填写译文。

## 7.1 Format（8）

| 建议 key | English value | 稳定上下文 |
|---|---|---|
| `rmdFormatHtmlNotebookLabel` | Notebook | `html_notebook` |
| `rmdFormatHtmlDocumentLabel` | HTML | `html_document` |
| `rmdFormatPdfDocumentLabel` | PDF | `pdf_document` |
| `rmdFormatWordDocumentLabel` | Word | `word_document` |
| `rmdFormatIoslidesPresentationLabel` | HTML (ioslides) | `ioslides_presentation` |
| `rmdFormatSlidyPresentationLabel` | HTML (Slidy) | `slidy_presentation` |
| `rmdFormatBeamerPresentationLabel` | PDF (Beamer) | `beamer_presentation` |
| `rmdFormatPowerPointPresentationLabel` | PowerPoint | `powerpoint_presentation` |

## 7.2 Option（29）

| 建议 key | English value(s) | 稳定语义 |
|---|---|---|
| `rmdOptionTableOfContentsLabel` | Include table of contents / Include a table of contents | `toc`；两处语义相同，可共用 |
| `rmdOptionTableOfContentsDepthLabel` | Depth of headers for table of contents | `toc_depth` |
| `rmdOptionHtmlDocumentSelfContainedLabel` | Create a standalone HTML document | Document + `self_contained` |
| `rmdOptionHtmlDocumentThemeLabel` | Apply theme | Document + `theme` |
| `rmdOptionSyntaxHighlightingLabel` | Syntax highlighting | `highlight` |
| `rmdOptionDataFramePrintLabel` | Print dataframes as | `df_print` |
| `rmdOptionSmartPunctuationLabel` | Use smart punctuation | `smart` |
| `rmdOptionNumberSectionsLabel` | Number section headings | `number_sections` |
| `rmdOptionLatexEngineLabel` | LaTeX Engine | `latex_engine` |
| `rmdOptionKeepMarkdownLabel` | Keep markdown source file | `keep_md` |
| `rmdOptionKeepTexLabel` | Keep tex source file used to produce PDF | `keep_tex` |
| `rmdOptionFigureWidthLabel` | 两种 figure width 英文写法 | `fig_width`；语义相同，可共用 |
| `rmdOptionFigureHeightLabel` | 两种 figure height 英文写法 | `fig_height`；语义相同，可共用 |
| `rmdOptionCropFiguresLabel` | Crop figures with pdfcrop (if available) | `fig_crop` |
| `rmdOptionFigureCaptionsLabel` | Render figures with captions | `fig_caption` |
| `rmdOptionCssFileLabel` | Apply CSS file | `css` |
| `rmdOptionCodeFoldingLabel` | Fold R code chunks | `code_folding` |
| `rmdOptionSlideVerticalCenterLabel` | Vertically center content on slides | `center` |
| `rmdOptionSlideIncrementalLabel` | Render slide bullets incrementally | `incremental` |
| `rmdOptionHtmlPresentationSelfContainedLabel` | Create a standalone HTML presentation | Presentation + `self_contained` |
| `rmdOptionPresentationThemeLabel` | Theme | Presentation + `theme` |
| `rmdOptionSlideTransitionLabel` | Slide transition | generic `transition` |
| `rmdOptionIoslidesTransitionSpeedLabel` | Slide transition speed | ioslides + `transition` |
| `rmdOptionWidescreenLabel` | Use widescreen dimensions | `widescreen` |
| `rmdOptionSmallerTextLabel` | Use smaller text on all slides | `smaller` |
| `rmdOptionBeamerFontThemeLabel` | Font theme | `fonttheme` |
| `rmdOptionBeamerColorThemeLabel` | Color theme | `colortheme` |
| `rmdOptionSlideLogoLabel` | Show logo (square, at least 128x128) | `logo` |
| `rmdOptionFigureRetinaLabel` | Figure scaling for Retina displays | `fig_retina` |

## 7.3 Category（3，包括合成默认项）

| 建议 key | English value | 稳定语义 |
|---|---|---|
| `rmdCategoryGeneralLabel` | General | `getCategory()` 缺省分类 |
| `rmdCategoryAdvancedLabel` | Advanced | 显式分类 token |
| `rmdCategoryFiguresLabel` | Figures | 显式分类 token |

相同英文只有在内部 option 语义和用户动作都相同时才共用 key。`Apply theme` 与 Presentation `Theme` 分开；generic transition 与 ioslides transition speed 分开。不能因为英文相同就跨模块复用 Quarto、Prefs 或 Panmirror 的 key。

# 8. Fallback Strategy

运行时 resolver 必须接收原始英文作为 fallback：

```text
known stable context → localized constants value
unknown context      → original upstream ui_name/category
```

约束：

- 返回值不得为 `null` 或空字符串；locale 值异常时也使用 fallback。
- 未知上游 format/option/category 不能阻止 dialog 打开。
- fallback 只影响显示，不会改变 model。
- 开发/CI 阶段出现未知项时，validation 输出包含文件、字段类型、template、format、option 和英文 fallback 的 `MISSING_I18N_DISPLAY_NAME`。
- Release 门禁应把该诊断视为失败；本地开发运行仍可安全显示英文。

# 9. Upgrade Strategy

升级到新 RStudio 版本时执行以下自动比较：

1. 解析新的 `RmdTemplateData.java`，提取所有 `format_ui_name`、`option_ui_name`、显式 `option_category`，并加入合成 `General`。
2. 同时提取稳定上下文：`template_name`、`format_name`、`option_name`、`option_format` 和 format 的 `format_options`。
3. 与 resolver 的覆盖描述表比较：
   - 新增但未映射：`MISSING_I18N_DISPLAY_NAME`；
   - mapper 指向已删除定义：`STALE_I18N_DISPLAY_NAME`；
   - 原英文发生变化：`UPSTREAM_DISPLAY_NAME_CHANGED`，要求人工确认英文 fallback/译文；
   - 同一稳定上下文出现多个定义：`AMBIGUOUS_I18N_DISPLAY_NAME`。
4. 单独保存内部字段快照或集合，确认本地补丁没有改变 `format_name`、`option_name`、`option_format`、`option_default`、`option_list`。
5. 只有所有新增显示项被处理、locale key 对齐和 provenance 状态合法时，才允许 release build。

该流程实现“上游新增显示字符串 → validation 明确报警 → 增加 locale → 内部值不受影响”。

# 10. Internal Value Safety

推荐方案只替换 UI 构造函数收到的 label，不写回 `RmdTemplateFormat` 或 `RmdTemplateFormatOption`。

安全链如下：

```text
format_name: html_document
display:     HTML → 本地化显示文本

option_name: toc
display:     Include table of contents → 本地化显示文本

widget value: true
```

保存时仍执行：

```java
optionList[option.option_name] = value;
frontMatter.setOutputOption(format, options);
```

最终结果仍为：

```yaml
output:
  html_document:
    toc: true
```

必须用自动测试证明以下集合在应用 source patch 前后逐字节等价：

- 所有 `template_name`；
- 所有 `format_name`、`format_extension`、`format_options`；
- 所有 `option_name`、`option_format`、`option_type`、`option_default`、`option_list` 和行为 flags。

只有显示 resolver、可见 label 和 ARIA label 允许随 locale 改变。

# 11. Other Locale Compatibility

当前 GWT 构建包含 `en`、`fr`、`zh_CN`。新增 `RMarkdownConstants` 方法后，三套 resource 的 key 合同应保持一致：

- `en`：提供上述英文值，作为默认显示和可靠 fallback。
- `zh_CN`：提供人工确认后的简体中文。
- `fr`：不能因为中文项目而破坏官方法语 permutation。上游目前没有 D-29 的法语翻译；在没有合格法语审校来源时，应明确填入英文 fallback，或在确认 GWT fallback 规则和项目 key validator 允许的前提下继承英文。当前项目强调 key 对齐，最保守做法是同步 key 并使用英文值，不自行机器翻译法语。

resolver 不判断当前 locale，也不修改 model。GWT permutation 负责选择 constants；其他未配置 locale 使用默认英文资源。

# 12. Source Patch Impact

## 12.1 推荐方案估算

- 数据 literal：0/76 需要修改。
- 新增 locale key：40（8 format + 29 option + 3 category）。
- 新增共享 resolver：1 个 Java 文件，约 3 个 public 显示方法和一组显式 context mapping。
- 修改现有 Java 文件：约 8 个：
  - `NewRMarkdownDialog`；
  - `RmdTemplateOptionsWidget`；
  - `RmdBooleanOption`；
  - `RmdNullableOption`；
  - `RmdChoiceOption`；
  - `RmdStringOption`；
  - `RmdFloatOption`；
  - `RmdFileOption`。
- 修改 constants 合同/英文/法文：3 个上游文件；修改 zh_CN：1 个项目 locale 文件。
- 预计精确 source patch 规则：约 12–16 条，取决于能否把同文件的构造函数签名和调用点放在稳定的大锚点中。
- validation：新增 1 个 D-29 专项检查函数或 1 个独立只读脚本，并接入现有 repository validation。

## 12.2 与其他方案比较

| 方案 | data literal 修改 | 预计源码位置/patch | locale key | 升级维护 |
|---|---:|---:|---:|---|
| A：构造时注入 | 约 76 | 高，且集中在大 JSNI 数据块 | 约 40 | 上游数据 diff 冲突最大 |
| B：新增 display key 字段 | 约 76 | 高；每个对象需增加 key | 约 40 | 标识稳定，但合并成本高 |
| C：英文显式映射 | 0 | 低至中，约 8–12 | 约 42/40 | 英文 wording 变化脆弱 |
| D：内部上下文 resolver | 0 | 中，约 12–16 | 40 | 最易检测上游变化，内部值最安全 |

`source-patches.json` 当前只对已经存在的文件做精确 find/replace，不能直接表达“创建新文件”；但 build overlay 已能复制新增文件。未来实施时应二选一并固定政策：

1. 推荐：resolver 作为明确登记的 source-addition overlay，并在 validation/NOTICE 中记录；其余上游文件仍使用精确 source patch。
2. 备选：把 resolver 放进现有 `RmdTemplateOptionsWidget` 的 public static helper，全部由 source patch 表达；不需要 build 变化，但共享性和类职责较差。

不应为了减少 patch 数量把 42 个英文 literal 做全局替换。

# 13. Runtime Test Plan

## 13.1 Static

- 提取并比较 source patch 前后的所有内部字段，确认逐项不变。
- 确认 42 个显式唯一文本和合成 `General` 都有 resolver 覆盖。
- 确认英文、法文、zh_CN key 集合一致。
- 检查 Messages/properties 格式、UTF-8、占位符和重复 key。
- 对一个虚构上游 option 运行 validator，确认输出 `MISSING_I18N_DISPLAY_NAME`。
- 对同一虚构 option 运行 resolver 单元测试，确认返回英文 fallback 而非空白/异常。
- 确认 `option_list` 和 default/value token 未被 locale 扫描器纳入翻译。

## 13.2 Build

- 执行完整 GWT build，分别确认 `en`、`fr`、`zh_CN` permutation 成功。
- 检查无新增 UiBinder、Messages、deferred binding 或 JSNI warning。
- 对生成资源运行现有 strong-name/cache/reference 一致性检查。

## 13.3 Runtime UI matrix

| 场景 | format | 检查点 |
|---|---|---|
| 新建 Document | Notebook / HTML / PDF / Word | format 名、General/Advanced/Figures、boolean、nullable、choice、float、file label |
| 新建 Presentation | ioslides / Slidy / Beamer / PowerPoint | format/品牌名、transition/theme/figure 类标签、分类 |
| 编辑已有文档 options | HTML / PDF / Word / Presentation | `TextEditingTargetRMarkdownHelper` 路径与新建路径一致 |
| locale 切换 | en → fr → zh_CN → en | 显示随 locale 变化，内部选择和已有 front matter 不变 |
| fallback | 测试注入未知 display context | dialog 正常打开并显示英文 fallback |

每个场景检查：format 列表、option label、checkbox、nullable checkbox、ARIA label、category tab、dropdown、输入框、文件选择器，无空标签、乱码、截断或重复分类。

## 13.4 Generated document safety

对 HTML、PDF、Word 和至少一种 Presentation 实际创建文档：

1. 在中文 UI 中修改 `toc`、figure size、highlight/theme、file option 等。
2. 生成并保存 YAML。
3. 与英文 UI 生成结果做结构比较。
4. 断言 output format、option key、boolean/number/string/choice value 完全相同。
5. 重新打开文档，确认 front matter 能被读回，控件状态一致。

# 14. Risk Assessment

## 低风险

- format 下拉已使用 display/value 分离的 `ListBox.addItem(label, value)`。
- `RmdFormatOptionsHelper` 明确使用 `option_name` 和 typed widget value 序列化。
- 未知显示项回退英文可以避免启动或 dialog 故障。
- 技术/产品名称是否保留只影响显示质量，不影响内部值。

## 中风险

- option widget 构造函数签名横跨多个子类，遗漏一类会造成局部英文或编译失败。
- category 当前兼作 `tabs_` map key 和 label；必须只本地化 label，不能把本地化结果拿来替代原始 map key。
- `NewRMarkdownDialog` 与 options dialog 是两个 format display 出口，必须同时接入同一 resolver。
- 法文资源缺少现成译文，需明确采用英文 fallback，避免凭空生成法语。
- 40 个 key 及 mapper context 需要自动覆盖验证，否则后续版本可能静默回退英文。

## 高风险（设计明确禁止）

- 翻译 `format_name`、`option_name`、`option_format`、`option_list` 或 widget value，会直接污染 YAML/API。
- 按当前 locale 修改 model 数据，会使显示和序列化边界不再可证明。
- 用相同英文 literal 作为全局替换目标，会误伤不同语境或非 UI 字符串。
- 把 localized category 用作持久化/跨生命周期 ID，会让 locale 切换影响逻辑。
- 漏掉 fallback 并让 resolver 返回 `null`，可能造成空标签或 widget 初始化异常。

需要人工确认但不阻塞本架构结论的上游问题：PowerPoint `df_print` 缺定义、`center` 未引用、两个 generic option 被 format-specific 定义遮蔽，以及范围外的 `format_notes` 英文。

# 15. Implementation Plan

未来真正实施时建议拆成四批，每批都保持可构建、可回滚：

## 批次 1：契约与验证（不改变运行显示）

- 固化 D-29 extractor 和 42 项 + `General` baseline。
- 增加内部字段前后不变检查。
- 增加 missing/stale/changed/ambiguous 诊断。
- 明确 source-addition overlay 的登记规则。

验收：repository validation 能对模拟新增项报告 `MISSING_I18N_DISPLAY_NAME`。

## 批次 2：resolver 与 format/category 路径

- 增加共享 `RmdTemplateDisplayNames`。
- 增加 format 和 category constants/key。
- 接入 `NewRMarkdownDialog` 和 `RmdTemplateOptionsWidget` 的 format/category 显示。
- 保持 category raw token 作为 `tabs_` key。

验收：新建 dialog、options dialog、General/Advanced/Figures 和 locale 切换正常；format value 不变。

## 批次 3：option widget 路径

- 增加 option constants/key。
- 由 `RmdTemplateOptionsWidget` 根据完整上下文解析 display label。
- 修改 boolean/nullable/choice/string/float/file 构造函数只接收显示文本。
- 逐类验证可见 label 和 ARIA label。

验收：全部 45 次 option definition 有显式覆盖或受控共享；无裸露英文、无空标签。

## 批次 4：完整构建与生成文档安全验收

- 运行 repository validation、完整 GWT build 和三 locale permutation 检查。
- 执行 HTML/PDF/Word/Presentation runtime matrix。
- 对比中英文 UI 生成的 YAML，确认内部字段和值完全一致。
- 记录已知上游数据问题，但不把它们混入 D-29 i18n patch。

最终只有在 static、build、runtime 和 YAML safety 全部通过后，才更新 provenance 并进入后续发布流程。

---

**设计结论：** D-29 应采用 UI 边界的稳定内部上下文 resolver，英文仅作为运行时 fallback，不作为全局替换键；model、format/option ID、choice/value 和 YAML 序列化路径保持原样。
