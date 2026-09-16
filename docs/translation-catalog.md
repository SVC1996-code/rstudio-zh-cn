# RStudio 简体中文翻译目录

当前对应 **RStudio Desktop 2026.09.0+174**。本目录根据当前仓库实际语言资源、显示映射与补丁登记整理，不是更新日志。

只记录本项目提供的用户可见显示文本；不表示 R、程序包输出、帮助文档正文或用户数据会被翻译。技术标识和内部身份有意保持不变。英文采用当前仓库 `translation-provenance.json` 的逐 key 配对，并与 `source-patches.json` 中登记的英文增补核对；中文逐条回读实际语言资源，不重新翻译或润色。

表格保留资源定义本身（包括菜单助记符 `_`、`(_X)`、GWT 双单引号、HTML 与动态占位符），不将其替换成运行时示例。换行、回车、制表符分别显示为 `\n`、`\r`、`\t`，原始反斜杠显示为 `\\`；HTML 作为文本展示，不执行。相同文字的不同 key 分别保留，来源链接可定位完整文件路径。

## 总览

以下类别互斥，每个已核实的资源 key 只计一次；补丁引用同一资源不是另一条翻译。

| 功能区域 | 条目数 |
| --- | ---: |
| 1. 通用界面 | 776 |
| 2. Source / 编辑器 | 571 |
| 3. Console / 控制台 | 50 |
| 4. Environment / 工作区与数据导入 | 209 |
| 5. Files / 文件 | 104 |
| 6. Plots / 图形 | 71 |
| 7. Packages / 程序包 | 110 |
| 8. Help / 帮助 | 16 |
| 9. Connections / 连接 | 72 |
| 10. Jobs / 后台作业 | 45 |
| 11. Git / 版本控制 | 173 |
| 12. Projects / 项目 | 244 |
| 13. Global Options / 设置 | 1347 |
| 14. Keyboard Shortcuts / 键盘快捷键与共享命令文案 | 1418 |
| 15. Data Viewer / 数据查看器 | 83 |
| 16. R Markdown / Quarto / Notebook | 143 |
| 17. Visual Editor / Panmirror | 382 |
| 18. Electron / Desktop 外壳 | 107 |
| 19. 其他 | 218 |
| 20. 发布 / Shiny / Plumber | 215 |
| 21. Terminal / 终端 | 82 |
| 22. 构建 / 程序包开发 | 26 |
| **已核实英中配对合计** | **6462** |
| 另列：中文存在、精确 key 英文依据待核对 | 1 |

统计单位为资源条目，不是窗口数量、词数或不同中文句子数；技术名不变但显示关系已本地化的 `gridNa` 与 `pagingLabelTextOf` 也计入。GWT 是大多数功能的承载层，故不与功能分类重复相加。

### 阅读导航

- 1. 通用界面
- 2. Source / 编辑器
- 3. Console / 控制台
- 4. Environment / 工作区与数据导入
- 5. Files / 文件
- 6. Plots / 图形
- 7. Packages / 程序包
- 8. Help / 帮助
- 9. Connections / 连接
- 10. Jobs / 后台作业
- 11. Git / 版本控制
- 12. Projects / 项目
- 13. Global Options / 设置
- 14. Keyboard Shortcuts / 键盘快捷键与共享命令文案
- 15. Data Viewer / 数据查看器
- 16. R Markdown / Quarto / Notebook
- 17. Visual Editor / Panmirror
- 18. Electron / Desktop 外壳
- 19. 其他
- 20. 发布 / Shiny / Plumber
- 21. Terminal / 终端
- 22. 构建 / 程序包开发

## 1. 通用界面

本节 776 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Accessibility</code> | <code>辅助功能</code> | <code>accessibilityGroupName</code> | [GWT R001][R001] |
| <code>Apply</code> | <code>应用</code> | <code>addButtonTitle</code> | [GWT R001][R001] |
| <code>Conflicts with command: </code> | <code>与此命令冲突: </code> | <code>addConflictCommandStylesText</code> | [GWT R001][R001] |
| <code>Add Local Repository</code> | <code>添加本地仓库</code> | <code>addLocalRepoText</code> | [GWT R001][R001] |
| <code>Masked by RStudio command: </code> | <code>被 RStudio 命令覆盖: </code> | <code>addMaskedCommandStylesText</code> | [GWT R001][R001] |
| <code>Add Shift to zoom (maximize) pane.</code> | <code>按住 Shift 可缩放（最大化）窗格。</code> | <code>addShiftPTag</code> | [GWT R001][R001] |
| <code>Home</code> | <code>主页</code> | <code>anchorHomeText</code> | [GWT R001][R001] |
| <code>Apply</code> | <code>应用</code> | <code>applyThemeButtonText</code> | [GWT R001][R001] |
| <code>Back</code> | <code>后退</code> | <code>backButtonText</code> | [GWT R001][R001] |
| <code>Go To Folder</code> | <code>转到文件夹</code> | <code>browseFolderCaption</code> | [GWT R001][R001] |
| <code>Path to folder (use ~ for home directory):</code> | <code>文件夹路径（使用 ~ 表示主目录）:</code> | <code>browseFolderLabel</code> | [GWT R001][R001] |
| <code>Build</code> | <code>构建</code> | <code>buildGroupName</code> | [GWT R001][R001] |
| <code>Busy</code> | <code>忙碌</code> | <code>busyLabel</code> | [GWT R001][R001] |
| <code>Add...</code> | <code>添加...</code> | <code>buttonAddCaption</code> | [GWT R001][R001] |
| <code>Remove</code> | <code>移除</code> | <code>buttonRemoveCaption</code> | [GWT R001][R001] |
| <code>Cancel</code> | <code>取消</code> | <code>cancelLabel</code> | [GWT R001][R001] / Source patch |
| <code>Case sensitive</code> | <code>区分大小写</code> | <code>caseSensitive</code> | [GWT R001][R001] |
| <code>Choose File</code> | <code>选择文件</code> | <code>chooseFileCaption</code> | [GWT R001][R001] |
| <code>Clear</code> | <code>清除</code> | <code>clearLabel</code> | [GWT R001][R001] |
| <code>Close All</code> | <code>全部关闭</code> | <code>closeAllMenuItem</code> | [GWT R001][R001] |
| <code>Close {0} tab</code> | <code>关闭“{0}”标签页</code> | <code>closeButtonText</code> | [GWT R001][R001] |
| <code>Close</code> | <code>关闭</code> | <code>closeMenuItem</code> | [GWT R001][R001] |
| <code>Close All Others</code> | <code>关闭其他所有标签页</code> | <code>closeOthersMenuItem</code> | [GWT R001][R001] |
| <code>Close popup</code> | <code>关闭弹出窗口</code> | <code>closePopupText</code> | [GWT R001][R001] |
| <code>Close document tab</code> | <code>关闭文档标签页</code> | <code>closeTabText</code> | [GWT R001][R001] |
| <code>Close</code> | <code>关闭</code> | <code>closeText</code> | [GWT R001][R001] |
| <code>Cloud</code> | <code>云端</code> | <code>cloudHomeText</code> | [GWT R001][R001] |
| <code>The command ''{0}'' does not exist.</code> | <code>命令“{0}”不存在。</code> | <code>commandDoesNotExistMessage</code> | [GWT R001][R001] / Source patch |
| <code>{0} completed</code> | <code>{0} 已完成</code> | <code>completedText</code> | [GWT R001][R001] |
| <code>Console</code> | <code>控制台</code> | <code>consoleGroupName</code> | [GWT R001][R001] |
| <code>Copy Path</code> | <code>复制路径</code> | <code>copyPathMenuItem</code> | [GWT R001][R001] |
| <code>Copy to Clipboard</code> | <code>复制到剪贴板</code> | <code>copyToClipboardLabel</code> | [GWT R001][R001] |
| <code>Create</code> | <code>创建</code> | <code>createButtonTitle</code> | [GWT R001][R001] |
| <code>Customizing Keyboard Shortcuts</code> | <code>自定义键盘快捷键</code> | <code>customizeKeyboardHelpLink</code> | [GWT R001][R001] |
| <code>Debug</code> | <code>调试</code> | <code>debugGroupName</code> | [GWT R001][R001] |
| <code>Error</code> | <code>错误</code> | <code>dialogErrorText</code> | [GWT R001][R001] |
| <code>Info</code> | <code>信息</code> | <code>dialogInfoText</code> | [GWT R001][R001] |
| <code>Popup Blocked</code> | <code>弹出窗口已被阻止</code> | <code>dialogPopupBlockedText</code> | [GWT R001][R001] |
| <code>Question</code> | <code>问题</code> | <code>dialogQuestionText</code> | [GWT R001][R001] |
| <code>Warning</code> | <code>警告</code> | <code>dialogWarningText</code> | [GWT R001][R001] |
| <code>Directory Contents</code> | <code>目录内容</code> | <code>directoryContentsLabel</code> | [GWT R001][R001] |
| <code>Could Not Change Setting</code> | <code>无法更改设置</code> | <code>docPropErrorMessage</code> | [GWT R001][R001] |
| <code>Documents</code> | <code>文档</code> | <code>documentsTabList</code> | [GWT R001][R001] |
| <code>Don''t show for this file</code> | <code>不再对此文件显示</code> | <code>dontShowForThisFile</code> | [GWT R001][R001] |
| <code>Shortcut</code> | <code>快捷键</code> | <code>editableTextColumn</code> | [GWT R001][R001] |
| <code>No bindings available</code> | <code>没有可用的快捷键绑定</code> | <code>emptyLabel</code> | [GWT R001][R001] |
| <code>Error</code> | <code>错误</code> | <code>errorCaption</code> | [GWT R001][R001] |
| <code>Exclusive {0}</code> | <code>独占显示 {0}</code> | <code>exclusiveState</code> | [GWT R001][R001] |
| <code>Execute</code> | <code>执行</code> | <code>executeGroupName</code> | [GWT R001][R001] |
| <code>Browse...</code> | <code>浏览…</code> | <code>fileChooserTextBoxBrowseLabel</code> | [GWT R001][R001] |
| <code>Folder</code> | <code>文件夹</code> | <code>fileNameLabel</code> | [GWT R001][R001] |
| <code>Files</code> | <code>文件</code> | <code>filesGroupName</code> | [GWT R001][R001] |
| <code>Filter keyboard shortcuts</code> | <code>筛选键盘快捷键</code> | <code>filterWidgetLabel</code> | [GWT R001][R001] |
| <code>Filter...</code> | <code>筛选…</code> | <code>filterWidgetPlaceholderText</code> | [GWT R001][R001] |
| <code>Find</code> | <code>查找</code> | <code>findButtonText</code> | [GWT R001][R001] |
| <code>Folder name</code> | <code>文件夹名称</code> | <code>folderNameLabel</code> | [GWT R001][R001] |
| <code>File name</code> | <code>文件名</code> | <code>getFilenameLabel</code> | [GWT R001][R001] |
| <code>Hide {0}</code> | <code>隐藏 {0}</code> | <code>hideState</code> | [GWT R001][R001] |
| <code>{0} hour</code> | <code>{0} 小时</code> | <code>hourLabel</code> | [GWT R001][R001] |
| <code>{0} hours</code> | <code>{0} 小时</code> | <code>hourPluralLabel</code> | [GWT R001][R001] |
| <code>Illegal name</code> | <code>非法名称</code> | <code>illegalNameMessage</code> | [GWT R001][R001] |
| <code>Install</code> | <code>安装</code> | <code>installText</code> | [GWT R001][R001] |
| <code>Install TinyTeX</code> | <code>安装 TinyTeX</code> | <code>installTinyTexText</code> | [GWT R001][R001] |
| <code>Invalid Command</code> | <code>无效命令</code> | <code>invalidCommandCaption</code> | [GWT R001][R001] / Source patch |
| <code>Keyboard Shortcuts</code> | <code>键盘快捷键</code> | <code>keyboardShortcutsText</code> | [GWT R001][R001] |
| <code>Down</code> | <code>下方向键</code> | <code>keyNameDown</code> | [GWT R001][R001] |
| <code>Left</code> | <code>左方向键</code> | <code>keyNameLeft</code> | [GWT R001][R001] |
| <code>Right</code> | <code>右方向键</code> | <code>keyNameRight</code> | [GWT R001][R001] |
| <code>Space</code> | <code>空格</code> | <code>keyNameSpace</code> | [GWT R001][R001] |
| <code>Up</code> | <code>上方向键</code> | <code>keyNameUp</code> | [GWT R001][R001] |
| <code>Local repositories:</code> | <code>本地仓库:</code> | <code>localReposText</code> | [GWT R001][R001] |
| <code>Help on local Packrat repositories</code> | <code>本地 Packrat 仓库帮助</code> | <code>localReposTitle</code> | [GWT R001][R001] |
| <code>Main Menu (Server)</code> | <code>主菜单（服务器）</code> | <code>mainMenuGroupName</code> | [GWT R001][R001] |
| <code>Manual Refresh Only</code> | <code>仅手动刷新</code> | <code>manualRefreshLabel</code> | [GWT R001][R001] |
| <code>Maximize {0}</code> | <code>最大化 {0}</code> | <code>maximizeState</code> | [GWT R001][R001] |
| <code>{0} minimized</code> | <code>{0} 最小化</code> | <code>minimizedTabListRole</code> | [GWT R001][R001] |
| <code>Minimize {0}</code> | <code>最小化 {0}</code> | <code>minimizeState</code> | [GWT R001][R001] |
| <code>{0} minute</code> | <code>{0} 分钟</code> | <code>minuteLabel</code> | [GWT R001][R001] |
| <code>{0} minutes</code> | <code>{0} 分钟</code> | <code>minutePluralLabel</code> | [GWT R001][R001] |
| <code>Multi-gesture shortcut pending</code> | <code>等待多键快捷键的后续按键</code> | <code>multiGestureMessage</code> | [GWT R001][R001] |
| <code>Name</code> | <code>名称</code> | <code>nameColumnText</code> | [GWT R001][R001] |
| <code>Name is empty</code> | <code>名称为空</code> | <code>nameEmptyMessage</code> | [GWT R001][R001] |
| <code>Illegal character: /</code> | <code>非法字符: /</code> | <code>nameIllegalCharacterMessage</code> | [GWT R001][R001] |
| <code>Names should not start or end with spaces</code> | <code>名称不应以空格开头或结束</code> | <code>nameStartWithMessage</code> | [GWT R001][R001] |
| <code>New Folder</code> | <code>新建文件夹</code> | <code>newFolderTitle</code> | [GWT R001][R001] |
| <code>Open in new session</code> | <code>在新会话中打开</code> | <code>newSessionCheckLabel</code> | [GWT R001][R001] |
| <code>Next</code> | <code>下一个</code> | <code>nextButtonText</code> | [GWT R001][R001] |
| <code>No</code> | <code>否</code> | <code>noLabel</code> | [GWT R001][R001] |
| <code>File does not exist</code> | <code>文件不存在</code> | <code>nonexistentFileMessage</code> | [GWT R001][R001] |
| <code>Restore {0}</code> | <code>恢复 {0}</code> | <code>normalState</code> | [GWT R001][R001] |
| <code>Not a valid number.</code> | <code>不是有效的数字。</code> | <code>notValidNumberMessage</code> | [GWT R001][R001] |
| <code>Not Yet Implemented</code> | <code>尚未实现</code> | <code>notYetImplementedCaption</code> | [GWT R001][R001] |
| <code>This feature has not yet been implemented.</code> | <code>此功能尚未实现。</code> | <code>notYetImplementedMessage</code> | [GWT R001][R001] |
| <code>OK</code> | <code>确定</code> | <code>okayLabel</code> | [GWT R001][R001] |
| <code>OK</code> | <code>确定</code> | <code>okButtonTitle</code> | [GWT R001][R001] |
| <code>Unexpected empty response from server</code> | <code>服务器返回了意外的空响应</code> | <code>onSubmitErrorMessage</code> | [GWT R001][R001] |
| <code>Open</code> | <code>打开</code> | <code>openButtonTitle</code> | [GWT R001][R001] |
| <code>Open Project</code> | <code>打开项目</code> | <code>openProjectTitle</code> | [GWT R001][R001] |
| <code>Operation completed </code> | <code>操作已完成</code> | <code>operationCompletedText</code> | [GWT R001][R001] |
| <code>Other</code> | <code>其他</code> | <code>otherGroupName</code> | [GWT R001][R001] |
| <code>Packages {0}, {1}, and {2} others required but are not installed.</code> | <code>需要程序包 {0}、{1} 及另外 {2} 个程序包，但尚未安装。</code> | <code>otherPackagesMessage</code> | [GWT R001][R001] |
| <code>Package {0} required but is not installed.</code> | <code>需要程序包 {0}，但尚未安装。</code> | <code>package1Message</code> | [GWT R001][R001] |
| <code>Packages {0} and {1} required but are not installed.</code> | <code>需要程序包 {0} 和 {1}，但尚未安装。</code> | <code>packages2Message</code> | [GWT R001][R001] |
| <code>Packages {0}, {1}, and {2} required but are not installed.</code> | <code>需要程序包 {0}、{1} 和 {2}，但尚未安装。</code> | <code>packages3Message</code> | [GWT R001][R001] |
| <code>Panes</code> | <code>窗格</code> | <code>panesGroupName</code> | [GWT R001][R001] |
| <code>Go to directory</code> | <code>转到目录</code> | <code>pathBreadCrumbButtonTitle</code> | [GWT R001][R001] |
| <code>Selected path breadcrumb</code> | <code>所选路径导航</code> | <code>pathBreadCrumbSelectPath</code> | [GWT R001][R001] |
| <code>Popup Blocked</code> | <code>弹出窗口已被阻止</code> | <code>popupBlockCaption</code> | [GWT R001][R001] |
| <code>Try Again</code> | <code>再试一次</code> | <code>popupBlockTryAgainLabel</code> | [GWT R001][R001] |
| <code>Prev</code> | <code>上一个</code> | <code>prevButtonText</code> | [GWT R001][R001] |
| <code>Saving...</code> | <code>正在保存…</code> | <code>progressIndicatorTitle</code> | [GWT R001][R001] |
| <code>Go to project directory</code> | <code>转到项目目录</code> | <code>projectIconDesc</code> | [GWT R001][R001] |
| <code>Projects</code> | <code>项目</code> | <code>projectsLabel</code> | [GWT R001][R001] |
| <code>Working...</code> | <code>正在处理…</code> | <code>promiseWithProgress</code> | [GWT R001][R001] |
| <code>Error</code> | <code>错误</code> | <code>promiseWithProgressError</code> | [GWT R001][R001] |
| <code>All</code> | <code>全部</code> | <code>radioButtonLabel</code> | [GWT R001][R001] |
| <code>Customized</code> | <code>自定义</code> | <code>radioCustomizedLabel</code> | [GWT R001][R001] |
| <code>Show:</code> | <code>显示:</code> | <code>radioShowLabel</code> | [GWT R001][R001] |
| <code>[REDACTED]</code> | <code>[已隐去]</code> | <code>redactedText</code> | [GWT R001][R001] |
| <code>Refresh Automatically</code> | <code>自动刷新</code> | <code>refreshAutomaticallyLabel</code> | [GWT R001][R001] |
| <code>Reload Now</code> | <code>立即重新加载</code> | <code>reloadNowText</code> | [GWT R001][R001] |
| <code>Rename</code> | <code>重命名</code> | <code>renameMenuItem</code> | [GWT R001][R001] |
| <code>Type shortcuts to see if they are bound to a command. Close this message bar when done.</code> | <code>按下快捷键可查看它是否已绑定到命令。完成后请关闭此消息栏。</code> | <code>reportShortCutMessage</code> | [GWT R001][R001] |
| <code>Reset...</code> | <code>重置…</code> | <code>resetButtonText</code> | [GWT R001][R001] |
| <code>Reset Keyboard Shortcuts</code> | <code>重置键盘快捷键</code> | <code>resetKeyboardShortcutsCaption</code> | [GWT R001][R001] |
| <code>Are you sure you want to reset keyboard shortcuts to their default values? This action cannot be undone.</code> | <code>确定要将键盘快捷键重置为默认值吗？此操作无法撤销。</code> | <code>resetKeyboardShortcutsMessage</code> | [GWT R001][R001] |
| <code>Resetting Keyboard Shortcuts...</code> | <code>正在重置键盘快捷键…</code> | <code>resetKeyboardShortcutsProgress</code> | [GWT R001][R001] |
| <code>Reset</code> | <code>重置</code> | <code>resetLabel</code> | [GWT R001][R001] |
| <code>Restart Required</code> | <code>需要重新启动</code> | <code>restartRequiredCaption</code> | [GWT R001][R001] |
| <code>You need to restart RStudio in order for these changes to take effect. Do you want to do this now?</code> | <code>需要重新启动 RStudio 才能使这些更改生效。是否立即重启？</code> | <code>restartRequiredMessage</code> | [GWT R001][R001] |
| <code>Status code {0} returned by {1} when executing ''{2}''</code> | <code>{1} 在执行“{2}”时返回了状态代码 {0}</code> | <code>rpcErrorMessage</code> | [GWT R001][R001] |
| <code>RPC Error</code> | <code>RPC 错误</code> | <code>rpcErrorMessageCaption</code> | [GWT R001][R001] |
| <code>Unable to establish connection with {0} when executing ''{1}''</code> | <code>执行“{1}”时无法与 {0} 建立连接</code> | <code>rpcOverrideErrorMessage</code> | [GWT R001][R001] |
| <code>Log in</code> | <code>登录</code> | <code>rpcOverrideErrorMessageLink</code> | [GWT R001][R001] |
| <code>Unable to establish connection with session on {0}. Please try logging in again in a new tab, then return to resume your session.</code> | <code>无法与 {0} 上的会话建立连接。请在新标签页中重新登录，然后返回以恢复会话。</code> | <code>rpcOverrideErrorMessageServer</code> | [GWT R001][R001] |
| <code>R Projects (*.RProj)</code> | <code>R 项目 (*.RProj)</code> | <code>rProjectsFilter</code> | [GWT R001][R001] |
| <code>R session</code> | <code>R 会话</code> | <code>rSessionMessage</code> | [GWT R001][R001] |
| <code>{0} must be a valid number.</code> | <code>{0} 必须是有效数字。</code> | <code>rStudioGinjectorErrorMessage</code> | [GWT R001][R001] |
| <code>{0} must be greater than or equal to {1}.</code> | <code>{0} 必须大于或等于 {1}。</code> | <code>rStudioGinjectorGreaterThanError</code> | [GWT R001][R001] |
| <code>{0} must be less than or equal to {1}.</code> | <code>{0} 必须小于或等于 {1}。</code> | <code>rStudioGinjectorLessThanError</code> | [GWT R001][R001] |
| <code>RStudio Server</code> | <code>RStudio 服务器</code> | <code>rStudioServerMessage</code> | [GWT R001][R001] / Source patch |
| <code>Secondary Window</code> | <code>二级窗口</code> | <code>satelliteToolBarText</code> | [GWT R001][R001] |
| <code>Scope</code> | <code>范围</code> | <code>scopeTextColumn</code> | [GWT R001][R001] |
| <code>Clear text</code> | <code>清除文本</code> | <code>searchWidgetClearText</code> | [GWT R001][R001] |
| <code>{0} second</code> | <code>{0} 秒</code> | <code>secondLabel</code> | [GWT R001][R001] |
| <code>{0} seconds</code> | <code>{0} 秒</code> | <code>secondPluralLabel</code> | [GWT R001][R001] |
| <code>(None)</code> | <code>(无)</code> | <code>selectWidgetListBoxNone</code> | [GWT R001][R001] |
| <code>Set Working Directory</code> | <code>设置工作目录</code> | <code>setWorkingDirMenuItem</code> | [GWT R001][R001] |
| <code>Keyboard Shortcut Quick Reference</code> | <code>键盘快捷键速查</code> | <code>shortcutHeaderText</code> | [GWT R001][R001] |
| <code>Shortcut not bound</code> | <code>未绑定快捷键</code> | <code>shortcutUnBoundMessage</code> | [GWT R001][R001] |
| <code>Confirm Overwrite</code> | <code>确认覆盖</code> | <code>showOverwriteCaption</code> | [GWT R001][R001] |
| <code>This file already exists. Do you want to replace it?</code> | <code>此文件已存在。是否替换？</code> | <code>showOverwriteMessage</code> | [GWT R001][R001] |
| <code>We attempted to open an external browser window, but the action was prevented by your popup blocker. You can attempt to open the window again by pressing the "Try Again" button below. NOTE: To prevent seeing this message in the future, you should configure your browser to allow popup windows for {0}.</code> | <code>RStudio 尝试打开外部浏览器窗口，但被弹出窗口拦截器阻止。可点击下方的“重试”按钮再次尝试。若不想再看到此消息，请将浏览器配置为允许 {0} 打开弹出窗口。</code> | <code>showPopupBlockMessage</code> | [GWT R001][R001] |
| <code>This document is read only. Generated from:</code> | <code>此文档为只读，生成来源:</code> | <code>showReadOnlyWarningGeneratedText</code> | [GWT R001][R001] |
| <code>This document is read only.</code> | <code>此文档为只读。</code> | <code>showReadOnlyWarningText</code> | [GWT R001][R001] |
| <code>Source Control</code> | <code>版本控制</code> | <code>sourceControlGroupName</code> | [GWT R001][R001] |
| <code>Source Editor</code> | <code>源编辑器</code> | <code>sourceEditorGroupName</code> | [GWT R001][R001] |
| <code>Source Navigation</code> | <code>源代码导航</code> | <code>sourceNavigationGroupName</code> | [GWT R001][R001] |
| <code>Stop</code> | <code>停止</code> | <code>stopButtonText</code> | [GWT R001][R001] |
| <code>Tabs</code> | <code>标签页</code> | <code>tabsGroupName</code> | [GWT R001][R001] |
| <code>Failed to find &lt;input&gt; element in table</code> | <code>在表格中找不到 &lt;input&gt; 元素</code> | <code>tagNameErrorMessage</code> | [GWT R001][R001] |
| <code>Terminal</code> | <code>终端</code> | <code>terminalGroupName</code> | [GWT R001][R001] |
| <code>Please use a complete file path.</code> | <code>请使用完整的文件路径。</code> | <code>themeButtonOnErrorMessage</code> | [GWT R001][R001] |
| <code>[Use Default]</code> | <code>[使用默认]</code> | <code>useDefaultPrefix</code> | [GWT R001][R001] |
| <code>You must enter a value.</code> | <code>您必须输入一个值。</code> | <code>validateMessage</code> | [GWT R001][R001] |
| <code>Vim keyboard shortcut help not screen reader accessible. Press any key to close.</code> | <code>Vim 键盘快捷键帮助不支持屏幕阅读器。按任意键关闭。</code> | <code>vimKeyboardShortcutHelpMessage</code> | [GWT R001][R001] |
| <code>Vim Keyboard Shortcuts</code> | <code>Vim 键盘快捷键</code> | <code>vimKeyboardShortcutsText</code> | [GWT R001][R001] |
| <code>Yes</code> | <code>是</code> | <code>yesLabel</code> | [GWT R001][R001] |
| <code>Dismiss infobar</code> | <code>关闭信息栏</code> | <code>dismissInfobarTitle</code> | [GWT R003][R003] |
| <code>Stop</code> | <code>停止</code> | <code>stopText</code> | [GWT R004][R004] |
| <code>Cancel</code> | <code>取消</code> | <code>cancelText</code> | [GWT R006][R006] |
| <code>Actions</code> | <code>操作</code> | <code>actions</code> | [GWT R007][R007] |
| <code>Add new tab, for &lt;i&gt;file&lt;/i&gt;</code> | <code>为 &lt;i&gt;文件&lt;/i&gt; 新建标签页</code> | <code>addNewTab</code> | [GWT R007][R007] |
| <code>Back, forward by paragraph</code> | <code>向后、向前移动一个段落</code> | <code>backForwardParagraph</code> | [GWT R007][R007] |
| <code>Back to beginning, end of previous word</code> | <code>移至上一个单词的开头、结尾</code> | <code>backToBeginning</code> | [GWT R007][R007] |
| <code>Forward, backward to before character &lt;i&gt;x&lt;/i&gt;</code> | <code>向前、向后移至字符 &lt;i&gt;x&lt;/i&gt; 之前</code> | <code>backwardToBefore</code> | [GWT R007][R007] |
| <code>Forward, backward to character &lt;i&gt;x&lt;/i&gt;</code> | <code>向前、向后移至字符 &lt;i&gt;x&lt;/i&gt;</code> | <code>backwardToCharacter</code> | [GWT R007][R007] |
| <code>Begin, end recording macro to &lt;i&gt;register&lt;/i&gt;</code> | <code>开始、结束将宏录制到&lt;i&gt;寄存器&lt;/i&gt;</code> | <code>beginEndRecording</code> | [GWT R007][R007] |
| <code>Change character, line</code> | <code>修改字符、行</code> | <code>changeCharacter</code> | [GWT R007][R007] |
| <code>Change current line</code> | <code>修改当前行</code> | <code>changeCurrentLine</code> | [GWT R007][R007] |
| <code>Change (cut, insert) text</code> | <code>修改（剪切并插入）文本</code> | <code>changeText</code> | [GWT R007][R007] |
| <code>Change to end of line</code> | <code>修改至行尾</code> | <code>changeToEndOfLine</code> | [GWT R007][R007] |
| <code>Close all tabs</code> | <code>关闭所有标签页</code> | <code>closeAllTabs</code> | [GWT R007][R007] |
| <code>Close tab</code> | <code>关闭标签页</code> | <code>closeTab</code> | [GWT R007][R007] |
| <code>Copy/paste to/from &lt;i&gt;register&lt;/i&gt;</code> | <code>复制到&lt;i&gt;寄存器&lt;/i&gt;或从&lt;i&gt;寄存器&lt;/i&gt;粘贴</code> | <code>copyPasteRegister</code> | [GWT R007][R007] |
| <code>Create mark x at cursor</code> | <code>在光标处创建标记 x</code> | <code>createMark</code> | [GWT R007][R007] |
| <code>Delete current, previous character</code> | <code>删除当前字符、前一个字符</code> | <code>deleteCurrent</code> | [GWT R007][R007] |
| <code>Delete current line</code> | <code>删除当前行</code> | <code>deleteCurrentLine</code> | [GWT R007][R007] |
| <code>Delete to end of line</code> | <code>删除至行尾</code> | <code>deleteEndOfLine</code> | [GWT R007][R007] |
| <code>Delete (cut) text</code> | <code>删除（剪切）文本</code> | <code>deleteText</code> | [GWT R007][R007] |
| <code>Down, up (by screen lines)</code> | <code>向下、向上移动（按屏幕行）</code> | <code>downUp</code> | [GWT R007][R007] |
| <code>Evaluate R expression</code> | <code>执行 R 表达式</code> | <code>evaluateR</code> | [GWT R007][R007] |
| <code>Ex Commands</code> | <code>Ex 命令</code> | <code>exCommands</code> | [GWT R007][R007] |
| <code>To first character on previous, next line</code> | <code>移至上一行、下一行的第一个字符</code> | <code>firstCharacter</code> | [GWT R007][R007] |
| <code>To first column</code> | <code>移至第一列</code> | <code>firstColumn</code> | [GWT R007][R007] |
| <code>To first, last character on line</code> | <code>移至行内第一个、最后一个字符</code> | <code>firstLast</code> | [GWT R007][R007] |
| <code>To first, last line</code> | <code>移至第一行、最后一行</code> | <code>firstLastLine</code> | [GWT R007][R007] |
| <code>Forward to beginning, end of next word</code> | <code>移至下一个单词的开头、结尾</code> | <code>fowardToBeginning</code> | [GWT R007][R007] |
| <code>Go to line N</code> | <code>转到第 N 行</code> | <code>goToLine</code> | [GWT R007][R007] |
| <code>Go to next, previous search match</code> | <code>转到下一个、上一个搜索结果</code> | <code>goToNext</code> | [GWT R007][R007] |
| <code>Increment, decrement next number</code> | <code>递增、递减下一个数字</code> | <code>incrementDecrement</code> | [GWT R007][R007] |
| <code>Indent text</code> | <code>缩进文本</code> | <code>indentText</code> | [GWT R007][R007] |
| <code>Indent, unindent lines</code> | <code>增加、减少行缩进</code> | <code>indentUnindent</code> | [GWT R007][R007] |
| <code>Insert contents of &lt;i&gt;file&lt;/i&gt;</code> | <code>插入&lt;i&gt;文件&lt;/i&gt;内容</code> | <code>insertContents</code> | [GWT R007][R007] |
| <code>Insert text before cursor, line</code> | <code>在光标、行之前插入文本</code> | <code>inserTextBeforeCursor</code> | [GWT R007][R007] |
| <code>Insert line after, before current</code> | <code>在当前行之后、之前插入一行</code> | <code>insertLineAfter</code> | [GWT R007][R007] |
| <code>Insert text after cursor, line</code> | <code>在光标、行之后插入文本</code> | <code>insertTextAfterCursor</code> | [GWT R007][R007] |
| <code>Invert current line case</code> | <code>反转当前行的字母大小写</code> | <code>invertCurrentLine</code> | [GWT R007][R007] |
| <code>Invert text case</code> | <code>反转文本的字母大小写</code> | <code>invertTextCase</code> | [GWT R007][R007] |
| <code>Join line with next</code> | <code>与下一行合并</code> | <code>joinLine</code> | [GWT R007][R007] |
| <code>Leave insert mode</code> | <code>退出插入模式</code> | <code>leaveInsertMode</code> | [GWT R007][R007] |
| <code>Macros</code> | <code>宏</code> | <code>macros</code> | [GWT R007][R007] |
| <code>To matching brace/bracket</code> | <code>移至匹配的花括号或方括号</code> | <code>matchingBraceBracket</code> | [GWT R007][R007] |
| <code>Left, down, up, right</code> | <code>向左、向下、向上、向右移动</code> | <code>motions</code> | [GWT R007][R007] |
| <code>Operator Motions</code> | <code>操作符移动</code> | <code>operatorMotions</code> | [GWT R007][R007] |
| <code>Operators</code> | <code>操作符</code> | <code>operators</code> | [GWT R007][R007] |
| <code>Other</code> | <code>其他</code> | <code>other</code> | [GWT R007][R007] |
| <code>Paste after, before cursor</code> | <code>在光标之后、之前粘贴</code> | <code>pasteAfter</code> | [GWT R007][R007] |
| <code>Perform &lt;i&gt;operation&lt;/i&gt; N times</code> | <code>执行&lt;i&gt;操作&lt;/i&gt; N 次</code> | <code>performOperation</code> | [GWT R007][R007] |
| <code>Go to previous, next tab</code> | <code>转到上一个、下一个标签页</code> | <code>previousNextTab</code> | [GWT R007][R007] |
| <code>Reflow text</code> | <code>重新排版文本</code> | <code>reflowText</code> | [GWT R007][R007] |
| <code>Registers</code> | <code>寄存器</code> | <code>registers</code> | [GWT R007][R007] |
| <code>The registers &lt;strong&gt;-&lt;/strong&gt;, &lt;strong&gt;a-z&lt;/strong&gt;, &lt;strong&gt;A-Z&lt;/strong&gt;, and &lt;strong&gt;0-9&lt;/strong&gt; are available. Use &lt;strong&gt;:registers&lt;/strong&gt; to see current register contents.</code> | <code>可用的寄存器有 &lt;strong&gt;-&lt;/strong&gt;、&lt;strong&gt;a-z&lt;/strong&gt;、&lt;strong&gt;A-Z&lt;/strong&gt; 和 &lt;strong&gt;0-9&lt;/strong&gt;。使用 &lt;strong&gt;:registers&lt;/strong&gt; 查看当前寄存器内容。</code> | <code>registersAvailable</code> | [GWT R007][R007] |
| <code>Repeat last f/t command forward, backward</code> | <code>向前、向后重复上一次 f/t 命令</code> | <code>repeatLast</code> | [GWT R007][R007] |
| <code>Repeat last operation</code> | <code>重复上一次操作</code> | <code>repeatLastOperation</code> | [GWT R007][R007] |
| <code>Replace character</code> | <code>替换字符</code> | <code>replaceCharacter</code> | [GWT R007][R007] |
| <code>Replace (overwrite) mode</code> | <code>替换（覆盖）模式</code> | <code>replaceMode</code> | [GWT R007][R007] |
| <code>Replace in selection</code> | <code>在选区中替换</code> | <code>replaceSelection</code> | [GWT R007][R007] |
| <code>Replace &lt;i&gt;text&lt;/i&gt; with &lt;i&gt;rep&lt;/i&gt; in file</code> | <code>在文件中将&lt;i&gt;文本&lt;/i&gt;替换为 &lt;i&gt;rep&lt;/i&gt;</code> | <code>replaceTextFile</code> | [GWT R007][R007] |
| <code>Replay macro in &lt;i&gt;register&lt;/i&gt;</code> | <code>重放&lt;i&gt;寄存器&lt;/i&gt;中的宏</code> | <code>replayMacro</code> | [GWT R007][R007] |
| <code>Reselect last selection</code> | <code>重新选择上一次选区</code> | <code>reselectLast</code> | [GWT R007][R007] |
| <code>Save, save and quit, without prompt</code> | <code>保存、保存并退出（不提示）</code> | <code>saveQuit</code> | [GWT R007][R007] |
| <code>Scroll current line to center, top, bottom</code> | <code>滚动当前行至屏幕中央、顶部、底部</code> | <code>scrollCurrentLine</code> | [GWT R007][R007] |
| <code>Scroll down, up</code> | <code>向下、向上滚动</code> | <code>scrollDownUp</code> | [GWT R007][R007] |
| <code>Scrolling</code> | <code>滚动</code> | <code>scrolling</code> | [GWT R007][R007] |
| <code>Search forward, back for &lt;i&gt;text&lt;/i&gt;</code> | <code>向前、向后搜索&lt;i&gt;文本&lt;/i&gt;</code> | <code>searchForward</code> | [GWT R007][R007] |
| <code>Search forward, back for text under cursor</code> | <code>向前、向后搜索光标下的文本</code> | <code>searchForwardText</code> | [GWT R007][R007] |
| <code>Search forward, back for word under cursor</code> | <code>向前、向后搜索光标下的单词</code> | <code>searchFowardWord</code> | [GWT R007][R007] |
| <code>Searching</code> | <code>搜索</code> | <code>searching</code> | [GWT R007][R007] |
| <code>Select characters, lines, blocks</code> | <code>选择字符、行、块</code> | <code>selectCharacter</code> | [GWT R007][R007] |
| <code>Show help for topic under cursor</code> | <code>显示光标下主题的帮助</code> | <code>showHelp</code> | [GWT R007][R007] |
| <code>Show this screen</code> | <code>显示此帮助页</code> | <code>showScreen</code> | [GWT R007][R007] |
| <code>Sort selected lines</code> | <code>对所选行排序</code> | <code>sortSelectedLines</code> | [GWT R007][R007] |
| <code>Switch case</code> | <code>切换字母大小写</code> | <code>switchCase</code> | [GWT R007][R007] |
| <code>To line &lt;i&gt;number&lt;/i&gt;</code> | <code>移至第&lt;i&gt;指定&lt;/i&gt;行</code> | <code>toLineNumber</code> | [GWT R007][R007] |
| <code>To mark x</code> | <code>移至标记 x</code> | <code>toMarkX</code> | [GWT R007][R007] |
| <code>To top, middle, bottom of screen</code> | <code>移至屏幕顶部、中部、底部</code> | <code>topMiddleBottomScreen</code> | [GWT R007][R007] |
| <code>Undo, redo</code> | <code>撤销、重做</code> | <code>undoRedo</code> | [GWT R007][R007] |
| <code>Unindent text</code> | <code>减少文本缩进</code> | <code>unindent</code> | [GWT R007][R007] |
| <code>Up, down by 1/2 screen</code> | <code>向上、向下移动半屏</code> | <code>upDownScreen</code> | [GWT R007][R007] |
| <code>Yank (copy) text</code> | <code>复制文本</code> | <code>yankText</code> | [GWT R007][R007] |
| <code>Yank to end of line</code> | <code>复制至行尾</code> | <code>yankToEndOfLine</code> | [GWT R007][R007] |
| <code>Active RStudio License Not Found</code> | <code>活动 RStudio 未找到许可证</code> | <code>activeRStudioLicenseNotFound</code> | [GWT R009][R009] |
| <code>(active)</code> | <code>(活动)</code> | <code>activeText</code> | [GWT R009][R009] |
| <code>Addins</code> | <code>插件</code> | <code>addinsText</code> | [GWT R009][R009] |
| <code>{0} Are you sure you want to quit?</code> | <code>{0} 确定要退出吗？</code> | <code>applicationQuitMessage</code> | [GWT R009][R009] |
| <code>Application Updated</code> | <code>应用程序已更新</code> | <code>applicationUpdatedCaption</code> | [GWT R009][R009] |
| <code>An updated version of RStudio is available. Your browser will now be refreshed with the new version. All current work and data will be preserved during the update.</code> | <code>最新版本 RStudio 可供使用。 您的浏览器现在会被新版本刷新。 所有目前的工作和数据将在更新期间保存。</code> | <code>applicationUpdatedMessage</code> | [GWT R009][R009] |
| <code>Approaching session memory limit.</code> | <code>接近会话内存限制。</code> | <code>approachingMemoryLimit</code> | [GWT R009][R009] |
| <code>Update No Longer Ignored</code> | <code>不再忽略此更新</code> | <code>autoUpdateReenabledCaption</code> | [GWT R009][R009] |
| <code>RStudio will automatically check for updates the next time it starts.</code> | <code>RStudio 将会在下次启动时自动检查更新。</code> | <code>autoUpdateReenabledMessage</code> | [GWT R009][R009] |
| <code>Backing up R session...</code> | <code>正在备份 R 会话...</code> | <code>backingUpRSessionMessage</code> | [GWT R009][R009] |
| <code>This browser was disconnected from the R session because another browser connected (only one browser at a time may be connected to an RStudio session). You may reconnect using the button below.</code> | <code>由于另一个浏览器建立了连接，此浏览器已与 R 会话断开（每次只能有一个浏览器连接到 RStudio 会话）。可使用下方按钮重新连接。</code> | <code>browserDisconnectedMessage</code> | [GWT R009][R009] |
| <code>Your browser does not allow access to your</code> | <code>您的浏览器不允许访问您</code> | <code>browserNotAllowAccessLabel</code> | [GWT R009][R009] |
| <code>) for </code> | <code>用于</code> | <code>buildLabelForText</code> | [GWT R009][R009] |
| <code>build of </code> | <code>构建版本，基于 </code> | <code>buildOfText</code> | [GWT R009][R009] |
| <code>This </code> | <code>这个</code> | <code>buildTypeThisText</code> | [GWT R009][R009] |
| <code>The Chromium devtools server could not be activated.</code> | <code>无法激活 Chromium devtools 服务器。</code> | <code>cannotActivateDevtoolsMessage</code> | [GWT R009][R009] |
| <code>Cannot Connect to R Session</code> | <code>无法连接到 R 会话</code> | <code>cannotConnectRCaption</code> | [GWT R009][R009] |
| <code>Could not connect to the R session on RStudio Server.\n\n{0} ({1})</code> | <code>无法连接到 RStudio Server 上的 R 会话。\n\n{0}（{1}）</code> | <code>cannotConnectRMessage</code> | [GWT R009][R009] |
| <code>Close</code> | <code>关闭</code> | <code>closeButtonText</code> | [GWT R009][R009] |
| <code>Close Remote Session</code> | <code>关闭远程会话</code> | <code>closeRemoteSessionCaption</code> | [GWT R009][R009] |
| <code>Do you want to close the remote session?</code> | <code>是否关闭远程会话？</code> | <code>closeRemoteSessionMessage</code> | [GWT R009][R009] |
| <code>Closing project</code> | <code>正在关闭项目</code> | <code>closingProjectMessage</code> | [GWT R009][R009] |
| <code>Commit message length</code> | <code>提交消息长度</code> | <code>commitMessageLengthAnnouncement</code> | [GWT R009][R009] |
| <code>community-forum</code> | <code>社区论坛</code> | <code>communityForumLinkName</code> | [GWT R009][R009] |
| <code>computer''s clipboard. As a result you must</code> | <code>计算机剪贴板。因此，您必须</code> | <code>computerClipBoardLabel</code> | [GWT R009][R009] |
| <code>Connection Dequeued</code> | <code>连接已取消</code> | <code>connectionDequeuedType</code> | [GWT R009][R009] |
| <code>Connection Error</code> | <code>连接错误</code> | <code>connectionErrorType</code> | [GWT R009][R009] |
| <code>Connection Received</code> | <code>收到连接</code> | <code>connectionReceivedType</code> | [GWT R009][R009] |
| <code>Connection Responded</code> | <code>连接响应</code> | <code>connectionRespondedType</code> | [GWT R009][R009] |
| <code>Connection Terminated</code> | <code>连接已终止</code> | <code>connectionTerminatedType</code> | [GWT R009][R009] |
| <code>(Unknown)</code> | <code>(不详)</code> | <code>connectionUnknownType</code> | [GWT R009][R009] |
| <code>Console cleared</code> | <code>控制台已清空</code> | <code>consoleClearedAnnouncement</code> | [GWT R009][R009] |
| <code>Console command (requires restart)</code> | <code>控制台命令（需要重启）</code> | <code>consoleCommandAnnouncement</code> | [GWT R009][R009] |
| <code>Console output (requires restart)</code> | <code>控制台输出（需要重启）</code> | <code>consoleOutputAnnouncement</code> | [GWT R009][R009] |
| <code>Copy Version</code> | <code>复制版本</code> | <code>copyVersionButton</code> | [GWT R009][R009] |
| <code>Copy Version</code> | <code>复制版本</code> | <code>copyVersionButtonTitle</code> | [GWT R009][R009] |
| <code>Default version of R:</code> | <code>默认 R 版本:</code> | <code>defaultVersionRCaption</code> | [GWT R009][R009] |
| <code>Details: </code> | <code>细节 :</code> | <code>detailsMessage</code> | [GWT R009][R009] |
| <code>Error Checking for Updates</code> | <code>检查更新出错</code> | <code>errorCheckingUpdatesMessage</code> | [GWT R009][R009] |
| <code>An error occurred while checking for updates: </code> | <code>检查更新时出错 :</code> | <code>errorOccurredCheckingUpdatesMessage</code> | [GWT R009][R009] |
| <code>Error Opening Devtools</code> | <code>打开 Devtools 出错</code> | <code>errorOpeningDevToolsCaption</code> | [GWT R009][R009] |
| <code>Error occurred during transmission</code> | <code>传输时发生错误</code> | <code>errorTransmissionMessage</code> | [GWT R009][R009] |
| <code>Export</code> | <code>导出</code> | <code>exportCaption</code> | [GWT R009][R009] |
| <code>Filtered result count</code> | <code>筛选结果数量</code> | <code>filterResultCountAnnouncement</code> | [GWT R009][R009] |
| <code>Focused Element: </code> | <code>焦点元素 :</code> | <code>focusedElementLabel</code> | [GWT R009][R009] |
| <code>Toolbar hidden, unable to focus.</code> | <code>工具栏已隐藏，无法聚焦。</code> | <code>focusToolbarText</code> | [GWT R009][R009] |
| <code>for </code> | <code>用于 </code> | <code>forText</code> | [GWT R009][R009] |
| <code>from </code> | <code>从</code> | <code>fromText</code> | [GWT R009][R009] |
| <code>Go Home</code> | <code>返回首页</code> | <code>goHomeButtonLabel</code> | [GWT R009][R009] |
| <code>GPU Setting Changed</code> | <code>GPU 设置已更改</code> | <code>gpuSettingChangedCaption</code> | [GWT R009][R009] |
| <code>This change will take effect after RStudio is restarted. Do you want to restart now?</code> | <code>此更改将在 RStudio 重启后生效。是否立即重启？</code> | <code>gpuSettingChangedMessage</code> | [GWT R009][R009] / Source patch |
| <code>Help on R versions</code> | <code>R 版本的帮助</code> | <code>helpOnRVersionsTitle</code> | [GWT R009][R009] |
| <code>docs</code> | <code>文档</code> | <code>helpUsingRStudioLinkName</code> | [GWT R009][R009] |
| <code>Hide Posit Assistant Button</code> | <code>隐藏 Posit Assistant 按钮</code> | <code>hidePositAssistantButton</code> | [GWT R009][R009] |
| <code>Hide Sidebar</code> | <code>隐藏侧边栏</code> | <code>hideSidebarTitle</code> | [GWT R009][R009] |
| <code>Ignore Update</code> | <code>忽略更新</code> | <code>ignoreUpdateButtonLabel</code> | [GWT R009][R009] |
| <code>Import</code> | <code>导入</code> | <code>importCaption</code> | [GWT R009][R009] |
| <code>Inaccessible feature warning</code> | <code>不可访问功能警告</code> | <code>inaccessibleWarningAnnouncement</code> | [GWT R009][R009] |
| <code>Info bars</code> | <code>信息栏</code> | <code>infoBarsAnnouncement</code> | [GWT R009][R009] |
| <code>Loading...</code> | <code>正在加载…</code> | <code>licenseBoxLoadingText</code> | [GWT R009][R009] |
| <code>Unable to obtain a license. Please restart RStudio to try again.</code> | <code>无法获得许可证。请重启 RStudio 后重试。</code> | <code>licenseLostMessage</code> | [GWT R009][R009] |
| <code>Licensing Limit Reached</code> | <code>已达到许可证限制</code> | <code>licensingLimitCaption</code> | [GWT R009][R009] |
| <code>Loading workspace</code> | <code>正在加载工作区</code> | <code>loadingWorkspaceMessage</code> | [GWT R009][R009] |
| <code>Login</code> | <code>登录</code> | <code>loginButton</code> | [GWT R009][R009] |
| <code>Main</code> | <code>主窗口</code> | <code>mainLabel</code> | [GWT R009][R009] |
| <code>Main menu and toolbar</code> | <code>主菜单和工具栏</code> | <code>mainMenuAndToolbarAriaLabel</code> | [GWT R009][R009] / Source patch |
| <code>Main menu</code> | <code>主菜单</code> | <code>mainMenuAriaLabel</code> | [GWT R009][R009] / Source patch |
| <code>Manage License</code> | <code>管理许可证</code> | <code>manageLicenseBtn</code> | [GWT R009][R009] |
| <code>Manage License...</code> | <code>管理许可证...</code> | <code>manageLicenseText</code> | [GWT R009][R009] |
| <code>Memory limit has been exceeded. The IDE session has been terminated.</code> | <code>已超过内存限制，IDE 会话已终止。</code> | <code>memoryLimitAbortedMessage</code> | [GWT R009][R009] |
| <code>Session memory limit exceeded. Restart required.</code> | <code>已超过会话内存限制，需要重启。</code> | <code>memoryLimitExceededCaption</code> | [GWT R009][R009] |
| <code>Memory Limit Exceeded. Save files and restart session.\n\nSession may be aborted if system runs low on memory.</code> | <code>已超过内存限制。请保存文件并重启会话。\n\n如果系统可用内存不足，会话可能会中止。</code> | <code>memoryLimitExceededMessage</code> | [GWT R009][R009] |
| <code>Module </code> | <code>模块</code> | <code>moduleText</code> | [GWT R009][R009] |
| <code>New File</code> | <code>新建文件</code> | <code>newFileTitle</code> | [GWT R009][R009] |
| <code>New Session...</code> | <code>新建会话...</code> | <code>newSessionMenuLabel</code> | [GWT R009][R009] |
| <code>No addins found</code> | <code>未找到插件</code> | <code>noAddinsFound</code> | [GWT R009][R009] |
| <code>No Update Available</code> | <code>无可用的更新</code> | <code>noUpdateAvailableCaption</code> | [GWT R009][R009] |
| <code>OK</code> | <code>确定</code> | <code>okBtn</code> | [GWT R009][R009] |
| <code>Open recent files</code> | <code>打开最近使用的文件</code> | <code>openRecentFilesTitle</code> | [GWT R009][R009] |
| <code>Open Source Components</code> | <code>开源组件</code> | <code>openSourceComponentsText</code> | [GWT R009][R009] |
| <code>Open Source Component</code> | <code>开源组件</code> | <code>openSourceComponentText</code> | [GWT R009][R009] |
| <code>Over session memory limit.</code> | <code>超过会话内存限制。</code> | <code>overMemoryLimit</code> | [GWT R009][R009] |
| <code>Looking for projects...</code> | <code>正在查找项目…</code> | <code>popupMenuProgressMessage</code> | [GWT R009][R009] |
| <code>The previous R session was abnormally terminated due to an unexpected crash.\n\nYou may have lost workspace data as a result of this crash.\n\nRStudio may not have restored the previously active project as a precaution. You may switch back to it using the Projects menu.</code> | <code>上一个 R 会话因意外崩溃而异常终止。\n\n此次崩溃可能导致工作区数据丢失。\n\n出于安全考虑，RStudio 可能没有恢复此前活动的项目。可通过“项目”菜单切换回该项目。</code> | <code>previousRSessionsMessage</code> | [GWT R009][R009] |
| <code>Error</code> | <code>错误</code> | <code>progressErrorCaption</code> | [GWT R009][R009] |
| <code>Quit and Download...</code> | <code>退出并下载...</code> | <code>quitDownloadButtonLabel</code> | [GWT R009][R009] |
| <code>Quit R Session</code> | <code>退出 R 会话</code> | <code>quitRSessionCaption</code> | [GWT R009][R009] |
| <code>Quitting R Session...</code> | <code>正在退出 R 会话…</code> | <code>quitRSessionMessage</code> | [GWT R009][R009] |
| <code>Are you sure you want to quit the R session?</code> | <code>确定要退出 R 会话吗？</code> | <code>quitRSessionsMessage</code> | [GWT R009][R009] |
| <code>Quit R Session</code> | <code>退出 R 会话</code> | <code>quitRSessionTitle</code> | [GWT R009][R009] |
| <code>Quit RStudio</code> | <code>退出 RStudio</code> | <code>quitRStudio</code> | [GWT R009][R009] |
| <code>{0}\n\nPlease quit any unused running sessions and try again, or contact your administrator to update your license.</code> | <code>{0}\n\n请退出不再使用的活动会话后重试，或联系管理员更新许可证。</code> | <code>quitRunningSessionsMessage</code> | [GWT R009][R009] |
| <code>Danger!</code> | <code>危险！</code> | <code>reallyCrashCaption</code> | [GWT R009][R009] |
| <code>This will cause RStudio to immediately crash. You may lose work. Trigger crash?</code> | <code>这会使 RStudio 立即崩溃，并可能导致工作丢失。确定要触发崩溃吗？</code> | <code>reallyCrashMessage</code> | [GWT R009][R009] |
| <code>Recent Projects</code> | <code>最近的项目</code> | <code>recentProjectsLabel</code> | [GWT R009][R009] |
| <code>Reconnect</code> | <code>重新连接</code> | <code>reconnectButtonText</code> | [GWT R009][R009] |
| <code>Reloading...</code> | <code>正在重新加载…</code> | <code>reloadingText</code> | [GWT R009][R009] |
| <code>Remind Later</code> | <code>待会再提醒</code> | <code>remindLaterButtonLabel</code> | [GWT R009][R009] |
| <code>&lt;p&gt;Click on a request to see details. Click on the background to show these instructions again.&lt;/p&gt;&lt;h4&gt;Available commands:&lt;/h4&gt;&lt;ul&gt;&lt;li&gt;Esc: Close&lt;/li&gt;&lt;li&gt;P: Play/pause&lt;/li&gt;&lt;li&gt;E: Export&lt;/li&gt;&lt;li&gt;I: Import&lt;/li&gt;&lt;li&gt;+/-: Zoom in/out&lt;/li&gt;&lt;/ul&gt;</code> | <code>&lt;p&gt;点击请求可查看详细信息；点击背景可再次显示这些说明。&lt;/p&gt;&lt;h4&gt;可用命令：&lt;/h4&gt;&lt;ul&gt;&lt;li&gt;Esc: 关闭&lt;/li&gt;&lt;li&gt;P: 播放/暂停&lt;/li&gt;&lt;li&gt;E: 导出&lt;/li&gt;&lt;li&gt;I: 导入&lt;/li&gt;&lt;li&gt;+/-: 放大/缩小&lt;/li&gt;&lt;/ul&gt;</code> | <code>requestLogVisualization</code> | [GWT R009][R009] |
| <code>Restarting R...</code> | <code>重新启动 R...</code> | <code>restartingRMessage</code> | [GWT R009][R009] |
| <code>Restart R</code> | <code>重启 R</code> | <code>restartRCaption</code> | [GWT R009][R009] |
| <code>Restarting RStudio</code> | <code>重新启动 RStudio</code> | <code>restartRStudio</code> | [GWT R009][R009] |
| <code>Restoring R session...</code> | <code>恢复 R 会话...</code> | <code>restoringRSessionMessage</code> | [GWT R009][R009] |
| <code>Restricted Mode: startup files were not executed for this project</code> | <code>受限模式：未执行此项目的启动文件</code> | <code>restrictedModeTitle</code> | [GWT R009][R009] |
| <code>Retry</code> | <code>重试</code> | <code>retryButtonLabel</code> | [GWT R009][R009] |
| <code>Retrying in Safe Mode...</code> | <code>正在以安全模式重试...</code> | <code>retryInSafeModeText</code> | [GWT R009][R009] |
| <code>R encountered a fatal error.</code> | <code>R 遇到致命错误。</code> | <code>rFatalErrorMessage</code> | [GWT R009][R009] |
| <code>R Session Aborted</code> | <code>R 会话中止</code> | <code>rSessionAbortedCaption</code> | [GWT R009][R009] |
| <code>The R session is currently busy.</code> | <code>R 会话当前正忙。</code> | <code>rSessionCurrentlyBusyMessage</code> | [GWT R009][R009] |
| <code>R Session Disconnected</code> | <code>R 会话断开</code> | <code>rSessionDisconnectedCaption</code> | [GWT R009][R009] |
| <code>R Session Ended</code> | <code>R 会话结束</code> | <code>rSessionEndedCaption</code> | [GWT R009][R009] |
| <code>R Session Error</code> | <code>R 会话错误</code> | <code>rSessionErrorCaption</code> | [GWT R009][R009] |
| <code>This R session was started in safe mode. </code> | <code>此 R 会话以安全模式启动。</code> | <code>rSessionSafeModeMessage</code> | [GWT R009][R009] |
| <code>The R session and the terminal are currently busy.</code> | <code>R 会话和终端当前都正忙。</code> | <code>rSessionTerminalBusyMessage</code> | [GWT R009][R009] |
| <code>RStudio Initialization Error</code> | <code>RStudio 初始化错误</code> | <code>rStudioInitializationErrorCaption</code> | [GWT R009][R009] |
| <code>RStudio is temporarily offline due to system maintenance. We apologize for the inconvenience, please try again in a few minutes.</code> | <code>由于系统维护，RStudio 暂时离线。很抱歉给您带来不便，请几分钟后重试。</code> | <code>rStudioOfflineMessage</code> | [GWT R009][R009] |
| <code>support</code> | <code>支持</code> | <code>rStudioSupportLinkName</code> | [GWT R009][R009] |
| <code>R version </code> | <code>R版本</code> | <code>rVersionText</code> | [GWT R009][R009] |
| <code>Don''t Save</code> | <code>不保存</code> | <code>saveNoLabel</code> | [GWT R009][R009] |
| <code>Save workspace image to </code> | <code>将工作区映像保存到 </code> | <code>saveWorkspaceImageMessage</code> | [GWT R009][R009] |
| <code>Save</code> | <code>保存</code> | <code>saveYesLabel</code> | [GWT R009][R009] |
| <code>Saving workspace image</code> | <code>正在保存工作区映像</code> | <code>savingWorkspaceImageMessage</code> | [GWT R009][R009] |
| <code>Screen reader not enabled</code> | <code>未启用屏幕阅读器</code> | <code>screenReaderAnnouncement</code> | [GWT R009][R009] |
| <code>Search for addins</code> | <code>搜索插件</code> | <code>searchForAddinsLabel</code> | [GWT R009][R009] |
| <code>Select License...</code> | <code>选择许可证...</code> | <code>selectLicense</code> | [GWT R009][R009] |
| <code>Server</code> | <code>服务器</code> | <code>serverLabel</code> | [GWT R009][R009] |
| <code>RStudio Server Login Required</code> | <code>RStudio 需要服务器登录</code> | <code>serverLoginRequired</code> | [GWT R009][R009] |
| <code>Login expired or signed out from another window.\nSelect ''Login'' for a new login tab.</code> | <code>登录已过期，或已从另一个窗口退出。\n选择“登录”以打开新的登录标签页。</code> | <code>serverLoginRequiredMessage</code> | [GWT R009][R009] |
| <code>server quitSession responded false</code> | <code>服务器的 quitSession 调用返回了 false</code> | <code>serverQuitSession</code> | [GWT R009][R009] |
| <code>Changes in session state</code> | <code>会话状态变化</code> | <code>sessionStateAnnouncement</code> | [GWT R009][R009] |
| <code>Session suspension</code> | <code>会话暂停</code> | <code>sessionSuspendAnnouncement</code> | [GWT R009][R009] |
| <code>The session was terminated.</code> | <code>会话已终止。</code> | <code>sessionTerminatedMessage</code> | [GWT R009][R009] |
| <code>Shared with Me</code> | <code>与我共享</code> | <code>sharedWithMeLabel</code> | [GWT R009][R009] |
| <code>Show Sidebar</code> | <code>显示侧边栏</code> | <code>showSidebarTitle</code> | [GWT R009][R009] |
| <code>Sign out</code> | <code>退出登录</code> | <code>signOutButtonText</code> | [GWT R009][R009] |
| <code>Sign out</code> | <code>退出登录</code> | <code>signOutTitle</code> | [GWT R009][R009] |
| <code>Start New Session</code> | <code>开始新会话</code> | <code>startNewSessionText</code> | [GWT R009][R009] |
| <code>Startup scripts were not executed.</code> | <code>启动脚本未执行。</code> | <code>startupScriptsErrorMessage</code> | [GWT R009][R009] |
| <code>, and startup scripts were not executed</code> | <code>，并且未执行启动脚本</code> | <code>startupScriptsNotExecutedMessage</code> | [GWT R009][R009] |
| <code>Stop Ignoring Updates</code> | <code>停止忽略更新</code> | <code>stopIgnoringUpdatesButtonLabel</code> | [GWT R009][R009] |
| <code>Workspace image (.RData)</code> | <code>工作区映像 (.RData)</code> | <code>studioClientTitle</code> | [GWT R009][R009] |
| <code>is provided by Posit Software, PBC for testing purposes only and is not an officially supported release.</code> | <code>由 Posit Software, PBC 提供，仅供测试，并非受官方支持的发行版。</code> | <code>supportNoticeText</code> | [GWT R009][R009] |
| <code>Switching to project </code> | <code>正在切换到项目 </code> | <code>switchingToProjectMessage</code> | [GWT R009][R009] |
| <code>Switch R Version</code> | <code>切换 R 版本</code> | <code>switchRVersionCaption</code> | [GWT R009][R009] |
| <code>Tab key focus mode change</code> | <code>Tab 键焦点模式变化</code> | <code>tabKeyFocusAnnouncement</code> | [GWT R009][R009] |
| <code>Task completion</code> | <code>任务完成</code> | <code>taskCompletionAnnouncement</code> | [GWT R009][R009] |
| <code>Task progress details</code> | <code>任务进度详情</code> | <code>taskProgressAnnouncement</code> | [GWT R009][R009] |
| <code>RStudio Temporarily Offline</code> | <code>RStudio 暂时离线</code> | <code>temporarilyOfflineCaption</code> | [GWT R009][R009] |
| <code>The terminal is currently busy.</code> | <code>终端当前正忙。</code> | <code>terminalCurrentlyBusyMessage</code> | [GWT R009][R009] |
| <code>Terminal jobs will be terminated. Are you sure?</code> | <code>终端任务将被终止。确定要继续吗？</code> | <code>terminalJobTerminatedQuestion</code> | [GWT R009][R009] |
| <code>Terminate R</code> | <code>终止 R</code> | <code>terminateRCaption</code> | [GWT R009][R009] |
| <code>Are you sure you want to terminate R?</code> | <code>确定要终止 R 吗？</code> | <code>terminateRMessage</code> | [GWT R009][R009] |
| <code>Terminating R...</code> | <code>结束 R...</code> | <code>terminatingRText</code> | [GWT R009][R009] |
| <code>Terminating R will cause your R session to immediately abort. Active computations will be interrupted and unsaved source file changes and workspace objects will be discarded.</code> | <code>终止 R 将立即中止当前 R 会话。正在进行的计算会被中断，未保存的源文件更改和工作区对象将被丢弃。</code> | <code>terminationConsequenceMessage</code> | [GWT R009][R009] |
| <code>R is not responding to your request to interrupt processing so to stop the current operation you may need to terminate R entirely.\n\n{0}\n\n Do you want to terminate R now?</code> | <code>R 未响应中断处理的请求。要停止当前操作，可能需要彻底终止 R。\n\n{0}\n\n是否立即终止 R？</code> | <code>terminationDialog</code> | [GWT R009][R009] |
| <code>About {0}</code> | <code>关于 {0}</code> | <code>title</code> | [GWT R009][R009] |
| <code>Project: (None)</code> | <code>项目：（无）</code> | <code>toolBarButtonText</code> | [GWT R009][R009] |
| <code>Main toolbar hidden</code> | <code>主工具栏隐藏</code> | <code>toolbarHiddenText</code> | [GWT R009][R009] |
| <code>Toolbar visibility change</code> | <code>工具栏可见性变化</code> | <code>toolBarVisibilityAnnouncement</code> | [GWT R009][R009] |
| <code>Main toolbar visible</code> | <code>主工具栏可见</code> | <code>toolbarVisibleText</code> | [GWT R009][R009] |
| <code>to </code> | <code>改为</code> | <code>toText</code> | [GWT R009][R009] |
| <code>Try again now</code> | <code>立即重试</code> | <code>tryAgainButton</code> | [GWT R009][R009] |
| <code>Unable to connect to service</code> | <code>无法连接到服务</code> | <code>unableToConnectMessage</code> | [GWT R009][R009] |
| <code>Unable to find an active license. Please select a license file or restart RStudio to try again.</code> | <code>无法找到活动许可证。 请选择许可文件或重新启动 RStudio 再次尝试。</code> | <code>unableToFindActiveLicenseMessage</code> | [GWT R009][R009] |
| <code>Unknown mode </code> | <code>未知模式</code> | <code>unknownModeText</code> | [GWT R009][R009] |
| <code>Unregistered live announcement: </code> | <code>未注册的实时播报：</code> | <code>unregisteredLiveAnnouncementMessage</code> | [GWT R009][R009] |
| <code>Update Available</code> | <code>更新可用</code> | <code>updateAvailableCaption</code> | [GWT R009][R009] |
| <code>Automatic update notifications were disabled for {0}.</code> | <code>已禁用自动更新通知 {0}.</code> | <code>updateDisabledForVersionText</code> | [GWT R009][R009] |
| <code>Update RStudio</code> | <code>更新 RStudio</code> | <code>updateRStudioCaption</code> | [GWT R009][R009] |
| <code>Use Keyboard Shortcut</code> | <code>使用键盘快捷键</code> | <code>useKeyboardShortcutCaption</code> | [GWT R009][R009] |
| <code>use keyboard shortcuts for:</code> | <code>使用键盘快捷键 :</code> | <code>useKeyboardShortcutsLabel</code> | [GWT R009][R009] |
| <code>User-specified...</code> | <code>用户指定...</code> | <code>userSpecifiedText</code> | [GWT R009][R009] |
| <code>(Use System Default)</code> | <code>(使用系统默认)</code> | <code>useSystemDefaultText</code> | [GWT R009][R009] |
| <code>You''re using the newest version of RStudio.</code> | <code>您正在使用最新版本的 RStudio。</code> | <code>usingNewestVersionMessage</code> | [GWT R009][R009] |
| <code>Build </code> | <code>构建</code> | <code>versionBuildLabel</code> | [GWT R009][R009] |
| <code>Version control</code> | <code>版本控制</code> | <code>versionControlTitle</code> | [GWT R009][R009] |
| <code>Version Copied</code> | <code>版本已复制</code> | <code>versionCopiedText</code> | [GWT R009][R009] |
| <code>Version information copied to clipboard.</code> | <code>复制到剪贴板的版本信息。</code> | <code>versionInformationCopiedText</code> | [GWT R009][R009] |
| <code>Please visit https://posit.co/download/rstudio-desktop/ to check if a new version is available.</code> | <code>请访问 https://posit.co/download/rstudio-desktop/ 以检查是否有新版本。</code> | <code>visitWebsiteForNewVersionText</code> | [GWT R009][R009] |
| <code>Warning bars</code> | <code>警告栏</code> | <code>warningBarsAnnouncement</code> | [GWT R009][R009] |
| <code>Warning bar</code> | <code>警告栏</code> | <code>warningBarText</code> | [GWT R009][R009] |
| <code>Posit Workbench Login Required</code> | <code>Posit Workbench 需要登录</code> | <code>workbenchLoginRequired</code> | [GWT R009][R009] |
| <code>Login expired or signed out from another window.\nSelect ''Login'' for a new login tab. Return here to resume session.</code> | <code>登录已过期，或已从另一个窗口退出。\n选择“登录”以打开新的登录标签页，然后返回此处恢复会话。</code> | <code>workbenchLoginRequiredMessage</code> | [GWT R009][R009] |
| <code>The workspace was not restored</code> | <code>未恢复工作区</code> | <code>workspaceNotRestoredMessage</code> | [GWT R009][R009] |
| <code>Workspace Panes</code> | <code>工作区窗格</code> | <code>workspacePanesTitle</code> | [GWT R009][R009] |
| <code>PRE-RELEASE BUILD</code> | <code>预发布版本</code> | <code>preReleaseBuildText</code> | [GWT R010][R010] / Source patch |
| <code>RStudio Pro License Status</code> | <code>RStudio Pro 许可证状态</code> | <code>proLicenseStatusText</code> | [GWT R010][R010] / Source patch |
| <code>RStudio Logo</code> | <code>RStudio 标志</code> | <code>rStudioLogo</code> | [GWT R010][R010] / Source patch |
| <code>View Open Source Components</code> | <code>查看开源组件</code> | <code>viewOpenSourceComponents</code> | [GWT R011][R011] |
| <code>Return to RStudio Workbench Home</code> | <code>返回 RStudio Workbench 主页</code> | <code>returnToWorkbenchHome</code> | [GWT R012][R012] |
| <code>RStudio Server Home</code> | <code>RStudio Server 主页</code> | <code>serverHomeText</code> | [GWT R012][R012] |
| <code>Waiting for session to start...</code> | <code>正在等待会话启动...</code> | <code>waitingSessionToStart</code> | [GWT R012][R012] |
| <code>You may continue waiting here or monitor from</code> | <code>您可以在此处继续等待，或从以下位置监控</code> | <code>waitingText</code> | [GWT R012][R012] |
| <code>Reload</code> | <code>重新加载</code> | <code>reloadText</code> | [GWT R013][R013] |
| <code>Safe Mode</code> | <code>安全模式</code> | <code>safeModeText</code> | [GWT R013][R013] |
| <code>R is taking longer to start than usual.</code> | <code>R 的启动时间比平时更长。</code> | <code>takingLongerToStart</code> | [GWT R013][R013] |
| <code>Terminate R</code> | <code>终止 R</code> | <code>terminateRText</code> | [GWT R013][R013] |
| <code>Dismiss Warning Bar</code> | <code>关闭警告栏</code> | <code>dismissWarningText</code> | [GWT R014][R014] |
| <code>Install keyring package to enable saving secrets</code> | <code>安装 keyring 程序包以保存密钥</code> | <code>installKeyring</code> | [GWT R016][R016] |
| <code>Remember with keyring</code> | <code>使用 keyring 记住此密钥</code> | <code>rememberKeyring</code> | [GWT R016][R016] |
| <code>Publishing Accounts</code> | <code>发布账户</code> | <code>accountListLabel</code> | [GWT R015][R015] |
| <code>Help on spelling dictionaries</code> | <code>拼写词典帮助</code> | <code>addHelpButtonLabel</code> | [GWT R015][R015] |
| <code>Update Dictionaries...</code> | <code>更新词典...</code> | <code>allLanguagesInstalledOption</code> | [GWT R015][R015] |
| <code>This document has already been published on RPubs. You can choose to either update the existing RPubs document, or create a new one.</code> | <code>此文档已发布到 RPubs。您可以更新现有的 RPubs 文档，也可以创建新文档。</code> | <code>alreadyPublishedRPubs</code> | [GWT R015][R015] |
| <code>and </code> | <code>和</code> | <code>andText</code> | [GWT R015][R015] |
| <code>at</code> | <code>位于</code> | <code>atText</code> | [GWT R015][R015] |
| <code>Could not determine available packages</code> | <code>无法确定可用的程序包</code> | <code>availablePackageErrorMessage</code> | [GWT R015][R015] |
| <code>Add...</code> | <code>添加...</code> | <code>buttonAddLabel</code> | [GWT R015][R015] |
| <code>Remove...</code> | <code>移除...</code> | <code>buttonRemoveLabel</code> | [GWT R015][R015] |
| <code>(none)</code> | <code>(无)</code> | <code>caBundlePath</code> | [GWT R015][R015] |
| <code>Cancel</code> | <code>取消</code> | <code>cancelTitle</code> | [GWT R015][R015] |
| <code>Cannot automatically update roxygen blocks that are not self-contained.</code> | <code>无法自动更新不能自成一体的 roxygen 块。</code> | <code>cannotUpdateRoxygenMessage</code> | [GWT R015][R015] |
| <code>Information about Posit Connect</code> | <code>Posit Connect 相关信息</code> | <code>checkBoxWithHelpTitle</code> | [GWT R015][R015] |
| <code>Check</code> | <code>检查</code> | <code>checkPreviewButtonText</code> | [GWT R015][R015] |
| <code>Enable publishing documents, apps, and APIs</code> | <code>启用文档、应用和 API 发布</code> | <code>chkEnablePublishingLabel</code> | [GWT R015][R015] |
| <code>Enable publishing to Posit Connect</code> | <code>启用发布到 Posit Connect</code> | <code>chkEnableRSConnectLabel</code> | [GWT R015][R015] |
| <code>Choose</code> | <code>选择</code> | <code>chooseLabel</code> | [GWT R015][R015] |
| <code>Clear All Breakpoints</code> | <code>清除所有断点</code> | <code>clearAllBreakpointsCaption</code> | [GWT R015][R015] |
| <code>Are you sure you want to remove all the breakpoints in this project?</code> | <code>确定要移除此项目中的所有断点吗？</code> | <code>clearAllBreakpointsMessage</code> | [GWT R015][R015] |
| <code>Close</code> | <code>关闭</code> | <code>closeButtonLabel</code> | [GWT R015][R015] |
| <code>Confirm Change</code> | <code>确认更改</code> | <code>confirmChangeCaption</code> | [GWT R015][R015] |
| <code>Key Already Exists</code> | <code>密钥已经存在</code> | <code>confirmOverwriteKeyCaption</code> | [GWT R015][R015] |
| <code>An SSH key already exists at {0}. Do you want to overwrite the existing key?</code> | <code>{0} 已存在 SSH 密钥。是否覆盖现有密钥？</code> | <code>confirmOverwriteKeyMessage</code> | [GWT R015][R015] |
| <code>requires an updated version of the {0} package.\n\nDo you want to install this package now?</code> | <code>需要更新 {0} 程序包。\n\n是否立即安装此程序包？</code> | <code>confirmPackageInstallation</code> | [GWT R015][R015] |
| <code>Connect Account</code> | <code>连接账户</code> | <code>connectAccountCaption</code> | [GWT R015][R015] |
| <code>Connect Account</code> | <code>连接账户</code> | <code>connectAccountOkCaption</code> | [GWT R015][R015] |
| <code>Connect...</code> | <code>连接...</code> | <code>connectButtonLabel</code> | [GWT R015][R015] |
| <code>\n\n[Detected output overflow; buffering the next {0} lines of output]\n\n</code> | <code>\n\n[检测到输出溢出；正在缓冲接下来的 {0} 行输出]\n\n</code> | <code>consoleBufferedMessage</code> | [GWT R015][R015] / Source patch |
| <code>Too much console output to announce.</code> | <code>控制台输出过多，无法朗读。</code> | <code>consoleOutputOverLimitMessage</code> | [GWT R015][R015] |
| <code>Error: {0}\n</code> | <code>错误 : {0}\n</code> | <code>consoleWriteError</code> | [GWT R015][R015] |
| <code>Converting Theme</code> | <code>转换主题</code> | <code>convertingThemeProgressCaption</code> | [GWT R015][R015] |
| <code>The CRAN mirror could not be changed.</code> | <code>无法更改 CRAN 镜像。</code> | <code>cranMirrorCannotChange</code> | [GWT R015][R015] |
| <code>Create SSH Key</code> | <code>创建 SSH 密钥</code> | <code>createKeyDialogCaption</code> | [GWT R015][R015] |
| <code>Create New</code> | <code>创建新</code> | <code>createNewButtonTitle</code> | [GWT R015][R015] |
| <code>Create SSH Key...</code> | <code>创建 SSH 密钥...</code> | <code>createRSAKeyButtonLabel</code> | [GWT R015][R015] |
| <code>{0} [Deprecated]</code> | <code>{0} [已弃用]</code> | <code>deprecatedServiceLabel</code> | [GWT R015][R015] |
| <code>Directory:</code> | <code>目录 :</code> | <code>directoryLabel</code> | [GWT R015][R015] |
| <code>Disconnect</code> | <code>断开连接</code> | <code>disconnectButtonLabel</code> | [GWT R015][R015] |
| <code>Error Disconnecting Account</code> | <code>断开账户出错</code> | <code>disconnectingErrorMessage</code> | [GWT R015][R015] |
| <code>Download</code> | <code>下载</code> | <code>downloadButtonCaption</code> | [GWT R015][R015] |
| <code>You must enter a value.</code> | <code>您必须输入一个值。</code> | <code>enterValueMessage</code> | [GWT R015][R015] |
| <code>Error</code> | <code>错误</code> | <code>errorCaption</code> | [GWT R015][R015] |
| <code>Error Setting CRAN Mirror</code> | <code>设置 CRAN 镜像出错</code> | <code>errorSettingCranMirror</code> | [GWT R015][R015] |
| <code>Explore object</code> | <code>探索对象</code> | <code>exploreObjectDesc</code> | [GWT R015][R015] |
| <code>Add Custom Dictionary (*.dic)</code> | <code>添加自定义词典 (*.dic)</code> | <code>fileDialogsCaption</code> | [GWT R015][R015] |
| <code>Dictionaries (*.dic)</code> | <code>词典(*.dic)</code> | <code>fileDialogsFilter</code> | [GWT R015][R015] |
| <code>File Download Error</code> | <code>文件下载错误</code> | <code>fileDownloadErrorCaption</code> | [GWT R015][R015] |
| <code>Unable to show file because file downloads are restricted on this server.\n</code> | <code>无法显示文件，因为此服务器限制文件下载。\n</code> | <code>fileDownloadErrorMessage</code> | [GWT R015][R015] |
| <code>Folder</code> | <code>文件夹</code> | <code>folderDesc</code> | [GWT R015][R015] |
| <code>Generic Content</code> | <code>一般内容</code> | <code>genericContentLabel</code> | [GWT R015][R015] |
| <code>Connecting a publishing account</code> | <code>正在连接发布账户</code> | <code>getAccountCountLabel</code> | [GWT R015][R015] |
| <code>Syncing...</code> | <code>同步中...</code> | <code>getSyncProgressMessage</code> | [GWT R015][R015] |
| <code>Getting ignored files for path...</code> | <code>正在获取路径被忽略的文件...</code> | <code>gettingIgnoredFilesProgressMessage</code> | [GWT R015][R015] |
| <code>Disable</code> | <code>禁用</code> | <code>globalDisplayDisable</code> | [GWT R015][R015] |
| <code>Enable</code> | <code>启用</code> | <code>globalDisplayEnable</code> | [GWT R015][R015] |
| <code>Version Control</code> | <code>版本控制</code> | <code>globalDisplayVC</code> | [GWT R015][R015] |
| <code>You must restart RStudio for this change to take effect.</code> | <code>您必须重新启动 RStudio 使这一变化生效。</code> | <code>globalDisplayVCMessage</code> | [GWT R015][R015] |
| <code>Troubleshooting Deployments</code> | <code>排查部署问题</code> | <code>helpLinkTroubleshooting</code> | [GWT R015][R015] |
| <code>Hide Traceback</code> | <code>隐藏追踪</code> | <code>hideTracebackText</code> | [GWT R015][R015] |
| <code>Ignore:</code> | <code>忽略 :</code> | <code>ignoreCaption</code> | [GWT R015][R015] |
| <code>Ignored files</code> | <code>忽略的文件</code> | <code>ignoredFilesLabel</code> | [GWT R015][R015] |
| <code>Image file</code> | <code>图像文件</code> | <code>imageFileDesc</code> | [GWT R015][R015] |
| <code>IMPORTANT: All documents published to RPubs are publicly visible.</code> | <code>重要：发布到 RPubs 的所有文档均公开可见。</code> | <code>importantMessage</code> | [GWT R015][R015] |
| <code>(Default)</code> | <code>(默认)</code> | <code>includeDefaultOption</code> | [GWT R015][R015] |
| <code>Insert Roxygen Skeleton</code> | <code>插入 Roxygen 框架</code> | <code>insertRoxygenSkeletonMessage</code> | [GWT R015][R015] |
| <code>Install More Languages...</code> | <code>安装更多语言...</code> | <code>installIndexOption</code> | [GWT R015][R015] |
| <code>Would you like to install keyring?</code> | <code>是否安装 keyring？</code> | <code>installKeyringMessage</code> | [GWT R015][R015] |
| <code>Install</code> | <code>安装</code> | <code>installLabel</code> | [GWT R015][R015] |
| <code>Checking installed packages</code> | <code>检查已安装的程序包</code> | <code>installPkgsCaption</code> | [GWT R015][R015] |
| <code>Install Missing Packages</code> | <code>安装缺失的程序包</code> | <code>installPkgsMessage</code> | [GWT R015][R015] |
| <code>Install Required Packages</code> | <code>安装必需的程序包</code> | <code>installRequiredCaption</code> | [GWT R015][R015] |
| <code>Install Shiny Package</code> | <code>安装 Shiny 程序包</code> | <code>installShinyCaption</code> | [GWT R015][R015] |
| <code>{0} requires installation of an updated version of the shiny package.\n\nDo you want to install shiny now?</code> | <code>{0} 需要安装新版 shiny 程序包。\n\n是否立即安装 shiny？</code> | <code>installShinyUserAction</code> | [GWT R015][R015] |
| <code>Issues</code> | <code>问题</code> | <code>issuesRightLabel</code> | [GWT R015][R015] |
| <code>Keyring</code> | <code>密钥环</code> | <code>keyringCaption</code> | [GWT R015][R015] |
| <code>Keyring is an R package that provides access to the operating systems credential store to allow you to remember, securely, passwords and secrets.</code> | <code>Keyring 是一个 R 程序包，可访问操作系统凭据存储区，以安全保存密码和机密信息。</code> | <code>keyringDesc</code> | [GWT R015][R015] |
| <code>Custom dictionaries:</code> | <code>自定义词典:</code> | <code>labelWithHelpText</code> | [GWT R015][R015] |
| <code>Help on custom spelling dictionaries</code> | <code>自定义拼写词典帮助</code> | <code>labelWithHelpTitle</code> | [GWT R015][R015] |
| <code>Help on customizing LaTeX options</code> | <code>自定义 LaTeX 选项帮助</code> | <code>latexHelpLinkLabel</code> | [GWT R015][R015] |
| <code>Line </code> | <code>行 </code> | <code>lineText</code> | [GWT R015][R015] |
| <code>Loading file contents</code> | <code>正在加载文件内容</code> | <code>loadingFileContentsProgressCaption</code> | [GWT R015][R015] |
| <code>Account records appear to exist, but cannot be viewed because a </code> | <code>似乎存在账户记录，但无法查看，因为</code> | <code>missingPkgPanelMessage</code> | [GWT R015][R015] |
| <code>required package is not installed.</code> | <code>未安装所需的程序包。</code> | <code>missingPkgRequiredMessage</code> | [GWT R015][R015] |
| <code>Error: Multiple Directories</code> | <code>错误：多个目录</code> | <code>multipleDirectoriesCaption</code> | [GWT R015][R015] |
| <code>Connect Publishing Account</code> | <code>连接发布账户</code> | <code>newRSConnectAccountPageCaption</code> | [GWT R015][R015] |
| <code>Pick an account</code> | <code>选择账户</code> | <code>newRSConnectAccountPageSubTitle</code> | [GWT R015][R015] |
| <code>Connect Publishing Account</code> | <code>连接发布账户</code> | <code>newRSConnectAccountPageTitle</code> | [GWT R015][R015] |
| <code>Connect ShinyApps.io Account</code> | <code>连接 ShinyApps.io 账户</code> | <code>newRSConnectCloudPageCaption</code> | [GWT R015][R015] |
| <code>and interactive documents to the Internet.</code> | <code>和交互式文档发布到互联网。</code> | <code>newRSConnectCloudPageSub</code> | [GWT R015][R015] |
| <code>A cloud service run by RStudio. Publish Shiny applications </code> | <code>由 RStudio 运营的云服务，可将 Shiny 应用</code> | <code>newRSConnectCloudPageSubTitle</code> | [GWT R015][R015] |
| <code>No Files Selected</code> | <code>未选择文件</code> | <code>noFilesSelectedCaption</code> | [GWT R015][R015] |
| <code>Please select one or more files to export.</code> | <code>请选择一个或多个要导出的文件。</code> | <code>noFilesSelectedMessage</code> | [GWT R015][R015] |
| <code>(None)</code> | <code>(无)</code> | <code>noneLabel</code> | [GWT R015][R015] |
| <code>Object Explorer</code> | <code>对象浏览器</code> | <code>objectExplorerLabel</code> | [GWT R015][R015] |
| <code>OK</code> | <code>确定</code> | <code>okTitle</code> | [GWT R015][R015] |
| <code>Cancel</code> | <code>取消</code> | <code>onConfirmDisconnectNoLabel</code> | [GWT R015][R015] |
| <code>Disconnect Account</code> | <code>断开账户</code> | <code>onConfirmDisconnectYesLabel</code> | [GWT R015][R015] |
| <code>Error Downloading Dictionaries</code> | <code>下载词典时出错</code> | <code>onErrorDownloadingCaption</code> | [GWT R015][R015] |
| <code>Dependency installation failed</code> | <code>依赖项安装失败</code> | <code>onErrorMessage</code> | [GWT R015][R015] |
| <code>Adding dictionary...</code> | <code>正在添加词典...</code> | <code>onProgressAddingLabel</code> | [GWT R015][R015] |
| <code>Creating SSH Key...</code> | <code>正在创建 SSH 密钥...</code> | <code>onProgressLabel</code> | [GWT R015][R015] |
| <code>Error attempting to read key ''{0}'' ({1})''</code> | <code>尝试读取密钥“{0}”时出错（{1}）</code> | <code>onSSHErrorMessage</code> | [GWT R015][R015] |
| <code>Open</code> | <code>打开</code> | <code>openLabel</code> | [GWT R015][R015] |
| <code>Output</code> | <code>输出</code> | <code>outputLeftLabel</code> | [GWT R015][R015] |
| <code>Required package versions could not be found:\n\n{0}\nCheck that getOption("repos") refers to a CRAN repository that contains the needed package versions.</code> | <code>找不到所需的程序包版本：\n\n{0}\n请检查 getOption("repos") 是否指向包含所需程序包版本的 CRAN 仓库。</code> | <code>packageNotFoundMessage</code> | [GWT R015][R015] |
| <code>Packages Not Found</code> | <code>未找到程序包</code> | <code>packageNotFoundUserAction</code> | [GWT R015][R015] |
| <code>The {0} package is required for {1} weaving, however it is not currently installed. You should ensure that {0} is installed prior to compiling a PDF.\n\nAre you sure you want to change this option?</code> | <code>{1} 编织需要 {0} 程序包，但目前尚未安装。在编译 PDF 前应确保已安装 {0}。\n\n确定要更改此选项吗？</code> | <code>packageRequiredMessage</code> | [GWT R015][R015] |
| <code>Parent folder</code> | <code>父文件夹</code> | <code>parentFolderDesc</code> | [GWT R015][R015] |
| <code>Confirm:</code> | <code>确认：</code> | <code>passphraseConfirmLabel</code> | [GWT R015][R015] |
| <code>Passphrase (optional):</code> | <code>密码短语（可选）：</code> | <code>passphraseLabel</code> | [GWT R015][R015] |
| <code>Password</code> | <code>密码</code> | <code>passwordTitle</code> | [GWT R015][R015] |
| <code>The SSH key will be created at:</code> | <code>SSH 密钥将创建于：</code> | <code>pathCaption</code> | [GWT R015][R015] |
| <code>SSH key management</code> | <code>SSH 密钥管理</code> | <code>pathHelpCaption</code> | [GWT R015][R015] |
| <code>Personal access token</code> | <code>个人访问令牌</code> | <code>patPrompt</code> | [GWT R015][R015] |
| <code>Personal Access Token</code> | <code>个人访问令牌</code> | <code>patTitle</code> | [GWT R015][R015] |
| <code>[From Click]</code> | <code>[从点击]</code> | <code>pdfFromClickText</code> | [GWT R015][R015] |
| <code>; Page </code> | <code>；页码 </code> | <code>pdfPageText</code> | [GWT R015][R015] |
| <code>Preparing Tests</code> | <code>准备测试</code> | <code>preparingTestsProgressCaption</code> | [GWT R015][R015] |
| <code>Press {0} to copy the key to the clipboard.</code> | <code>按 {0} 将密钥复制到剪贴板。</code> | <code>pressLabel</code> | [GWT R015][R015] |
| <code>Preview</code> | <code>预览</code> | <code>previewButtonText</code> | [GWT R015][R015] |
| <code>Profiler</code> | <code>性能分析器</code> | <code>profilerDesc</code> | [GWT R015][R015] |
| <code>Downloading dictionaries...</code> | <code>正在下载词典...</code> | <code>progressDownloadingLabel</code> | [GWT R015][R015] |
| <code>Downloading additional languages...</code> | <code>正在下载额外的语言...</code> | <code>progressDownloadingLanguagesLabel</code> | [GWT R015][R015] |
| <code>Removing dictionary...</code> | <code>正在移除词典...</code> | <code>progressRemoveIndicator</code> | [GWT R015][R015] |
| <code>Public Folder</code> | <code>公开文件夹</code> | <code>publicFolderDesc</code> | [GWT R015][R015] |
| <code>Publish</code> | <code>发布</code> | <code>publishButtonTitle</code> | [GWT R015][R015] |
| <code>Check SSL certificates when publishing</code> | <code>发布时检查 SSL 证书</code> | <code>publishCheckCertificatesLabel</code> | [GWT R015][R015] |
| <code>Publishing</code> | <code>发布</code> | <code>publishingPaneHeader</code> | [GWT R015][R015] |
| <code>You should only publish documents that you wish to share publicly.</code> | <code>请仅发布您希望公开共享的文档。</code> | <code>publishMessage</code> | [GWT R015][R015] |
| <code>Publish to RPubs</code> | <code>发布到 RPubs</code> | <code>publishToRPubs</code> | [GWT R015][R015] |
| <code>R Code Browser</code> | <code>R 代码浏览器</code> | <code>rCodeBrowserLabel</code> | [GWT R015][R015] |
| <code>R Data Frame</code> | <code>R 数据框</code> | <code>rDataFrameLabel</code> | [GWT R015][R015] |
| <code>Rd File</code> | <code>Rd 文件</code> | <code>rdFile</code> | [GWT R015][R015] |
| <code>Reading public key...</code> | <code>正在读取公钥...</code> | <code>readingPublicKeyProgressCaption</code> | [GWT R015][R015] |
| <code>Reconnect...</code> | <code>重新连接...</code> | <code>reconnectButtonLabel</code> | [GWT R015][R015] |
| <code>Confirm Remove Account</code> | <code>确认删除账户</code> | <code>removeAccountGlobalDisplay</code> | [GWT R015][R015] |
| <code>Confirm Remove</code> | <code>确认删除</code> | <code>removeDictionaryCaption</code> | [GWT R015][R015] |
| <code>Are you sure you want to remove the {0} custom dictionary?</code> | <code>确定要移除自定义词典 {0} 吗？</code> | <code>removeDictionaryMessage</code> | [GWT R015][R015] |
| <code>is required but {0} is available</code> | <code>是必需的，但当前可用版本为 {0}</code> | <code>requiredVersion</code> | [GWT R015][R015] |
| <code>Rerun with Debug</code> | <code>使用调试重新运行</code> | <code>rerunWithDebugText</code> | [GWT R015][R015] / Source patch |
| <code>R History</code> | <code>R 历史</code> | <code>rHistoryLabel</code> | [GWT R015][R015] |
| <code>R Presentation</code> | <code>R 演示文稿</code> | <code>rPresentationLabel</code> | [GWT R015][R015] |
| <code>R Profiler</code> | <code>R 性能分析器</code> | <code>rProfilerLabel</code> | [GWT R015][R015] |
| <code>RPubs is a free service from RStudio for sharing documents on the web. Click Publish to get started.</code> | <code>RPubs 是 RStudio 提供的免费服务，用于在 Web 上共享文档。单击“发布”开始。</code> | <code>rPubsServiceMessage</code> | [GWT R015][R015] |
| <code>R Script</code> | <code>R 脚本</code> | <code>rScriptLabel</code> | [GWT R015][R015] |
| <code>R source viewer</code> | <code>R 源查看器</code> | <code>rSourceViewerDesc</code> | [GWT R015][R015] |
| <code>Save As</code> | <code>另存为</code> | <code>saveAsText</code> | [GWT R015][R015] |
| <code>Save File - {0}</code> | <code>保存文件 - {0}</code> | <code>saveFileCaption</code> | [GWT R015][R015] |
| <code>Save</code> | <code>保存</code> | <code>saveLabel</code> | [GWT R015][R015] |
| <code>Saving file...</code> | <code>正在保存文件...</code> | <code>savingFileProgressCaption</code> | [GWT R015][R015] |
| <code>The selected files are not all within the same directory (you can only ignore multiple files in one operation if they are located within the same directory).</code> | <code>所选文件并非都位于同一目录（仅当多个文件位于同一目录时，才能一次性忽略它们）。</code> | <code>selectedFilesNotInSameDirectoryMessage</code> | [GWT R015][R015] |
| <code>Posit Connect is a server product from Posit </code> | <code>Posit Connect 是 Posit 提供的服务器产品，</code> | <code>serviceDescription</code> | [GWT R015][R015] |
| <code>for secure sharing of applications, reports, plots, and APIs.</code> | <code>用于安全共享应用、报告、图形和 API。</code> | <code>serviceMessageDescription</code> | [GWT R015][R015] |
| <code>Create</code> | <code>创建</code> | <code>setOkButtonCaption</code> | [GWT R015][R015] |
| <code>Setting ignored files for path...</code> | <code>为路径设置被忽略的文件...</code> | <code>settingIgnoredFilesProgressMessage</code> | [GWT R015][R015] |
| <code>Settings</code> | <code>设置</code> | <code>settingsHeaderLabel</code> | [GWT R015][R015] |
| <code>Using shinytest2</code> | <code>使用 shinytest2</code> | <code>shinytest2Message</code> | [GWT R015][R015] |
| <code>Error Disconnecting Account</code> | <code>断开账户出错</code> | <code>showErrorCaption</code> | [GWT R015][R015] |
| <code>The {0} will be downloaded to your computer. Please specify a name for the downloaded file:</code> | <code>{0} 将下载到您的计算机。请指定下载文件的名称：</code> | <code>showFileExportLabel</code> | [GWT R015][R015] |
| <code>Public Key</code> | <code>公钥</code> | <code>showPublicKeyDialogCaption</code> | [GWT R015][R015] |
| <code>Show diagnostic information when publishing</code> | <code>发布时显示诊断信息</code> | <code>showPublishDiagnosticsLabel</code> | [GWT R015][R015] |
| <code>Show Traceback</code> | <code>显示调用栈</code> | <code>showTracebackText</code> | [GWT R015][R015] |
| <code>Non-Matching Passphrases</code> | <code>非匹配密码句</code> | <code>showValidateErrorCaption</code> | [GWT R015][R015] |
| <code>The passphrase and passphrase confirmation do not match</code> | <code>密码句和密码句确认不匹配</code> | <code>showValidateErrorMessage</code> | [GWT R015][R015] |
| <code>Source Marker Item Table</code> | <code>源代码标记项表</code> | <code>sourceMarkerItemTableList</code> | [GWT R015][R015] |
| <code>Specifying ignored files</code> | <code>指定被忽略的文件</code> | <code>specifyingIgnoredFilesHelpCaption</code> | [GWT R015][R015] |
| <code>Main dictionary language:</code> | <code>主词典语言:</code> | <code>spellingLanguageSelectWidgetLabel</code> | [GWT R015][R015] |
| <code>SSH key type:</code> | <code>SSH 密钥类型 :</code> | <code>sshKeyTypeLabel</code> | [GWT R015][R015] |
| <code>SSH key:</code> | <code>SSH 密钥:</code> | <code>sshRSAKeyFormLabel</code> | [GWT R015][R015] |
| <code>SSL Certificates</code> | <code>SSL 证书</code> | <code>sSLCertificatesHeaderLabel</code> | [GWT R015][R015] |
| <code>Stop</code> | <code>停止</code> | <code>stopTitle</code> | [GWT R015][R015] |
| <code>Terminal executable:</code> | <code>终端可执行文件 :</code> | <code>terminalPathLabel</code> | [GWT R015][R015] |
| <code>Testing Tools</code> | <code>测试工具</code> | <code>testingToolsContext</code> | [GWT R015][R015] |
| <code>Using testthat</code> | <code>使用 testthat</code> | <code>testthatMessage</code> | [GWT R015][R015] |
| <code>Text file</code> | <code>文本文件</code> | <code>textFileDesc</code> | [GWT R015][R015] |
| <code>Typeset LaTeX into PDF using:</code> | <code>将 LaTeX 排版为 PDF 时使用:</code> | <code>typesetLatexLabel</code> | [GWT R015][R015] |
| <code>Unable to continue (another publish is currently running)</code> | <code>无法继续（另一个发布任务正在运行）</code> | <code>unableToContinueMessage</code> | [GWT R015][R015] |
| <code>Unable to insert skeleton (the cursor is not currently inside an R function definition).</code> | <code>无法插入骨架( 光标目前不在 R 函数定义内 )。</code> | <code>unableToInsertSkeletonMessage</code> | [GWT R015][R015] |
| <code>is not available</code> | <code>无法获取</code> | <code>unsatisfiedVersions</code> | [GWT R015][R015] |
| <code>requires updated versions of the following packages: {0}.\n\nDo you want to install these packages now?</code> | <code>需要更新以下程序包：{0}。\n\n是否立即安装这些程序包？</code> | <code>updatedVersionMessage</code> | [GWT R015][R015] |
| <code>Update Existing</code> | <code>更新现有</code> | <code>updateExistingButtonTitle</code> | [GWT R015][R015] |
| <code>Upload Error Occurred</code> | <code>上传出错</code> | <code>uploadErrorTitle</code> | [GWT R015][R015] |
| <code>Uploading document to RPubs...</code> | <code>上传文档到 RPubs...</code> | <code>uploadingDocumentRPubsMessage</code> | [GWT R015][R015] |
| <code>Use custom CA bundle</code> | <code>使用自定义 CA 证书包</code> | <code>usePublishCaBundleLabel</code> | [GWT R015][R015] |
| <code>Username</code> | <code>用户名</code> | <code>usernameTitle</code> | [GWT R015][R015] |
| <code>Using Code Diagnostics</code> | <code>使用代码诊断</code> | <code>usingCodeDiagnosticsLink</code> | [GWT R015][R015] / Source patch |
| <code>Using Keyring</code> | <code>使用密钥环</code> | <code>usingKeyringCaption</code> | [GWT R015][R015] |
| <code>Using Version Control with RStudio</code> | <code>在 RStudio 中使用版本控制</code> | <code>vCSHelpLink</code> | [GWT R015][R015] |
| <code>View error or warning within the log file</code> | <code>在日志文件中查看错误或警告</code> | <code>viewErrorLogfile</code> | [GWT R015][R015] |
| <code>View File Tab</code> | <code>查看文件标签页</code> | <code>viewFileTabLabel</code> | [GWT R015][R015] |
| <code>View public key</code> | <code>查看公钥</code> | <code>viewPublicKeyCaption</code> | [GWT R015][R015] |
| <code>This is a warning!</code> | <code>这是警告！</code> | <code>warningMessage</code> | [GWT R015][R015] |
| <code>Help on weaving Rnw files</code> | <code>Rnw 文件编织帮助</code> | <code>weaveRnwHelpTitle</code> | [GWT R015][R015] |
| <code>Weave Rnw files using:</code> | <code>编织 Rnw 文件时使用:</code> | <code>weaveRnwLabel</code> | [GWT R015][R015] |
| <code>Preparing connection</code> | <code>正在准备连接</code> | <code>withConnectionPackage</code> | [GWT R015][R015] |
| <code>Database connectivity</code> | <code>数据库连接</code> | <code>withConnectionPackageContext</code> | [GWT R015][R015] |
| <code>Using the Databricks Connect integration</code> | <code>使用 Databricks Connect 集成</code> | <code>withDatabricksConnect</code> | [GWT R015][R015] |
| <code>Preparing import from CSV</code> | <code>准备从 CSV 导入</code> | <code>withDataImportCSVCaption</code> | [GWT R015][R015] |
| <code>Preparing import from JDBC</code> | <code>准备从 JDBC 导入</code> | <code>withDataImportJDBC</code> | [GWT R015][R015] |
| <code>Preparing import from JSON</code> | <code>准备从 JSON 导入</code> | <code>withDataImportJSON</code> | [GWT R015][R015] |
| <code>Preparing Import from Mongo DB</code> | <code>准备从 Mongo DB 导入</code> | <code>withDataImportMongoProgressCaption</code> | [GWT R015][R015] |
| <code>Preparing import from ODBC</code> | <code>准备从 ODBC 导入</code> | <code>withDataImportODBC</code> | [GWT R015][R015] |
| <code>Preparing import from SPSS, SAS and Stata</code> | <code>准备从 SPSS、 SAS 和 Stata 导入</code> | <code>withDataImportSAV</code> | [GWT R015][R015] |
| <code>Preparing import from Excel</code> | <code>准备从 Excel 导入</code> | <code>withDataImportXLS</code> | [GWT R015][R015] |
| <code>Preparing import from XML</code> | <code>准备从 XML 导入</code> | <code>withDataImportXML</code> | [GWT R015][R015] |
| <code>Preparing Keyring</code> | <code>正在准备密钥环</code> | <code>withKeyring</code> | [GWT R015][R015] |
| <code>Using keyring</code> | <code>使用密钥环</code> | <code>withKeyringUserAction</code> | [GWT R015][R015] |
| <code>Preparing </code> | <code>准备</code> | <code>withOdbc</code> | [GWT R015][R015] |
| <code>Using </code> | <code>使用</code> | <code>withOdbcUserAction</code> | [GWT R015][R015] |
| <code>Preparing profiler</code> | <code>正在准备性能分析器</code> | <code>withProfvis</code> | [GWT R015][R015] |
| <code>Using the AGG renderer</code> | <code>使用 AGG 渲染器</code> | <code>withRagg</code> | [GWT R015][R015] |
| <code>Viewing publish accounts</code> | <code>查看发布账户</code> | <code>withRSConnectLabel</code> | [GWT R015][R015] |
| <code>Checking installed packages</code> | <code>检查已安装的程序包</code> | <code>withShinyAddinsCaption</code> | [GWT R015][R015] |
| <code>Executing addins</code> | <code>执行插件</code> | <code>withShinyAddinsUserAction</code> | [GWT R015][R015] |
| <code>Reformatting code...</code> | <code>正在重新格式化代码...</code> | <code>withStylerCaption</code> | [GWT R015][R015] |
| <code>Reformatting code with styler</code> | <code>使用 styler 重新格式化代码</code> | <code>withStylerUserAction</code> | [GWT R015][R015] |
| <code>Converting Theme</code> | <code>转换主题</code> | <code>withThemesCaption</code> | [GWT R015][R015] |
| <code>Starting tutorial</code> | <code>开始教程</code> | <code>withTutorialDependencies</code> | [GWT R015][R015] |
| <code>Starting a tutorial</code> | <code>开始教程</code> | <code>withTutorialDependenciesUserAction</code> | [GWT R015][R015] |
| <code>Connect Account</code> | <code>连接账户</code> | <code>wizardNavigationPageCaption</code> | [GWT R015][R015] |
| <code>Choose Account Type</code> | <code>选择账户类型</code> | <code>wizardNavigationPageSubTitle</code> | [GWT R015][R015] |
| <code>Choose Account Type</code> | <code>选择账户类型</code> | <code>wizardNavigationPageTitle</code> | [GWT R015][R015] |
| <code>Off</code> | <code>关</code> | <code>checkboxLabelOff</code> | [GWT R024][R024] |
| <code>On</code> | <code>开</code> | <code>checkboxLabelOn</code> | [GWT R024][R024] |
| <code>Command Palette Cleared</code> | <code>命令面板已清除</code> | <code>cmdPaletteClearedCaption</code> | [GWT R024][R024] |
| <code>The Command Palette''s list of recently used items has been cleared.</code> | <code>已清除命令面板中的最近使用项目列表。</code> | <code>cmdPaletteClearedMessage</code> | [GWT R024][R024] |
| <code>commands found, press up and down to navigate</code> | <code>找到命令，按上下方向键导航</code> | <code>cmdsFoundReportStatusMsg</code> | [GWT R024][R024] |
| <code>Command Disabled</code> | <code>命令已禁用</code> | <code>commandDisabledCaption</code> | [GWT R024][R024] |
| <code>The command ''{0}'' cannot be used right now. It may be unavailable in this project, file, or view.</code> | <code>命令“{0}”现在无法使用。该命令可能不适用于当前项目、文件或视图。</code> | <code>commandDisabledMessage</code> | [GWT R024][R024] |
| <code>Command Execution Failed</code> | <code>命令执行失败</code> | <code>commandExecutionFailedCaption</code> | [GWT R024][R024] |
| <code>The command ''{0}'' could not be executed.\n\n {1}</code> | <code>无法执行命令“{0}”。\n\n {1}</code> | <code>commandExecutionFailedMessage</code> | [GWT R024][R024] |
| <code>Command Not Available</code> | <code>命令不可用</code> | <code>commandNotAvailableCaption</code> | [GWT R024][R024] |
| <code>The command ''{0}'' is not currently available.</code> | <code>命令“{0}”当前不可用。</code> | <code>commandNotAvailableMessage</code> | [GWT R024][R024] |
| <code>Matching commands and settings</code> | <code>匹配的命令和设置</code> | <code>matchCmdsAriaLabelProperty</code> | [GWT R024][R024] |
| <code>No results found.</code> | <code>未找到结果。</code> | <code>noResultsFoundText</code> | [GWT R024][R024] / Source patch |
| <code>Search commands and settings</code> | <code>搜索命令和设置</code> | <code>searchCmdsAriaLabelProperty</code> | [GWT R024][R024] |
| <code>Search for commands and settings</code> | <code>搜索命令和设置</code> | <code>searchForCmdsAriaLabelProperty</code> | [GWT R024][R024] |
| <code>Setting</code> | <code>设置</code> | <code>settingText</code> | [GWT R024][R024] |
| <code>Error: {0}</code> | <code>错误 : {0}</code> | <code>errorText</code> | [GWT R008][R008] |
| <code>Loading session...</code> | <code>正在加载会话...</code> | <code>loadingSessionsText</code> | [GWT R008][R008] |
| <code>Addins</code> | <code>插件</code> | <code>addinCaption</code> | [GWT R051][R051] |
| <code>Admin Notification</code> | <code>管理员通知</code> | <code>adminNotificationCaption</code> | [GWT R051][R051] |
| <code>Choose Working Directory</code> | <code>选择工作目录</code> | <code>chooseWorkingDirCaption</code> | [GWT R051][R051] |
| <code>Description</code> | <code>说明</code> | <code>descTextHeader</code> | [GWT R051][R051] |
| <code>Execute</code> | <code>执行</code> | <code>executeButtonLabel</code> | [GWT R051][R051] |
| <code>Filter addins:</code> | <code>筛选插件:</code> | <code>filterAddinsText</code> | [GWT R051][R051] |
| <code>Found {0} addins matching {1}</code> | <code>找到 {0} 个与“{1}”匹配的插件</code> | <code>foundAddinsMessage</code> | [GWT R051][R051] |
| <code>Keyboard Shortcuts...</code> | <code>键盘快捷键…</code> | <code>keyboardShortcutsTitle</code> | [GWT R051][R051] |
| <code>Loading addins...</code> | <code>正在加载插件…</code> | <code>loadingAddinsCaption</code> | [GWT R051][R051] |
| <code>Name</code> | <code>名称</code> | <code>nameTextHeader</code> | [GWT R051][R051] |
| <code>No addins available</code> | <code>无可用插件</code> | <code>noAddinsAvailableCaption</code> | [GWT R051][R051] |
| <code>No</code> | <code>否</code> | <code>noLabel</code> | [GWT R051][R051] |
| <code>Error attempting to read key ''{0}'' ({1})</code> | <code>尝试读取密钥“{0}”时出错（{1}）</code> | <code>onErrorReadKey</code> | [GWT R051][R051] |
| <code>You are {0} over your {1} file storage limit. Please remove files to continue working.</code> | <code>您的文件存储量已超出 {1} 的限额 {0}。请删除部分文件后再继续工作。</code> | <code>onQuotaMessage</code> | [GWT R051][R051] |
| <code>Package</code> | <code>程序包</code> | <code>packageTextHeader</code> | [GWT R051][R051] |
| <code>Error</code> | <code>错误</code> | <code>progressErrorCaption</code> | [GWT R051][R051] |
| <code>You are nearly over your {0} file storage limit.</code> | <code>您的文件存储量即将超过 {0} 的限制。</code> | <code>quotaStatusMessage</code> | [GWT R051][R051] |
| <code>Reading RSA public key...</code> | <code>正在读取 RSA 公钥...</code> | <code>rsaKeyProgressMessage</code> | [GWT R051][R051] |
| <code>RSA Public Key</code> | <code>RSA 公钥</code> | <code>rsaPublicKeyCaption</code> | [GWT R051][R051] |
| <code>Using RStudio Addins</code> | <code>使用 RStudio 插件</code> | <code>rstudioAddinsCaption</code> | [GWT R051][R051] |
| <code>Source File</code> | <code>源文件</code> | <code>sourceFileCaption</code> | [GWT R051][R051] |
| <code>This project contains files that may be automatically loaded and executed when the R session starts. These files were not loaded because this project has not yet been marked as trusted.</code> | <code>此项目包含可能在 R 会话启动时自动加载并执行的文件。由于此项目尚未标记为可信，这些文件未被加载。</code> | <code>trustDialogDescription</code> | [GWT R051][R051] |
| <code>No, I do not trust this project</code> | <code>否，不信任此项目</code> | <code>trustDialogDontTrustButton</code> | [GWT R051][R051] |
| <code>Startup files will not be loaded. The session will continue in restricted mode.</code> | <code>不会加载启动文件，会话将以受限模式继续运行。</code> | <code>trustDialogDontTrustExplanation</code> | [GWT R051][R051] |
| <code>Files detected:</code> | <code>检测到以下文件:</code> | <code>trustDialogFilesDetected</code> | [GWT R051][R051] |
| <code>Trust this project</code> | <code>信任此项目</code> | <code>trustDialogGrantTrustButton</code> | [GWT R051][R051] |
| <code>The session will restart and startup files will be loaded normally.</code> | <code>会话将重新启动，并正常加载启动文件。</code> | <code>trustDialogGrantTrustExplanation</code> | [GWT R051][R051] |
| <code>Do you trust this project?</code> | <code>是否信任此项目？</code> | <code>trustDialogHeader</code> | [GWT R051][R051] |
| <code>Keep restricted</code> | <code>保持限制</code> | <code>trustDialogKeepRestrictedButton</code> | [GWT R051][R051] |
| <code>Startup files will remain suppressed for this session.</code> | <code>本次会话仍不加载启动文件。</code> | <code>trustDialogKeepRestrictedExplanation</code> | [GWT R051][R051] |
| <code>Yes, I trust this project</code> | <code>是，信任此项目</code> | <code>trustDialogTrustButton</code> | [GWT R051][R051] |
| <code>Startup files (.Rprofile, .Renviron, .RData) will be loaded normally.</code> | <code>将正常加载启动文件（.Rprofile、.Renviron、.RData）。</code> | <code>trustDialogTrustExplanation</code> | [GWT R051][R051] |
| <code>This project was previously marked as untrusted. Startup files are not being loaded or executed.</code> | <code>此项目之前被标记为不可信，因此未加载或执行启动文件。</code> | <code>trustDialogUntrustedDescription</code> | [GWT R051][R051] |
| <code>This project is restricted</code> | <code>此项目受到限制</code> | <code>trustDialogUntrustedHeader</code> | [GWT R051][R051] |
| <code>Yes</code> | <code>是</code> | <code>yesLabel</code> | [GWT R051][R051] |
| <code>_Build</code> | <code>_构建</code> | <code>main$_BuildLabel</code> | [GWT R056][R056] |
| <code>_Terminal</code> | <code>_终端</code> | <code>main$_Code$_TerminalLabel</code> | [GWT R056][R056] |
| <code>Run Regi_on</code> | <code>_运行区域</code> | <code>main$_Code$Run_Regi_onLabel</code> | [GWT R056][R056] |
| <code>_Code</code> | <code>_代码</code> | <code>main$_CodeLabel</code> | [GWT R056][R056] |
| <code>_On Error</code> | <code>_出错时</code> | <code>main$_Debug$_On_ErrorLabel</code> | [GWT R056][R056] |
| <code>_Debug</code> | <code>_调试</code> | <code>main$_DebugLabel</code> | [GWT R056][R056] |
| <code>_Folding</code> | <code>_折叠</code> | <code>main$_Edit$_FoldingLabel</code> | [GWT R056][R056] |
| <code>_Edit</code> | <code>_编辑</code> | <code>main$_EditLabel</code> | [GWT R056][R056] |
| <code>_Import Dataset</code> | <code>_导入数据集</code> | <code>main$_File$_Import_DatasetLabel</code> | [GWT R056][R056] |
| <code>_Recent Files</code> | <code>_最近的文件</code> | <code>main$_File$_Recent_FilesLabel</code> | [GWT R056][R056] |
| <code>New _File</code> | <code>_新建文件</code> | <code>main$_File$New_FileLabel</code> | [GWT R056][R056] |
| <code>Recent Pro_jects</code> | <code>_最近使用的项目</code> | <code>main$_File$Recent_Pro_jectsLabel</code> | [GWT R056][R056] |
| <code>_File</code> | <code>_文件</code> | <code>main$_FileLabel</code> | [GWT R056][R056] |
| <code>_Focus</code> | <code>_焦点</code> | <code>main$_Help$_Accessibility$_FocusLabel</code> | [GWT R056][R056] |
| <code>S_peak</code> | <code>_朗读</code> | <code>main$_Help$_Accessibility$S_peakLabel</code> | [GWT R056][R056] |
| <code>_Accessibility</code> | <code>_辅助功能</code> | <code>main$_Help$_AccessibilityLabel</code> | [GWT R056][R056] |
| <code>_Cheat Sheets</code> | <code>_速查表</code> | <code>main$_Help$_Cheat_SheetsLabel</code> | [GWT R056][R056] |
| <code>Dia_gnostics</code> | <code>_诊断</code> | <code>main$_Help$Dia_gnosticsLabel</code> | [GWT R056][R056] |
| <code>_Help</code> | <code>_帮助</code> | <code>main$_HelpLabel</code> | [GWT R056][R056] |
| <code>_Plots</code> | <code>_图形</code> | <code>main$_PlotsLabel</code> | [GWT R056][R056] |
| <code>_Profile</code> | <code>_性能分析</code> | <code>main$_ProfileLabel</code> | [GWT R056][R056] |
| <code>Set _Working Directory</code> | <code>_设置工作目录</code> | <code>main$_Session$Set_Working_DirectoryLabel</code> | [GWT R056][R056] |
| <code>_Session</code> | <code>_会话</code> | <code>main$_SessionLabel</code> | [GWT R056][R056] |
| <code>_Addins</code> | <code>_插件</code> | <code>main$_Tools$_AddinsLabel</code> | [GWT R056][R056] |
| <code>_Memory</code> | <code>_内存</code> | <code>main$_Tools$_MemoryLabel</code> | [GWT R056][R056] |
| <code>_Terminal</code> | <code>_终端</code> | <code>main$_Tools$_TerminalLabel</code> | [GWT R056][R056] |
| <code>_Version Control</code> | <code>_版本控制</code> | <code>main$_Tools$_Version_ControlLabel</code> | [GWT R056][R056] |
| <code>_Workbench Jobs</code> | <code>_Workbench 任务</code> | <code>main$_Tools$_Workbench_JobsLabel</code> | [GWT R056][R056] |
| <code>Background _Jobs</code> | <code>_后台任务</code> | <code>main$_Tools$Background_JobsLabel</code> | [GWT R056][R056] |
| <code>_Tools</code> | <code>_工具</code> | <code>main$_ToolsLabel</code> | [GWT R056][R056] |
| <code>P_anes</code> | <code>_窗格</code> | <code>main$_View$P_anesLabel</code> | [GWT R056][R056] |
| <code>Show Other _Panes</code> | <code>_显示其他窗格</code> | <code>main$_View$Show_Other_PanesLabel</code> | [GWT R056][R056] |
| <code>Split _Editor</code> | <code>拆分编辑器(_E)</code> | <code>main$_View$Split_EditorLabel</code> | [GWT R056][R056] |
| <code>_View</code> | <code>_视图</code> | <code>main$_ViewLabel</code> | [GWT R056][R056] |
| <code>Cannot Add Column</code> | <code>无法添加列</code> | <code>cannotAddColumnText</code> | [GWT R063][R063] |
| <code>You can''t add more than {0} columns.</code> | <code>最多只能添加 {0} 列。</code> | <code>cannotAddMoreColumnsText</code> | [GWT R063][R063] |
| <code>Close</code> | <code>关闭</code> | <code>closeText</code> | [GWT R063][R063] |
| <code>Configure Panes...</code> | <code>配置窗格...</code> | <code>configurePanesButtonText</code> | [GWT R063][R063] |
| <code>Don''t Save</code> | <code>不保存</code> | <code>dontSaveButtonText</code> | [GWT R063][R063] |
| <code>The following {0} files have unsaved changes:</code> | <code>以下 {0} 个文件有未保存的更改：</code> | <code>filesUnsavedChangesText</code> | [GWT R063][R063] |
| <code>The following file has unsaved changes:</code> | <code>以下文件有未保存的更改：</code> | <code>fileUnsavedChangesText</code> | [GWT R063][R063] |
| <code>LaTeX typesetting</code> | <code>LaTeX 排版</code> | <code>latexTypesettingText</code> | [GWT R063][R063] |
| <code>The Sidebar has no tabs assigned to it.</code> | <code>侧边栏没有分配任何标签页。</code> | <code>noTabsAssignedText</code> | [GWT R063][R063] |
| <code>Project Option Unchanged</code> | <code>项目选项未更改</code> | <code>projectOptionUnchangedCaption</code> | [GWT R063][R063] |
| <code>You changed the global option for {0} to {1}, however the current project is still configured to use {2}.\n\nDo you want to edit the options for the current project as well?</code> | <code>您已将 {0} 的全局选项改为 {1}，但当前项目仍配置为使用 {2}。\n\n是否也要编辑当前项目的选项？</code> | <code>projectOptionUnchangedMessage</code> | [GWT R063][R063] |
| <code>Save Selected</code> | <code>保存选中内容</code> | <code>saveSelectedCaption</code> | [GWT R063][R063] |
| <code>Sidebar</code> | <code>侧边栏</code> | <code>sidebarTitleText</code> | [GWT R063][R063] / Source patch |
| <code>weaving Rnw files</code> | <code>编织 Rnw 文件</code> | <code>weavingRnwFilesText</code> | [GWT R063][R063] |
| <code>Workbench</code> | <code>工作区</code> | <code>workbenchAriaLabel</code> | [GWT R063][R063] / Source patch |

## 2. Source / 编辑器

本节 571 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Code Search Error</code> | <code>代码搜索错误</code> | <code>codeSearchError</code> | [GWT R054][R054] |
| <code>Filter by file or function name</code> | <code>按文件名或函数名筛选</code> | <code>codeSearchLabel</code> | [GWT R054][R054] |
| <code>Go to File/Function</code> | <code>转到文件/函数</code> | <code>fileFunctionLabel</code> | [GWT R054][R054] |
| <code>Go to file/function</code> | <code>转到文件/函数</code> | <code>textBoxWithCue</code> | [GWT R054][R054] |
| <code>Error Applying Snippets ({0})</code> | <code>应用代码片段时出错（{0}）</code> | <code>applyingSnippetsError</code> | [GWT R062][R062] |
| <code>Edit Snippets</code> | <code>编辑片段</code> | <code>editSnippetsText</code> | [GWT R062][R062] |
| <code>Save</code> | <code>保存</code> | <code>saveTitle</code> | [GWT R062][R062] |
| <code>Using Code Snippets</code> | <code>使用代码片段</code> | <code>usingCodeSnippetsText</code> | [GWT R062][R062] |
| <code>Cancelling...</code> | <code>正在取消...</code> | <code>cancellingProgressLabel</code> | [GWT R069][R069] |
| <code>Saving...</code> | <code>正在保存...</code> | <code>savingProgressLabel</code> | [GWT R069][R069] |
| <code>All Files</code> | <code>所有文件</code> | <code>allFiles</code> | [GWT R089][R089] |
| <code>Case sensitive</code> | <code>区分大小写</code> | <code>caseSensitiveText</code> | [GWT R089][R089] |
| <code>Common source files (R, C/C++, Markdown, Rnw, Rhtml, JS, YAML)</code> | <code>常见源文件（R、C/C++、Markdown、Rnw、Rhtml、JS、YAML）</code> | <code>commonSourceFiles</code> | [GWT R089][R089] |
| <code>Exclude files matching pattern</code> | <code>排除与模式匹配的文件</code> | <code>customExclusionsText</code> | [GWT R089][R089] |
| <code>Custom Filter</code> | <code>自定义筛选器</code> | <code>customFilter</code> | [GWT R089][R089] |
| <code>Example: *.R, *.r, *.csv. Separate multiple types with commas.</code> | <code>示例: *.R, *.r, *.csv. 以逗号分隔多个类型.</code> | <code>exampleText</code> | [GWT R089][R089] |
| <code>Exclude files</code> | <code>排除文件</code> | <code>excludeFiles</code> | [GWT R089][R089] |
| <code>Exclude files matched by .gitignore</code> | <code>排除与 .gitignore 匹配的文件</code> | <code>gitExclusionsText</code> | [GWT R089][R089] |
| <code>Package Sources (R/ , src/)</code> | <code>程序包源文件（R/、src/）</code> | <code>packageSources</code> | [GWT R089][R089] |
| <code>Package Tests (tests/)</code> | <code>程序包测试（tests/）</code> | <code>packageTests</code> | [GWT R089][R089] |
| <code>Regular expression</code> | <code>正则表达式</code> | <code>regularExpressionText</code> | [GWT R089][R089] |
| <code>R Scripts</code> | <code>R 脚本</code> | <code>rScripts</code> | [GWT R089][R089] |
| <code>Search these files:</code> | <code>搜索这些文件 :</code> | <code>searchFilesText</code> | [GWT R089][R089] |
| <code>Example: *.R, *.r, *.csv. Separate multiple types with commas.</code> | <code>示例: *.R, *.r, *.csv. 以逗号分隔多个类型.</code> | <code>spanPatternExample</code> | [GWT R089][R089] |
| <code>Whole word</code> | <code>全词</code> | <code>wholeWordText</code> | [GWT R089][R089] |
| <code>{0} on Save</code> | <code>保存时{0}</code> | <code>actionOnSave</code> | [GWT R095][R095] |
| <code>(No {0} defined)</code> | <code>（未定义{0}）</code> | <code>addFunctionsToMenuText</code> | [GWT R095][R095] |
| <code>Add to user dictionary</code> | <code>添加到用户字典</code> | <code>addToUserDictionary</code> | [GWT R095][R095] |
| <code>{0}: Automatic completions have been disabled.</code> | <code>{0}: 已禁用自动补全。</code> | <code>assistantCompletionsDisabled</code> | [GWT R095][R095] |
| <code>{0}: Automatic completions have been enabled.</code> | <code>{0}: 自动完成已启用。</code> | <code>assistantCompletionsEnabled</code> | [GWT R095][R095] |
| <code>{0}: No completions available.</code> | <code>{0}: 没有可用的代码补全。</code> | <code>assistantNoCompletions</code> | [GWT R095][R095] |
| <code>{0}: Completion response received.</code> | <code>{0}: 已收到代码补全响应。</code> | <code>assistantResponseReceived</code> | [GWT R095][R095] |
| <code>{0}: Waiting for completions...</code> | <code>{0}: 正在等待代码补全…</code> | <code>assistantWaiting</code> | [GWT R095][R095] |
| <code>Join Edit Session</code> | <code>加入编辑会话</code> | <code>beginQueuedCollabSessionCaption</code> | [GWT R095][R095] |
| <code>You have unsaved changes to {0}, but another user is editing the file. Do you want to discard your changes and join their edit session, or make your own copy of the file to work on?</code> | <code>您对 {0} 有未保存的更改，但另一位用户正在编辑该文件。您要放弃更改并加入对方的编辑会话，还是创建该文件的副本后自行编辑？</code> | <code>beginQueuedCollabSessionMessage</code> | [GWT R095][R095] |
| <code>Work on a Copy</code> | <code>复制工作</code> | <code>beginQueuedCollabSessionNoLabel</code> | [GWT R095][R095] |
| <code>Discard and Join</code> | <code>丢弃并加入</code> | <code>beginQueuedCollabSessionYesLabel</code> | [GWT R095][R095] |
| <code>Block Quote</code> | <code>块引号</code> | <code>blockQuote</code> | [GWT R095][R095] |
| <code>Bold</code> | <code>粗体</code> | <code>bold</code> | [GWT R095][R095] |
| <code>Bullet List</code> | <code>项目符号列表</code> | <code>bulletList</code> | [GWT R095][R095] |
| <code>Cancel</code> | <code>取消</code> | <code>cancel</code> | [GWT R095][R095] |
| <code>The Rcpp package (version 0.10.1 or higher) is not currently installed</code> | <code>当前未安装 Rcpp 程序包（需要 0.10.1 或更高版本）</code> | <code>checkBuildCppDependenciesRcppPackage</code> | [GWT R095][R095] |
| <code>The tools required to build C/C++ code for R are not currently installed</code> | <code>为 R 构建 C/C++ 代码所需的工具目前尚未安装</code> | <code>checkBuildCppDependenciesToolsNotInstalled</code> | [GWT R095][R095] |
| <code>No LaTeX installation detected. Please install LaTeX before compiling.</code> | <code>未检测到 LaTeX 安装。请先安装 LaTeX，再进行编译。</code> | <code>checkCompilersDesktopWarning</code> | [GWT R095][R095] |
| <code>{0} is configured to weave {1} however the {2} package is not installed.</code> | <code>{0} 已配置为编织 {1}，但尚未安装 {2} 程序包。</code> | <code>checkCompilersRnWPackageNotInstalled</code> | [GWT R095][R095] |
| <code>Unknown Rnw weave method ''{0}'' specified (valid types are {1})</code> | <code>指定了未知的 Rnw 编织方法“{0}”（有效类型为 {1}）</code> | <code>checkCompilersRnWWeaveTypeError</code> | [GWT R095][R095] |
| <code>This server does not have LaTeX installed. You may not be able to compile.</code> | <code>此服务器未安装 LaTeX，可能无法编译。</code> | <code>checkCompilersServerWarning</code> | [GWT R095][R095] |
| <code>Unknown LaTeX program type ''{0}'' specified (valid types are {1})</code> | <code>指定了未知的 LaTeX 程序类型“{0}”（有效类型为 {1}）</code> | <code>checkCompilersUnknownLatexType</code> | [GWT R095][R095] |
| <code>File Changed</code> | <code>文件已更改</code> | <code>checkForExternalEditFileChangedCaption</code> | [GWT R095][R095] |
| <code>The file {0} has changed on disk. Do you want to reload the file from disk and discard your unsaved changes?</code> | <code>磁盘上的文件 {0} 已更改。是否从磁盘重新加载该文件并丢弃未保存的更改？</code> | <code>checkForExternalEditFileChangedMessage</code> | [GWT R095][R095] |
| <code>File Deleted</code> | <code>文件已删除</code> | <code>checkForExternalEditFileDeletedCaption</code> | [GWT R095][R095] |
| <code>The file {0} has been deleted or moved. Do you want to close this file now?</code> | <code>文件 {0} 已被删除或移动。是否立即关闭此文件？</code> | <code>checkForExternalEditFileDeletedMessage</code> | [GWT R095][R095] |
| <code>Chunk Feedback</code> | <code>代码块反馈</code> | <code>chunkFeedback</code> | [GWT R095][R095] |
| <code>Chunk HTML Output Frame</code> | <code>代码块 HTML 输出框架</code> | <code>chunkHtmlOutputFrame</code> | [GWT R095][R095] |
| <code>Chunk HTML Page Output Frame</code> | <code>代码块 HTML 页面输出框架</code> | <code>chunkHtmlPageOutputFrame</code> | [GWT R095][R095] |
| <code>Chunk Output in Console</code> | <code>在控制台中显示代码块输出</code> | <code>chunkOutputInConsole</code> | [GWT R095][R095] |
| <code>Chunk Output Inline</code> | <code>行内显示代码块输出</code> | <code>chunkOutputInline</code> | [GWT R095][R095] |
| <code>chunks</code> | <code>块</code> | <code>chunks</code> | [GWT R095][R095] |
| <code>RStudio: Notebook Output</code> | <code>RStudio: 笔记本输出</code> | <code>chunkSatelliteWindowInitTitle</code> | [GWT R095][R095] |
| <code>File Remove Failed</code> | <code>文件删除失败</code> | <code>cleanAndCreateTemplateCaption</code> | [GWT R095][R095] |
| <code>Couldn''t remove {0}</code> | <code>无法删除 {0}</code> | <code>cleanAndCreateTemplateMessage</code> | [GWT R095][R095] |
| <code>Clear Output</code> | <code>清除输出</code> | <code>clearOutputTitle</code> | [GWT R095][R095] / Source patch |
| <code>Close Anyway</code> | <code>仍然关闭</code> | <code>closeAnyway</code> | [GWT R095][R095] |
| <code>Code Tools</code> | <code>代码工具</code> | <code>codeTools</code> | [GWT R095][R095] |
| <code>Compare Results</code> | <code>比较结果</code> | <code>compareResults</code> | [GWT R095][R095] |
| <code>Compile PDF</code> | <code>编译 PDF</code> | <code>compilePdf</code> | [GWT R095][R095] |
| <code>Compile Report ({0})</code> | <code>编译报告（{0}）</code> | <code>compileReport</code> | [GWT R095][R095] |
| <code>Compiling C/C++ code for R</code> | <code>为 R 编译 C/C++ 代码</code> | <code>compilingCode</code> | [GWT R095][R095] |
| <code>Compiling notebooks from R scripts</code> | <code>从 R 脚本编译笔记本</code> | <code>compilingNotebooks</code> | [GWT R095][R095] |
| <code>Overwrite {0}</code> | <code>覆盖 {0}</code> | <code>createDraftFromTemplateCaption</code> | [GWT R095][R095] |
| <code>{0} exists. Overwrite it?</code> | <code>{0} 已存在。 覆盖它?</code> | <code>createDraftFromTemplateMessage</code> | [GWT R095][R095] |
| <code>Couldn''t create a template from {0} at {1}.\n\n{2}</code> | <code>无法使用 {0} 在 {1} 创建模板。\n\n{2}</code> | <code>createDraftFromTemplateOnError</code> | [GWT R095][R095] |
| <code>Creating R Markdown Document...</code> | <code>正在创建 R Markdown 文档…</code> | <code>createDraftFromTemplateProgressMessage</code> | [GWT R095][R095] |
| <code>Creating R Markdown documents</code> | <code>创建 R Markdown 文档</code> | <code>creatingRMarkdown</code> | [GWT R095][R095] |
| <code>Current Working Directory</code> | <code>当前工作目录</code> | <code>currentWorkingDirectory</code> | [GWT R095][R095] |
| <code>Description List</code> | <code>说明列表</code> | <code>descriptionList</code> | [GWT R095][R095] |
| <code>Apply</code> | <code>应用</code> | <code>diffViewApplyLabel</code> | [GWT R095][R095] / Source patch |
| <code>Discard</code> | <code>放弃</code> | <code>diffViewDiscardLabel</code> | [GWT R095][R095] / Source patch |
| <code>Document</code> | <code>文档</code> | <code>document</code> | [GWT R095][R095] |
| <code>Document Directory</code> | <code>文档目录</code> | <code>documentDirectory</code> | [GWT R095][R095] |
| <code>Don''t Save</code> | <code>不保存</code> | <code>dontSave</code> | [GWT R095][R095] |
| <code>Double-Click to Zoom</code> | <code>双击放大</code> | <code>doubleClickToZoom</code> | [GWT R095][R095] |
| <code>Error Previewing SQL</code> | <code>预览出错 SQL</code> | <code>errorPreviewingSql</code> | [GWT R095][R095] |
| <code>Error Saving File</code> | <code>保存文件出错</code> | <code>errorSavingFile</code> | [GWT R095][R095] |
| <code>Error Saving Setting</code> | <code>保存设置出错</code> | <code>errorSavingSetting</code> | [GWT R095][R095] |
| <code>Expand/Collapse Output</code> | <code>展开/折叠输出</code> | <code>expandCollapseOutputTitle</code> | [GWT R095][R095] / Source patch |
| <code>Extract Function</code> | <code>提取函数</code> | <code>extractActiveFunctionRefactoringName</code> | [GWT R095][R095] |
| <code>Extract local variable</code> | <code>提取本地变量</code> | <code>extractLocalVariableRefactoringName</code> | [GWT R095][R095] |
| <code>Find</code> | <code>查找</code> | <code>find</code> | [GWT R095][R095] |
| <code>Finding usages...</code> | <code>寻找用法...</code> | <code>findingUsages</code> | [GWT R095][R095] |
| <code>Find/Replace</code> | <code>查找/替换</code> | <code>findOrReplace</code> | [GWT R095][R095] |
| <code>Invalid Filename</code> | <code>无效的文件名</code> | <code>fireCompilePdfEventErrorCaption</code> | [GWT R095][R095] |
| <code>The file ''{0}'' cannot be compiled to a PDF because TeX does not understand paths with spaces. If you rename the file to remove spaces then PDF compilation will work correctly.</code> | <code>文件“{0}”无法编译为 PDF，因为 TeX 无法识别含空格的路径。请重命名文件并删除路径中的空格，然后再编译 PDF。</code> | <code>fireCompilePdfEventErrorMessage</code> | [GWT R095][R095] |
| <code>Format</code> | <code>格式</code> | <code>format</code> | [GWT R095][R095] |
| <code>Function Name</code> | <code>函数名称</code> | <code>functionNameLabel</code> | [GWT R095][R095] |
| <code>functions</code> | <code>函数</code> | <code>functions</code> | [GWT R095][R095] |
| <code>Unable to Compile Report</code> | <code>无法编译报表</code> | <code>generateNotebookCaption</code> | [GWT R095][R095] |
| <code>{0} Column </code> | <code>{0} 栏 </code> | <code>getCurrentStatusColumn</code> | [GWT R095][R095] |
| <code>{0} File name </code> | <code>{0} 文件名 </code> | <code>getCurrentStatusFileName</code> | [GWT R095][R095] |
| <code>{0} File type </code> | <code>{0} 文件类型 </code> | <code>getCurrentStatusFileType</code> | [GWT R095][R095] |
| <code>Row </code> | <code>行</code> | <code>getCurrentStatusRow</code> | [GWT R095][R095] |
| <code>{0} Scope </code> | <code>{0} 范围 </code> | <code>getCurrentStatusScope</code> | [GWT R095][R095] |
| <code>R Session Busy</code> | <code>R 会话忙</code> | <code>getRMarkdownParamsFileCaption</code> | [GWT R095][R095] |
| <code>Unable to edit parameters (the R session is currently busy).</code> | <code>无法编辑参数( R 会话目前繁忙)。</code> | <code>getRMarkdownParamsFileMessage</code> | [GWT R095][R095] |
| <code>Template Creation Failed</code> | <code>模板创建失败</code> | <code>getTemplateContentErrorCaption</code> | [GWT R095][R095] |
| <code>Failed to load content from the template at {0}: {1}</code> | <code>无法加载 {0} 处的模板内容：{1}</code> | <code>getTemplateContentErrorMessage</code> | [GWT R095][R095] |
| <code>Hide </code> | <code>隐藏</code> | <code>hide</code> | [GWT R095][R095] |
| <code>HTML Widget</code> | <code>HTML 组件</code> | <code>htmlWidgetAltText</code> | [GWT R095][R095] / Source patch |
| <code>Ignore word</code> | <code>忽略单词</code> | <code>ignoreWord</code> | [GWT R095][R095] |
| <code>Info</code> | <code>信息</code> | <code>infoAltText</code> | [GWT R095][R095] / Source patch |
| <code>Installing TinyTeX</code> | <code>正在安装 TinyTeX</code> | <code>installTinyTeX</code> | [GWT R095][R095] |
| <code>Installing tinytex</code> | <code>正在安装 tinytex</code> | <code>installTinytexLowercase</code> | [GWT R095][R095] |
| <code>Content not publishable</code> | <code>内容不可公布</code> | <code>invokePublishCaption</code> | [GWT R095][R095] |
| <code>This item cannot be published.</code> | <code>此项目无法发布。</code> | <code>invokePublishMessage</code> | [GWT R095][R095] |
| <code>Italic</code> | <code>斜体</code> | <code>italic</code> | [GWT R095][R095] |
| <code>Knit</code> | <code>编织</code> | <code>knit</code> | [GWT R095][R095] |
| <code>Knit Directory</code> | <code>Knit 目录</code> | <code>knitDirectory</code> | [GWT R095][R095] |
| <code>Knit options</code> | <code>Knit 选项</code> | <code>knitOptions</code> | [GWT R095][R095] |
| <code>Knit to </code> | <code>编织为</code> | <code>knitTo</code> | [GWT R095][R095] |
| <code>Markdown editing tools</code> | <code>Markdown 编辑工具</code> | <code>markdownEditingTools</code> | [GWT R095][R095] |
| <code>(No image at path {0})</code> | <code>（路径 {0} 处没有图像）</code> | <code>noImageLabel</code> | [GWT R095][R095] |
| <code>No image at path {0}</code> | <code>没有图像在路径 {0}</code> | <code>noImageLabelNoParentheses</code> | [GWT R095][R095] |
| <code>No name</code> | <code>无名称</code> | <code>noName</code> | [GWT R095][R095] |
| <code>None</code> | <code>无</code> | <code>none</code> | [GWT R095][R095] |
| <code>(No Preview)</code> | <code>(无预览)</code> | <code>noPreviewParentheses</code> | [GWT R095][R095] |
| <code>(No Slides)</code> | <code>(无幻灯片)</code> | <code>noSlides</code> | [GWT R095][R095] |
| <code>Interrupt</code> | <code>中断</code> | <code>notebookInterruptAltText</code> | [GWT R095][R095] / Source patch |
| <code>Waiting for notebook render to complete...</code> | <code>正在等待笔记本渲染完成…</code> | <code>notebookRenderWaiting</code> | [GWT R095][R095] |
| <code>Numbered List</code> | <code>编号列表</code> | <code>numberedList</code> | [GWT R095][R095] |
| <code>{0} - Active Following Session</code> | <code>{0} - 正在跟随会话</code> | <code>onBeforeDismissCaption</code> | [GWT R095][R095] |
| <code>You''re actively following another user''s cursor in ''{0}''.\n\nIf you close this file, you won''t see their cursor until they edit another file.</code> | <code>您正在“{0}”中跟随另一位用户的光标。\n\n如果关闭此文件，在对方编辑其他文件前，您将无法再看到其光标。</code> | <code>onBeforeDismissMessage</code> | [GWT R095][R095] |
| <code>Breakpoints cannot be set until the file is saved.</code> | <code>在文件保存之前无法设置断点。</code> | <code>onBreakpointSetNewDocWarning</code> | [GWT R095][R095] |
| <code>Breakpoints not supported in Plumber API files.</code> | <code>Plumber API 文件中不支持的断点。</code> | <code>onBreakpointSetPlumberfileWarning</code> | [GWT R095][R095] |
| <code>Breakpoints can only be set inside the body of a function. </code> | <code>断点只能设置在函数体内.</code> | <code>onBreakpointsSavedWarningBar</code> | [GWT R095][R095] |
| <code>Clear Knitr Cache</code> | <code>清除 Knitr 缓存</code> | <code>onClearKnitrCacheCaption</code> | [GWT R095][R095] |
| <code>Clearing the Knitr cache will delete the cache directory for {0}. \n\nAre you sure you want to clear the cache now?</code> | <code>清除 Knitr 缓存将删除 {0} 的缓存目录。\n\n确定现在清除缓存吗？</code> | <code>onClearKnitrCacheMessage</code> | [GWT R095][R095] |
| <code>Clear Prerendered Output</code> | <code>清除预渲染输出</code> | <code>onClearPrerenderedOutputCaption</code> | [GWT R095][R095] |
| <code>This will remove all previously generated output for {0} (html, prerendered data, knitr cache, etc.).\n\nAre you sure you want to clear the output now?</code> | <code>这将删除此前为 {0} 生成的所有输出（HTML、预渲染数据、knitr 缓存等）。\n\n确定要立即清除输出吗？</code> | <code>onClearPrerenderedOutputMessage</code> | [GWT R095][R095] |
| <code>The process cannot access the file because it is being used by another process</code> | <code>另一个进程正在使用此文件，因此当前进程无法访问。</code> | <code>onErrorMessage</code> | [GWT R095][R095] |
| <code>Enter line number:</code> | <code>输入行号 :</code> | <code>onGoToLineLabel</code> | [GWT R095][R095] |
| <code>Go to Line</code> | <code>跳转到行</code> | <code>onGoToLineTitle</code> | [GWT R095][R095] |
| <code>Section label:</code> | <code>章节标签:</code> | <code>onInsertSectionLabel</code> | [GWT R095][R095] |
| <code>Insert Section</code> | <code>插入章节</code> | <code>onInsertSectionTitle</code> | [GWT R095][R095] |
| <code>Reopen with Encoding</code> | <code>用编码重新打开</code> | <code>onReopenSourceDocWithEncodingCaption</code> | [GWT R095][R095] |
| <code>This document has unsaved changes. These changes will be discarded when re-opening the document.\n\nWould you like to proceed?</code> | <code>此文档有未保存的更改。重新打开文档时将丢弃这些更改。\n\n是否继续？</code> | <code>onReopenSourceDocWithEncodingMessage</code> | [GWT R095][R095] |
| <code>This source file is read-only so changes cannot be saved</code> | <code>此源文件为只读，无法保存更改。</code> | <code>onResponseReceivedMessage</code> | [GWT R095][R095] |
| <code>Source File Not Saved</code> | <code>源文件未保存</code> | <code>onSetWorkingDirToActiveDocCaption</code> | [GWT R095][R095] |
| <code>The currently active source file is not saved so doesn''t have a directory to change into.</code> | <code>当前活动源文件尚未保存，因此没有可切换到的目录。</code> | <code>onSetWorkingDirToActiveDocMessage</code> | [GWT R095][R095] |
| <code>Failed to check if results are available</code> | <code>检查结果是否可用失败</code> | <code>onShinyCompareTestError</code> | [GWT R095][R095] |
| <code>No Failed Results</code> | <code>没有失败的结果</code> | <code>onShinyCompareTestResponseCaption</code> | [GWT R095][R095] |
| <code>There are no failed tests to compare.</code> | <code>没有可供比较的失败测试。</code> | <code>onShinyCompareTestResponseMessage</code> | [GWT R095][R095] |
| <code>Total words: {0} {1}</code> | <code>总计: {0} {1}</code> | <code>onWordCountMessage</code> | [GWT R095][R095] |
| <code>Overwrite</code> | <code>覆盖</code> | <code>overwrite</code> | [GWT R095][R095] |
| <code>Please select the code to extract into a function.</code> | <code>请选择要提取到函数的代码。</code> | <code>pleaseSelectCodeMessage</code> | [GWT R095][R095] |
| <code>Presentation</code> | <code>演示</code> | <code>presentation</code> | [GWT R095][R095] |
| <code>Preview</code> | <code>预览</code> | <code>preview</code> | [GWT R095][R095] |
| <code>Preview Images and Equations</code> | <code>预览图像和方程式</code> | <code>previewImagesEquations</code> | [GWT R095][R095] |
| <code>Preview in Viewer Pane</code> | <code>在查看器窗格中预览</code> | <code>previewInViewerPane</code> | [GWT R095][R095] |
| <code>Preview in Window</code> | <code>在窗口中预览</code> | <code>previewInWindow</code> | [GWT R095][R095] |
| <code>Error Previewing JavaScript</code> | <code>预览 JavaScript 时出错</code> | <code>previewJSErrorCaption</code> | [GWT R095][R095] |
| <code>''{0}'' is not a known previewer for JavaScript files. Did you mean ''r2d3''?</code> | <code>“{0}”不是已知的 JavaScript 文件预览器。您是不是想用“r2d3”？</code> | <code>previewJSErrorMessage</code> | [GWT R095][R095] |
| <code>Preview Notebook</code> | <code>预览笔记本</code> | <code>previewNotebook</code> | [GWT R095][R095] |
| <code>Unable to Preview</code> | <code>无法预览</code> | <code>previewRpresentationCaption</code> | [GWT R095][R095] |
| <code>R Presentations require the knitr package (version 1.2 or higher)</code> | <code>R 演示文稿需要 knitr 程序包（1.2 或更高版本）</code> | <code>previewRpresentationMessage</code> | [GWT R095][R095] |
| <code>Run Preview?</code> | <code>运行预览？</code> | <code>previewRunCodeConfirmCaption</code> | [GWT R095][R095] |
| <code>Previewing this file will run the following R code:\n\n{0}\n\nOnly continue if you trust this file. Run this code?</code> | <code>预览此文件将运行以下 R 代码 :\n\n{0}\n\n只有在您信任此文件时才会继续。 运行这个代码?</code> | <code>previewRunCodeConfirmMessage</code> | [GWT R095][R095] |
| <code>Print Frame</code> | <code>打印框架</code> | <code>printFrame</code> | [GWT R095][R095] |
| <code>Project Directory</code> | <code>项目目录</code> | <code>projectDirectory</code> | [GWT R095][R095] |
| <code>Quote</code> | <code>引用</code> | <code>quote</code> | [GWT R095][R095] |
| <code>R Console</code> | <code>R 控制台</code> | <code>rConsole</code> | [GWT R095][R095] |
| <code>The selected code could not be parsed.\n\nAre you sure you want to continue?</code> | <code>无法解析所选代码。\n\n确定要继续吗？</code> | <code>refactorServerRequestCallbackError</code> | [GWT R095][R095] |
| <code>Reformat Document on Save</code> | <code>保存时重新格式化文档</code> | <code>reformatDocumentOnSave</code> | [GWT R095][R095] / Source patch |
| <code>Reload API</code> | <code>重新加载 API</code> | <code>reloadApi</code> | [GWT R095][R095] |
| <code>Reload App</code> | <code>重新加载应用</code> | <code>reloadApp</code> | [GWT R095][R095] |
| <code>Found {0} </code> | <code>发现 {0} </code> | <code>renameInScopeFoundMatchesMessage</code> | [GWT R095][R095] |
| <code>match </code> | <code>匹配</code> | <code>renameInScopeMatch</code> | [GWT R095][R095] |
| <code>matches </code> | <code>匹配</code> | <code>renameInScopeMatchesPlural</code> | [GWT R095][R095] |
| <code>No matches for ''{0}''</code> | <code>无匹配 ''{0}''</code> | <code>renameInScopeNoMatchesMessage</code> | [GWT R095][R095] |
| <code>for {0}.</code> | <code>用于 {0}。</code> | <code>renameInScopeSelectedItemMessage</code> | [GWT R095][R095] |
| <code>Render</code> | <code>渲染</code> | <code>render</code> | [GWT R095][R095] |
| <code>Render {0}</code> | <code>渲染 {0}</code> | <code>renderFormatName</code> | [GWT R095][R095] |
| <code>Rendering R Markdown documents</code> | <code>渲染 R Markdown 文档</code> | <code>renderingR</code> | [GWT R095][R095] |
| <code>Reopen Document</code> | <code>重新打开文档</code> | <code>reopenDocument</code> | [GWT R095][R095] |
| <code>Rnw files</code> | <code>Rnw 文件</code> | <code>rnwFiles</code> | [GWT R095][R095] |
| <code>Rnw files for this project</code> | <code>此项目的 Rnw 文件</code> | <code>rnwFilesForProject</code> | [GWT R095][R095] |
| <code>R Script</code> | <code>R 脚本</code> | <code>rScript</code> | [GWT R095][R095] |
| <code>Run</code> | <code>运行</code> | <code>run</code> | [GWT R095][R095] |
| <code>Run After</code> | <code>之后运行</code> | <code>runAfter</code> | [GWT R095][R095] |
| <code>Run All</code> | <code>全部运行</code> | <code>runAll</code> | [GWT R095][R095] |
| <code>Run API</code> | <code>运行 API</code> | <code>runApi</code> | [GWT R095][R095] |
| <code>Run API options</code> | <code>运行 API 选项</code> | <code>runApiOptions</code> | [GWT R095][R095] |
| <code>Run App</code> | <code>运行 App</code> | <code>runApp</code> | [GWT R095][R095] |
| <code>Run app options</code> | <code>运行应用程序选项</code> | <code>runAppOptions</code> | [GWT R095][R095] |
| <code>Run document options</code> | <code>运行文档选项</code> | <code>runDocumentOptions</code> | [GWT R095][R095] |
| <code>Running shiny documents</code> | <code>运行 Shiny 文档</code> | <code>runningShinyDocuments</code> | [GWT R095][R095] |
| <code>Run the Plumber API</code> | <code>运行 Plumber API</code> | <code>runPlumberApi</code> | [GWT R095][R095] |
| <code>Run Previous</code> | <code>运行上一个</code> | <code>runPrevious</code> | [GWT R095][R095] |
| <code>Run Script</code> | <code>运行脚本</code> | <code>runScript</code> | [GWT R095][R095] |
| <code>Run Setup Chunk Automatically</code> | <code>自动运行 Setup 代码块</code> | <code>runSetupChunkAuto</code> | [GWT R095][R095] |
| <code>Run Tests</code> | <code>运行测试</code> | <code>runTests</code> | [GWT R095][R095] |
| <code>Run the Shiny application</code> | <code>运行 Shiny 应用程序</code> | <code>runTheShinyApp</code> | [GWT R095][R095] |
| <code>Save</code> | <code>保存</code> | <code>save</code> | [GWT R095][R095] |
| <code>{0}-copy{1}</code> | <code>{0}- 副本{1}</code> | <code>saveAsPathName</code> | [GWT R095][R095] |
| <code>Save changes and reload the Shiny application</code> | <code>保存更改并重新加载 Shiny 应用程序</code> | <code>saveChangesAndReload</code> | [GWT R095][R095] |
| <code>Save changes and reload the Plumber API</code> | <code>保存更改并重新加载 Plumber API</code> | <code>saveChangesReloadPlumberApi</code> | [GWT R095][R095] |
| <code>Save File</code> | <code>保存文件</code> | <code>saveFile</code> | [GWT R095][R095] |
| <code>Save File - {0}</code> | <code>保存文件 - {0}</code> | <code>saveNewFileWithEncodingSaveFileCaption</code> | [GWT R095][R095] |
| <code>Confirm Change File Type</code> | <code>确认更改文件类型</code> | <code>saveNewFileWithEncodingWarningCaption</code> | [GWT R095][R095] |
| <code>This file was created as an R script however the file extension you specified will change it into another file type that will no longer open as an R script.\n\nAre you sure you want to change the type of the file so that it is no longer an R script?</code> | <code>此文件原本创建为 R 脚本，但您指定的扩展名会将其改为其他文件类型，之后将不再以 R 脚本方式打开。\n\n确定要更改文件类型，使其不再是 R 脚本吗？</code> | <code>saveNewFileWithEncodingWarningMessage</code> | [GWT R095][R095] |
| <code>{0} - Unsaved Changes</code> | <code>{0} - 未保存的更改</code> | <code>saveWithPromptCaption</code> | [GWT R095][R095] |
| <code>The document ''{0}'' has unsaved changes.\n\nDo you want to save these changes?</code> | <code>文档 ''{0}'' 有未保存的更改。\n\n是否保存这些更改？</code> | <code>saveWithPromptMessage</code> | [GWT R095][R095] |
| <code>Section</code> | <code>章节</code> | <code>section</code> | [GWT R095][R095] |
| <code>\nSelected words: {0}</code> | <code>\n选中单词 : {0}</code> | <code>selectedWords</code> | [GWT R095][R095] |
| <code>Knit{0}</code> | <code>编织{0}</code> | <code>setFormatTextKnitCommandText</code> | [GWT R095][R095] |
| <code>Preview{0}</code> | <code>预览{0}</code> | <code>setFormatTextPreviewCommandText</code> | [GWT R095][R095] |
| <code>Render</code> | <code>渲染</code> | <code>setFormatTextQuartoCommandText</code> | [GWT R095][R095] |
| <code>Preview the notebook ({0})</code> | <code>预览笔记本（{0}）</code> | <code>setIsNotebookFormatButtonTitle</code> | [GWT R095][R095] |
| <code>Run {0}</code> | <code>运行 {0}</code> | <code>setIsShinyFormatKnitCommandText</code> | [GWT R095][R095] |
| <code>View the current {0} with Shiny ({1})</code> | <code>查看当前 {0} 与 Shiny ({1})</code> | <code>setIsShinyFormatKnitDocumentButtonTitle</code> | [GWT R095][R095] |
| <code>Save changes and run the current script</code> | <code>保存更改并运行当前脚本</code> | <code>setSourceButtonFromScriptStateDesc</code> | [GWT R095][R095] |
| <code>Save changes and source the current script</code> | <code>保存更改并运行当前脚本</code> | <code>setSourceButtonFromScriptStatePythonDesc</code> | [GWT R095][R095] |
| <code>Save changes and preview</code> | <code>保存更改和预览</code> | <code>setSourceButtonFromScriptStateSavePreview</code> | [GWT R095][R095] |
| <code>Shiny test options</code> | <code>Shiny 测试选项</code> | <code>shinyTestOptions</code> | [GWT R095][R095] |
| <code>Show </code> | <code>显示</code> | <code>show</code> | [GWT R095][R095] |
| <code>Edit Format Failed</code> | <code>编辑格式失败</code> | <code>showFrontMatterEditorDialogCaption</code> | [GWT R095][R095] |
| <code>Couldn''t determine the format options from the YAML front matter. Make sure the YAML defines a supported output format in its ''output'' field.</code> | <code>无法从 YAML 前置元数据中确定格式选项。请确认 YAML 的“output”字段定义了受支持的输出格式。</code> | <code>showFrontMatterEditorDialogMessage</code> | [GWT R095][R095] |
| <code>Edit Format Failed</code> | <code>编辑格式失败</code> | <code>showFrontMatterEditorErrCaption</code> | [GWT R095][R095] |
| <code>The YAML front matter in this document could not be successfully parsed. This parse error needs to be resolved before format options can be edited.</code> | <code>无法解析此文档中的 YAML 前置元数据。必须先解决此解析错误，才能编辑格式选项。</code> | <code>showFrontMatterEditorErrMsg</code> | [GWT R095][R095] |
| <code>Can''t find the YAML front matter for this document. Make sure the front matter is enclosed by lines containing only three dashes: ---.</code> | <code>找不到此文档的 YAML 前置元数据。请确认前置元数据由仅包含三个连字符的行包围：---。</code> | <code>showFrontMatterEditorMessage</code> | [GWT R095][R095] |
| <code>Show in New Window</code> | <code>在新窗口中显示</code> | <code>showInNewWindowTitle</code> | [GWT R095][R095] / Source patch |
| <code>{0} requires the knitr package (version {1} or higher)</code> | <code>{0} 需要 knitr 程序包（{1} 或更高版本）</code> | <code>showKnitrPreviewWarningBar</code> | [GWT R095][R095] |
| <code>Show Previews Inline</code> | <code>行内显示预览</code> | <code>showPreviewsInline</code> | [GWT R095][R095] |
| <code>Install {0} dependencies</code> | <code>安装 {0} 依赖关系</code> | <code>showRequiredPackagesMissingWarningCaption</code> | [GWT R095][R095] |
| <code>Command Not Available</code> | <code>命令不可用</code> | <code>showRModeWarningCaption</code> | [GWT R095][R095] |
| <code>The {0} command is only valid for R code chunks.</code> | <code>那个 {0} 命令只对 R 代码块有效。</code> | <code>showRModeWarningMessage</code> | [GWT R095][R095] |
| <code>Show whitespace</code> | <code>显示空白</code> | <code>showWhitespace</code> | [GWT R095][R095] |
| <code>Source</code> | <code>运行脚本</code> | <code>source</code> | [GWT R095][R095] |
| <code>Source the active document</code> | <code>运行当前文档</code> | <code>sourceButtonTitle</code> | [GWT R095][R095] |
| <code>{0} (with echo)</code> | <code>{0}（带回显）</code> | <code>sourceButtonTitleWithEcho</code> | [GWT R095][R095] |
| <code>Source on Save</code> | <code>保存时运行脚本</code> | <code>sourceOnSave</code> | [GWT R095][R095] |
| <code>Source options</code> | <code>运行脚本选项</code> | <code>sourceOptions</code> | [GWT R095][R095] |
| <code>Executing Python</code> | <code>执行 Python</code> | <code>sourcePythonProgressCaption</code> | [GWT R095][R095] |
| <code>Sourcing Python scripts</code> | <code>运行 Python 脚本</code> | <code>sourcePythonUserPrompt</code> | [GWT R095][R095] |
| <code>Source Script</code> | <code>运行脚本</code> | <code>sourceScript</code> | [GWT R095][R095] |
| <code>Specifying Knit parameters</code> | <code>指定 Knit 参数</code> | <code>specifyingKnit</code> | [GWT R095][R095] |
| <code>Spellcheck</code> | <code>拼写检查</code> | <code>spellcheck</code> | [GWT R095][R095] |
| <code>Subsection</code> | <code>小节</code> | <code>subsection</code> | [GWT R095][R095] |
| <code>Sub-Subsection</code> | <code>三级小节</code> | <code>subSubsection</code> | [GWT R095][R095] |
| <code>Text editor</code> | <code>文本编辑器</code> | <code>textEditor</code> | [GWT R095][R095] |
| <code>this file</code> | <code>此文件</code> | <code>thisFile</code> | [GWT R095][R095] |
| <code>Typewriter</code> | <code>打字机</code> | <code>typewriter</code> | [GWT R095][R095] |
| <code>(Untitled Slide)</code> | <code>(无标题幻灯片)</code> | <code>untitledSlide</code> | [GWT R095][R095] |
| <code>Untitled Text editor</code> | <code>无标题文本编辑器</code> | <code>untitledTextEditor</code> | [GWT R095][R095] |
| <code>Breakpoints will be activated when the file or function is finished executing.</code> | <code>文件或函数执行完毕后，断点将被激活。</code> | <code>updateBreakpointWarningBarFunctionMessage</code> | [GWT R095][R095] |
| <code>Breakpoints will be activated when the package is built and reloaded.</code> | <code>构建并重新加载程序包时将激活断点。</code> | <code>updateBreakpointWarningBarPackageLoadMessage</code> | [GWT R095][R095] |
| <code>Breakpoints will be activated when an updated version of the {0} package is loaded</code> | <code>加载更新版本的 {0} 程序包时将激活断点</code> | <code>updateBreakpointWarningBarPackageMessage</code> | [GWT R095][R095] |
| <code>Breakpoints will be activated when this file is sourced.</code> | <code>运行此文件时将激活断点。</code> | <code>updateBreakpointWarningBarSourcedMessage</code> | [GWT R095][R095] |
| <code>Debug lines may not match because the editor contents have changed.</code> | <code>编辑器内容已更改，调试行可能不再匹配。</code> | <code>updateDebugWarningBarMessage</code> | [GWT R095][R095] |
| <code>Variable Name</code> | <code>变量名称</code> | <code>variableName</code> | [GWT R095][R095] |
| <code>Verbatim</code> | <code>逐字记录</code> | <code>verbatim</code> | [GWT R095][R095] |
| <code>Visual</code> | <code>可视化</code> | <code>visual</code> | [GWT R095][R095] |
| <code>Warning</code> | <code>警告</code> | <code>warningAltText</code> | [GWT R095][R095] / Source patch |
| <code>Word Count</code> | <code>字数统计</code> | <code>wordCount</code> | [GWT R095][R095] |
| <code>''{0}'' is misspelled</code> | <code>''{0}'' 拼写错误</code> | <code>wordIsMisspelled</code> | [GWT R095][R095] |
| <code>Change to:</code> | <code>更改为:</code> | <code>changeToText</code> | [GWT R097][R097] |
| <code>Not in dictionary:</code> | <code>不在词典中 :</code> | <code>notInDictionary</code> | [GWT R097][R097] |
| <code>Dataset</code> | <code>数据集</code> | <code>dataset</code> | [GWT R099][R099] |
| <code>(Empty Topic)</code> | <code>（空主题）</code> | <code>emptyTopic</code> | [GWT R099][R099] |
| <code>Function</code> | <code>函数</code> | <code>function</code> | [GWT R099][R099] |
| <code>Rd template:</code> | <code>Rd 模板 :</code> | <code>templateText</code> | [GWT R099][R099] |
| <code>Topic name:</code> | <code>主题名称 :</code> | <code>topicName</code> | [GWT R099][R099] |
| <code>{0} URL Browser</code> | <code>{0} URL 浏览器</code> | <code>accessibleNameBrowser</code> | [GWT R094][R094] |
| <code>{0} Data Browser</code> | <code>{0} 数据浏览器</code> | <code>accessibleNameDataBrowser</code> | [GWT R094][R094] |
| <code>{0} Object Explorer</code> | <code>{0} 对象浏览器</code> | <code>accessibleNameObjectExplorer</code> | [GWT R094][R094] |
| <code>Add</code> | <code>添加</code> | <code>addCapitalized</code> | [GWT R094][R094] |
| <code>Add word to user dictionary</code> | <code>在用户字典中添加单词</code> | <code>addWordToUserDictionary</code> | [GWT R094][R094] |
| <code>All</code> | <code>全部</code> | <code>allCapitalized</code> | [GWT R094][R094] |
| <code>Always save files before build</code> | <code>总是在构建前保存文件</code> | <code>alwaysSaveFilesBeforeBuild</code> | [GWT R094][R094] |
| <code>and </code> | <code>和</code> | <code>andForList</code> | [GWT R094][R094] |
| <code>An error has occurred:\n\n{0}</code> | <code>发生了错误 :\n\n{0}</code> | <code>anErrorHasOccurredMessage</code> | [GWT R094][R094] |
| <code>Anonymous</code> | <code>匿名</code> | <code>anonymousCapitalized</code> | [GWT R094][R094] |
| <code>API name:</code> | <code>API 名称 :</code> | <code>apiNameColon</code> | [GWT R094][R094] |
| <code>The API name must not be empty</code> | <code>API 名称不能为空</code> | <code>apiNameMustNotBeEmpty</code> | [GWT R094][R094] |
| <code>Application name:</code> | <code>应用程序名称 :</code> | <code>applicationNameColon</code> | [GWT R094][R094] |
| <code>The application name must not be empty</code> | <code>应用程序名称不能为空</code> | <code>applicationNameMustNotBeEmpty</code> | [GWT R094][R094] |
| <code>Application type:</code> | <code>应用程序类型 :</code> | <code>applicationTypeColon</code> | [GWT R094][R094] |
| <code>Apply</code> | <code>应用</code> | <code>applyCapitalized</code> | [GWT R094][R094] |
| <code>[Ask]</code> | <code>[问]</code> | <code>askSquareBrackets</code> | [GWT R094][R094] |
| <code>Authoring R Presentations</code> | <code>正在撰写 R 演示文稿</code> | <code>authoringRPresentationsText</code> | [GWT R094][R094] |
| <code>_Blame "{0}" on GitHub</code> | <code>在 GitHub 上查看“{0}”的 _Blame</code> | <code>blameOnGithub</code> | [GWT R094][R094] |
| <code>Cache chunk</code> | <code>缓存代码块</code> | <code>cacheChunk</code> | [GWT R094][R094] |
| <code>Cancel</code> | <code>取消</code> | <code>cancel</code> | [GWT R094][R094] |
| <code>The visual editor is not available in untrusted projects.</code> | <code>可视化编辑器不能用于不可信项目。</code> | <code>cantEnterVisualModeInUntrustedProject</code> | [GWT R094][R094] |
| <code>You cannot enter visual mode while using realtime collaboration.</code> | <code>使用实时协作时无法进入可视化模式。</code> | <code>cantEnterVisualModeUsingRealtime</code> | [GWT R094][R094] |
| <code>Can''t execute {0}</code> | <code>无法执行 {0}</code> | <code>cantExecuteJobDesc</code> | [GWT R094][R094] |
| <code>Can''t Move Doc</code> | <code>无法移动文档</code> | <code>cantMoveDoc</code> | [GWT R094][R094] |
| <code>The document could not be moved to a different window: \n{0}</code> | <code>文档无法移动到不同的窗口 : \n{0}</code> | <code>cantMoveDocMessage</code> | [GWT R094][R094] |
| <code>Change All</code> | <code>全部更改</code> | <code>changeAll</code> | [GWT R094][R094] |
| <code>Change</code> | <code>更改</code> | <code>changeCapitalized</code> | [GWT R094][R094] |
| <code>Checking...</code> | <code>正在检查…</code> | <code>checkingEllipses</code> | [GWT R094][R094] |
| <code>Check Spelling</code> | <code>检查拼写</code> | <code>checkSpelling</code> | [GWT R094][R094] |
| <code>Choose Encoding</code> | <code>选择编码</code> | <code>chooseEncoding</code> | [GWT R094][R094] |
| <code>Chunk</code> | <code>代码块</code> | <code>chunkCapitalized</code> | [GWT R094][R094] |
| <code>Chunk Name:</code> | <code>代码块名称：</code> | <code>chunkNameColon</code> | [GWT R094][R094] |
| <code>Chunk options</code> | <code>代码块选项</code> | <code>chunkOptions</code> | [GWT R094][R094] |
| <code>Chunk Pending Execution</code> | <code>代码块等待执行</code> | <code>chunkPendingExecution</code> | [GWT R094][R094] |
| <code>The code in this chunk is scheduled to run later, when other chunks have finished executing.</code> | <code>其他代码块执行完毕后，此代码块将按计划运行。</code> | <code>chunkPendingExecutionMessage</code> | [GWT R094][R094] |
| <code>Chunks Currently Running</code> | <code>当前正在运行的代码块</code> | <code>chunksCurrentlyRunning</code> | [GWT R094][R094] |
| <code>Chunk {0}</code> | <code>代码块 {0}</code> | <code>chunkSequence</code> | [GWT R094][R094] |
| <code>Class</code> | <code>类</code> | <code>classCapitalized</code> | [GWT R094][R094] |
| <code>Do you want to clear all the existing chunk output from your notebook?</code> | <code>是否清除笔记本中现有的所有代码块输出？</code> | <code>clearExistingChunkOutputMessage</code> | [GWT R094][R094] |
| <code>Close All</code> | <code>全部关闭</code> | <code>closeAll</code> | [GWT R094][R094] |
| <code>Close All Others</code> | <code>关闭其他所有标签页</code> | <code>closeAllOthers</code> | [GWT R094][R094] |
| <code>Close and Discard Changes</code> | <code>关闭并丢弃更改</code> | <code>closeAndDiscardChanges</code> | [GWT R094][R094] |
| <code>Close find and replace</code> | <code>关闭查找和替换</code> | <code>closeFindAndReplace</code> | [GWT R094][R094] |
| <code>Close Other</code> | <code>关闭其他标签页</code> | <code>closeOther</code> | [GWT R094][R094] |
| <code>Close Source Window</code> | <code>关闭源窗口</code> | <code>closeSourceWindow</code> | [GWT R094][R094] |
| <code>Code Browser displayed</code> | <code>显示代码浏览器</code> | <code>codeBrowserDisplayed</code> | [GWT R094][R094] |
| <code>Code Browser Second</code> | <code>第二代码浏览器</code> | <code>codeBrowserSecond</code> | [GWT R094][R094] |
| <code>Code Editor Tab</code> | <code>代码编辑器标签页</code> | <code>codeEditorTab</code> | [GWT R094][R094] |
| <code>Code Profile results displayed</code> | <code>显示代码配置文件结果</code> | <code>codeProfileResultsDisplayed</code> | [GWT R094][R094] |
| <code>Code Tools</code> | <code>代码工具</code> | <code>codeTools</code> | [GWT R094][R094] |
| <code>Collapse</code> | <code>折叠</code> | <code>collapseCapitalized</code> | [GWT R094][R094] |
| <code>{0} code chunk</code> | <code>{0} 代码块</code> | <code>collapseOrExpandCodeChunk</code> | [GWT R094][R094] |
| <code>There are unsaved documents in this window. Are you sure you want to close it?</code> | <code>此窗口中有未保存的文档。确定要关闭此窗口吗？</code> | <code>confirmCloseUnsavedDocuments</code> | [GWT R094][R094] |
| <code>Confirm Open</code> | <code>确认打开</code> | <code>confirmOpen</code> | [GWT R094][R094] |
| <code>The source file ''{0}'' is large ({1}) and may take some time to open. Are you sure you want to continue opening it?</code> | <code>源文件“{0}”较大（{1}），打开可能需要一些时间。确定要继续吗？</code> | <code>confirmOpenLargeFileMsg</code> | [GWT R094][R094] |
| <code>Could not resolve {0}. Please make sure this is an R package project with a BugReports field set.</code> | <code>无法解析 {0}。请确认这是一个设置了 BugReports 字段的 R 程序包项目。</code> | <code>couldNotResolveIssue</code> | [GWT R094][R094] |
| <code>Could not save {0}: {1}</code> | <code>无法保存 {0}: {1}</code> | <code>couldNotSavePathPlusMessage</code> | [GWT R094][R094] |
| <code>Couldn''t move the tab to this window: \n{0}</code> | <code>无法将标签页移到此窗口：\n{0}</code> | <code>couldntMoveTabToWindowError</code> | [GWT R094][R094] |
| <code>Create</code> | <code>创建</code> | <code>create</code> | [GWT R094][R094] |
| <code>Create Empty Document</code> | <code>创建空文档</code> | <code>createEmptyDocument</code> | [GWT R094][R094] |
| <code>Create R Notebook</code> | <code>创建 R Notebook</code> | <code>createRNotebookText</code> | [GWT R094][R094] |
| <code>Create within directory:</code> | <code>在目录中创建 :</code> | <code>createWithinDirectoryColon</code> | [GWT R094][R094] |
| <code>Creating new document...</code> | <code>正在创建新文档…</code> | <code>creatingNewDocument</code> | [GWT R094][R094] |
| <code>Creating Presentation...</code> | <code>正在创建演示文稿...</code> | <code>creatingPresentation</code> | [GWT R094][R094] |
| <code>Creating R Notebooks</code> | <code>创建 R 笔记本</code> | <code>creatingRNotebooks</code> | [GWT R094][R094] |
| <code>Creating R Plumber API</code> | <code>创建 R Plumber API</code> | <code>creatingRPlumberAPIText</code> | [GWT R094][R094] |
| <code>Creating Shiny applications</code> | <code>创建 Shiny 应用程序</code> | <code>creatingShinyApplicationsText</code> | [GWT R094][R094] |
| <code>Creating Stan script</code> | <code>创建 Stan 脚本</code> | <code>creatingStanScript</code> | [GWT R094][R094] |
| <code>Creating Stan scripts</code> | <code>创建 Stan 脚本</code> | <code>creatingStanScriptPlural</code> | [GWT R094][R094] |
| <code>Data Browser</code> | <code>数据浏览器</code> | <code>dataBrowser</code> | [GWT R094][R094] |
| <code>Data Browser displayed</code> | <code>显示的数据浏览器</code> | <code>dataBrowserDisplayed</code> | [GWT R094][R094] |
| <code>Displayed {0} rows of {1}</code> | <code>显示 {1} 行中的 {0} 行</code> | <code>dataEditingTargetWidgetLabel1</code> | [GWT R094][R094] |
| <code>({0} omitted)</code> | <code>（省略 {0} 行）</code> | <code>dataEditingTargetWidgetLabel2</code> | [GWT R094][R094] |
| <code>Debug location is approximate because the source is not available.</code> | <code>由于源代码不可用，调试位置仅为近似位置。</code> | <code>debugLocationIsApproximate</code> | [GWT R094][R094] |
| <code>Default Chunk Options</code> | <code>默认代码块选项</code> | <code>defaultChunkOptions</code> | [GWT R094][R094] |
| <code>The {0} is {1}-based line wrapping</code> | <code>{0} 使用基于 {1} 的自动换行</code> | <code>defaultConfiguredBasedLineWrapping</code> | [GWT R094][R094] |
| <code>The {0} is no line wrapping</code> | <code>{0} 不使用自动换行</code> | <code>defaultNoLineWrapping</code> | [GWT R094][R094] |
| <code>_Diff "{0}"</code> | <code>_“{0}”的差异</code> | <code>diffName</code> | [GWT R094][R094] |
| <code>Document</code> | <code>文档</code> | <code>documentCapitalized</code> | [GWT R094][R094] |
| <code>Document Outline</code> | <code>文档大纲</code> | <code>documentOutline</code> | [GWT R094][R094] |
| <code>Document Tab Move Failed</code> | <code>文档标签移动失败</code> | <code>documentTabMoveFailed</code> | [GWT R094][R094] |
| <code>The document uses {0}-based line wrapping</code> | <code>文档使用基于 {0} 的自动换行</code> | <code>documentUsesBasedLineWrapping</code> | [GWT R094][R094] |
| <code>Don''t Run</code> | <code>不运行</code> | <code>dontRun</code> | [GWT R094][R094] |
| <code>Don''t show this message again</code> | <code>不再显示此消息</code> | <code>dontShowMessageAgain</code> | [GWT R094][R094] |
| <code>Some of your source edits are still being backed up. If you continue, your latest changes may be lost. Do you want to continue?</code> | <code>部分源代码编辑仍在备份。如果继续操作，最新更改可能丢失。是否继续？</code> | <code>editsStillBeingBackedUp</code> | [GWT R094][R094] |
| <code>Encodings</code> | <code>编码</code> | <code>encodingsCapitalized</code> | [GWT R094][R094] |
| <code>Engine options:</code> | <code>引擎选项 :</code> | <code>engineOptionsColon</code> | [GWT R094][R094] |
| <code>Engine path:</code> | <code>引擎路径 :</code> | <code>enginePathColon</code> | [GWT R094][R094] |
| <code>error</code> | <code>错误</code> | <code>error</code> | [GWT R094][R094] |
| <code>Error Autosaving File</code> | <code>自动保存文件出错</code> | <code>errorAutosavingFile</code> | [GWT R094][R094] |
| <code>Error</code> | <code>错误</code> | <code>errorCapitalized</code> | [GWT R094][R094] |
| <code>Error Creating New Document</code> | <code>创建新文档出错</code> | <code>errorCreatingNewDocument</code> | [GWT R094][R094] |
| <code>Error creating notebook: </code> | <code>创建笔记本出错 :</code> | <code>errorCreatingNotebookPrefix</code> | [GWT R094][R094] |
| <code>Error Creating Plumber API</code> | <code>创建 Plumber API 时出错</code> | <code>errorCreatingPlumberApi</code> | [GWT R094][R094] |
| <code>Error Creating Shiny Application</code> | <code>创建 Shiny 应用程序时出错</code> | <code>errorCreatingShinyApplication</code> | [GWT R094][R094] |
| <code>Error navigating to file</code> | <code>导航到文件出错</code> | <code>errorNavigatingToFile</code> | [GWT R094][R094] |
| <code>Error while opening profiler source</code> | <code>打开配置文件源时出错</code> | <code>errorOpeningProfilerSource</code> | [GWT R094][R094] |
| <code>Error Reading Function Definition</code> | <code>读取函数定义出错</code> | <code>errorReadingFunctionDefinition</code> | [GWT R094][R094] |
| <code>Error saving {0}: {1}</code> | <code>保存错误 {0}: {1}</code> | <code>errorSavingPathPlusMessage</code> | [GWT R094][R094] |
| <code>Error Searching for Function</code> | <code>查找函数出错</code> | <code>errorSearchingForFunction</code> | [GWT R094][R094] |
| <code>Error while opening file</code> | <code>打开文件时出错</code> | <code>errorWhileOpeningFile</code> | [GWT R094][R094] |
| <code>Executing chunks</code> | <code>正在执行代码块</code> | <code>executingChunks</code> | [GWT R094][R094] |
| <code>Executing Python chunks</code> | <code>正在执行 Python 代码块</code> | <code>executingPythonChunks</code> | [GWT R094][R094] |
| <code>Expand</code> | <code>展开</code> | <code>expandCapitalized</code> | [GWT R094][R094] |
| <code>Failed to Open Profile</code> | <code>打开配置文件失败</code> | <code>failedToOpenProfile</code> | [GWT R094][R094] |
| <code>Failed to Save Profile</code> | <code>保存配置文件失败</code> | <code>failedToSaveProfile</code> | [GWT R094][R094] |
| <code>Failed to Save Profile Properties</code> | <code>保存配置文件属性失败</code> | <code>failedToSaveProfileProperties</code> | [GWT R094][R094] |
| <code>Failed to Stop Profiler</code> | <code>停止性能分析器失败</code> | <code>failedToStopProfiler</code> | [GWT R094][R094] |
| <code>fatal</code> | <code>致命</code> | <code>fatal</code> | [GWT R094][R094] |
| <code>Find</code> | <code>查找</code> | <code>findCapitalized</code> | [GWT R094][R094] |
| <code>Finding definition...</code> | <code>正在查找定义…</code> | <code>findingDefinition</code> | [GWT R094][R094] |
| <code>Find/Replace</code> | <code>查找/替换</code> | <code>findOrReplace</code> | [GWT R094][R094] |
| <code>From Template</code> | <code>从模板</code> | <code>fromTemplate</code> | [GWT R094][R094] |
| <code>Function</code> | <code>函数</code> | <code>functionCapitalized</code> | [GWT R094][R094] |
| <code>Function:</code> | <code>函数 :</code> | <code>functionColon</code> | [GWT R094][R094] |
| <code>global</code> | <code>全局</code> | <code>global</code> | [GWT R094][R094] |
| <code>global default</code> | <code>全局默认值</code> | <code>globalDefault</code> | [GWT R094][R094] |
| <code>Height (inches):</code> | <code>高度( 英寸 ) :</code> | <code>heightInchesColon</code> | [GWT R094][R094] |
| <code>Help</code> | <code>帮助</code> | <code>help</code> | [GWT R094][R094] |
| <code>Ignore All</code> | <code>全部忽略</code> | <code>ignoreAll</code> | [GWT R094][R094] |
| <code>ignored</code> | <code>忽略</code> | <code>ignored</code> | [GWT R094][R094] |
| <code>images</code> | <code>图像</code> | <code>images</code> | [GWT R094][R094] |
| <code>In selection</code> | <code>在选择中</code> | <code>inSelection</code> | [GWT R094][R094] |
| <code>Interrupt and Clear Output</code> | <code>中断和清除输出</code> | <code>interruptAndClearOutput</code> | [GWT R094][R094] |
| <code>Invalid API Name</code> | <code>无效的 API 名称</code> | <code>invalidApiName</code> | [GWT R094][R094] |
| <code>Invalid application name</code> | <code>无效的应用程序名称</code> | <code>invalidApplicationName</code> | [GWT R094][R094] |
| <code>Invalid Application Name</code> | <code>无效的应用程序名称</code> | <code>invalidApplicationNameCapitalized</code> | [GWT R094][R094] |
| <code>Invalid Pandoc format: {0}</code> | <code>无效的 Pandoc 格式: {0}</code> | <code>invalidPandocFormat</code> | [GWT R094][R094] |
| <code>Invalid search term.</code> | <code>无效的搜索内容。</code> | <code>invalidSearchTerm</code> | [GWT R094][R094] |
| <code>{0}: Chunks Currently Executing</code> | <code>{0}: 当前正在执行的代码块</code> | <code>jobChunkCurrentlyExecuting</code> | [GWT R094][R094] |
| <code>Keep Output</code> | <code>保留输出</code> | <code>keepOutput</code> | [GWT R094][R094] |
| <code>Learn more about visual mode line wrapping options</code> | <code>详细了解可视化模式自动换行选项</code> | <code>learnAboutVisualModeLineWrapping</code> | [GWT R094][R094] |
| <code>Line Wrapping</code> | <code>换行</code> | <code>lineWrapping</code> | [GWT R094][R094] |
| <code>Line wrapping in this document differs from the {0}:</code> | <code>本文档中的行环绕与 {0}:</code> | <code>lineWrappingDiffersFromCurrent</code> | [GWT R094][R094] |
| <code>_Log of "{0}"</code> | <code>_“{0}”的提交记录</code> | <code>logOfName</code> | [GWT R094][R094] |
| <code>Match case</code> | <code>匹配大小写</code> | <code>matchCase</code> | [GWT R094][R094] |
| <code>Method:</code> | <code>方法 :</code> | <code>methodColon</code> | [GWT R094][R094] |
| <code>&lt;td&gt;&lt;input type=''button'' value=''More...'' data-action=''open''&gt;&lt;/input&gt;&lt;/td&gt;</code> | <code>&lt;td&gt;&lt;input type=''button'' value=''更多...'' data-action=''open''&gt;&lt;/input&gt;&lt;/td&gt;</code> | <code>moreButtonCell</code> | [GWT R094][R094] |
| <code>Multiple File (ui.R/server.R)</code> | <code>多文件 (ui.R/server.R)</code> | <code>multipleFileUiServerR</code> | [GWT R094][R094] |
| <code>You must specify a topic name for the new Rd file.</code> | <code>您必须指定新 Rd 文件的主题名称。</code> | <code>mustSpecifyTopicNameForRdFile</code> | [GWT R094][R094] |
| <code>Name</code> | <code>名称</code> | <code>name</code> | [GWT R094][R094] |
| <code>Name Not Specified</code> | <code>未指定名称</code> | <code>nameNotSpecified</code> | [GWT R094][R094] |
| <code>{0} Source Viewer</code> | <code>{0} 源查看器</code> | <code>nameSourceViewer</code> | [GWT R094][R094] |
| <code>Namespace</code> | <code>命名空间</code> | <code>namespaceCapitalized</code> | [GWT R094][R094] |
| <code>New Plumber API</code> | <code>新建 Plumber API</code> | <code>newPlumberApi</code> | [GWT R094][R094] |
| <code>New Quarto {0}...</code> | <code>正在新建 Quarto {0}…</code> | <code>newQuatroProgressIndicator</code> | [GWT R094][R094] |
| <code>New R Documentation File</code> | <code>新建 R 文档文件</code> | <code>newRDocumentationFile</code> | [GWT R094][R094] |
| <code>New R Markdown</code> | <code>新建 R Markdown</code> | <code>newRMarkdown</code> | [GWT R094][R094] |
| <code>New R Presentation</code> | <code>新建 R 演示文稿</code> | <code>newRPresentation</code> | [GWT R094][R094] |
| <code>New Shiny Web Application</code> | <code>新建 Shiny Web 应用程序</code> | <code>newShinyWebApplication</code> | [GWT R094][R094] |
| <code>(No documents)</code> | <code>(无文件)</code> | <code>noDocumentsParentheses</code> | [GWT R094][R094] |
| <code>No document tabs open</code> | <code>没有打开的文档标签页</code> | <code>noDocumentTabsOpen</code> | [GWT R094][R094] |
| <code>No file at path ''{0}''.</code> | <code>路径没有文件 ''{0}''.</code> | <code>noFileAtPath</code> | [GWT R094][R094] |
| <code>(No matches)</code> | <code>(无匹配)</code> | <code>noMatchesParentheses</code> | [GWT R094][R094] |
| <code>No more occurrences.</code> | <code>没有更多匹配项。</code> | <code>noMoreOccurrences</code> | [GWT R094][R094] |
| <code>No outline available</code> | <code>无可用的大纲</code> | <code>noOutlineAvailable</code> | [GWT R094][R094] |
| <code>No Parameters Defined</code> | <code>无参数</code> | <code>noParametersDefined</code> | [GWT R094][R094] |
| <code>There are no parameters defined for the current R Markdown document.</code> | <code>当前 R Markdown 文档未定义任何参数。</code> | <code>noParametersDefinedForCurrentRMarkdown</code> | [GWT R094][R094] |
| <code>(No selection)</code> | <code>(无选择)</code> | <code>noSelectionParentheses</code> | [GWT R094][R094] |
| <code>note</code> | <code>说明</code> | <code>note</code> | [GWT R094][R094] |
| <code>This notebook could not be opened. \n\n{0}</code> | <code>此笔记本无法打开。 \n\n{0}</code> | <code>notebookCouldNotBeOpenedMessage</code> | [GWT R094][R094] |
| <code>Notebook Creation Failed</code> | <code>笔记本创建失败</code> | <code>notebookCreationFailed</code> | [GWT R094][R094] |
| <code>Notebook Open Failed</code> | <code>笔记本打开失败</code> | <code>notebookOpenFailed</code> | [GWT R094][R094] |
| <code>This notebook could not be opened. If the error persists, try removing the accompanying R Markdown file. \n\n{0}</code> | <code>无法打开此笔记本。如果错误仍然存在，请尝试删除配套的 R Markdown 文件。\n\n{0}</code> | <code>notebookOpenFailedMessage</code> | [GWT R094][R094] |
| <code>Rendering notebook...</code> | <code>正在渲染 Notebook…</code> | <code>notebookRendering</code> | [GWT R094][R094] |
| <code>Rendering notebook... (click to cancel)</code> | <code>正在渲染 Notebook…（单击取消）</code> | <code>notebookRenderingClickToCancel</code> | [GWT R094][R094] |
| <code>{0} occurrences replaced.</code> | <code>已替换 {0} 处。</code> | <code>numberOfOccurrencesReplaced</code> | [GWT R094][R094] |
| <code>Object Explorer displayed</code> | <code>显示对象浏览器</code> | <code>objectExplorerDisplayed</code> | [GWT R094][R094] |
| <code>OK</code> | <code>确定</code> | <code>okFullyCapitalized</code> | [GWT R094][R094] |
| <code>Open File</code> | <code>打开文件</code> | <code>openFile</code> | [GWT R094][R094] |
| <code>Opening file...</code> | <code>正在打开文件…</code> | <code>openingFile</code> | [GWT R094][R094] |
| <code>Open Link (Command+Click)</code> | <code>打开链接( Command+Click)</code> | <code>openLinkMacCommand</code> | [GWT R094][R094] |
| <code>Open Link (Ctrl+Click)</code> | <code>打开链接( Ctrl+ Click)</code> | <code>openLinkNotMacCommand</code> | [GWT R094][R094] |
| <code>This notebook has the same name as an R Markdown file, but doesn''t match it</code> | <code>此 Notebook 与一个 R Markdown 文件同名，但内容不匹配</code> | <code>openNotebookWarningMessage</code> | [GWT R094][R094] |
| <code>Output can''t be cleared because there are still chunks running. Do you want to interrupt them?</code> | <code>仍有代码块正在运行，因此无法清除输出。是否中断这些代码块？</code> | <code>outputCantBeClearedBecauseChunks</code> | [GWT R094][R094] |
| <code>Output:</code> | <code>输出 :</code> | <code>outputColon</code> | [GWT R094][R094] |
| <code>{0} of {1}</code> | <code>{0} / {1}</code> | <code>pagingLabelTextOf</code> | [GWT R094][R094] |
| <code>Presentation</code> | <code>演示</code> | <code>presentationCapitalized</code> | [GWT R094][R094] |
| <code>The process cannot access the file because it is being used by another process</code> | <code>另一个进程正在使用此文件，因此当前进程无法访问。</code> | <code>processStillBeingUsedTextEditingTarget</code> | [GWT R094][R094] |
| <code>Profile</code> | <code>性能分析</code> | <code>profileCapitalized</code> | [GWT R094][R094] |
| <code>Profiler</code> | <code>性能分析器</code> | <code>profilerCapitalized</code> | [GWT R094][R094] |
| <code>Profiler Error</code> | <code>性能分析器错误</code> | <code>profilerError</code> | [GWT R094][R094] |
| <code>project</code> | <code>项目</code> | <code>project</code> | [GWT R094][R094] |
| <code>project default</code> | <code>项目默认值</code> | <code>projectDefault</code> | [GWT R094][R094] |
| <code>Publish Application...</code> | <code>发布应用程序...</code> | <code>publishApplication</code> | [GWT R094][R094] |
| <code>Publish Document...</code> | <code>发布文档...</code> | <code>publishDocument</code> | [GWT R094][R094] |
| <code>Publish Plumber API...</code> | <code>发布 Plumber API...</code> | <code>publishPlumberApi</code> | [GWT R094][R094] |
| <code>(Read-only)</code> | <code>(只读)</code> | <code>readOnlyParentheses</code> | [GWT R094][R094] |
| <code>Refresh</code> | <code>刷新</code> | <code>refresh</code> | [GWT R094][R094] |
| <code>Regex</code> | <code>正则表达式</code> | <code>regexCapitalized</code> | [GWT R094][R094] |
| <code>Remove Inline Chunk Output</code> | <code>删除行内代码块输出</code> | <code>removeInlineChunkOutput</code> | [GWT R094][R094] |
| <code>Remove Output</code> | <code>删除输出</code> | <code>removeOutput</code> | [GWT R094][R094] |
| <code>Replace all occurrences</code> | <code>替换所有匹配项</code> | <code>replaceAllOccurrences</code> | [GWT R094][R094] |
| <code>Replace</code> | <code>替换</code> | <code>replaceCapitalized</code> | [GWT R094][R094] |
| <code>Revert</code> | <code>还原</code> | <code>revertCapitalized</code> | [GWT R094][R094] |
| <code>_Revert "{0}"...</code> | <code>_还原 "{0}"...</code> | <code>revertName</code> | [GWT R094][R094] |
| <code>The rmarkdown package is not installed; notebook HTML file will not be generated.</code> | <code>未安装 rmarkdown 程序包；不会生成笔记本 HTML 文件。</code> | <code>rMarkdownNotInstalledHTMLNoGenerate</code> | [GWT R094][R094] |
| <code>An updated version of the rmarkdown package is required to generate notebook HTML files.</code> | <code>生成 Notebook HTML 文件需要更新版本的 rmarkdown 程序包。</code> | <code>rMarkdownUpgradeRequired</code> | [GWT R094][R094] |
| <code>One or more packages required for R Notebook creation were not installed.</code> | <code>创建 R Notebook 所需的一个或多个程序包尚未安装。</code> | <code>rNotebookCreationFailedPackagesNotInstalled</code> | [GWT R094][R094] |
| <code>R Profiler</code> | <code>R 性能分析器</code> | <code>rProfiler</code> | [GWT R094][R094] |
| <code>R Source Viewer</code> | <code>R 源查看器</code> | <code>rSourceViewer</code> | [GWT R094][R094] |
| <code>RStudio cannot execute ''{0}'' because this notebook is already executing code. Interrupt R, or wait for execution to complete.</code> | <code>RStudio 无法执行“{0}”，因为此笔记本已在执行代码。请中断 R，或等待执行完成。</code> | <code>rStudioCannotExecuteJob</code> | [GWT R094][R094] |
| <code>RStudio Source Editor</code> | <code>RStudio 源编辑器</code> | <code>rstudioSourceEditor</code> | [GWT R094][R094] |
| <code>RStudio was unable to autosave this file. You may need to restart RStudio.</code> | <code>RStudio 无法自动保存此文件。 您可能需要重新启动 RStudio.</code> | <code>rStudioUnableToAutosave</code> | [GWT R094][R094] |
| <code>Run Chunk</code> | <code>运行代码块</code> | <code>runChunk</code> | [GWT R094][R094] |
| <code>Run Chunks</code> | <code>运行代码块</code> | <code>runChunks</code> | [GWT R094][R094] |
| <code>Save File - {0}</code> | <code>保存文件 - {0}</code> | <code>saveFileName</code> | [GWT R094][R094] |
| <code>Searching for function definition...</code> | <code>正在搜索函数定义...</code> | <code>searchingForFunctionDefinition</code> | [GWT R094][R094] |
| <code>Search objects</code> | <code>搜索对象</code> | <code>searchObjects</code> | [GWT R094][R094] |
| <code>Search tabs</code> | <code>搜索标签页</code> | <code>searchTabs</code> | [GWT R094][R094] |
| <code>Section</code> | <code>章节</code> | <code>sectionCapitalized</code> | [GWT R094][R094] |
| <code>Selected File Too Large</code> | <code>选中文件太大</code> | <code>selectedFileTooLarge</code> | [GWT R094][R094] |
| <code>Select Engine</code> | <code>选择引擎</code> | <code>selectEngine</code> | [GWT R094][R094] |
| <code>Select how you''d like to handle line wrapping below:</code> | <code>请在下方选择处理自动换行的方式:</code> | <code>selectHandleLineWrapping</code> | [GWT R094][R094] |
| <code>Set as default encoding for source files</code> | <code>设置为源文件的默认编码</code> | <code>setAsDefaultEncodingSourceFiles</code> | [GWT R094][R094] |
| <code>Create an HTML document with interactive Shiny components.</code> | <code>创建包含交互式 Shiny 组件的 HTML 文档。</code> | <code>shinyDocNameDescription</code> | [GWT R094][R094] |
| <code>Shiny Document</code> | <code>Shiny 文档</code> | <code>shinyDocument</code> | [GWT R094][R094] |
| <code>Shiny Presentation</code> | <code>Shiny 演示文稿</code> | <code>shinyPresentation</code> | [GWT R094][R094] |
| <code>Create an IOSlides presentation with interactive Shiny components.</code> | <code>创建包含交互式 Shiny 组件的 IOSlides 演示文稿。</code> | <code>shinyPresentationNameDescription</code> | [GWT R094][R094] |
| <code>Shiny Web Applications</code> | <code>Shiny 网络应用程序</code> | <code>shinyWebApplications</code> | [GWT R094][R094] |
| <code>Show</code> | <code>显示</code> | <code>show</code> | [GWT R094][R094] |
| <code>Show all encodings</code> | <code>显示所有编码</code> | <code>showAllEncodings</code> | [GWT R094][R094] |
| <code>Show Attributes</code> | <code>显示属性</code> | <code>showAttributes</code> | [GWT R094][R094] |
| <code>Show code and output</code> | <code>显示代码和输出</code> | <code>showCodeAndOutput</code> | [GWT R094][R094] |
| <code>Show Data Frame</code> | <code>显示数据框</code> | <code>showDataFrame</code> | [GWT R094][R094] |
| <code>The file ''{0}'' is too large to open in the source editor (the file is {1} and the maximum file size is {2})</code> | <code>文件 ''{0}'' 太大到无法在源编辑器中打开(文件是 {1} 而最大文件大小为 {2})</code> | <code>showFileTooLargeWarningMsg</code> | [GWT R094][R094] |
| <code>Show messages</code> | <code>显示消息</code> | <code>showMessages</code> | [GWT R094][R094] |
| <code>Show nothing (don''t run code)</code> | <code>不显示任何内容（不运行代码）</code> | <code>showNothingDontRunCode</code> | [GWT R094][R094] |
| <code>Show nothing (run code)</code> | <code>无显示( 运行代码)</code> | <code>showNothingRunCode</code> | [GWT R094][R094] |
| <code>Show Object Explorer</code> | <code>显示对象资源管理器</code> | <code>showObjectExplorer</code> | [GWT R094][R094] |
| <code>Show output only</code> | <code>仅显示输出</code> | <code>showOutputOnly</code> | [GWT R094][R094] |
| <code>Show Profiler</code> | <code>显示性能分析器</code> | <code>showProfiler</code> | [GWT R094][R094] |
| <code>Show warnings</code> | <code>显示警告</code> | <code>showWarnings</code> | [GWT R094][R094] |
| <code>Single File (app.R)</code> | <code>单文件 (app.R)</code> | <code>singleFileAppR</code> | [GWT R094][R094] |
| <code>Skip</code> | <code>跳过</code> | <code>skip</code> | [GWT R094][R094] |
| <code>Slide</code> | <code>幻灯片</code> | <code>slideCapitalized</code> | [GWT R094][R094] |
| <code>Source Column {0}</code> | <code>源列 {0}</code> | <code>sourceColumn</code> | [GWT R094][R094] |
| <code>Source Document Error</code> | <code>源文档错误</code> | <code>sourceDocumentError</code> | [GWT R094][R094] |
| <code>The source file {0} does not exist.</code> | <code>源文件 {0} 不存在。</code> | <code>sourceFileAtPathDoesNotExist</code> | [GWT R094][R094] |
| <code>Source Viewer</code> | <code>源查看器</code> | <code>sourceViewer</code> | [GWT R094][R094] |
| <code>The specified theme is a default RStudio theme and cannot be removed.</code> | <code>指定的主题是 RStudio 默认主题，无法删除。</code> | <code>specifiedDefaultThemeCannotBeRemoved</code> | [GWT R094][R094] |
| <code>The specified theme does not exist</code> | <code>指定的主题不存在</code> | <code>specifiedThemeDoesNotExist</code> | [GWT R094][R094] |
| <code>Spell check in progress...</code> | <code>正在检查拼写…</code> | <code>spellCheckInProgress</code> | [GWT R094][R094] |
| <code>Spell check is complete.</code> | <code>拼写检查完成。</code> | <code>spellCheckIsComplete</code> | [GWT R094][R094] |
| <code>Suggestions</code> | <code>建议</code> | <code>suggestionsCapitalized</code> | [GWT R094][R094] |
| <code>Switch to tab</code> | <code>切换到标签页</code> | <code>switchToTab</code> | [GWT R094][R094] |
| <code>Switch to Visual Mode</code> | <code>切换到可视化模式</code> | <code>switchToVisualMode</code> | [GWT R094][R094] |
| <code>{0} (System default)</code> | <code>{0} (系统默认)</code> | <code>sysEncNameDefault</code> | [GWT R094][R094] |
| <code>The template at {0} is missing.</code> | <code>{0} 处缺少模板。</code> | <code>templateAtPathMissing</code> | [GWT R094][R094] |
| <code>Template Content Missing</code> | <code>缺少模板内容</code> | <code>templateContentMissing</code> | [GWT R094][R094] |
| <code>Templates</code> | <code>模板</code> | <code>templatesCapitalized</code> | [GWT R094][R094] |
| <code>Test</code> | <code>测试</code> | <code>testCapitalized</code> | [GWT R094][R094] |
| <code>Textmate (default)</code> | <code>TextMate（默认）</code> | <code>textmateDefaultParentheses</code> | [GWT R094][R094] |
| <code>The profiler</code> | <code>剖析器</code> | <code>theProfilerText</code> | [GWT R094][R094] |
| <code>Title</code> | <code>标题</code> | <code>title</code> | [GWT R094][R094] |
| <code>{0} Profile View</code> | <code>{0} 性能分析视图</code> | <code>titleProfileView</code> | [GWT R094][R094] |
| <code>(Top Level)</code> | <code>（顶层）</code> | <code>topLevelParentheses</code> | [GWT R094][R094] |
| <code>{0} &lt;...truncated...&gt; )</code> | <code>{0} &lt;...已截断...&gt; )</code> | <code>truncatedEllipses</code> | [GWT R094][R094] |
| <code>Type</code> | <code>类型</code> | <code>type</code> | [GWT R094][R094] |
| <code>Unable to activate visual mode (document contains example lists which are not currently supported)</code> | <code>无法激活可视化模式（文档包含当前不支持的示例列表）</code> | <code>unableToActivateVisualModeDocumentContains</code> | [GWT R094][R094] |
| <code>Unable to activate visual mode (error parsing code chunks out of document)</code> | <code>无法激活可视化模式（解析文档代码块时出错）</code> | <code>unableToActivateVisualModeParsingCode</code> | [GWT R094][R094] |
| <code>Unable to activate visual mode (unsupported front matter format or non top-level YAML block)</code> | <code>无法激活可视化模式（不支持的前置元数据格式或非顶层 YAML 块）</code> | <code>unableToActivateVisualModeYAML</code> | [GWT R094][R094] |
| <code>The options use syntax that is not currently supported by the editing UI. Please edit manually.</code> | <code>这些选项使用了当前编辑界面不支持的语法，请手动编辑。</code> | <code>unableToEditMessage</code> | [GWT R094][R094] / Source patch |
| <code>Unable to Edit</code> | <code>无法编辑</code> | <code>unableToEditTitle</code> | [GWT R094][R094] |
| <code>Unable to parse markdown (please report at https://github.com/rstudio/rstudio/issues/new)</code> | <code>无法解析 Markdown（请在 https://github.com/rstudio/rstudio/issues/new 报告）</code> | <code>unableToParseMarkdownPleaseReport</code> | [GWT R094][R094] |
| <code>Unnamed chunk</code> | <code>未命名代码块</code> | <code>unnamedChunk</code> | [GWT R094][R094] |
| <code>Unrecognized Pandoc token(s); {0}</code> | <code>未识别的 Pandoc 符号 ; {0}</code> | <code>unrecognizedPandocTokens</code> | [GWT R094][R094] |
| <code>Unsaved Changes</code> | <code>未保存的更改</code> | <code>unsavedChanges</code> | [GWT R094][R094] |
| <code>Unsupported extensions for markdown mode: {0}</code> | <code>Markdown 模式不支持的扩展: {0}</code> | <code>unsupportedExtensionsForMarkdown</code> | [GWT R094][R094] |
| <code>Untitled Data Browser</code> | <code>无标题数据浏览器</code> | <code>untitledDataBrowser</code> | [GWT R094][R094] |
| <code>Untitled</code> | <code>未命名</code> | <code>untitledDocumentTitle</code> | [GWT R094][R094] / Source patch |
| <code>Untitled Object Explorer</code> | <code>无标题对象浏览器</code> | <code>untitledObjectExplorer</code> | [GWT R094][R094] |
| <code>Untitled Source Viewer</code> | <code>无标题源查看器</code> | <code>untitledSourceViewer</code> | [GWT R094][R094] |
| <code>Untitled URL Browser</code> | <code>无标题 URL 浏览器</code> | <code>untitledUrlBrowser</code> | [GWT R094][R094] |
| <code>URL Browser</code> | <code>URL 浏览器</code> | <code>urlBrowser</code> | [GWT R094][R094] |
| <code>URL Viewer displayed</code> | <code>已显示 URL 查看器</code> | <code>urlViewerDisplayed</code> | [GWT R094][R094] |
| <code>Use {0}-based line wrapping for this document</code> | <code>对此文档使用基于 {0} 的自动换行</code> | <code>useBasedLineWrappingForDocument</code> | [GWT R094][R094] |
| <code>Use {0}-based line wrapping for this project</code> | <code>对此项目使用基于 {0} 的自动换行</code> | <code>useBasedLineWrappingForProject</code> | [GWT R094][R094] |
| <code>Use custom figure size</code> | <code>使用自定义图大小</code> | <code>useCustomFigureSize</code> | [GWT R094][R094] |
| <code>Use the current {0} default line wrapping for this document</code> | <code>对此文档使用当前的 {0} 默认自动换行</code> | <code>useDefaultLinewrapping</code> | [GWT R094][R094] |
| <code>(Use document default)</code> | <code>(使用文档默认值)</code> | <code>useDocumentDefaultParentheses</code> | [GWT R094][R094] |
| <code>Use paged tables</code> | <code>使用页式表格</code> | <code>usePagedTables</code> | [GWT R094][R094] |
| <code>Use Visual Mode</code> | <code>使用可视化模式</code> | <code>useVisualMode</code> | [GWT R094][R094] |
| <code>Using R Markdown Parameters</code> | <code>使用 R Markdown 参数</code> | <code>usingRMarkdownParameters</code> | [GWT R094][R094] |
| <code>Using R Notebooks</code> | <code>使用 R 笔记本</code> | <code>usingRNotebooksText</code> | [GWT R094][R094] |
| <code>Using Shiny with R Markdown</code> | <code>使用 Shiny 与 R Markdown</code> | <code>usingShinyWithRMarkdown</code> | [GWT R094][R094] |
| <code>Value</code> | <code>值</code> | <code>value</code> | [GWT R094][R094] |
| <code>Version control conflict markers detected. Please resolve them before editing in visual mode.</code> | <code>检测到版本控制冲突标记。 请在以视觉模式编辑之前先解决它们.</code> | <code>versionControlConflict</code> | [GWT R094][R094] |
| <code>_View "{0}" on GitHub</code> | <code>_在 GitHub 上查看“{0}”</code> | <code>viewNameOnGithub</code> | [GWT R094][R094] |
| <code>{0}, {1} line</code> | <code>{0}，{1} 行</code> | <code>visualModeChunkSummary</code> | [GWT R094][R094] |
| <code>{0}, {1} lines</code> | <code>{0}，{1} 行</code> | <code>visualModeChunkSummaryPlural</code> | [GWT R094][R094] |
| <code>warning</code> | <code>警告</code> | <code>warningLowercase</code> | [GWT R094][R094] |
| <code>Whole word</code> | <code>全词</code> | <code>wholeWord</code> | [GWT R094][R094] |
| <code>Width (inches):</code> | <code>宽度( 英寸) :</code> | <code>widthInchesColon</code> | [GWT R094][R094] |
| <code>Wrap at column:</code> | <code>在此列自动换行:</code> | <code>wrapAtColumnColon</code> | [GWT R094][R094] |
| <code>Wrap</code> | <code>环绕</code> | <code>wrapCapitalized</code> | [GWT R094][R094] |
| <code>Xaringan presentations cannot be edited in visual mode.</code> | <code>Xaringan 演示文稿无法在可视化模式中编辑。</code> | <code>xaringanPresentationsVisualMode</code> | [GWT R094][R094] |
| <code>Your edits to the file {0} have not been saved</code> | <code>您的编辑到文件 {0} 未保存</code> | <code>yourEditsToFileHasNotBeenSaved</code> | [GWT R094][R094] |
| <code>Your edits to the files {0} have not been saved</code> | <code>您对文件的编辑 {0} 未保存</code> | <code>yourEditsToFilePluralHasNotBeenSaved</code> | [GWT R094][R094] |

## 3. Console / 控制台

本节 50 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Console cleared</code> | <code>控制台已清空</code> | <code>consoleClearedMessage</code> | [GWT R068][R068] |
| <code>Console Tab Job Progress</code> | <code>控制台任务进度</code> | <code>consoleJobProgress</code> | [GWT R068][R068] |
| <code>Console</code> | <code>控制台</code> | <code>consoleLabel</code> | [GWT R068][R068] |
| <code>Console Output</code> | <code>控制台输出</code> | <code>consoleOutputLabel</code> | [GWT R068][R068] |
| <code>Console Tab Debug</code> | <code>控制台调试标签页</code> | <code>consoleTabDebugLabel</code> | [GWT R068][R068] |
| <code>Console Tab</code> | <code>控制台标签页</code> | <code>consoleTabLabel</code> | [GWT R068][R068] |
| <code>Console Tab Profiler</code> | <code>控制台分析器标签页</code> | <code>consoleTabProfilerLabel</code> | [GWT R068][R068] |
| <code>Console Tab Second</code> | <code>第二个控制台标签页</code> | <code>consoleTabSecondLabel</code> | [GWT R068][R068] |
| <code>End: </code> | <code>结束 :</code> | <code>endText</code> | [GWT R068][R068] |
| <code>Error fetching R version</code> | <code>获取 R 版本时出错</code> | <code>errorFetchingRVersion</code> | [GWT R068][R068] / Source patch |
| <code>Error Retrieving Help</code> | <code>获取帮助出错</code> | <code>errorRetrievingHelp</code> | [GWT R068][R068] |
| <code>Error Searching for Function</code> | <code>查找函数出错</code> | <code>errorSearchingForFunctionMessage</code> | [GWT R068][R068] |
| <code>Error: {0}\n</code> | <code>错误：{0}\n</code> | <code>errorString</code> | [GWT R068][R068] |
| <code>Executing Python code</code> | <code>执行 Python 代码</code> | <code>executingPythonCodeProgressCaption</code> | [GWT R068][R068] |
| <code>Press F1 for additional help</code> | <code>按 F1 获取更多帮助</code> | <code>f1prompt</code> | [GWT R068][R068] |
| <code>Finding definition...</code> | <code>正在查找定义...</code> | <code>findingDefinitionProgressMessage</code> | [GWT R068][R068] |
| <code>Warning: Focus console output command unavailable when {0} option is enabled.</code> | <code>警告：启用“{0}”选项后，“聚焦控制台输出”命令不可用。</code> | <code>focusConsoleWarningMessage</code> | [GWT R068][R068] |
| <code>Help</code> | <code>帮助</code> | <code>helpCaption</code> | [GWT R068][R068] |
| <code>Interrupt Python</code> | <code>中断 Python</code> | <code>interruptPythonTitle</code> | [GWT R068][R068] |
| <code>Interrupt R</code> | <code>中断 R</code> | <code>interruptRTitle</code> | [GWT R068][R068] |
| <code>(No matches)</code> | <code>(无匹配)</code> | <code>noMatchesLabel</code> | [GWT R068][R068] |
| <code>(No matching commands)</code> | <code>(无匹配命令)</code> | <code>noMatchingCommandsText</code> | [GWT R068][R068] |
| <code>... Not all items shown</code> | <code>... 未显示全部项目</code> | <code>notAllItemsShownText</code> | [GWT R068][R068] |
| <code>Opening help...</code> | <code>正在打开帮助...</code> | <code>openingHelpProgressMessage</code> | [GWT R068][R068] |
| <code>Position {0}</code> | <code>位置 {0}</code> | <code>positionText</code> | [GWT R068][R068] |
| <code>Profiling Code</code> | <code>剖析代码</code> | <code>profilingCodeTitle</code> | [GWT R068][R068] |
| <code>Searching for definition...</code> | <code>正在搜索定义...</code> | <code>searchingForDefinitionMessage</code> | [GWT R068][R068] |
| <code>Session Suspended</code> | <code>会话已暂停</code> | <code>sessionSuspendedTitle</code> | [GWT R068][R068] / Source patch |
| <code>Start: </code> | <code>开始 :</code> | <code>startText</code> | [GWT R068][R068] |
| <code>(unknown)</code> | <code>(未知)</code> | <code>unknownLabel</code> | [GWT R068][R068] |
| <code>Clearing history...</code> | <code>正在清除历史记录…</code> | <code>clearingHistoryProgressMessage</code> | [GWT R082][R082] |
| <code>Confirm Clear History</code> | <code>确认清除历史</code> | <code>confirmClearHistoryCaption</code> | [GWT R082][R082] |
| <code>Are you sure you want to clear all history entries?</code> | <code>确定要清除所有历史记录条目吗？</code> | <code>confirmClearHistoryMessage</code> | [GWT R082][R082] |
| <code>Confirm Remove Entries</code> | <code>确认删除条目</code> | <code>confirmRemoveEntriesCaption</code> | [GWT R082][R082] |
| <code>Are you sure you want to remove the selected entries from the history?</code> | <code>确定要从历史记录中删除所选条目吗？</code> | <code>confirmRemoveEntriesMessage</code> | [GWT R082][R082] |
| <code>Error</code> | <code>错误</code> | <code>errorCaption</code> | [GWT R082][R082] |
| <code>Error While Retrieving History</code> | <code>获取历史时出错</code> | <code>errorRetrievingHistoryCaption</code> | [GWT R082][R082] |
| <code>Filter command history</code> | <code>筛选命令历史记录</code> | <code>filterCommandHistoryLabel</code> | [GWT R082][R082] |
| <code>History Entry Table</code> | <code>历史条目表</code> | <code>historyEntryTableText</code> | [GWT R082][R082] |
| <code>History Tab</code> | <code>历史标签页</code> | <code>historyTabLabel</code> | [GWT R082][R082] |
| <code>History</code> | <code>历史</code> | <code>historyTitle</code> | [GWT R082][R082] |
| <code>Load History</code> | <code>加载历史记录</code> | <code>loadHistoryCaption</code> | [GWT R082][R082] |
| <code>Load more entries...</code> | <code>加载更多条目…</code> | <code>loadMoreEntriesText</code> | [GWT R082][R082] |
| <code>No history entries currently selected.</code> | <code>当前未选择任何历史记录条目。</code> | <code>noHistoryEntriesSelectedMessage</code> | [GWT R082][R082] |
| <code>Removing items...</code> | <code>正在删除条目…</code> | <code>removingItemsProgressMessage</code> | [GWT R082][R082] |
| <code>Save History As</code> | <code>历史记录另存为</code> | <code>saveHistoryAsCaption</code> | [GWT R082][R082] |
| <code>Search results: {0}</code> | <code>搜索结果: {0}</code> | <code>searchResultsText</code> | [GWT R082][R082] |
| <code>Load {0} more entries</code> | <code>再加载 {0} 个条目</code> | <code>setMoreCommandsText</code> | [GWT R082][R082] |
| <code>Show command in original context</code> | <code>在原上下文中显示命令</code> | <code>showCommandTitle</code> | [GWT R082][R082] |
| <code>Showing command in context</code> | <code>在上下文中显示命令</code> | <code>showingCommandInContext</code> | [GWT R082][R082] |

## 4. Environment / 工作区与数据导入

本节 209 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Character</code> | <code>字符</code> | <code>characterText</code> | [GWT R071][R071] |
| <code>Date</code> | <code>日期</code> | <code>dateText</code> | [GWT R071][R071] |
| <code>DateTime</code> | <code>日期时间</code> | <code>dateTimeText</code> | [GWT R071][R071] |
| <code>Double</code> | <code>双精度数值</code> | <code>doubleText</code> | [GWT R071][R071] |
| <code>Factor</code> | <code>因子</code> | <code>factorText</code> | [GWT R071][R071] |
| <code>Guess</code> | <code>自动判断</code> | <code>guessText</code> | [GWT R071][R071] |
| <code>Include</code> | <code>包含</code> | <code>includeText</code> | [GWT R071][R071] |
| <code>Integer</code> | <code>整数</code> | <code>integerText</code> | [GWT R071][R071] |
| <code>Logical</code> | <code>逻辑</code> | <code>logicalText</code> | [GWT R071][R071] |
| <code>Numeric</code> | <code>数字</code> | <code>numericText</code> | [GWT R071][R071] |
| <code>Only</code> | <code>仅</code> | <code>onlyText</code> | [GWT R071][R071] |
| <code>Skip</code> | <code>跳过</code> | <code>skipText</code> | [GWT R071][R071] |
| <code>Time</code> | <code>时间</code> | <code>timeText</code> | [GWT R071][R071] |
| <code>Code Preview:</code> | <code>代码预览 :</code> | <code>codePreviewText</code> | [GWT R072][R072] |
| <code>Data Preview:</code> | <code>数据预览 :</code> | <code>dataPreviewText</code> | [GWT R072][R072] |
| <code>File/URL:</code> | <code>文件/ URL :</code> | <code>fileURL</code> | [GWT R072][R072] |
| <code>Browse...</code> | <code>浏览...</code> | <code>browseText</code> | [GWT R073][R073] |
| <code>Asciify</code> | <code>转换为 ASCII</code> | <code>asciifyText</code> | [GWT R074][R074] / Source patch |
| <code>Date Format:</code> | <code>日期格式 :</code> | <code>dateFormatText</code> | [GWT R074][R074] |
| <code>Date Name:</code> | <code>日期名称：</code> | <code>dateNameText</code> | [GWT R074][R074] |
| <code>Decimal Mark:</code> | <code>小数标记 :</code> | <code>decimalMarkText</code> | [GWT R074][R074] |
| <code>Encoding:</code> | <code>编码 :</code> | <code>encodingText</code> | [GWT R074][R074] |
| <code>Grouping Mark:</code> | <code>分组标记 :</code> | <code>groupingMarkText</code> | [GWT R074][R074] |
| <code>Time Format:</code> | <code>时间格式 :</code> | <code>timeFormatText</code> | [GWT R074][R074] |
| <code>Time Zone:</code> | <code>时区：</code> | <code>timeZoneText</code> | [GWT R074][R074] / Source patch |
| <code>Comment:</code> | <code>注释 :</code> | <code>commentText</code> | [GWT R075][R075] |
| <code>Configure...</code> | <code>配置...</code> | <code>configureText</code> | [GWT R075][R075] |
| <code>Delimiter:</code> | <code>分隔符 :</code> | <code>delimiterText</code> | [GWT R075][R075] |
| <code>Escape:</code> | <code>转义：</code> | <code>escapeText</code> | [GWT R075][R075] |
| <code>First Row as Names</code> | <code>第一行为名称</code> | <code>firstRowText</code> | [GWT R075][R075] |
| <code>Import Options:</code> | <code>导入选项 :</code> | <code>importOptionsText</code> | [GWT R075][R075] |
| <code>Locale:</code> | <code>区域设置：</code> | <code>localeText</code> | [GWT R075][R075] |
| <code>Name:</code> | <code>名称 :</code> | <code>nameText</code> | [GWT R075][R075] |
| <code>Open Data Viewer</code> | <code>打开数据查看器</code> | <code>openDataViewerText</code> | [GWT R075][R075] |
| <code>Quotes:</code> | <code>引号：</code> | <code>quotesText</code> | [GWT R075][R075] |
| <code>Skip:</code> | <code>跳过 :</code> | <code>skipText</code> | [GWT R075][R075] |
| <code>Trim Spaces</code> | <code>去除首尾空格</code> | <code>trimSpacesText</code> | [GWT R075][R075] |
| <code>Format:</code> | <code>格式 :</code> | <code>formatText</code> | [GWT R076][R076] |
| <code>Import Options:</code> | <code>导入选项 :</code> | <code>importOptions</code> | [GWT R076][R076] |
| <code>Model:</code> | <code>模型：</code> | <code>modelText</code> | [GWT R076][R076] |
| <code>Name:</code> | <code>名称 :</code> | <code>nameText</code> | [GWT R076][R076] |
| <code>Open Data Viewer</code> | <code>打开数据查看器</code> | <code>openDataViewerText</code> | [GWT R076][R076] |
| <code>First Row as Names</code> | <code>第一行为名称</code> | <code>firstRowText</code> | [GWT R077][R077] |
| <code>Import Options:</code> | <code>导入选项 :</code> | <code>importOptionsText</code> | [GWT R077][R077] |
| <code>Max Rows:</code> | <code>最大行数 :</code> | <code>maxRowsText</code> | [GWT R077][R077] |
| <code>Name:</code> | <code>名称 :</code> | <code>nameText</code> | [GWT R077][R077] |
| <code>Open Data Viewer</code> | <code>打开数据查看器</code> | <code>openDataViewer</code> | [GWT R077][R077] |
| <code>Range:</code> | <code>范围 :</code> | <code>rangeText</code> | [GWT R077][R077] |
| <code>Sheet:</code> | <code>工作表 :</code> | <code>sheetText</code> | [GWT R077][R077] |
| <code>Skip:</code> | <code>跳过 :</code> | <code>skipText</code> | [GWT R077][R077] |
| <code>Comment</code> | <code>注释</code> | <code>commentText</code> | [GWT R078][R078] / Source patch |
| <code>Data Frame</code> | <code>数据框</code> | <code>dataFrameText</code> | [GWT R078][R078] / Source patch |
| <code>Decimal</code> | <code>小数点</code> | <code>decimalText</code> | [GWT R078][R078] / Source patch |
| <code>Encoding</code> | <code>编码</code> | <code>encodingText</code> | [GWT R078][R078] / Source patch |
| <code>Heading</code> | <code>标题行</code> | <code>headingLegend</code> | [GWT R078][R078] / Source patch |
| <code>Heading</code> | <code>标题行</code> | <code>headingText</code> | [GWT R078][R078] / Source patch |
| <code>Input File</code> | <code>输入文件</code> | <code>inputFileText</code> | [GWT R078][R078] / Source patch |
| <code>Name</code> | <code>名称</code> | <code>nameText</code> | [GWT R078][R078] / Source patch |
| <code>na.strings</code> | <code>NA 字符串</code> | <code>naStringsText</code> | [GWT R078][R078] / Source patch |
| <code>No</code> | <code>否</code> | <code>noText</code> | [GWT R078][R078] / Source patch |
| <code>Quote</code> | <code>引号</code> | <code>quoteText</code> | [GWT R078][R078] / Source patch |
| <code>Row names</code> | <code>行名称</code> | <code>rowNamesText</code> | [GWT R078][R078] / Source patch |
| <code>Separator</code> | <code>分隔符</code> | <code>separatorText</code> | [GWT R078][R078] / Source patch |
| <code>Strings as factors</code> | <code>将字符串转换为因子</code> | <code>stringsAsFactorsText</code> | [GWT R078][R078] / Source patch |
| <code>Yes</code> | <code>是</code> | <code>yesText</code> | [GWT R078][R078] / Source patch |
| <code>memory in use</code> | <code>正在使用的内存</code> | <code>memoryInUseText</code> | [GWT R079][R079] |
| <code>Memory usage</code> | <code>内存使用情况</code> | <code>memoryUsageTitle</code> | [GWT R079][R079] |
| <code>All columns must have names in order to perform column operations.</code> | <code>必须为所有列命名后才能执行列操作。</code> | <code>allColumnsMustHaveName</code> | [GWT R070][R070] |
| <code>all objects</code> | <code>所有对象</code> | <code>allObjects</code> | [GWT R070][R070] |
| <code>Automatic</code> | <code>自动</code> | <code>automaticCapitalized</code> | [GWT R070][R070] |
| <code>Backslash</code> | <code>反斜线</code> | <code>backslashCapitalized</code> | [GWT R070][R070] |
| <code>Both</code> | <code>两者</code> | <code>bothCapitalized</code> | [GWT R070][R070] |
| <code>{0} for {1}...</code> | <code>{1}的{0}…</code> | <code>browseButtonAriaLabel</code> | [GWT R070][R070] |
| <code>Browse</code> | <code>浏览</code> | <code>browseCapitalized</code> | [GWT R070][R070] |
| <code>Character {0}</code> | <code>字符 {0}</code> | <code>characterOtherDelimiter</code> | [GWT R070][R070] |
| <code>Choose File</code> | <code>选择文件</code> | <code>chooseFile</code> | [GWT R070][R070] |
| <code>Code Creation Error</code> | <code>代码创建错误</code> | <code>codeCreationError</code> | [GWT R070][R070] |
| <code>Collapse Object</code> | <code>折叠对象</code> | <code>collapseObject</code> | [GWT R070][R070] |
| <code>Comma</code> | <code>逗号</code> | <code>commaCapitalized</code> | [GWT R070][R070] |
| <code>Configure</code> | <code>配置</code> | <code>configureCapitalized</code> | [GWT R070][R070] |
| <code>Configure Locale</code> | <code>配置区域设置</code> | <code>configureLocale</code> | [GWT R070][R070] |
| <code>Confirm Load RData</code> | <code>确认加载 RData</code> | <code>confirmLoadRData</code> | [GWT R070][R070] |
| <code>Are you sure you want to remove {0} from the environment? This operation cannot be undone.</code> | <code>确定要从环境中删除{0}吗？此操作无法撤销。</code> | <code>confirmObjectRemove</code> | [GWT R070][R070] |
| <code>Confirm Remove Objects</code> | <code>确认删除对象</code> | <code>confirmRemoveObjects</code> | [GWT R070][R070] |
| <code>Copy Code Preview</code> | <code>复制代码预览</code> | <code>copyCodePreview</code> | [GWT R070][R070] |
| <code>Could not change monitoring state</code> | <code>无法更改监视状态</code> | <code>couldNotChangeMonitoringState</code> | [GWT R070][R070] |
| <code>Current</code> | <code>当前</code> | <code>currentCallFrameAltText</code> | [GWT R070][R070] / Source patch |
| <code>Data</code> | <code>数据</code> | <code>dataCapitalized</code> | [GWT R070][R070] |
| <code>Data Preview</code> | <code>数据预览</code> | <code>dataPreview</code> | [GWT R070][R070] |
| <code>Date and Time Format</code> | <code>日期和时间格式</code> | <code>dateAndTimeFormat</code> | [GWT R070][R070] |
| <code>Date Format</code> | <code>日期格式</code> | <code>dateFormat</code> | [GWT R070][R070] |
| <code>[Debug source]</code> | <code>[调试来源]</code> | <code>debugSourceBrackets</code> | [GWT R070][R070] |
| <code>Default</code> | <code>默认</code> | <code>defaultCapitalized</code> | [GWT R070][R070] |
| <code>Detecting data format</code> | <code>检测数据格式</code> | <code>detectingDataFormat</code> | [GWT R070][R070] |
| <code>Double</code> | <code>双引号</code> | <code>doubleCapitalized</code> | [GWT R070][R070] |
| <code>Double (")</code> | <code>双引号 (")</code> | <code>doubleQuotesParentheses</code> | [GWT R070][R070] |
| <code>Downloading data...</code> | <code>正在下载数据…</code> | <code>downloadingDataEllipses</code> | [GWT R070][R070] |
| <code>empty</code> | <code>空</code> | <code>empty</code> | [GWT R070][R070] |
| <code>Empty pie chart depicting no memory usage</code> | <code>表示没有内存使用量的空饼图</code> | <code>emptyPieChartNoMemoryUsage</code> | [GWT R070][R070] |
| <code>Encoding Identifier</code> | <code>编码标识符</code> | <code>encodingIdentifier</code> | [GWT R070][R070] |
| <code>Please enter an encoding identifier. For a list of valid encodings run iconvlist().</code> | <code>请输入编码标识符。要查看有效编码列表，请运行 iconvlist()。</code> | <code>enterAnEncodingIdentifier</code> | [GWT R070][R070] |
| <code>Please enter a single character delimiter.</code> | <code>请输入单个字符分隔符。</code> | <code>enterSingleCharacterDelimiter</code> | [GWT R070][R070] |
| <code>Environment</code> | <code>环境</code> | <code>environmentCapitalized</code> | [GWT R070][R070] |
| <code>Environment is empty</code> | <code>环境为空</code> | <code>environmentIsEmpty</code> | [GWT R070][R070] |
| <code>Environment Tab</code> | <code>环境标签页</code> | <code>environmentTab</code> | [GWT R070][R070] |
| <code>Environment Tab Second</code> | <code>第二环境标签页</code> | <code>environmentTabSecond</code> | [GWT R070][R070] |
| <code>Error</code> | <code>错误</code> | <code>errorCapitalized</code> | [GWT R070][R070] |
| <code>Error Listing Objects</code> | <code>列出对象出错</code> | <code>errorListingObjects</code> | [GWT R070][R070] |
| <code>Error opening call frame</code> | <code>打开调用帧时出错</code> | <code>errorOpeningCallFrame</code> | [GWT R070][R070] |
| <code>Expand Object</code> | <code>展开对象</code> | <code>expandObject</code> | [GWT R070][R070] |
| <code>Factors</code> | <code>因子</code> | <code>factors</code> | [GWT R070][R070] |
| <code>{0} at {1}:{2}</code> | <code>{0}，位于 {1}:{2}</code> | <code>fileLocationAtLine</code> | [GWT R070][R070] |
| <code>Free system memory</code> | <code>可用系统内存</code> | <code>freeSystemMemory</code> | [GWT R070][R070] |
| <code>Functions</code> | <code>函数</code> | <code>functionsCapitalized</code> | [GWT R070][R070] |
| <code>Global Environment</code> | <code>全局环境</code> | <code>globalEnvironmentName</code> | [GWT R070][R070] / Source patch |
| <code>Grid</code> | <code>网格</code> | <code>gridViewName</code> | [GWT R070][R070] / Source patch |
| <code>Has Trace</code> | <code>含回溯</code> | <code>hasTrace</code> | [GWT R070][R070] |
| <code>Import</code> | <code>导入</code> | <code>importCapitalized</code> | [GWT R070][R070] |
| <code>Import Dataset</code> | <code>导入数据集</code> | <code>importDataset</code> | [GWT R070][R070] |
| <code>Import Excel Data</code> | <code>导入 Excel 数据</code> | <code>importExcelData</code> | [GWT R070][R070] |
| <code>Import from Web URL</code> | <code>从 Web URL 导入</code> | <code>importFromWebURL</code> | [GWT R070][R070] |
| <code>Import Statistical Data</code> | <code>导入统计数据</code> | <code>importStatisticalData</code> | [GWT R070][R070] |
| <code>Import Text Data</code> | <code>导入文本数据</code> | <code>importTextData</code> | [GWT R070][R070] |
| <code>Include hidden objects</code> | <code>包含隐藏对象</code> | <code>includeHiddenObjects</code> | [GWT R070][R070] |
| <code>Incorrect Delimiter</code> | <code>不正确的分隔符</code> | <code>incorrectDelimiter</code> | [GWT R070][R070] |
| <code>Is this a valid CSV file?\n\n</code> | <code>这是有效的 CSV 文件吗？\n\n</code> | <code>isThisAValidCSVFile</code> | [GWT R070][R070] |
| <code>Is this a valid Excel file?\n\n</code> | <code>这是有效的 Excel 文件吗？\n\n</code> | <code>isThisAValidExcelFile</code> | [GWT R070][R070] |
| <code>Is this a valid SPSS, SAS or STATA file?\n\n</code> | <code>这是有效的 SPSS、SAS 或 STATA 文件吗？\n\n</code> | <code>isThisAValidSpssSasSataFile</code> | [GWT R070][R070] |
| <code>{0} KiB used by R session (source: {1})</code> | <code>R 会话占用 {0} KiB（来源：{1}）</code> | <code>kiBUsedByRSession</code> | [GWT R070][R070] |
| <code>Length</code> | <code>长度</code> | <code>lengthCapitalized</code> | [GWT R070][R070] |
| <code>List</code> | <code>列表</code> | <code>listViewName</code> | [GWT R070][R070] / Source patch |
| <code>Load ''{0}'' into an R object named:</code> | <code>将“{0}”加载为 R 对象，对象名称:</code> | <code>loadDataIntoAnRObject</code> | [GWT R070][R070] |
| <code>Do you want to load the R data file "{0}" into your global environment?</code> | <code>要将 R 数据文件“{0}”加载到全局环境中吗？</code> | <code>loadRDataFileIntoGlobalEnv</code> | [GWT R070][R070] |
| <code>Load R Object</code> | <code>加载 R 对象</code> | <code>loadRObject</code> | [GWT R070][R070] |
| <code>Load Workspace</code> | <code>加载工作区</code> | <code>loadWorkspace</code> | [GWT R070][R070] |
| <code>Locales in readr</code> | <code>readr 中的区域设置</code> | <code>localesInReadr</code> | [GWT R070][R070] |
| <code>MacOS System</code> | <code>macOS 系统</code> | <code>macOsSystem</code> | [GWT R070][R070] |
| <code>Memory</code> | <code>内存</code> | <code>memoryCapitalized</code> | [GWT R070][R070] |
| <code>Memory in use: {0}% (source: {1})</code> | <code>内存使用率：{0}%（来源：{1}）</code> | <code>memoryInUse</code> | [GWT R070][R070] |
| <code>Memory in use: none (suspended)</code> | <code>内存使用：无（已暂停）</code> | <code>memoryInUseNone</code> | [GWT R070][R070] |
| <code>Memory Usage</code> | <code>内存使用情况</code> | <code>memoryUsage</code> | [GWT R070][R070] |
| <code>Limit: {0} MiB</code> | <code>限制：{0} MiB</code> | <code>memoryUsageLimit</code> | [GWT R070][R070] |
| <code>Memory Usage Report ({0}% in use)</code> | <code>内存使用报告（已使用 {0}%）</code> | <code>memoryUsageReport</code> | [GWT R070][R070] |
| <code>Session memory used: {0} MiB, {1}. System memory used: {2} out of {3} MiB ({4}% free).</code> | <code>会话内存占用：{0} MiB，{1}。系统内存占用：{2}/{3} MiB（可用 {4}%）。</code> | <code>memoryUsageStatus</code> | [GWT R070][R070] |
| <code>Session memory used: {0} MiB.\n{1}.\nFree system memory: {2} MiB ({3}%).</code> | <code>会话内存占用：{0} MiB。\n{1}。\n可用系统内存：{2} MiB（{3}%）。</code> | <code>multiLineMemoryStatus</code> | [GWT R070][R070] / Source patch |
| <code>{0} objects</code> | <code>{0} 个对象</code> | <code>multipleObjects</code> | [GWT R070][R070] |
| <code>Name</code> | <code>名称</code> | <code>nameCapitalized</code> | [GWT R070][R070] |
| <code>No</code> | <code>否</code> | <code>noCapitalized</code> | [GWT R070][R070] |
| <code>None</code> | <code>无</code> | <code>noneCapitalized</code> | [GWT R070][R070] |
| <code>OK</code> | <code>确定</code> | <code>okCapitalized</code> | [GWT R070][R070] |
| <code>1 object</code> | <code>1 个对象</code> | <code>oneObject</code> | [GWT R070][R070] |
| <code>Other Delimiter</code> | <code>其他分隔符</code> | <code>otherDelimiter</code> | [GWT R070][R070] |
| <code>Other...</code> | <code>其他…</code> | <code>otherEllipses</code> | [GWT R070][R070] |
| <code>Period</code> | <code>点号</code> | <code>periodCapitalized</code> | [GWT R070][R070] |
| <code>Pie chart depicting the percentage of total memory in use</code> | <code>显示总内存使用百分比的饼图</code> | <code>pieChartDepictingMemoryInUse</code> | [GWT R070][R070] |
| <code>Please enter the format string</code> | <code>请输入格式字符串</code> | <code>pleaseEnterFormatString</code> | [GWT R070][R070] |
| <code>Please enter the URL to import data from:</code> | <code>请输入要从中导入数据的 URL:</code> | <code>pleaseEnterURLToImportDataFrom</code> | [GWT R070][R070] |
| <code>Enter a comma separated list of factor levels</code> | <code>输入一个逗号分隔的因子级别列表</code> | <code>pleaseInsertACommaSeparatedList</code> | [GWT R070][R070] |
| <code>Please provide a variable name.</code> | <code>请提供变量名称。</code> | <code>pleaseProvideAVariableName</code> | [GWT R070][R070] |
| <code>Preparing data import</code> | <code>准备数据导入</code> | <code>preparingDataImportText</code> | [GWT R070][R070] |
| <code>Previewing first {0} entries. {1} parsing errors.</code> | <code>正在预览前 {0} 条记录，发现 {1} 个解析错误。</code> | <code>previewingFirstEntriesMultiple</code> | [GWT R070][R070] |
| <code>Previewing first {0} entries. </code> | <code>正在预览前 {0} 条记录。</code> | <code>previewingFirstEntriesNone</code> | [GWT R070][R070] |
| <code>Reading data using haven</code> | <code>使用 haven 读取数据</code> | <code>readingDataUsingHaven</code> | [GWT R070][R070] |
| <code>Reading Excel files using readxl</code> | <code>使用 readxl 读取 Excel 文件</code> | <code>readingExcelFilesUsingReadxl</code> | [GWT R070][R070] |
| <code>Reading rectangular data using readr</code> | <code>使用 readr 读取表格数据</code> | <code>readingRectangularDataUsingReadr</code> | [GWT R070][R070] |
| <code>Refresh Now</code> | <code>立即刷新</code> | <code>refreshNow</code> | [GWT R070][R070] |
| <code>Refresh options</code> | <code>刷新选项</code> | <code>refreshOptions</code> | [GWT R070][R070] |
| <code>Removing objects...</code> | <code>正在删除对象…</code> | <code>removingObjectsEllipses</code> | [GWT R070][R070] |
| <code>Retrieving preview data...</code> | <code>正在获取预览数据…</code> | <code>retrievingPreviewDataEllipses</code> | [GWT R070][R070] |
| <code>Save Workspace As</code> | <code>工作区另存为</code> | <code>saveWorkspaceAs</code> | [GWT R070][R070] |
| <code>Search environment</code> | <code>搜索环境</code> | <code>searchEnvironment</code> | [GWT R070][R070] |
| <code>Select all</code> | <code>全选</code> | <code>selectAll</code> | [GWT R070][R070] |
| <code>Select File to Import</code> | <code>选择要导入的文件</code> | <code>selectFileToImport</code> | [GWT R070][R070] |
| <code>Semicolon</code> | <code>分号</code> | <code>semicolonCapitalized</code> | [GWT R070][R070] |
| <code>Session memory limit</code> | <code>会话内存限制</code> | <code>sessionMemoryLimit</code> | [GWT R070][R070] |
| <code>Show Current Memory Usage</code> | <code>显示当前内存使用情况</code> | <code>showCurrentMemoryUsage</code> | [GWT R070][R070] |
| <code>Show internals</code> | <code>显示内部对象</code> | <code>showInternals</code> | [GWT R070][R070] |
| <code>Single ('')</code> | <code>单引号 ('')</code> | <code>singleQuoteParentheses</code> | [GWT R070][R070] |
| <code>, {0} bytes</code> | <code>, {0} 字节</code> | <code>sizeBytes</code> | [GWT R070][R070] |
| <code>Size</code> | <code>大小</code> | <code>sizeCapitalized</code> | [GWT R070][R070] |
| <code>Source</code> | <code>来源</code> | <code>sourceCapitalized</code> | [GWT R070][R070] |
| <code>The specified delimiter is not valid.</code> | <code>指定的分隔符无效。</code> | <code>specifiedDelimiterNotValid</code> | [GWT R070][R070] |
| <code>Statistic</code> | <code>统计</code> | <code>statisticCapitalized</code> | [GWT R070][R070] |
| <code>Swap space used</code> | <code>已用交换空间</code> | <code>swapSpaceUsed</code> | [GWT R070][R070] |
| <code>Tab</code> | <code>制表符</code> | <code>tabCapitalized</code> | [GWT R070][R070] |
| <code>Time Format</code> | <code>时间格式</code> | <code>timeFormat</code> | [GWT R070][R070] |
| <code>Total system memory</code> | <code>系统内存总量</code> | <code>totalSystemMemory</code> | [GWT R070][R070] |
| <code>Traceback</code> | <code>回溯</code> | <code>tracebackCapitalized</code> | [GWT R070][R070] |
| <code>Type</code> | <code>类型</code> | <code>typeCapitalized</code> | [GWT R070][R070] |
| <code>{0} (unevaluated promise)</code> | <code>{0}（尚未求值的延迟对象）</code> | <code>unevaluatedPromise</code> | [GWT R070][R070] |
| <code>Unknown</code> | <code>未知</code> | <code>unknownCapitalized</code> | [GWT R070][R070] |
| <code>unlimited</code> | <code>无限制</code> | <code>unlimited</code> | [GWT R070][R070] |
| <code>{0} for {1}</code> | <code>{1}的{0}</code> | <code>updateButtonAriaLabel</code> | [GWT R070][R070] |
| <code>Update</code> | <code>更新</code> | <code>updateCapitalized</code> | [GWT R070][R070] |
| <code>Updating preview</code> | <code>更新预览</code> | <code>updatingPreview</code> | [GWT R070][R070] |
| <code>Used by R objects</code> | <code>R 对象占用</code> | <code>usedByRObjects</code> | [GWT R070][R070] |
| <code>Used by session</code> | <code>当前会话占用</code> | <code>usedBySession</code> | [GWT R070][R070] |
| <code>Used by system</code> | <code>系统占用</code> | <code>usedBySystem</code> | [GWT R070][R070] |
| <code>Use first column</code> | <code>使用第一列</code> | <code>useFirstColumn</code> | [GWT R070][R070] |
| <code>Use numbers</code> | <code>使用数字</code> | <code>useNumbers</code> | [GWT R070][R070] |
| <code>Value</code> | <code>值</code> | <code>valueCapitalized</code> | [GWT R070][R070] |
| <code>Values</code> | <code>值</code> | <code>valuesCapitalized</code> | [GWT R070][R070] |
| <code>Variable Name Is Required</code> | <code>需要变量名称</code> | <code>variableNameIsRequired</code> | [GWT R070][R070] |
| <code>Viewing Python objects</code> | <code>查看 Python 对象</code> | <code>viewingPythonObjects</code> | [GWT R070][R070] |
| <code>Viewing Python Objects</code> | <code>查看 Python 对象</code> | <code>viewingPythonObjectsCapitalized</code> | [GWT R070][R070] |
| <code>Whitespace</code> | <code>空白字符</code> | <code>whitespaceCapitalized</code> | [GWT R070][R070] |
| <code>Windows System</code> | <code>Windows 系统</code> | <code>windowsSystem</code> | [GWT R070][R070] |
| <code>Workbench limit</code> | <code>工作台限制</code> | <code>workbenchLimit</code> | [GWT R070][R070] / Source patch |
| <code>Yes</code> | <code>是</code> | <code>yesCapitalized</code> | [GWT R070][R070] |

## 5. Files / 文件

本节 104 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Cancelling...</code> | <code>正在取消...</code> | <code>cancellingMessage</code> | [GWT R066][R066] |
| <code>Choose File</code> | <code>选择文件</code> | <code>chooseFileCaption</code> | [GWT R066][R066] |
| <code>Saving...</code> | <code>正在保存...</code> | <code>savingMessage</code> | [GWT R066][R066] |
| <code>Alias</code> | <code>别名</code> | <code>aliasBadgeLabel</code> | [GWT R080][R080] |
| <code>Blank File Creation Failed</code> | <code>空白文件创建失败</code> | <code>blankFileFailedCaption</code> | [GWT R080][R080] |
| <code>A blank {0} file named "{1}" was unable to be created.\n\nThe server failed with the following error: \n{2}</code> | <code>无法创建名为“{1}”的空白 {0} 文件。\n\n服务器返回以下错误：\n{2}</code> | <code>blankFileFailedMessage</code> | [GWT R080][R080] |
| <code>Blank File</code> | <code>空白文件</code> | <code>blankFileText</code> | [GWT R080][R080] |
| <code>Cancelling</code> | <code>正在取消</code> | <code>cancellingLabel</code> | [GWT R080][R080] |
| <code>?\n\nThis cannot be undone.</code> | <code>？\n\n此操作无法撤销。</code> | <code>cannotBeUndoneMessage</code> | [GWT R080][R080] |
| <code>Choose Destination</code> | <code>选择目标</code> | <code>chooseDestinationTitle</code> | [GWT R080][R080] |
| <code>Choose Folder</code> | <code>选择文件夹</code> | <code>chooseFolderTitle</code> | [GWT R080][R080] |
| <code>Completing</code> | <code>正在完成</code> | <code>completingLabel</code> | [GWT R080][R080] |
| <code>Confirm Delete</code> | <code>确认删除</code> | <code>confirmDeleteCaption</code> | [GWT R080][R080] |
| <code>Confirm Overwrite</code> | <code>确认覆盖</code> | <code>confirmOverwriteCaption</code> | [GWT R080][R080] |
| <code>Copying {0}...</code> | <code>正在复制 {0}...</code> | <code>copyingLabel</code> | [GWT R080][R080] |
| <code>Copy {0}</code> | <code>复制 {0}</code> | <code>copyTitle</code> | [GWT R080][R080] |
| <code>Create a new blank file in current directory</code> | <code>在当前目录中创建新的空白文件</code> | <code>createNewBlankFileText</code> | [GWT R080][R080] |
| <code>Create a New File in Current Directory</code> | <code>在当前目录中创建新文件</code> | <code>createNewFileInCurrentDirectoryTitle</code> | [GWT R080][R080] |
| <code>Create a new file in the current directory</code> | <code>在当前目录中新建文件</code> | <code>createNewFileText</code> | [GWT R080][R080] |
| <code>Create a New {0} File in Current Directory</code> | <code>在当前目录中创建新的 {0} 文件</code> | <code>createNewFileTitle</code> | [GWT R080][R080] |
| <code>Creating file...</code> | <code>正在创建文件...</code> | <code>creatingFileLabel</code> | [GWT R080][R080] |
| <code>Creating folder...</code> | <code>正在创建文件夹...</code> | <code>creatingFolderProgressLabel</code> | [GWT R080][R080] |
| <code>Delete</code> | <code>删除</code> | <code>deleteText</code> | [GWT R080][R080] |
| <code>Move Deleted Files to Recycle Bin</code> | <code>将删除的文件移至回收站</code> | <code>deleteToRecycleBinLabel</code> | [GWT R080][R080] |
| <code>One or more of the selected files could not be moved to the Trash/Recycle Bin.</code> | <code>无法将一个或多个所选文件移到废纸篓/回收站。</code> | <code>deleteToTrashFailedMultipleMessage</code> | [GWT R080][R080] |
| <code>Could not move "{0}" to the Trash/Recycle Bin.</code> | <code>无法将“{0}”移到废纸篓/回收站。</code> | <code>deleteToTrashFailedSingleMessage</code> | [GWT R080][R080] |
| <code>Move Deleted Files to Trash</code> | <code>将已删除的文件移至回收站</code> | <code>deleteToTrashLabel</code> | [GWT R080][R080] |
| <code>Deleting files...</code> | <code>正在删除文件...</code> | <code>deletingFilesLabel</code> | [GWT R080][R080] |
| <code>Please enter the new file name:</code> | <code>请输入新文件名 :</code> | <code>enterFileNameLabel</code> | [GWT R080][R080] |
| <code>Enter a name for the copy of ''{0}'':</code> | <code>请输入“{0}”副本的名称:</code> | <code>enterNameLabel</code> | [GWT R080][R080] |
| <code>Error</code> | <code>错误</code> | <code>errorCaption</code> | [GWT R080][R080] |
| <code>\n\nErrors:</code> | <code>\n\n错误：</code> | <code>errorMessage</code> | [GWT R080][R080] |
| <code>Error Opening Files</code> | <code>打开文件出错</code> | <code>errorOpeningFilesCaption</code> | [GWT R080][R080] |
| <code>Export Files</code> | <code>导出文件</code> | <code>exportFilesCaption</code> | [GWT R080][R080] |
| <code>"{0}" failed to open\n{1}\n</code> | <code>"{0}" 未打开\n{1}\n</code> | <code>failedToOpenMessage</code> | [GWT R080][R080] |
| <code>File Commands</code> | <code>文件命令</code> | <code>fileCommandsLabel</code> | [GWT R080][R080] |
| <code>File display settings</code> | <code>文件显示设置</code> | <code>fileDisplaySettingsLabel</code> | [GWT R080][R080] |
| <code>{0} RNotebook files were unable to be processed and opened.</code> | <code>{0} RNotebook 文件无法处理和打开。</code> | <code>fileErrorMessage</code> | [GWT R080][R080] |
| <code>File</code> | <code>文件</code> | <code>fileLabel</code> | [GWT R080][R080] |
| <code>File Listing Error</code> | <code>文件列表错误</code> | <code>fileListingErrorCaption</code> | [GWT R080][R080] |
| <code>Error navigating to {0}:\n\n{1}</code> | <code>导航到 {0} 时出错：\n\n{1}</code> | <code>fileListingErrorMessage</code> | [GWT R080][R080] |
| <code>these files?</code> | <code>这些文件？</code> | <code>filesLabel</code> | [GWT R080][R080] |
| <code>Files</code> | <code>文件</code> | <code>filesTitle</code> | [GWT R080][R080] |
| <code>File</code> | <code>文件</code> | <code>fileText</code> | [GWT R080][R080] |
| <code>File to upload:</code> | <code>要上传的文件 :</code> | <code>fileToUploadLabel</code> | [GWT R080][R080] |
| <code>File type</code> | <code>文件类型</code> | <code>fileTypeLabel</code> | [GWT R080][R080] / Source patch |
| <code>File Upload Error</code> | <code>文件上传错误</code> | <code>fileUploadErrorMessage</code> | [GWT R080][R080] |
| <code>{0} file upload...</code> | <code>正在上传 {0} 个文件...</code> | <code>fileUploadMessage</code> | [GWT R080][R080] |
| <code>Folder</code> | <code>文件夹</code> | <code>folderLabel</code> | [GWT R080][R080] |
| <code>Folder</code> | <code>文件夹</code> | <code>folderText</code> | [GWT R080][R080] |
| <code>getIcon not supported</code> | <code>不支持 getIcon</code> | <code>getIconNotSupportedException</code> | [GWT R080][R080] |
| <code>Import Dataset...</code> | <code>导入数据集...</code> | <code>importDatasetLabel</code> | [GWT R080][R080] |
| <code>Invalid Selection</code> | <code>无效的选择</code> | <code>invalidSelectionCaption</code> | [GWT R080][R080] |
| <code>Please select a single file to rename.</code> | <code>请选择一个要重命名的文件。</code> | <code>invalidSelectionMessage</code> | [GWT R080][R080] |
| <code>Invalid target folder</code> | <code>无效的目标文件夹</code> | <code>invalidTargetFolderErrorMessage</code> | [GWT R080][R080] |
| <code>mkdir not supported</code> | <code>不支持 mkdir</code> | <code>mkdirNotSupportedException</code> | [GWT R080][R080] |
| <code>Modified</code> | <code>修改时间</code> | <code>modifiedText</code> | [GWT R080][R080] |
| <code>More file commands</code> | <code>更多文件命令</code> | <code>moreFileCommandsLabel</code> | [GWT R080][R080] |
| <code>More</code> | <code>更多</code> | <code>moreText</code> | [GWT R080][R080] |
| <code>Are you sure you want to move</code> | <code>确定要将</code> | <code>moveToTrashMessage</code> | [GWT R080][R080] |
| <code>to the Trash/Recycle Bin?</code> | <code>移到废纸篓/回收站吗？</code> | <code>moveToTrashSuffix</code> | [GWT R080][R080] |
| <code>Moving files...</code> | <code>正在移动文件...</code> | <code>movingFilesLabel</code> | [GWT R080][R080] |
| <code>multiple files including </code> | <code>包含多个文件</code> | <code>multipleFilesMessage</code> | [GWT R080][R080] |
| <code>Multiple Items Selected</code> | <code>选择了多个项目</code> | <code>multipleItemsSelectedCaption</code> | [GWT R080][R080] |
| <code>Please select a single file or folder to copy</code> | <code>请选择要复制的单个文件或文件夹</code> | <code>multipleItemsSelectedMessage</code> | [GWT R080][R080] |
| <code>Name</code> | <code>名称</code> | <code>nameHeaderText</code> | [GWT R080][R080] |
| <code>New Blank File</code> | <code>新建空白文件</code> | <code>newBlankFileText</code> | [GWT R080][R080] |
| <code>New File</code> | <code>新建文件</code> | <code>newFileText</code> | [GWT R080][R080] |
| <code>Please enter the new folder name</code> | <code>请输入新文件夹名称</code> | <code>newFolderNameLabel</code> | [GWT R080][R080] |
| <code>New Folder</code> | <code>新建文件夹</code> | <code>newFolderText</code> | [GWT R080][R080] |
| <code>New Folder</code> | <code>新建文件夹</code> | <code>newFolderTitle</code> | [GWT R080][R080] |
| <code>Open in Editor</code> | <code>在编辑器中打开</code> | <code>openInEditorLabel</code> | [GWT R080][R080] |
| <code>Are you sure you want to overwrite </code> | <code>您确定要覆盖</code> | <code>overwriteQuestion</code> | [GWT R080][R080] |
| <code>Are you sure you want to permanently delete</code> | <code>确定要永久删除</code> | <code>permanentDeleteMessage</code> | [GWT R080][R080] |
| <code>The Public folder cannot be {0}.</code> | <code>Public 文件夹不能被{0}。</code> | <code>publicFolderMessage</code> | [GWT R080][R080] |
| <code>refresh not supported</code> | <code>不支持刷新</code> | <code>refreshNotSupportedException</code> | [GWT R080][R080] |
| <code>Please enter the new file name:</code> | <code>请输入新文件名 :</code> | <code>renameFileCaption</code> | [GWT R080][R080] |
| <code>Rename File</code> | <code>重命名文件</code> | <code>renameFileTitle</code> | [GWT R080][R080] |
| <code>Rename</code> | <code>重命名</code> | <code>renameText</code> | [GWT R080][R080] |
| <code>Renaming file...</code> | <code>重命名文件...</code> | <code>renamingFileProgressMessage</code> | [GWT R080][R080] |
| <code>Select all files</code> | <code>选择全部文件</code> | <code>selectAllFilesLabel</code> | [GWT R080][R080] |
| <code>selected file(s)</code> | <code>所选文件</code> | <code>selectedFilesCaption</code> | [GWT R080][R080] |
| <code>the {0} selected files</code> | <code>选中的 {0} 个文件</code> | <code>selectedFilesMessage</code> | [GWT R080][R080] |
| <code>Shortcut</code> | <code>快捷方式</code> | <code>shortcutBadgeLabel</code> | [GWT R080][R080] / Source patch |
| <code>Show Hidden Files</code> | <code>显示隐藏文件</code> | <code>showHiddenFilesLabel</code> | [GWT R080][R080] |
| <code>Size</code> | <code>大小</code> | <code>sizeText</code> | [GWT R080][R080] |
| <code>You must specify a file to upload.</code> | <code>您必须指定要上传的文件。</code> | <code>specifyFileToUploadException</code> | [GWT R080][R080] |
| <code>Symbolic link</code> | <code>符号链接</code> | <code>symbolicLinkBadgeLabel</code> | [GWT R080][R080] |
| <code>Synchronize Working Directory</code> | <code>同步工作目录</code> | <code>synchronizeWorkingDirectoryLabel</code> | [GWT R080][R080] |
| <code>Target directory:</code> | <code>目标目录 :</code> | <code>targetDirectoryLabel</code> | [GWT R080][R080] |
| <code>the file </code> | <code>文件</code> | <code>theFileMessage</code> | [GWT R080][R080] |
| <code>this file?</code> | <code>此文件？</code> | <code>thisFileLabel</code> | [GWT R080][R080] |
| <code>&lt;b&gt;TIP&lt;/b&gt;: To upload multiple files or a directory, create a zip file. The zip file will be automatically expanded after upload.</code> | <code>&lt;b&gt;提示&lt;/b&gt;: 如需上传多个文件或目录，请先创建 zip 文件；上传后该 zip 文件会自动解压。</code> | <code>tipHTML</code> | [GWT R080][R080] |
| <code>Unexpected response from server</code> | <code>服务器返回了意外响应</code> | <code>unexpectedResponseException</code> | [GWT R080][R080] |
| <code>unzip not found</code> | <code>未找到 unzip</code> | <code>unzipNotFoundCaption</code> | [GWT R080][R080] |
| <code>The unzip system utility could not be found. unzip is required for decompressing .zip archives after upload.\n\nWould you like to upload the zip archive without unzipping?</code> | <code>找不到系统工具 unzip。上传后解压 .zip 归档需要该工具。\n\n是否在不解压的情况下上传该 zip 归档？</code> | <code>unzipNotFoundMessage</code> | [GWT R080][R080] |
| <code>Upload Files</code> | <code>上传文件</code> | <code>uploadFilesTitle</code> | [GWT R080][R080] |
| <code>Uploading file...</code> | <code>正在上传文件...</code> | <code>uploadingFileProgressMessage</code> | [GWT R080][R080] |
| <code>The upload will overwrite </code> | <code>上传将覆盖</code> | <code>uploadOverwriteMessage</code> | [GWT R080][R080] |
| <code>Upload</code> | <code>上传</code> | <code>uploadText</code> | [GWT R080][R080] |
| <code>Use ISO-8601 date-time formatting</code> | <code>使用 ISO 8601 日期时间格式</code> | <code>useIso8601Label</code> | [GWT R080][R080] |
| <code>Use UTC time zone</code> | <code>使用 UTC 时区</code> | <code>useUtcTimeZoneLabel</code> | [GWT R080][R080] |
| <code>View File</code> | <code>查看文件</code> | <code>viewFileLabel</code> | [GWT R080][R080] |
| <code>View in Web Browser</code> | <code>在 Web 浏览器中查看</code> | <code>viewInWebBrowserLabel</code> | [GWT R080][R080] |

## 6. Plots / 图形

本节 71 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Choose Directory</code> | <code>选择目录</code> | <code>chooseDirectoryCaption</code> | [GWT R057][R057] |
| <code>Close</code> | <code>关闭</code> | <code>closeButtonTitle</code> | [GWT R057][R057] |
| <code>Copy as:</code> | <code>复制为 :</code> | <code>copyAsText</code> | [GWT R057][R057] |
| <code>Copy Plot</code> | <code>复制图形</code> | <code>copyButtonText</code> | [GWT R057][R057] |
| <code>Copy Plot to Clipboard</code> | <code>将图形复制到剪贴板</code> | <code>copyPlotText</code> | [GWT R057][R057] |
| <code>Directory...</code> | <code>目录...</code> | <code>directoryButtonTitle</code> | [GWT R057][R057] |
| <code>File Name Required</code> | <code>需要文件名</code> | <code>fileNameRequiredCaption</code> | [GWT R057][R057] |
| <code>You must provide a file name for the plot image.</code> | <code>必须为图形图像提供文件名。</code> | <code>fileNameRequiredMessage</code> | [GWT R057][R057] |
| <code>File name:</code> | <code>文件名 :</code> | <code>fileNameText</code> | [GWT R057][R057] |
| <code>Format</code> | <code>格式</code> | <code>formatName</code> | [GWT R057][R057] |
| <code>Height:</code> | <code>高度 :</code> | <code>heightText</code> | [GWT R057][R057] |
| <code>Image format:</code> | <code>图像格式 :</code> | <code>imageFormatLabel</code> | [GWT R057][R057] |
| <code>Maintain aspect ratio</code> | <code>保持宽高比</code> | <code>maintainAspectRatioText</code> | [GWT R057][R057] |
| <code>Right click on the plot image above to copy to the clipboard.</code> | <code>右键单击上方的图形图像，将其复制到剪贴板。</code> | <code>rightClickPlotImageText</code> | [GWT R057][R057] |
| <code>Save Plot as Image</code> | <code>将图形另存为图像</code> | <code>savePlotAsImageText</code> | [GWT R057][R057] |
| <code>Save</code> | <code>保存</code> | <code>saveTitle</code> | [GWT R057][R057] |
| <code>Selected Directory</code> | <code>选中目录</code> | <code>selectedDirectoryLabel</code> | [GWT R057][R057] |
| <code>Update Preview</code> | <code>更新预览</code> | <code>updatePreviewTitle</code> | [GWT R057][R057] |
| <code>Update</code> | <code>更新</code> | <code>updateTitle</code> | [GWT R057][R057] |
| <code>Use device pixel ratio</code> | <code>使用设备像素比</code> | <code>useDevicePixelRatioCheckBoxLabel</code> | [GWT R057][R057] |
| <code>When set, the plot dimensions will be scaled according to the current display''s device pixel ratio.</code> | <code>启用后，图形尺寸将根据当前显示器的设备像素比进行缩放。</code> | <code>useDevicePixelRatioCheckBoxTitle</code> | [GWT R057][R057] |
| <code>View plot after saving</code> | <code>保存后查看图形</code> | <code>viewAfterSaveCheckBoxTitle</code> | [GWT R057][R057] |
| <code>Width:</code> | <code>宽度 :</code> | <code>widthText</code> | [GWT R057][R057] |
| <code>Choose Directory</code> | <code>选择目录</code> | <code>chooseDirectoryCaption</code> | [GWT R091][R091] |
| <code>Clearing plots...</code> | <code>正在清除图形...</code> | <code>clearingPlotsText</code> | [GWT R091][R091] |
| <code>Clear Plots</code> | <code>清除图形</code> | <code>clearPlotsCaption</code> | [GWT R091][R091] |
| <code>Are you sure you want to clear all of the plots in the history?</code> | <code>确定要清除历史记录中的所有图形吗？</code> | <code>clearPlotsMessage</code> | [GWT R091][R091] |
| <code>Converting Plot...</code> | <code>正在转换图形...</code> | <code>convertingPlotText</code> | [GWT R091][R091] |
| <code>Current Plot</code> | <code>当前图形</code> | <code>currentPlotTitle</code> | [GWT R091][R091] |
| <code>(Custom)</code> | <code>(自定义)</code> | <code>customLabel</code> | [GWT R091][R091] |
| <code>(Device Size)</code> | <code>(设备大小)</code> | <code>deviceSizeName</code> | [GWT R091][R091] |
| <code>Directory...</code> | <code>目录...</code> | <code>directoryTitle</code> | [GWT R091][R091] |
| <code>Error</code> | <code>错误</code> | <code>errorCaption</code> | [GWT R091][R091] |
| <code>Error Saving Plot</code> | <code>保存图形时出错</code> | <code>errorSavingPlotCaption</code> | [GWT R091][R091] |
| <code>Export</code> | <code>导出</code> | <code>exportText</code> | [GWT R091][R091] |
| <code>File Exists</code> | <code>文件已存在</code> | <code>fileExistsCaption</code> | [GWT R091][R091] |
| <code>The specified file name already exists. Do you want to overwrite it?</code> | <code>指定的文件名已存在。是否覆盖？</code> | <code>fileExistsMessage</code> | [GWT R091][R091] |
| <code>File Name Required</code> | <code>需要文件名</code> | <code>fileNameRequiredCaption</code> | [GWT R091][R091] |
| <code>You must provide a file name for the plot pdf.</code> | <code>必须为图形 PDF 提供文件名。</code> | <code>fileNameRequiredMessage</code> | [GWT R091][R091] |
| <code>File name:</code> | <code>文件名 :</code> | <code>fileNameText</code> | [GWT R091][R091] |
| <code>Finish</code> | <code>完成</code> | <code>finishText</code> | [GWT R091][R091] |
| <code>Height</code> | <code>高度</code> | <code>heightLabel</code> | [GWT R091][R091] |
| <code>inches</code> | <code>英寸</code> | <code>inchesLabel</code> | [GWT R091][R091] |
| <code>Landscape</code> | <code>横向</code> | <code>landscapeLabel</code> | [GWT R091][R091] |
| <code>Locator active (Esc to finish)</code> | <code>定位器已启用（按 Esc 完成）</code> | <code>locatorActiveText</code> | [GWT R091][R091] |
| <code>Manipulate</code> | <code>交互操作</code> | <code>manipulateTitle</code> | [GWT R091][R091] |
| <code>Options:</code> | <code>选项 :</code> | <code>optionsText</code> | [GWT R091][R091] |
| <code>Orientation</code> | <code>方向</code> | <code>orientationLabel</code> | [GWT R091][R091] |
| <code>Orientation:</code> | <code>方向 :</code> | <code>orientationText</code> | [GWT R091][R091] |
| <code>PDF Size:</code> | <code>PDF 大小 :</code> | <code>pdfSizeText</code> | [GWT R091][R091] |
| <code>Plot Preview</code> | <code>图形预览</code> | <code>plotPreviewTitle</code> | [GWT R091][R091] |
| <code>Plots Pane</code> | <code>图形窗格</code> | <code>plotsPaneLabel</code> | [GWT R091][R091] |
| <code>Plots</code> | <code>图形</code> | <code>plotsTitle</code> | [GWT R091][R091] |
| <code>Plot</code> | <code>图形</code> | <code>plotText</code> | [GWT R091][R091] |
| <code>Portrait</code> | <code>纵向</code> | <code>portraitLabel</code> | [GWT R091][R091] |
| <code>Preparing to export plot...</code> | <code>正在准备导出图...</code> | <code>preparingExportPlotText</code> | [GWT R091][R091] |
| <code>Preview</code> | <code>预览</code> | <code>previewTitle</code> | [GWT R091][R091] |
| <code>Publishing plots</code> | <code>正在发布图形</code> | <code>publishingPlotsLabel</code> | [GWT R091][R091] |
| <code>Remove Plot</code> | <code>删除图形</code> | <code>removePlotCaption</code> | [GWT R091][R091] |
| <code>Are you sure you want to remove the current plot?</code> | <code>确定要移除当前图形吗？</code> | <code>removePlotMessage</code> | [GWT R091][R091] |
| <code>Removing plot...</code> | <code>正在移除图形...</code> | <code>removingPlotText</code> | [GWT R091][R091] |
| <code>{0} (requires X11)</code> | <code>{0}（需要 X11）</code> | <code>requiresX11Label</code> | [GWT R091][R091] |
| <code>Save Plot as PDF</code> | <code>将图形另存为 PDF</code> | <code>savePlotPDFText</code> | [GWT R091][R091] |
| <code>Save</code> | <code>保存</code> | <code>saveTitle</code> | [GWT R091][R091] |
| <code>Selected Directory</code> | <code>选中目录</code> | <code>selectedDirectoryLabel</code> | [GWT R091][R091] |
| <code>Server Error</code> | <code>服务器错误</code> | <code>serverErrorCaption</code> | [GWT R091][R091] |
| <code>Show plot manipulator</code> | <code>显示图形交互控件</code> | <code>showPlotManipulatorTitle</code> | [GWT R091][R091] |
| <code>Size Preset</code> | <code>大小预设</code> | <code>sizePresetLabel</code> | [GWT R091][R091] |
| <code>Use cairo_pdf device</code> | <code>使用 cairo_pdf 设备</code> | <code>useCairoPdfDeviceLabel</code> | [GWT R091][R091] |
| <code>View plot after saving</code> | <code>保存后查看图形</code> | <code>viewPlotAfterSavingLabel</code> | [GWT R091][R091] |
| <code>Width</code> | <code>宽度</code> | <code>widthLabel</code> | [GWT R091][R091] |

## 7. Packages / 程序包

本节 110 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Action</code> | <code>操作</code> | <code>actionColumnHeaderLabel</code> | [GWT R023][R023] |
| <code>Update Library (Restore)</code> | <code>更新库（恢复）</code> | <code>libraryChoiceRadioButton</code> | [GWT R023][R023] |
| <code>Library</code> | <code>库</code> | <code>libraryColumnHeaderLabel</code> | [GWT R023][R023] |
| <code>You must choose to either update Packrat (snapshot) or update the project's private library (restore).</code> | <code>请选择更新 Packrat（创建快照），或更新项目的私有库（恢复）。</code> | <code>noSelectionMadeMessage</code> | [GWT R023][R023] |
| <code>No Selection Made</code> | <code>未进行选择</code> | <code>noSelectionMadeText</code> | [GWT R023][R023] |
| <code>Resolve</code> | <code>解决</code> | <code>okButtonCaption</code> | [GWT R023][R023] |
| <code>Package</code> | <code>程序包</code> | <code>packageColumnHeaderLabel</code> | [GWT R023][R023] |
| <code>Resolve Conflict</code> | <code>解决冲突</code> | <code>packratResolveConflictDialogCaption</code> | [GWT R023][R023] |
| <code>Resolution:</code> | <code>解决方式：</code> | <code>resolutionLabel</code> | [GWT R023][R023] |
| <code>Packrat's packages are out of sync with the packages currently installed in your library. To resolve the conflict you need to either update Packrat to match your library or update your library to match Packrat.</code> | <code>Packrat 中的程序包与当前安装在库中的程序包不同步。要解决冲突，请更新 Packrat 以匹配库，或更新库以匹配 Packrat。</code> | <code>resolveConflictLabelText</code> | [GWT R023][R023] |
| <code>The following packages have changed in Packrat. Select Restore to apply these changes to your project's private library.</code> | <code>以下程序包已在 Packrat 中发生更改。选择“恢复”可将这些更改应用到项目的私有库。</code> | <code>restoreSummaryLabel</code> | [GWT R023][R023] |
| <code>Update Packrat (Snapshot)</code> | <code>更新 Packrat（创建快照）</code> | <code>snapshotChoiceRadioButtonLabel</code> | [GWT R023][R023] |
| <code>The following packages have changed in your project's private library. Select Snapshot to save these changes in Packrat.</code> | <code>以下程序包已在项目的私有库中发生更改。选择“快照”可将这些更改保存到 Packrat。</code> | <code>snapshotSummaryLabel</code> | [GWT R023][R023] |
| <code>Action</code> | <code>操作</code> | <code>actionVersionColumnText</code> | [GWT R035][R035] |
| <code>Add {0} {1} to the lockfile</code> | <code>将 {0} {1} 添加到锁文件</code> | <code>installAction</code> | [GWT R035][R035] |
| <code>Library</code> | <code>库</code> | <code>libraryCaption</code> | [GWT R035][R035] |
| <code>Library Version</code> | <code>库版本</code> | <code>libraryVersionColumnText</code> | [GWT R035][R035] |
| <code>[Not installed]</code> | <code>[未安装]</code> | <code>libraryVersionNotInstalled</code> | [GWT R035][R035] |
| <code>Lockfile Version</code> | <code>锁定文件版本</code> | <code>lockfileVersionColumnText</code> | [GWT R035][R035] |
| <code>[Not recorded]</code> | <code>[无记录]</code> | <code>lockfileVersionNotRecorded</code> | [GWT R035][R035] |
| <code>Package</code> | <code>程序包</code> | <code>packageColumnText</code> | [GWT R035][R035] |
| <code>Remove {0} {1} from the lockfile</code> | <code>从锁文件中移除 {0} {1}</code> | <code>removeAction</code> | [GWT R035][R035] |
| <code>The following changes will be made to the project library.</code> | <code>将对项目库进行以下更改。</code> | <code>restoreHeaderLabel</code> | [GWT R035][R035] |
| <code>Install {0} {1}</code> | <code>安装 {0} {1}</code> | <code>restoreInstallAction</code> | [GWT R035][R035] |
| <code>Remove {0} {1}</code> | <code>删除 {0} {1}</code> | <code>restoreRemoveAction</code> | [GWT R035][R035] |
| <code>The following packages will be updated in the lockfile.</code> | <code>以下程序包将在锁文件中更新。</code> | <code>snapshotHeaderLabel</code> | [GWT R035][R035] |
| <code>Update {0} [{1} -&gt; {2}] in the lockfile</code> | <code>在锁文件中将 {0} 从 {1} 更新到 {2}</code> | <code>updateAction</code> | [GWT R035][R035] |
| <code>? This action cannot be undone.</code> | <code>？此操作无法撤销。</code> | <code>actionCannotBeUndoneMessage</code> | [GWT R090][R090] |
| <code>Available</code> | <code>可用</code> | <code>availableHeader</code> | [GWT R090][R090] |
| <code>Browse...</code> | <code>浏览...</code> | <code>browseActionLabel</code> | [GWT R090][R090] |
| <code>Browse package on Bioconductor</code> | <code>在 Bioconductor 上浏览程序包</code> | <code>browsePackageBioconductorLabel</code> | [GWT R090][R090] |
| <code>Browse package on CRAN</code> | <code>在 CRAN 上浏览程序包</code> | <code>browsePackageCRANLabel</code> | [GWT R090][R090] |
| <code>Browse package on GitHub</code> | <code>在 GitHub 上浏览程序包</code> | <code>browsePackageGitHubLabel</code> | [GWT R090][R090] |
| <code>Browse package [{0}]</code> | <code>浏览程序包 [{0}]</code> | <code>browsePackageLabel</code> | [GWT R090][R090] |
| <code>Browse package on {0} [{1}]</code> | <code>在 {0} 上浏览程序包 [{1}]</code> | <code>browsePackageOn</code> | [GWT R090][R090] |
| <code>Check for Updates</code> | <code>检查更新</code> | <code>checkForUpdatesCaption</code> | [GWT R090][R090] |
| <code>All packages are up to date.</code> | <code>所有程序包均为最新版本。</code> | <code>checkForUpdatesMessage</code> | [GWT R090][R090] |
| <code>Clean Unused Packages</code> | <code>清理未使用的程序包</code> | <code>cleanUnusedPackagesCaption</code> | [GWT R090][R090] |
| <code>Configuring Repositories</code> | <code>配置仓库</code> | <code>configuringRepositoriesHelpCaption</code> | [GWT R090][R090] |
| <code>Create Package Library</code> | <code>创建程序包库</code> | <code>createPackageLibraryCaption</code> | [GWT R090][R090] |
| <code>Would you like to create a personal library ''{0}'' to install packages into?</code> | <code>是否创建个人库“{0}”并将程序包安装到其中？</code> | <code>createPackageLibraryMessage</code> | [GWT R090][R090] |
| <code>Description</code> | <code>说明</code> | <code>descriptionText</code> | [GWT R090][R090] |
| <code>Display Source column</code> | <code>显示“来源”列</code> | <code>displaySourceColumn</code> | [GWT R090][R090] / Source patch |
| <code>Error</code> | <code>错误</code> | <code>errorCaption</code> | [GWT R090][R090] |
| <code>Error checking Packrat library status</code> | <code>检查 Packrat 库状态出错</code> | <code>errorCheckingPackrat</code> | [GWT R090][R090] |
| <code>Error during {0}</code> | <code>执行 {0} 时出错</code> | <code>errorCheckingPackratAction</code> | [GWT R090][R090] |
| <code>Error Creating Library</code> | <code>创建库出错</code> | <code>errorCreatingLibraryCaption</code> | [GWT R090][R090] |
| <code>Error Listing Packages</code> | <code>列出程序包时出错</code> | <code>errorListingPackagesCaption</code> | [GWT R090][R090] |
| <code>Error Opening NEWS</code> | <code>打开 NEWS 错误</code> | <code>errorOpeningNewsCaption</code> | [GWT R090][R090] |
| <code>This package does not have a NEWS file or RStudio was unable to determine an appropriate NEWS URL for this package.</code> | <code>此程序包没有 NEWS 文件，或 RStudio 无法确定该程序包的 NEWS URL。</code> | <code>errorOpeningNewsMessage</code> | [GWT R090][R090] |
| <code>These packages are present in your library, but do not appear to be used by code in your project. Select any you''d like to clean up.</code> | <code>这些程序包已存在于库中，但项目代码似乎没有使用它们。请选择要清理的程序包。</code> | <code>explanatoryMessage</code> | [GWT R090][R090] |
| <code>Export Project Bundle to Gzipped Tarball</code> | <code>将项目包导出为 gzip 压缩的 tarball</code> | <code>exportProjectBundleCaption</code> | [GWT R090][R090] |
| <code>Filter by package name</code> | <code>按程序包名称筛选</code> | <code>filterByPackageNameLabel</code> | [GWT R090][R090] |
| <code>Help Not Available</code> | <code>帮助不可用</code> | <code>helpNotAvailableCaption</code> | [GWT R090][R090] |
| <code>The package ''{0}'' is not installed. Install the package to make its help content available.</code> | <code>程序包“{0}”尚未安装。安装后才能查看其帮助内容。</code> | <code>helpNotAvailableMessage</code> | [GWT R090][R090] |
| <code>Install</code> | <code>安装</code> | <code>installButtonCaption</code> | [GWT R090][R090] |
| <code>Install dependencies</code> | <code>安装依赖项</code> | <code>installDependenciesText</code> | [GWT R090][R090] |
| <code>Installed</code> | <code>已安装</code> | <code>installedHeader</code> | [GWT R090][R090] |
| <code>Install from:</code> | <code>安装自 :</code> | <code>installFromCaption</code> | [GWT R090][R090] |
| <code>Install Packages</code> | <code>安装程序包</code> | <code>installPackagesCaption</code> | [GWT R090][R090] |
| <code>Install to Library:</code> | <code>安装到库 :</code> | <code>installToLibraryText</code> | [GWT R090][R090] |
| <code>Install Updates</code> | <code>安装更新</code> | <code>installUpdatesCaption</code> | [GWT R090][R090] |
| <code>{0} {1}: Known Vulnerabilities</code> | <code>{0} {1}：已知漏洞</code> | <code>knownVulnerabilitiesTitle</code> | [GWT R090][R090] / Source patch |
| <code>from library ''{0}''</code> | <code>（来自库“{0}”）</code> | <code>libraryMessage</code> | [GWT R090][R090] |
| <code>Library</code> | <code>库</code> | <code>libraryText</code> | [GWT R090][R090] |
| <code>Lockfile</code> | <code>锁定文件</code> | <code>lockfileText</code> | [GWT R090][R090] |
| <code>Name</code> | <code>名称</code> | <code>nameText</code> | [GWT R090][R090] |
| <code>Next</code> | <code>下一个</code> | <code>nextButtonText</code> | [GWT R090][R090] / Source patch |
| <code>No Package Selected</code> | <code>未选择程序包</code> | <code>noPackageSelectedCaption</code> | [GWT R090][R090] |
| <code>You must specify one or more packages to install.</code> | <code>必须指定要安装的一个或多个程序包。</code> | <code>noPackageSelectedMessage</code> | [GWT R090][R090] |
| <code>Opening NEWS...</code> | <code>正在打开 NEWS...</code> | <code>openingNewsProgressMessage</code> | [GWT R090][R090] |
| <code>Package Archive File (</code> | <code>程序包归档文件 (</code> | <code>packageArchiveFileLabel</code> | [GWT R090][R090] |
| <code>Package archive:</code> | <code>程序包归档：</code> | <code>packageArchiveLabel</code> | [GWT R090][R090] |
| <code>Package</code> | <code>程序包</code> | <code>packageHeader</code> | [GWT R090][R090] |
| <code>Package Not Loaded</code> | <code>程序包未加载</code> | <code>packageNotLoadedCaption</code> | [GWT R090][R090] |
| <code>The package ''{0}'' cannot be loaded because it is not installed. Install the package to make it available for loading.</code> | <code>无法加载程序包“{0}”，因为它尚未安装。请先安装该程序包。</code> | <code>packageNotLoadedMessage</code> | [GWT R090][R090] |
| <code>Packages (separate multiple with space or comma):</code> | <code>程序包（多个名称以空格或逗号分隔）:</code> | <code>packagesLabel</code> | [GWT R090][R090] |
| <code>Packages Tab</code> | <code>程序包标签页</code> | <code>packagesTabLabel</code> | [GWT R090][R090] |
| <code>Packages</code> | <code>程序包</code> | <code>packagesTitle</code> | [GWT R090][R090] |
| <code>Packrat Clean</code> | <code>清理 Packrat</code> | <code>packratCleanCaption</code> | [GWT R090][R090] |
| <code>No unused packages were found in the library.</code> | <code>库中没有未使用的程序包。</code> | <code>packratCleanMessage</code> | [GWT R090][R090] |
| <code>The Packrat library is up to date.</code> | <code>Packrat 库已是最新。</code> | <code>packratLibraryUpToDate</code> | [GWT R090][R090] |
| <code>Previous</code> | <code>上一个</code> | <code>previousButtonText</code> | [GWT R090][R090] / Source patch |
| <code>Project Library</code> | <code>项目库</code> | <code>projectLibraryText</code> | [GWT R090][R090] |
| <code>The project is already up to date.</code> | <code>项目已是最新状态。</code> | <code>projectUpToDateMessage</code> | [GWT R090][R090] |
| <code>Remove Packages</code> | <code>删除程序包</code> | <code>removePackagesCaption</code> | [GWT R090][R090] |
| <code>Remove package</code> | <code>移除程序包</code> | <code>removePackageTitle</code> | [GWT R090][R090] |
| <code>Performing {0}...</code> | <code>正在执行 {0}...</code> | <code>renvActionOnProgressMessage</code> | [GWT R090][R090] |
| <code>Package Repository (</code> | <code>程序包仓库 (</code> | <code>repositoryItemLabel</code> | [GWT R090][R090] |
| <code>Package Repository ({0})</code> | <code>程序包仓库 ({0})</code> | <code>repositoryLabel</code> | [GWT R090][R090] |
| <code>One or more of the packages to be updated are currently loaded. Restarting R prior to install is highly recommended.\n\nRStudio can restart R before installing the requested packages. All work and data will be preserved during restart.\n\nDo you want to restart R prior to install?</code> | <code>一个或多个待更新的程序包当前已加载。强烈建议在安装前重新启动 R。\n\nRStudio 可以先重新启动 R，再安装所选程序包；重新启动期间会保留所有工作和数据。\n\n是否在安装前重新启动 R？</code> | <code>restartForInstallWithConfirmation</code> | [GWT R090][R090] |
| <code>Retrieving package installation context...</code> | <code>正在获取程序包安装环境信息...</code> | <code>retrievingPackageInstallationMessage</code> | [GWT R090][R090] |
| <code>Select All</code> | <code>全选</code> | <code>selectAllLabel</code> | [GWT R090][R090] |
| <code>Select None</code> | <code>取消全选</code> | <code>selectNoneLabel</code> | [GWT R090][R090] |
| <code>Select Package Archive</code> | <code>选择程序包归档</code> | <code>selectPackageArchiveCaption</code> | [GWT R090][R090] |
| <code>Select Repository</code> | <code>选择仓库</code> | <code>selectRepositoryCaption</code> | [GWT R090][R090] / Source patch |
| <code>Show hidden repositories</code> | <code>显示隐藏的仓库</code> | <code>showHiddenRepositoriesLabel</code> | [GWT R090][R090] / Source patch |
| <code>Show package NEWS</code> | <code>显示程序包 NEWS</code> | <code>showPackageNewsTitle</code> | [GWT R090][R090] |
| <code>Source</code> | <code>来源</code> | <code>sourceText</code> | [GWT R090][R090] |
| <code>System Library</code> | <code>系统库</code> | <code>systemLibraryText</code> | [GWT R090][R090] |
| <code>Unable to install packages (default library ''{0}'' is not writeable)</code> | <code>无法安装程序包（默认库“{0}”不可写）</code> | <code>unableToInstallPackagesMessage</code> | [GWT R090][R090] |
| <code>Are you sure you wish to permanently uninstall the ''{0}'' package</code> | <code>确定要永久卸载程序包“{0}”吗？</code> | <code>uninstallPackage</code> | [GWT R090][R090] |
| <code>Uninstall Package </code> | <code>卸载程序包</code> | <code>uninstallPackageCaption</code> | [GWT R090][R090] |
| <code>Update</code> | <code>更新</code> | <code>updateButtonText</code> | [GWT R090][R090] / Source patch |
| <code>Update Packages</code> | <code>更新程序包</code> | <code>updatePackagesCaption</code> | [GWT R090][R090] |
| <code>Updating Loaded Packages</code> | <code>更新已加载的程序包</code> | <code>updatingLoadedPackagesCaption</code> | [GWT R090][R090] |
| <code>Up to Date</code> | <code>已是最新</code> | <code>upToDateCaption</code> | [GWT R090][R090] |
| <code>Use repository snapshot from specific date</code> | <code>使用指定日期的仓库快照</code> | <code>useRepositorySnapshotFromSpecificDateLabel</code> | [GWT R090][R090] / Source patch |
| <code>User Library</code> | <code>用户库</code> | <code>userLibraryText</code> | [GWT R090][R090] |
| <code>Version</code> | <code>版本</code> | <code>versionText</code> | [GWT R090][R090] |

## 8. Help / 帮助

本节 16 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>click to run</code> | <code>单击以运行</code> | <code>clickToRun</code> | [GWT R002][R002] |
| <code>''{0}'' does not exist.</code> | <code>''{0}'' 不存在。</code> | <code>doesNotExist</code> | [GWT R002][R002] |
| <code>Documentation not found.</code> | <code>未找到文档。</code> | <code>noDocumentation</code> | [GWT R002][R002] |
| <code>Package not found.</code> | <code>未找到程序包。</code> | <code>noPackage</code> | [GWT R002][R002] |
| <code>No such file</code> | <code>没有此文件</code> | <code>noSuchFile</code> | [GWT R002][R002] |
| <code>Vignette not found.</code> | <code>未找到程序包文档。</code> | <code>noVignette</code> | [GWT R002][R002] |
| <code>Find in Topic</code> | <code>在主题中查找</code> | <code>findInTopicLabel</code> | [GWT R081][R081] |
| <code>Find next (Enter)</code> | <code>查找下一个（Enter）</code> | <code>findNextLabel</code> | [GWT R081][R081] |
| <code>Find previous</code> | <code>查找上一个</code> | <code>findPreviousLabel</code> | [GWT R081][R081] |
| <code>Help Pane</code> | <code>帮助窗格</code> | <code>helpPaneTitle</code> | [GWT R081][R081] |
| <code>Help Tab</code> | <code>帮助标签页</code> | <code>helpTabLabel</code> | [GWT R081][R081] |
| <code>Help Tab Second</code> | <code>第二帮助标签页</code> | <code>helpTabSecondLabel</code> | [GWT R081][R081] |
| <code>Help</code> | <code>帮助</code> | <code>helpText</code> | [GWT R081][R081] |
| <code>Home</code> | <code>主页</code> | <code>homeTitle</code> | [GWT R081][R081] / Source patch |
| <code>No occurrences found</code> | <code>未找到匹配项</code> | <code>noOccurrencesFoundMessage</code> | [GWT R081][R081] |
| <code>Search help</code> | <code>搜索帮助</code> | <code>searchHelpLabel</code> | [GWT R081][R081] / Source patch |

## 9. Connections / 连接

本节 72 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Advanced Options</code> | <code>高级选项</code> | <code>advancedOptionsCaption</code> | [GWT R067][R067] |
| <code>Checking for Updates...</code> | <code>正在检查更新...</code> | <code>checkingForUpdatesProgress</code> | [GWT R067][R067] |
| <code>Configure</code> | <code>配置</code> | <code>configureButtonLabel</code> | [GWT R067][R067] |
| <code>Connected</code> | <code>已连接</code> | <code>connectedText</code> | [GWT R067][R067] |
| <code>Connect to Existing Data Sources</code> | <code>连接到现有数据源</code> | <code>connectExistingDataSourceCaption</code> | [GWT R067][R067] |
| <code>Connect from:</code> | <code>连接方式:</code> | <code>connectFromText</code> | [GWT R067][R067] |
| <code>Connecting</code> | <code>连接中</code> | <code>connectingLabel</code> | [GWT R067][R067] |
| <code>Using {0}</code> | <code>使用 {0}</code> | <code>connectionHelpLink</code> | [GWT R067][R067] |
| <code>{0} via {1}</code> | <code>{0} 通过 {1}</code> | <code>connectionInfoSubTitle</code> | [GWT R067][R067] |
| <code>{0} Connection</code> | <code>{0} 连接</code> | <code>connectionNameLabel</code> | [GWT R067][R067] |
| <code>Connections Tab Connection</code> | <code>连接标签页中的连接</code> | <code>connectionsTab</code> | [GWT R067][R067] / Source patch |
| <code>Connections Tab</code> | <code>连接标签页</code> | <code>connectionsTabLabel</code> | [GWT R067][R067] |
| <code>Connections</code> | <code>连接</code> | <code>connectionsTitle</code> | [GWT R067][R067] |
| <code>Connection</code> | <code>连接</code> | <code>connectionTextHeader</code> | [GWT R067][R067] |
| <code>Connection:</code> | <code>连接 :</code> | <code>connectionTitle</code> | [GWT R067][R067] |
| <code>Connecting to </code> | <code>正在连接到</code> | <code>connectionUserActionLabel</code> | [GWT R067][R067] |
| <code>Connect</code> | <code>连接</code> | <code>connectLabel</code> | [GWT R067][R067] |
| <code>Copy to Clipboard</code> | <code>复制到剪贴板</code> | <code>copyToClipboardItem</code> | [GWT R067][R067] |
| <code>Copy to Clipboard</code> | <code>复制到剪贴板</code> | <code>copyToClipboardText</code> | [GWT R067][R067] |
| <code>Disconnect</code> | <code>断开连接</code> | <code>disconnectCaption</code> | [GWT R067][R067] |
| <code>Are you sure you want to disconnect?</code> | <code>确定要断开连接吗？</code> | <code>disconnectQuestion</code> | [GWT R067][R067] |
| <code>Download and Install?</code> | <code>下载并安装？</code> | <code>downloadAndInstallLabel</code> | [GWT R067][R067] / Source patch |
| <code>The {0} driver is now installed!</code> | <code>{0} 驱动程序已安装！</code> | <code>driverInstalledText</code> | [GWT R067][R067] |
| <code>The {0} driver is currently not installed. </code> | <code>当前尚未安装 {0} 驱动程序。 </code> | <code>driverLabelText</code> | [GWT R067][R067] |
| <code>Driver {0} was successfully uninstalled..</code> | <code>{0} 驱动程序已成功卸载。</code> | <code>driverUninstalledSuccess</code> | [GWT R067][R067] |
| <code>Error</code> | <code>错误</code> | <code>errorCaption</code> | [GWT R067][R067] |
| <code>Explore connection</code> | <code>浏览连接</code> | <code>exploreConnectionTitle</code> | [GWT R067][R067] |
| <code>Failed to check for updates</code> | <code>检查更新失败</code> | <code>failedToCheckUpdatesError</code> | [GWT R067][R067] |
| <code>&lt;b&gt;Failure.&lt;/b&gt; </code> | <code>&lt;b&gt;失败。&lt;/b&gt; </code> | <code>failureHTML</code> | [GWT R067][R067] |
| <code>Filter by connection</code> | <code>按连接筛选</code> | <code>filterByConnectionLabel</code> | [GWT R067][R067] |
| <code>Filter by object</code> | <code>按对象筛选</code> | <code>filterByObjectLabel</code> | [GWT R067][R067] |
| <code>Installation failed</code> | <code>安装失败</code> | <code>installationFailedCaption</code> | [GWT R067][R067] |
| <code>Installation for the {0} driver failed with status {1}.</code> | <code>{0} 驱动程序安装失败，状态为 {1}。</code> | <code>installationFailedMessage</code> | [GWT R067][R067] |
| <code>{0} Installation</code> | <code>{0} 安装</code> | <code>installationPageCaption</code> | [GWT R067][R067] |
| <code>Installation path:</code> | <code>安装路径 :</code> | <code>installationPath</code> | [GWT R067][R067] |
| <code>{0} Installation</code> | <code>{0} 安装</code> | <code>installOdbcCaption</code> | [GWT R067][R067] |
| <code>The {0} driver is being installed...</code> | <code>正在安装 {0} 驱动程序...</code> | <code>installOdbcDriverText</code> | [GWT R067][R067] |
| <code>License:</code> | <code>许可证：</code> | <code>licenseLabel</code> | [GWT R067][R067] / Source patch |
| <code>Loading objects</code> | <code>正在加载对象</code> | <code>loadingObjectsMessage</code> | [GWT R067][R067] |
| <code>New Connection</code> | <code>新建连接</code> | <code>newConnectionCaption</code> | [GWT R067][R067] |
| <code>The R session is currently busy. Wait for completion or interrupt the current session and retry.</code> | <code>R 会话当前正忙。请等待当前操作完成，或中断当前会话后重试。</code> | <code>newConnectionError</code> | [GWT R067][R067] |
| <code>Using {0}</code> | <code>使用 {0}</code> | <code>newConnectionInfoCaption</code> | [GWT R067][R067] |
| <code>{0} Connection</code> | <code>{0} 连接</code> | <code>newConnectionPage</code> | [GWT R067][R067] |
| <code>&lt;b&gt;Success!&lt;/b&gt; The given parameters can be used to connect and disconnect correctly.</code> | <code>&lt;b&gt;成功！&lt;/b&gt;给定参数可用于正常连接和断开连接。</code> | <code>newConnectionSuccessHTML</code> | [GWT R067][R067] |
| <code>New R Notebook</code> | <code>新建 R Notebook</code> | <code>newRNotebookItem</code> | [GWT R067][R067] |
| <code>New R Notebook</code> | <code>新建 R Notebook</code> | <code>newRNotebookText</code> | [GWT R067][R067] |
| <code>New R Script</code> | <code>新建 R 脚本</code> | <code>newRScriptItem</code> | [GWT R067][R067] |
| <code>New R Script</code> | <code>新建 R 脚本</code> | <code>newRScriptText</code> | [GWT R067][R067] |
| <code>(Not connected)</code> | <code>(未连接)</code> | <code>notConnectedLabel</code> | [GWT R067][R067] |
| <code>OK</code> | <code>确定</code> | <code>okLabel</code> | [GWT R067][R067] |
| <code>Options...</code> | <code>选项...</code> | <code>optionsButtonLabel</code> | [GWT R067][R067] |
| <code>Preparing Connections...</code> | <code>正在准备连接...</code> | <code>preparingConnectionsProgressMessage</code> | [GWT R067][R067] |
| <code>Previewing table...</code> | <code>正在预览表格...</code> | <code>previewTableProgressMessage</code> | [GWT R067][R067] |
| <code>R Console</code> | <code>R 控制台</code> | <code>rConsoleItem</code> | [GWT R067][R067] |
| <code>R Console</code> | <code>R 控制台</code> | <code>rConsoleText</code> | [GWT R067][R067] |
| <code>Remove Connection</code> | <code>删除连接</code> | <code>removeConnectionCaption</code> | [GWT R067][R067] |
| <code>Are you sure you want to remove this connection from the connection history?</code> | <code>确定要从连接历史记录中移除此连接吗？</code> | <code>removeConnectionQuestion</code> | [GWT R067][R067] |
| <code>Using RStudio Connections</code> | <code>使用 RStudio 连接</code> | <code>rstudioConnectionsCaption</code> | [GWT R067][R067] |
| <code>Status</code> | <code>状态</code> | <code>statusText</code> | [GWT R067][R067] |
| <code>Test</code> | <code>测试</code> | <code>testButtonLabel</code> | [GWT R067][R067] |
| <code>Testing Connection...</code> | <code>正在测试连接...</code> | <code>testingConnectionProgressMessage</code> | [GWT R067][R067] |
| <code>Test Results</code> | <code>测试结果</code> | <code>testResultsCaption</code> | [GWT R067][R067] |
| <code>title</code> | <code>标题</code> | <code>titleText</code> | [GWT R067][R067] |
| <code>Uninstallation complete</code> | <code>卸载完成</code> | <code>uninstallationCompleteCaption</code> | [GWT R067][R067] |
| <code>Uninstallation failed</code> | <code>卸载失败</code> | <code>uninstallationFailedCaption</code> | [GWT R067][R067] |
| <code>Uninstall...</code> | <code>卸载...</code> | <code>uninstallButton</code> | [GWT R067][R067] |
| <code>Uninstall {0} Driver</code> | <code>卸载 {0} 驱动程序</code> | <code>uninstallDriverCaption</code> | [GWT R067][R067] |
| <code>Uninstall the {0} driver by removing files and registration entries?</code> | <code>是否通过删除文件和注册表项来卸载 {0} 驱动程序？</code> | <code>uninstallDriverMessage</code> | [GWT R067][R067] |
| <code>Uninstallation failed</code> | <code>卸载失败</code> | <code>uninstalledFailedMessage</code> | [GWT R067][R067] |
| <code>View all connections</code> | <code>查看所有连接</code> | <code>viewAllConnectionsTitle</code> | [GWT R067][R067] |
| <code>"View table (up to 1,000 records)"</code> | <code>"查看表格（最多 1,000 条记录）"</code> | <code>viewTableHTML</code> | [GWT R067][R067] |
| <code>Warning</code> | <code>警告</code> | <code>warningAltText</code> | [GWT R067][R067] / Source patch |

## 10. Jobs / 后台作业

本节 45 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Background Jobs Still Running</code> | <code>后台任务仍在运行</code> | <code>backgroundJobsRunningCaption</code> | [GWT R083][R083] |
| <code>The Background Jobs tab cannot be closed while there {0}\n\nWait until all background jobs have completed.</code> | <code>“后台任务”标签页暂时无法关闭，因为仍{0}\n\n请等待所有后台任务完成。</code> | <code>backgroundJobsRunningMessage</code> | [GWT R083][R083] |
| <code>Background Jobs Tab</code> | <code>后台任务标签页</code> | <code>backgroundJobsTabLabel</code> | [GWT R083][R083] |
| <code>Background Jobs</code> | <code>后台任务</code> | <code>backgroundJobsTitle</code> | [GWT R083][R083] |
| <code>are unfinished background jobs.</code> | <code>有未完成的后台任务。</code> | <code>backgroundJobsUnfinished</code> | [GWT R083][R083] |
| <code>is an unfinished background job.</code> | <code>有一个未完成的后台任务。</code> | <code>backgroundJobUnfinished</code> | [GWT R083][R083] |
| <code>Cancel</code> | <code>取消</code> | <code>cancelLabel</code> | [GWT R083][R083] |
| <code>Cancelled</code> | <code>已取消</code> | <code>cancelledState</code> | [GWT R083][R083] |
| <code>Cannot retrieve job output</code> | <code>无法获取任务输出</code> | <code>cannotRetrieveJobOutputCaption</code> | [GWT R083][R083] |
| <code>Current selection</code> | <code>当前选择</code> | <code>currentSelectionText</code> | [GWT R083][R083] |
| <code>(Don''t copy)</code> | <code>(不复制)</code> | <code>dontCopyText</code> | [GWT R083][R083] |
| <code>Failed</code> | <code>失败</code> | <code>failedState</code> | [GWT R083][R083] |
| <code>Idle</code> | <code>空闲</code> | <code>idleState</code> | [GWT R083][R083] |
| <code>The following {0} jobs are still running.</code> | <code>以下 {0} 个任务仍在运行。</code> | <code>jobListLabel</code> | [GWT R083][R083] |
| <code>{0} jobs</code> | <code>{0} 任务</code> | <code>numJobsLabel</code> | [GWT R083][R083] |
| <code>Remove Completed Background Jobs</code> | <code>移除已完成的后台任务</code> | <code>removeCompletedBackgroundJobsCaption</code> | [GWT R083][R083] |
| <code>Are you sure you want to remove completed background jobs from the list of jobs?\n\nOnce removed, background jobs cannot be recovered.</code> | <code>确定要从任务列表中移除已完成的后台任务吗？\n\n移除后将无法恢复这些后台任务。</code> | <code>removeCompletedBackgroundJobsMessage</code> | [GWT R083][R083] |
| <code>Remove jobs</code> | <code>移除任务</code> | <code>removeJobsLabel</code> | [GWT R083][R083] |
| <code>Replay job</code> | <code>重新运行任务</code> | <code>replayJobText</code> | [GWT R083][R083] |
| <code>R Script</code> | <code>R 脚本</code> | <code>rScriptLabel</code> | [GWT R083][R083] |
| <code>Running</code> | <code>正在运行</code> | <code>runningState</code> | [GWT R083][R083] |
| <code>Run Script as Background Job</code> | <code>将脚本作为后台任务运行</code> | <code>runScriptAsBackgroundJobCaption</code> | [GWT R083][R083] |
| <code>Run Selection as Background Job</code> | <code>将所选内容作为后台任务运行</code> | <code>runSelectionAsBackgroundJobCaption</code> | [GWT R083][R083] |
| <code>{0} selection</code> | <code>{0} 个选中项</code> | <code>selectionText</code> | [GWT R083][R083] |
| <code>Select Background Job</code> | <code>选择后台任务</code> | <code>selectJobText</code> | [GWT R083][R083] |
| <code>Start</code> | <code>开始</code> | <code>startButtonCaption</code> | [GWT R083][R083] |
| <code>Stop background job</code> | <code>停止后台任务</code> | <code>stopJobTitle</code> | [GWT R083][R083] |
| <code>Succeeded</code> | <code>已成功</code> | <code>succeededState</code> | [GWT R083][R083] |
| <code>Terminate Jobs</code> | <code>终止任务</code> | <code>terminateJobsCaption</code> | [GWT R083][R083] |
| <code>Terminate Running Jobs</code> | <code>终止运行中的任务</code> | <code>terminateRunningJobsCaption</code> | [GWT R083][R083] |
| <code>To global environment</code> | <code>复制到全局环境</code> | <code>toGlobalEnvironmentText</code> | [GWT R083][R083] |
| <code>To results object in global environment</code> | <code>复制到全局环境中的结果对象</code> | <code>toResultObjectText</code> | [GWT R083][R083] |
| <code>Unknown {0}</code> | <code>未知（{0}）</code> | <code>unknownState</code> | [GWT R083][R083] |
| <code>View all background jobs</code> | <code>查看所有后台任务</code> | <code>viewAllJobsTitle</code> | [GWT R083][R083] |
| <code>Waiting</code> | <code>等待中</code> | <code>waitingText</code> | [GWT R083][R083] |
| <code>Workbench Jobs</code> | <code>Workbench 任务</code> | <code>workbenchJobsTitle</code> | [GWT R083][R083] |
| <code>Working Directory</code> | <code>工作目录</code> | <code>workingDirectoryCaption</code> | [GWT R083][R083] |
| <code>Copy job results:</code> | <code>复制任务结果：</code> | <code>copyJobText</code> | [GWT R084][R084] |
| <code>Environment</code> | <code>环境</code> | <code>environmentText</code> | [GWT R084][R084] |
| <code>Run job with copy of global environment</code> | <code>使用全局环境的副本运行任务</code> | <code>runJobText</code> | [GWT R084][R084] |
| <code>Script Paths</code> | <code>脚本路径</code> | <code>scriptPathsText</code> | [GWT R084][R084] |
| <code>Job has not emitted output</code> | <code>任务未输出</code> | <code>jobNotEmittedText</code> | [GWT R085][R085] |
| <code>The following job is still running.</code> | <code>以下后台任务仍在运行。</code> | <code>jobRunningText</code> | [GWT R086][R086] |
| <code>Quitting the session will terminate these jobs.</code> | <code>退出会话将终止这些后台任务。</code> | <code>quittingSession</code> | [GWT R086][R086] |
| <code>No background jobs are currently running</code> | <code>当前没有正在运行的后台任务</code> | <code>noJobsRunningText</code> | [GWT R087][R087] |

## 11. Git / 版本控制

本节 173 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>RStudio: Review Changes</code> | <code>RStudio: 审查更改</code> | <code>vcsWindowTitle</code> | [GWT R050][R050] |
| <code>Warning</code> | <code>警告</code> | <code>warningAltText</code> | [GWT R104][R104] / Source patch |
| <code>&lt;strong&gt;This {0}{1} is extremely large ({2}{3}) and may&lt;br&gt; cause RStudio to slow down or even hang.&lt;/strong&gt; &lt;br&gt;&lt;br&gt; Are you sure you want to continue?</code> | <code>&lt;strong&gt;此{0}{1}非常大（{2}{3}），可能会&lt;br&gt;导致 RStudio 变慢甚至无响应。&lt;/strong&gt;&lt;br&gt;&lt;br&gt;确定要继续吗？</code> | <code>warningText</code> | [GWT R104][R104] / Source patch |
| <code>Amend previous commit</code> | <code>修订上一次提交</code> | <code>amendPreviousCommit</code> | [GWT R105][R105] |
| <code>Commit message</code> | <code>提交消息</code> | <code>commitMessage</code> | [GWT R105][R105] |
| <code>Context</code> | <code>上下文</code> | <code>contextText</code> | [GWT R105][R105] |
| <code>Ignore Whitespace</code> | <code>忽略空白</code> | <code>ignoreWhitespaceText</code> | [GWT R105][R105] |
| <code>Show</code> | <code>显示</code> | <code>showText</code> | [GWT R105][R105] |
| <code>Staged</code> | <code>已暂存</code> | <code>stagedText</code> | [GWT R105][R105] |
| <code>Unstaged</code> | <code>未暂存</code> | <code>unstagedText</code> | [GWT R105][R105] |
| <code>Clear Selection</code> | <code>清除选择</code> | <code>clearSelectionText</code> | [GWT R107][R107] |
| <code>Commit message:</code> | <code>提交消息 :</code> | <code>commitMessageText</code> | [GWT R107][R107] |
| <code>Select items to commit:</code> | <code>选择要提交的项目：</code> | <code>selectItems</code> | [GWT R107][R107] |
| <code>Accept my version of the entire file, even non-conflicts</code> | <code>接受整个文件的本地版本，包括非冲突内容</code> | <code>descriptionMineAll</code> | [GWT R106][R106] |
| <code>Accept my version for all conflicts</code> | <code>所有冲突均接受本地版本</code> | <code>descriptionMineConflict</code> | [GWT R106][R106] |
| <code>Accept their version of the entire file, even non-conflicts</code> | <code>接受整个文件的对方版本，包括非冲突内容</code> | <code>descriptionTheirsAll</code> | [GWT R106][R106] |
| <code>Accept their version for all conflicts</code> | <code>所有冲突均接受对方版本</code> | <code>descriptionTheirsConflict</code> | [GWT R106][R106] |
| <code>Mark the working copy as resolved</code> | <code>将工作副本标为已解决</code> | <code>descriptionWorking</code> | [GWT R106][R106] |
| <code>Mine-All</code> | <code>全部采用本地版本</code> | <code>labelMineAll</code> | [GWT R106][R106] / Source patch |
| <code>Mine-Conflict</code> | <code>本地版本（仅冲突）</code> | <code>labelMineConflict</code> | [GWT R106][R106] |
| <code>Theirs-All</code> | <code>全部采用对方版本</code> | <code>labelTheirsAll</code> | [GWT R106][R106] / Source patch |
| <code>Theirs-Conflict</code> | <code>对方版本（仅冲突）</code> | <code>labelTheirsConflict</code> | [GWT R106][R106] |
| <code>Working</code> | <code>工作副本</code> | <code>labelWorking</code> | [GWT R106][R106] / Source patch |
| <code>Resolve the selected {0}{1} using:</code> | <code>使用以下方式解决所选 {0}{1}：</code> | <code>resolveText</code> | [GWT R106][R106] |
| <code>Add</code> | <code>添加</code> | <code>addCapitalized</code> | [GWT R103][R103] |
| <code>Added</code> | <code>已添加</code> | <code>addedCapitalized</code> | [GWT R103][R103] |
| <code>Add Remote</code> | <code>添加远程</code> | <code>addRemote</code> | [GWT R103][R103] |
| <code>Add Remote...</code> | <code>添加远程...</code> | <code>addRemoteEllipses</code> | [GWT R103][R103] |
| <code>(all branches)</code> | <code>(所有分支)</code> | <code>allBranchesParentheses</code> | [GWT R103][R103] |
| <code>All changes in this file will be lost.\n\nAre you sure you want to continue?</code> | <code>此文件中的所有更改都将丢失。\n\n确定要继续吗？</code> | <code>allChangesInFileWillBeLost</code> | [GWT R103][R103] |
| <code>(all commits)</code> | <code>(所有提交)</code> | <code>allCommitsParentheses</code> | [GWT R103][R103] |
| <code>All lines</code> | <code>所有行</code> | <code>allLinesText</code> | [GWT R103][R103] / Source patch |
| <code>All unstaged changes in this file will be lost.\n\nAre you sure you want to continue?</code> | <code>此文件中所有未暂存的更改都将丢失。\n\n确定要继续吗？</code> | <code>allUnstagedChangesWillBeLost</code> | [GWT R103][R103] |
| <code>Author</code> | <code>作者</code> | <code>authorCapitalized</code> | [GWT R103][R103] |
| <code>Your branch is ahead of ''{0}'' by {1} commits.</code> | <code>您的分支比“{0}”领先 {1} 个提交。</code> | <code>branchAheadOfRemotePlural</code> | [GWT R103][R103] |
| <code>Your branch is ahead of ''{0}'' by {1} commit.</code> | <code>您的分支比“{0}”领先 {1} 个提交。</code> | <code>branchAheadOfRemoteSingular</code> | [GWT R103][R103] |
| <code>Branch Name:</code> | <code>分支名称 :</code> | <code>branchNameColon</code> | [GWT R103][R103] |
| <code>Cancel</code> | <code>取消</code> | <code>cancelCapitalized</code> | [GWT R103][R103] |
| <code>Changelist</code> | <code>更改列表</code> | <code>changeList</code> | [GWT R103][R103] |
| <code>Changes</code> | <code>变动</code> | <code>changesCapitalized</code> | [GWT R103][R103] |
| <code>Changes to the selected file will be lost, including staged changes.\n\nAre you sure you want to continue?</code> | <code>所选文件的更改将丢失，包括已暂存的更改。\n\n确定要继续吗？</code> | <code>changesToFileWillBeLost</code> | [GWT R103][R103] |
| <code>Changes to the selected files will be lost, including staged changes.\n\nAre you sure you want to continue?</code> | <code>所选文件的更改将丢失，包括已暂存的更改。\n\n确定要继续吗？</code> | <code>changesToFileWillBeLostPlural</code> | [GWT R103][R103] |
| <code>Changes to the selected file will be reverted.\n\nAre you sure you want to continue?</code> | <code>将还原对所选文件的更改。\n\n确定要继续吗？</code> | <code>changesToSelectedFileWillBeReverted</code> | [GWT R103][R103] |
| <code>Changes to the selected files will be reverted.\n\nAre you sure you want to continue?</code> | <code>将还原对所选文件的更改。\n\n确定要继续吗？</code> | <code>changesToSelectedFileWillBeRevertedPlural</code> | [GWT R103][R103] |
| <code>Checkout</code> | <code>检出</code> | <code>checkoutCapitalized</code> | [GWT R103][R103] |
| <code>Choose File</code> | <code>选择文件</code> | <code>chooseFileCapitalized</code> | [GWT R103][R103] |
| <code>Choose Folder</code> | <code>选择文件夹</code> | <code>chooseFolderCapitalized</code> | [GWT R103][R103] |
| <code>{0} chunk</code> | <code>{0} 个代码块</code> | <code>chunkSuffix</code> | [GWT R103][R103] |
| <code>Cleaning up working directory...</code> | <code>正在清理工作目录...</code> | <code>cleaningUpWorkingDirectoryEllipses</code> | [GWT R103][R103] |
| <code>Close</code> | <code>关闭</code> | <code>closeCapitalized</code> | [GWT R103][R103] |
| <code>commit</code> | <code>提交</code> | <code>commit</code> | [GWT R103][R103] |
| <code>Commit</code> | <code>提交</code> | <code>commitCapitalized</code> | [GWT R103][R103] |
| <code>commit depth {0}</code> | <code>提交深度 {0}</code> | <code>commitDepthAltText</code> | [GWT R103][R103] |
| <code>Commits {0}</code> | <code>提交 {0}</code> | <code>commitsPager</code> | [GWT R103][R103] |
| <code>Committing Large Files</code> | <code>提交大文件</code> | <code>committingLargeFiles</code> | [GWT R103][R103] |
| <code>Conflicted</code> | <code>冲突</code> | <code>conflictedCapitalized</code> | [GWT R103][R103] |
| <code>Context</code> | <code>上下文</code> | <code>contextText</code> | [GWT R103][R103] / Source patch |
| <code>Copied</code> | <code>复制</code> | <code>copiedCapitalized</code> | [GWT R103][R103] |
| <code>Create</code> | <code>创建</code> | <code>createCapitalized</code> | [GWT R103][R103] |
| <code>Date (UTC)</code> | <code>日期（UTC）</code> | <code>dateCapitalized</code> | [GWT R103][R103] |
| <code>Deleted</code> | <code>删除</code> | <code>deletedCapitalized</code> | [GWT R103][R103] |
| <code>diff</code> | <code>差异</code> | <code>diff</code> | [GWT R103][R103] |
| <code>Diff</code> | <code>差异</code> | <code>diffCapitalized</code> | [GWT R103][R103] |
| <code>Diff Error</code> | <code>diff 错误</code> | <code>diffError</code> | [GWT R103][R103] |
| <code>Discard All</code> | <code>全部丢弃</code> | <code>discardAllCapitalized</code> | [GWT R103][R103] |
| <code>Discard</code> | <code>丢弃</code> | <code>discardCapitalized</code> | [GWT R103][R103] |
| <code>Error</code> | <code>错误</code> | <code>errorCapitalized</code> | [GWT R103][R103] |
| <code>Error Fetching History</code> | <code>获取历史出错</code> | <code>errorFetchingHistory</code> | [GWT R103][R103] |
| <code>External</code> | <code>外部</code> | <code>externalCapitalized</code> | [GWT R103][R103] |
| <code>File Conflict</code> | <code>文件冲突</code> | <code>fileConflictCapitalized</code> | [GWT R103][R103] |
| <code>This file has a conflict. Would you like to mark it as resolved now?</code> | <code>此文件存在冲突。是否立即将其标记为已解决？</code> | <code>fileConflictMarkAsResolved</code> | [GWT R103][R103] |
| <code>Filter by Directory...</code> | <code>按目录筛选...</code> | <code>filterByDirectoryEllipses</code> | [GWT R103][R103] |
| <code>Filter by File...</code> | <code>按文件筛选...</code> | <code>filterByFileEllipses</code> | [GWT R103][R103] |
| <code>Filter: (None)</code> | <code>筛选器：（无）</code> | <code>filterColonNone</code> | [GWT R103][R103] |
| <code>Filter: {0}</code> | <code>筛选器：{0}</code> | <code>filterColonPath</code> | [GWT R103][R103] |
| <code>Git Diff</code> | <code>Git 差异</code> | <code>gitDiffCapitalized</code> | [GWT R103][R103] |
| <code>Git Ignore</code> | <code>Git 忽略</code> | <code>gitIgnoreCapitalized</code> | [GWT R103][R103] |
| <code>Git Review</code> | <code>Git 审查</code> | <code>gitReviewCapitalized</code> | [GWT R103][R103] |
| <code>Git Tab</code> | <code>Git 标签页</code> | <code>gitTabCapitalized</code> | [GWT R103][R103] |
| <code>History</code> | <code>历史</code> | <code>historyCapitalized</code> | [GWT R103][R103] |
| <code>Ignore</code> | <code>忽略</code> | <code>ignoreCapitalized</code> | [GWT R103][R103] |
| <code>Ignored</code> | <code>已忽略</code> | <code>ignoredCapitalized</code> | [GWT R103][R103] |
| <code>Ignore...</code> | <code>忽略...</code> | <code>ignoreEllipses</code> | [GWT R103][R103] |
| <code>{0} characters</code> | <code>{0} 字符</code> | <code>lengthCharacters</code> | [GWT R103][R103] |
| <code>{0} characters in message</code> | <code>提交消息中有 {0} 个字符</code> | <code>lengthCharactersInMessage</code> | [GWT R103][R103] |
| <code>{0} lines</code> | <code>{0} 行</code> | <code>linesText</code> | [GWT R103][R103] / Source patch |
| <code>{0} line</code> | <code>{0} 行</code> | <code>lineSuffix</code> | [GWT R103][R103] |
| <code>A local branch named ''{0}'' already exists. Would you like to check out that branch, or overwrite it?</code> | <code>名为“{0}”的本地分支已存在。要检出该分支，还是覆盖它？</code> | <code>localBranchAlreadyExists</code> | [GWT R103][R103] |
| <code>Local Branch Already Exists</code> | <code>本地分支已经存在</code> | <code>localBranchAlreadyExistsCaption</code> | [GWT R103][R103] |
| <code>(local branches)</code> | <code>(本地分支)</code> | <code>localBranchesParentheses</code> | [GWT R103][R103] |
| <code>Message Required</code> | <code>需要提交消息</code> | <code>messageRequiredCapitalized</code> | [GWT R103][R103] |
| <code>Missing</code> | <code>缺失</code> | <code>missingCapitalized</code> | [GWT R103][R103] |
| <code>Modified</code> | <code>已修改</code> | <code>modifiedCapitalized</code> | [GWT R103][R103] |
| <code>More</code> | <code>更多</code> | <code>moreCapitalized</code> | [GWT R103][R103] |
| <code>New Branch</code> | <code>新建分支</code> | <code>newBranchCapitalized</code> | [GWT R103][R103] |
| <code>(no branches available)</code> | <code>(无可用分支)</code> | <code>noBranchesAvailableParentheses</code> | [GWT R103][R103] |
| <code>(no branch)</code> | <code>(无分支)</code> | <code>noBranchParentheses</code> | [GWT R103][R103] |
| <code>No changes</code> | <code>无变化</code> | <code>noChanges</code> | [GWT R103][R103] |
| <code>No Changes to File</code> | <code>没有更改文件</code> | <code>noChangesToFile</code> | [GWT R103][R103] |
| <code>There are no changes to the file "{0}" to diff.</code> | <code>文件“{0}”没有可比较的更改。</code> | <code>noChangesToFileTODiff</code> | [GWT R103][R103] |
| <code>There are no changes to the file "{0}" to revert.</code> | <code>文件“{0}”没有可还原的更改。</code> | <code>noChangesToFileToRevert</code> | [GWT R103][R103] |
| <code>No Changes to Revert</code> | <code>无更改以还原</code> | <code>noChangesToRevert</code> | [GWT R103][R103] |
| <code>(No commit selected)</code> | <code>(未选择提交)</code> | <code>noCommitSelectedParentheses</code> | [GWT R103][R103] |
| <code>No Conflicts Detected</code> | <code>未发现冲突</code> | <code>noConflictsDetected</code> | [GWT R103][R103] |
| <code>No Items Selected</code> | <code>未选中项目</code> | <code>noItemsSelectedCapitalized</code> | [GWT R103][R103] |
| <code>None of the selected paths appear to have conflicts.\n\nDo you want to resolve anyway?</code> | <code>所选路径似乎都没有冲突。\n\n仍要标记为已解决吗？</code> | <code>noneOfSelectedPathsHaveConflicts</code> | [GWT R103][R103] |
| <code>Obstructed</code> | <code>受阻</code> | <code>obstructedCapitalized</code> | [GWT R103][R103] |
| <code>Open File</code> | <code>打开文件</code> | <code>openFileCapitalized</code> | [GWT R103][R103] |
| <code>Overwrite</code> | <code>覆盖</code> | <code>overwriteCapitalized</code> | [GWT R103][R103] |
| <code>Parent</code> | <code>父提交</code> | <code>parentCommitLabel</code> | [GWT R103][R103] / Source patch |
| <code>path</code> | <code>路径</code> | <code>path</code> | [GWT R103][R103] |
| <code>Path</code> | <code>路径</code> | <code>pathCapitalized</code> | [GWT R103][R103] |
| <code>paths</code> | <code>路径</code> | <code>paths</code> | [GWT R103][R103] |
| <code>Progress details</code> | <code>进展详情</code> | <code>progressDetails</code> | [GWT R103][R103] |
| <code>Please provide a commit message.</code> | <code>请提供提交消息。</code> | <code>provideACommitMessage</code> | [GWT R103][R103] |
| <code>Pull</code> | <code>拉取</code> | <code>pullCapitalized</code> | [GWT R103][R103] |
| <code>Pull options</code> | <code>拉取选项</code> | <code>pullOptions</code> | [GWT R103][R103] |
| <code>Push</code> | <code>推送</code> | <code>pushCapitalized</code> | [GWT R103][R103] |
| <code>Reading file...</code> | <code>正在读取文件...</code> | <code>readingFileEllipses</code> | [GWT R103][R103] |
| <code>Refresh</code> | <code>刷新</code> | <code>refreshCapitalized</code> | [GWT R103][R103] |
| <code>Refresh Now</code> | <code>立即刷新</code> | <code>refreshNowCapitalized</code> | [GWT R103][R103] |
| <code>Refresh options</code> | <code>刷新选项</code> | <code>refreshOptions</code> | [GWT R103][R103] |
| <code>Remote Branch Already Exists</code> | <code>远程分支已存在</code> | <code>remoteBranchAlreadyExistsCaption</code> | [GWT R103][R103] |
| <code>(Remote: {0})</code> | <code>(远程：{0})</code> | <code>remoteBranchCaption</code> | [GWT R103][R103] |
| <code>A remote branch named ''{0}'' already exists on the remote repository ''{1}''. Would you like to check out that branch?</code> | <code>远程仓库“{1}”中已存在名为“{0}”的远程分支。是否检出该分支？</code> | <code>remoteBranchNameAlreadyExists</code> | [GWT R103][R103] |
| <code>Remote:</code> | <code>远程 :</code> | <code>remoteColon</code> | [GWT R103][R103] |
| <code>Remote Name:</code> | <code>远程名称 :</code> | <code>remoteNameColon</code> | [GWT R103][R103] |
| <code>Remote URL:</code> | <code>远程 URL :</code> | <code>remoteUrlColon</code> | [GWT R103][R103] |
| <code>Renamed</code> | <code>已重命名</code> | <code>renamedCapitalized</code> | [GWT R103][R103] |
| <code>Resolve</code> | <code>解决</code> | <code>resolveCapitalized</code> | [GWT R103][R103] |
| <code>Revert</code> | <code>还原</code> | <code>revertCapitalized</code> | [GWT R103][R103] |
| <code>Revert Changes</code> | <code>还原更改</code> | <code>revertChangesCapitalized</code> | [GWT R103][R103] |
| <code>Revert...</code> | <code>还原...</code> | <code>revertEllipses</code> | [GWT R103][R103] |
| <code>Revision</code> | <code>修订版本</code> | <code>revisionCapitalized</code> | [GWT R103][R103] |
| <code>Search by branch name</code> | <code>按分支名称搜索</code> | <code>searchByBranchName</code> | [GWT R103][R103] |
| <code>Search</code> | <code>搜索</code> | <code>searchCapitalized</code> | [GWT R103][R103] |
| <code>Search version control history</code> | <code>搜索版本控制历史</code> | <code>searchVersionControlHistory</code> | [GWT R103][R103] |
| <code>The selected changes in this file will be lost.\n\nAre you sure you want to continue?</code> | <code>此文件中所选的更改将丢失。\n\n确定要继续吗？</code> | <code>selectedChangesInFileWillBeLost</code> | [GWT R103][R103] |
| <code>The selected path does not appear to have conflicts.\n\nDo you want to resolve anyway?</code> | <code>所选路径似乎没有冲突。\n\n仍要标记为已解决吗？</code> | <code>selectedPathDoesNotAppearToHaveConflicts</code> | [GWT R103][R103] |
| <code>{0} selection</code> | <code>{0} 所选内容</code> | <code>selectionSuffix</code> | [GWT R103][R103] |
| <code>Please select one or more items to commit.</code> | <code>请选择一个或多个要提交的项目。</code> | <code>selectOneOrMoreItemsToCommit</code> | [GWT R103][R103] |
| <code>Show Diff</code> | <code>显示差异</code> | <code>showDiffCapitalized</code> | [GWT R103][R103] |
| <code>Show History</code> | <code>显示历史</code> | <code>showHistoryCapitalized</code> | [GWT R103][R103] |
| <code>Show less</code> | <code>显示较少</code> | <code>showLess</code> | [GWT R103][R103] |
| <code>Show more</code> | <code>显示更多</code> | <code>showMore</code> | [GWT R103][R103] |
| <code>Some of the files to be committed are quite large (&gt;{0} in size). Are you sure you want to commit these files?</code> | <code>部分待提交文件较大（大小超过 {0}）。确定要提交这些文件吗？</code> | <code>someFilesAreQuiteLarge</code> | [GWT R103][R103] |
| <code>Stage All</code> | <code>全部暂存</code> | <code>stageAllCapitalized</code> | [GWT R103][R103] |
| <code>Stage</code> | <code>暂存</code> | <code>stageCapitalized</code> | [GWT R103][R103] |
| <code>Staged</code> | <code>已暂存</code> | <code>stagedCapitalized</code> | [GWT R103][R103] |
| <code>Status</code> | <code>状态</code> | <code>statusCapitalized</code> | [GWT R103][R103] |
| <code>Stop</code> | <code>停止</code> | <code>stopCapitalized</code> | [GWT R103][R103] |
| <code>Subject</code> | <code>主题</code> | <code>subjectCapitalized</code> | [GWT R103][R103] |
| <code>SVN Add</code> | <code>SVN 添加</code> | <code>svnAdd</code> | [GWT R103][R103] |
| <code>SVN Cleanup</code> | <code>SVN 清理</code> | <code>svnCleanup</code> | [GWT R103][R103] |
| <code>SVN Commit</code> | <code>SVN 提交</code> | <code>svnCommit</code> | [GWT R103][R103] |
| <code>SVN Delete</code> | <code>SVN 删除</code> | <code>svnDelete</code> | [GWT R103][R103] |
| <code>SVN Diff</code> | <code>SVN 差异</code> | <code>svnDiff</code> | [GWT R103][R103] |
| <code>SVN Ignore</code> | <code>SVN 忽略</code> | <code>svnIgnore</code> | [GWT R103][R103] |
| <code>SVN Resolve</code> | <code>SVN 解决冲突</code> | <code>svnResolve</code> | [GWT R103][R103] |
| <code>SVN Revert</code> | <code>SVN 还原</code> | <code>svnRevert</code> | [GWT R103][R103] |
| <code>SVN Review</code> | <code>SVN 审查</code> | <code>svnReview</code> | [GWT R103][R103] |
| <code>SVN Tab</code> | <code>SVN 标签页</code> | <code>svnTab</code> | [GWT R103][R103] |
| <code>Switch branch</code> | <code>切换分支</code> | <code>switchBranch</code> | [GWT R103][R103] |
| <code>Sync branch with remote</code> | <code>与远程同步分支</code> | <code>syncBranchWithRemote</code> | [GWT R103][R103] |
| <code>The selected changes in this file will be lost.\n\nAre you sure you want to continue?</code> | <code>此文件中所选的更改将丢失。\n\n确定要继续吗？</code> | <code>theSelectedChangesWillBeLost</code> | [GWT R103][R103] |
| <code>Unable to view {0} on GitHub.\n\nAre you sure that this file is on GitHub and is contained in the currently active project?</code> | <code>无法在 GitHub 上查看 {0}。\n\n请确认此文件已上传到 GitHub，且包含在当前活动项目中。</code> | <code>unableToViewPathOnGithub</code> | [GWT R103][R103] |
| <code>Unmerged</code> | <code>未合并</code> | <code>unmergedCapitalized</code> | [GWT R103][R103] |
| <code>Unstage All</code> | <code>全部取消暂存</code> | <code>unstageAllCapitalized</code> | [GWT R103][R103] |
| <code>Unstage</code> | <code>取消暂存</code> | <code>unstageCapitalized</code> | [GWT R103][R103] |
| <code>Untracked</code> | <code>未跟踪</code> | <code>untrackedCapitalized</code> | [GWT R103][R103] |
| <code>Unversioned</code> | <code>未纳入版本控制</code> | <code>unversionedCapitalized</code> | [GWT R103][R103] / Source patch |
| <code>Update</code> | <code>更新</code> | <code>updateCapitalized</code> | [GWT R103][R103] |
| <code>View file @ {0}</code> | <code>查看文件@ {0}</code> | <code>viewFileAtString</code> | [GWT R103][R103] |

## 12. Projects / 项目

本节 244 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>&lt;p&gt;{0} was not detected on the system path.&lt;/p&gt;&lt;p&gt;To create projects from {0} repositories you should install {0} and then restart RStudio.&lt;/p&gt;&lt;p&gt;Note that if {0} is installed and not on the path, then you can specify its location using the {1} dialog.&lt;/p&gt;</code> | <code>&lt;p&gt;在系统 PATH 中未检测到 {0}。&lt;/p&gt;&lt;p&gt;要从 {0} 仓库创建项目，请安装 {0}，然后重新启动 RStudio。&lt;/p&gt;&lt;p&gt;如果已安装 {0} 但不在 PATH 中，可以在“{1}”对话框中指定其位置。&lt;/p&gt;</code> | <code>acceptNavigationHTML</code> | [GWT R032][R032] |
| <code>Add...</code> | <code>添加...</code> | <code>addButtonCaption</code> | [GWT R032][R032] |
| <code>Add Source File</code> | <code>添加源文件</code> | <code>addSourceFileCaption</code> | [GWT R032][R032] |
| <code>Advanced</code> | <code>高级</code> | <code>advancedTitle</code> | [GWT R032][R032] / Source patch |
| <code>(All Formats)</code> | <code>(所有格式)</code> | <code>allFormatsLabel</code> | [GWT R032][R032] |
| <code>all</code> | <code>全部</code> | <code>allLabel</code> | [GWT R032][R032] |
| <code>Always save history (even if not saving .RData):</code> | <code>始终保存历史记录（即使不保存 .RData）:</code> | <code>alwaysSaveHistoryText</code> | [GWT R032][R032] |
| <code>Project appearance settings are currently ignored because "Ignore project-specific appearance settings" is enabled in Global Options.</code> | <code>当前会忽略项目外观设置，因为“全局选项”中已启用“忽略项目特定的外观设置”。</code> | <code>appearanceIgnoredByGlobalText</code> | [GWT R032][R032] |
| <code>Appearance</code> | <code>外观</code> | <code>appearanceText</code> | [GWT R032][R032] |
| <code>Ask</code> | <code>询问</code> | <code>askLabel</code> | [GWT R032][R032] |
| <code>Browse...</code> | <code>浏览...</code> | <code>browseActionLabel</code> | [GWT R032][R032] |
| <code>Browse...</code> | <code>浏览...</code> | <code>browseLabel</code> | [GWT R032][R032] |
| <code>Configure...</code> | <code>配置...</code> | <code>btnConfigureRoxygenLabel</code> | [GWT R032][R032] |
| <code>Build binary package &amp;mdash; R CMD INSTALL additional options:</code> | <code>构建二进制程序包 &amp;mdash; R CMD INSTALL 其他选项：</code> | <code>buildBinaryMdashArgument</code> | [GWT R032][R032] |
| <code>Build source package &amp;mdash; R CMD build additional options:</code> | <code>构建源程序包 &amp;mdash; R CMD build 其他选项：</code> | <code>buildSourceMdashArgument</code> | [GWT R032][R032] |
| <code>Build Tools</code> | <code>构建工具</code> | <code>buildToolsLabel</code> | [GWT R032][R032] |
| <code>(Default)</code> | <code>(默认)</code> | <code>canonicalDefaultItem</code> | [GWT R032][R032] |
| <code>Write canonical visual mode markdown in source mode:</code> | <code>在源代码模式中写入规范的可视化模式 Markdown:</code> | <code>canonicalFormLabel</code> | [GWT R032][R032] |
| <code>Change...</code> | <code>更改...</code> | <code>changeLabel</code> | [GWT R032][R032] |
| <code>Check package &amp;mdash; R CMD check additional options:</code> | <code>检查程序包 &amp;mdash; R CMD check 其他选项：</code> | <code>checkPackageMdashArgument</code> | [GWT R032][R032] |
| <code>Ensure that source files end with newline</code> | <code>确保源文件以换行符结尾</code> | <code>chkAutoAppendNewlineLabel</code> | [GWT R032][R032] |
| <code>Automatically snapshot local changes</code> | <code>自动快照本地更改</code> | <code>chkAutoSnapshotLabel</code> | [GWT R032][R032] |
| <code>Re-knit current preview when supporting files change</code> | <code>支持文件更改时重编当前预览</code> | <code>chkLivePreviewSiteCaption</code> | [GWT R032][R032] |
| <code>Preview book after building</code> | <code>构建后预览书籍</code> | <code>chkPreviewAfterBuilding</code> | [GWT R032][R032] |
| <code>Preview site after building</code> | <code>构建后预览站点</code> | <code>chkPreviewAfterBuildingCaption</code> | [GWT R032][R032] |
| <code>Use renv with this project</code> | <code>在此项目中使用 renv</code> | <code>chkRenvInitLabel</code> | [GWT R032][R032] |
| <code>Using renv</code> | <code>使用 renv</code> | <code>chkRenvInitUserAction</code> | [GWT R032][R032] |
| <code>Insert spaces for tab</code> | <code>按 Tab 键时插入空格</code> | <code>chkSpacesForTabLabel</code> | [GWT R032][R032] |
| <code>Strip trailing horizontal whitespace when saving</code> | <code>保存时删除行尾水平空白</code> | <code>chkStripTrailingWhitespaceLabel</code> | [GWT R032][R032] |
| <code>Use global cache for installed packages</code> | <code>对已安装的程序包使用全局缓存</code> | <code>chkUseCacheLabel</code> | [GWT R032][R032] |
| <code>Use devtools package functions if available</code> | <code>可用时使用 devtools 程序包函数</code> | <code>chkUseDevtoolsCaption</code> | [GWT R032][R032] |
| <code>Respect .gitignore when indexing files</code> | <code>索引文件时遵循 .gitignore</code> | <code>chkUseGitignoreLabel</code> | [GWT R032][R032] |
| <code>Use packrat with this project</code> | <code>在此项目中使用 Packrat</code> | <code>chkUsePackratLabel</code> | [GWT R032][R032] |
| <code>Generate documentation with Roxygen</code> | <code>用 Roxygen 生成文档</code> | <code>chkUseRoxygenCaption</code> | [GWT R032][R032] |
| <code>Use venv with packages: </code> | <code>使用 venv，并安装程序包：</code> | <code>chkUseVenvLabel</code> | [GWT R032][R032] |
| <code>{0} ignore packrat library</code> | <code>{0} 忽略 Packrat 库</code> | <code>chkVcsIgnoreLibLabel</code> | [GWT R032][R032] |
| <code>{0} ignore packrat sources</code> | <code>{0} 忽略 packrat 来源</code> | <code>chkVcsIgnoreSrcLabel</code> | [GWT R032][R032] |
| <code>Choose Directory</code> | <code>选择目录</code> | <code>chooseDirectoryCaption</code> | [GWT R032][R032] |
| <code>Choose File</code> | <code>选择文件</code> | <code>chooseFileCaption</code> | [GWT R032][R032] |
| <code>Always use --preclean when installing package</code> | <code>安装程序包时始终使用 --preclean</code> | <code>cleanBeforeInstallLabel</code> | [GWT R032][R032] |
| <code>Clone a project from a Git repository</code> | <code>从 Git 仓库克隆项目</code> | <code>cloneGitRepo</code> | [GWT R032][R032] |
| <code>Cloning Git repository...</code> | <code>克隆 Git 仓库...</code> | <code>cloneGitRepoLabel</code> | [GWT R032][R032] |
| <code>Clone Git Repository</code> | <code>克隆 Git 仓库</code> | <code>cloneGitRepoPageCaption</code> | [GWT R032][R032] |
| <code>Checking out SVN repository...</code> | <code>正在检出 SVN 仓库...</code> | <code>cloneSVNRepoLabel</code> | [GWT R032][R032] |
| <code>Close Project</code> | <code>关闭项目</code> | <code>closeProjectLabel</code> | [GWT R032][R032] |
| <code>Code Editing</code> | <code>代码编辑</code> | <code>codingEditingLabel</code> | [GWT R032][R032] |
| <code>(Current Document)</code> | <code>(当前文档)</code> | <code>compilePDFEmptyLabel</code> | [GWT R032][R032] |
| <code>Compile PDF root document:</code> | <code>编译 PDF 根文档 :</code> | <code>compilePDFLabel</code> | [GWT R032][R032] |
| <code>Confirm New Git Repository</code> | <code>确认新 Git 仓库</code> | <code>confirmGitRepoCaption</code> | [GWT R032][R032] |
| <code>Checking for git repository...</code> | <code>正在检查 Git 仓库…</code> | <code>confirmGitRepoLabel</code> | [GWT R032][R032] |
| <code>Do you want to initialize a new git repository for this project?</code> | <code>是否要为此项目初始化新的 Git 仓库？</code> | <code>confirmGitRepoMessage</code> | [GWT R032][R032] |
| <code>Confirm Open Project</code> | <code>确认打开项目</code> | <code>confirmOpenProjectCaption</code> | [GWT R032][R032] |
| <code>Create a git repository</code> | <code>创建 Git 仓库</code> | <code>createGitRepoLabel</code> | [GWT R032][R032] |
| <code>Create a new R package</code> | <code>创建新的 R 程序包</code> | <code>createNewPackageSubTitle</code> | [GWT R032][R032] |
| <code>Create New Project</code> | <code>创建新项目</code> | <code>createNewProjectPageCaption</code> | [GWT R032][R032] |
| <code>Create package based on source files:</code> | <code>基于源文件创建程序包：</code> | <code>createPackageFormLabel</code> | [GWT R032][R032] |
| <code>Create Project</code> | <code>创建项目</code> | <code>createProjectCaption</code> | [GWT R032][R032] |
| <code>Create project from:</code> | <code>创建项目来源 :</code> | <code>createProjectFromLabel</code> | [GWT R032][R032] |
| <code>Create R Package</code> | <code>创建 R 程序包</code> | <code>createRPackagePageCaption</code> | [GWT R032][R032] |
| <code>Creating project</code> | <code>创建项目</code> | <code>creatingProjectCaption</code> | [GWT R032][R032] |
| <code>Error Creating Project</code> | <code>创建项目出错</code> | <code>creatingProjectError</code> | [GWT R032][R032] |
| <code>Creating project...</code> | <code>正在创建项目...</code> | <code>creatingProjectLabel</code> | [GWT R032][R032] |
| <code>creating project</code> | <code>创建项目</code> | <code>creatingProjectResultMessage</code> | [GWT R032][R032] |
| <code>Creating a project with {0}</code> | <code>正在使用 {0} 创建项目</code> | <code>creatingProjectWithLabel</code> | [GWT R032][R032] |
| <code>Project display name (defaults to folder name):</code> | <code>项目显示名称( 默认文件夹名称) :</code> | <code>customProjectNameLabel</code> | [GWT R032][R032] |
| <code>Dictionaries</code> | <code>词典</code> | <code>dictionariesCaption</code> | [GWT R032][R032] |
| <code>Use (Default) to inherit the global default dictionary.</code> | <code>使用( 默认) 来继承全局默认字典。</code> | <code>dictionariesInfoLabel</code> | [GWT R032][R032] |
| <code>Directory ''{0}'' already exists and is not empty.</code> | <code>目录 ''{0}'' 已经存在且不是空的。</code> | <code>directoryAlreadyExistsMessage</code> | [GWT R032][R032] |
| <code>Directory name:</code> | <code>目录名称:</code> | <code>directoryNameLabel</code> | [GWT R032][R032] |
| <code>Disable .Rprofile execution on session start/resume</code> | <code>启动/恢复会话时不执行 .Rprofile</code> | <code>disableExecuteRprofileText</code> | [GWT R032][R032] |
| <code>Editing</code> | <code>编辑</code> | <code>editingTitle</code> | [GWT R032][R032] |
| <code>Editor theme:</code> | <code>编辑器主题:</code> | <code>editorThemeFormLabel</code> | [GWT R032][R032] |
| <code>Index source files (for code search/navigation)</code> | <code>索引源文件(用于代码搜索/导航)</code> | <code>enableCodeIndexingLabel</code> | [GWT R032][R032] |
| <code>Engine:</code> | <code>引擎：</code> | <code>engineLabel</code> | [GWT R032][R032] |
| <code>(None)</code> | <code>(无)</code> | <code>engineSelectNone</code> | [GWT R032][R032] |
| <code>Environments</code> | <code>环境</code> | <code>environmentsText</code> | [GWT R032][R032] |
| <code>Error</code> | <code>错误</code> | <code>errorCaption</code> | [GWT R032][R032] |
| <code>Error installing {0}</code> | <code>安装 {0} 出错</code> | <code>errorInstallingCaption</code> | [GWT R032][R032] |
| <code>Installation of package ''{0}'' failed, and so the project cannot be created. Try installing the package manually with ''install.packages("{0}")''.</code> | <code>安装程序包“{0}”失败，因此无法创建项目。请尝试使用“install.packages("{0}")”手动安装该程序包。</code> | <code>errorInstallingCaptionMessage</code> | [GWT R032][R032] |
| <code>Error Opening Project</code> | <code>打开项目出错</code> | <code>errorOpeningProjectCaption</code> | [GWT R032][R032] |
| <code>Error Reading Options</code> | <code>读取选项出错</code> | <code>errorReadingOptionsCaption</code> | [GWT R032][R032] |
| <code>Preparing to open project...</code> | <code>正在准备打开项目...</code> | <code>executeOpenProjectMessage</code> | [GWT R032][R032] |
| <code>Create Project from Existing Directory</code> | <code>从现有目录创建项目</code> | <code>existingDirectoryPageCaption</code> | [GWT R032][R032] |
| <code>Associate a project with an existing working directory</code> | <code>将项目与现有工作目录关联</code> | <code>existingDirectorySubTitle</code> | [GWT R032][R032] |
| <code>Existing Directory</code> | <code>现有目录</code> | <code>existingDirectoryTitle</code> | [GWT R032][R032] |
| <code>Create project as subdirectory of:</code> | <code>在以下目录中创建项目子目录:</code> | <code>existingRepoDestDirLabel</code> | [GWT R032][R032] |
| <code>A file already exists at path ''{0}''.</code> | <code>文件已经在路径上存在 ''{0}''.</code> | <code>fileAlreadyExistsMessage</code> | [GWT R032][R032] |
| <code>General</code> | <code>常规</code> | <code>generalText</code> | [GWT R032][R032] |
| <code>General</code> | <code>常规</code> | <code>generalTitle</code> | [GWT R032][R032] |
| <code>Your home directory cannot be treated as an RStudio Project; select a different directory.</code> | <code>您的主目录不能用作 RStudio 项目；请选择其他目录。</code> | <code>homeDirectoryErrorMessage</code> | [GWT R032][R032] |
| <code>Indexing</code> | <code>索引</code> | <code>indexingTitle</code> | [GWT R032][R032] |
| <code>Supporting files include Rmd partials, R scripts, YAML config files, etc.</code> | <code>支持文件包括 Rmd 片段、R 脚本和 YAML 配置文件等。</code> | <code>infoLabel</code> | [GWT R032][R032] |
| <code>Packrat is a dependency management tool that makes your R code more isolated, portable, and reproducible by giving your project its own privately managed package library.</code> | <code>Packrat 是一个依赖管理工具，它为项目提供独立管理的私有程序包库，使 R 代码更加隔离、可移植且可复现。</code> | <code>initializePackratMessage</code> | [GWT R032][R032] |
| <code>Initializing git repository...</code> | <code>正在初始化 Git 仓库…</code> | <code>initializingGitRepoMessage</code> | [GWT R032][R032] |
| <code>Initializing renv...</code> | <code>初始化 renv...</code> | <code>initializingRenvMessage</code> | [GWT R032][R032] |
| <code>&lt;p&gt;An installation of {0} was not detected on this system.&lt;/p&gt;&lt;p&gt;To create projects from {0} repositories you should request that your server administrator install the {0} package.&lt;/p&gt;</code> | <code>&lt;p&gt;此系统未检测到 {0}。&lt;/p&gt;&lt;p&gt;要从 {0} 仓库创建项目，请联系服务器管理员安装 {0} 程序包。&lt;/p&gt;</code> | <code>installationNotDetectedHTML</code> | [GWT R032][R032] |
| <code>Install package &amp;mdash; R CMD INSTALL additional options:</code> | <code>安装程序包 &amp;mdash; R CMD INSTALL 其他选项：</code> | <code>installMdashArgument</code> | [GWT R032][R032] |
| <code>Invalid package name ''{0}'': package names must start with a letter, and contain only letters and numbers.</code> | <code>程序包名称“{0}”无效：程序包名称必须以字母开头，并且只能包含字母和数字。</code> | <code>invalidPackageMessage</code> | [GWT R032][R032] |
| <code>Invalid package name {0}</code> | <code>程序包名称 {0} 无效</code> | <code>invalidPackageName</code> | [GWT R032][R032] |
| <code>Kernel:</code> | <code>内核 :</code> | <code>kernelLabel</code> | [GWT R032][R032] |
| <code>Origin:</code> | <code>来源 :</code> | <code>lblOrigin</code> | [GWT R032][R032] |
| <code>Loading Quarto capabilities...</code> | <code>正在加载 Quarto 功能...</code> | <code>loadingCapabilitiesLabel</code> | [GWT R032][R032] |
| <code>Learn more about markdown writer options</code> | <code>详细了解 Markdown 写入选项</code> | <code>markdownPerFileOptionsCaption</code> | [GWT R032][R032] |
| <code>Miscellaneous</code> | <code>其他</code> | <code>miscellaneousTitle</code> | [GWT R032][R032] |
| <code>Project Type</code> | <code>项目类型</code> | <code>newDirectoryPageCaption</code> | [GWT R032][R032] |
| <code>Start a project in a brand new working directory</code> | <code>在全新的工作目录中创建项目</code> | <code>newDirectorySubTitle</code> | [GWT R032][R032] |
| <code>New Directory</code> | <code>新建目录</code> | <code>newDirectoryTitle</code> | [GWT R032][R032] |
| <code>R Package</code> | <code>R 程序包</code> | <code>newPackageTitle</code> | [GWT R032][R032] |
| <code>Save Current Workspace</code> | <code>保存当前工作区</code> | <code>newProjectCaption</code> | [GWT R032][R032] |
| <code>Create project as subdirectory of:</code> | <code>在以下目录中创建项目子目录:</code> | <code>newProjectParentLabel</code> | [GWT R032][R032] |
| <code>New Project...</code> | <code>新建项目...</code> | <code>newProjectProjectIndicator</code> | [GWT R032][R032] |
| <code>Create a new project in an empty directory</code> | <code>在空目录中创建新项目</code> | <code>newProjectSubTitle</code> | [GWT R032][R032] |
| <code>New Project</code> | <code>新项目</code> | <code>newProjectTitle</code> | [GWT R032][R032] |
| <code>New Project Wizard</code> | <code>新建项目向导</code> | <code>newProjectWizardCaption</code> | [GWT R032][R032] |
| <code>No Active Project</code> | <code>无活动项目</code> | <code>noActiveProjectCaption</code> | [GWT R032][R032] |
| <code>Build tools can only be configured from within an RStudio project.</code> | <code>只能在 RStudio 项目内配置构建工具。</code> | <code>noActiveProjectMessage</code> | [GWT R032][R032] |
| <code>No</code> | <code>否</code> | <code>noLabel</code> | [GWT R032][R032] |
| <code>(None)</code> | <code>(无)</code> | <code>noneFileSelectorLabel</code> | [GWT R032][R032] |
| <code>none</code> | <code>无</code> | <code>noneLabel</code> | [GWT R032][R032] |
| <code>(None)</code> | <code>(无)</code> | <code>noneProjectSourceControlLabel</code> | [GWT R032][R032] |
| <code>OK</code> | <code>确定</code> | <code>okLabel</code> | [GWT R032][R032] |
| <code>Analyzing project sources...</code> | <code>正在分析项目源文件...</code> | <code>onShowDiagnosticsProject</code> | [GWT R032][R032] |
| <code>Open in new session</code> | <code>在新会话中打开</code> | <code>openNewSessionLabel</code> | [GWT R032][R032] |
| <code>Open Project</code> | <code>打开项目</code> | <code>openProjectCaption</code> | [GWT R032][R032] |
| <code>Project ''{0}'' could not be opened: {1}</code> | <code>无法打开项目“{0}”：{1}</code> | <code>openProjectError</code> | [GWT R032][R032] |
| <code>\n\nEnsure the project URL is correct; if it is, contact the project owner to request access.</code> | <code>\n\n请确保项目 URL 正确；如果正确，请联系项目所有者申请访问权限。</code> | <code>openProjectErrorMessage</code> | [GWT R032][R032] |
| <code>Open project in a new R session</code> | <code>在新 R 会话中打开项目</code> | <code>openProjectLabel</code> | [GWT R032][R032] |
| <code>Do you want to open the project {0}?</code> | <code>是否打开项目 {0}？</code> | <code>openProjectPathMessage</code> | [GWT R032][R032] |
| <code>Options</code> | <code>选项</code> | <code>optionsLabel</code> | [GWT R032][R032] |
| <code>Origin: </code> | <code>来源 :</code> | <code>originLabel</code> | [GWT R032][R032] |
| <code>Package</code> | <code>程序包</code> | <code>packageLabel</code> | [GWT R032][R032] |
| <code>Package name:</code> | <code>程序包名称：</code> | <code>packageNameLabel</code> | [GWT R032][R032] |
| <code>Learn more about Packrat</code> | <code>详细了解 Packrat</code> | <code>packratHelpLink</code> | [GWT R032][R032] |
| <code>Managing packages with packrat</code> | <code>使用 Packrat 管理程序包</code> | <code>packratManagePackages</code> | [GWT R032][R032] |
| <code>External packages (comma separated):</code> | <code>外部程序包（以逗号分隔）：</code> | <code>panelExternalPackagesText</code> | [GWT R032][R032] |
| <code>Help on external packages</code> | <code>外部程序包帮助</code> | <code>panelExternalPackagesTitle</code> | [GWT R032][R032] |
| <code>Custom build script:</code> | <code>自定义构建脚本 :</code> | <code>pathSelectorLabel</code> | [GWT R032][R032] |
| <code>Makefile directory:</code> | <code>Makefile 目录 :</code> | <code>pathSelectorMakefileDirLabel</code> | [GWT R032][R032] |
| <code>Package directory:</code> | <code>程序包目录：</code> | <code>pathSelectorPackageDir</code> | [GWT R032][R032] |
| <code>Site directory:</code> | <code>站点目录 :</code> | <code>pathSelectorSiteDir</code> | [GWT R032][R032] |
| <code>PDF Generation</code> | <code>PDF 生成</code> | <code>pdfGenerationCaption</code> | [GWT R032][R032] |
| <code>PDF Preview</code> | <code>PDF 预览</code> | <code>pdfPreviewCaption</code> | [GWT R032][R032] |
| <code>placeholder</code> | <code>占位符</code> | <code>placeholderLabel</code> | [GWT R032][R032] |
| <code>Please enter a new directory name.</code> | <code>请输入新的目录名称。</code> | <code>pleaseEnterDirectoryNameMessage</code> | [GWT R032][R032] |
| <code>Preferences</code> | <code>首选项</code> | <code>preferencesLabel</code> | [GWT R032][R032] |
| <code>Project directory name:</code> | <code>项目目录名称：</code> | <code>projDirNameLabel</code> | [GWT R032][R032] |
| <code>Project build tools:</code> | <code>项目构建工具：</code> | <code>projectBuildToolsLabel</code> | [GWT R032][R032] |
| <code>{0} Project</code> | <code>{0} 项目</code> | <code>projectContext</code> | [GWT R032][R032] |
| <code>Quarto create project failed</code> | <code>Quarto 创建项目失败</code> | <code>projectFailedMessage</code> | [GWT R032][R032] |
| <code>R Projects (*.Rproj)</code> | <code>R 项目 (*.Rproj)</code> | <code>projectFilter</code> | [GWT R032][R032] |
| <code>Use (Default) to inherit the global default setting.</code> | <code>使用( 默认) 来继承全局默认设置。</code> | <code>projectGeneralInfoLabel</code> | [GWT R032][R032] |
| <code>Project ''{0}'' does not exist (it has been moved or deleted), or it is not writeable</code> | <code>项目“{0}”不存在（可能已移动或删除），或不可写</code> | <code>projectOpenError</code> | [GWT R032][R032] |
| <code>Project Options</code> | <code>项目选项</code> | <code>projectOptionsCaption</code> | [GWT R032][R032] |
| <code>(Project Root)</code> | <code>(项目根目录)</code> | <code>projectRootLabel</code> | [GWT R032][R032] |
| <code>The project scratch path is used to store internal RStudio state for this project. You may want to customize this path if the project is located on a high-latency network filesystem.\n\nIn this scenario, consider using a local filesystem for RStudio''s project scratch path.</code> | <code>项目临时路径用于存储此项目的 RStudio 内部状态。如果项目位于高延迟网络文件系统上，您可能需要自定义此路径。\n\n在这种情况下，请考虑将本地文件系统用于 RStudio 的项目临时路径。</code> | <code>projectScratchPathTooltip</code> | [GWT R032][R032] / Source patch |
| <code>Book</code> | <code>书</code> | <code>projectTypeBook</code> | [GWT R032][R032] |
| <code>(Default)</code> | <code>(默认)</code> | <code>projectTypeDefault</code> | [GWT R032][R032] |
| <code>Manuscript</code> | <code>手稿</code> | <code>projectTypeManuscript</code> | [GWT R032][R032] |
| <code>Website</code> | <code>网站</code> | <code>projectTypeWebsite</code> | [GWT R032][R032] |
| <code>Project working directory:</code> | <code>项目工作目录：</code> | <code>projectWorkingDirectoryTitle</code> | [GWT R032][R032] |
| <code>Create Quarto Blog</code> | <code>创建 Quarto 博客</code> | <code>quartoBlogPageCaption</code> | [GWT R032][R032] |
| <code>Create a new Quarto blog project</code> | <code>创建新的 Quarto 博客项目</code> | <code>quartoBlogSubTitle</code> | [GWT R032][R032] |
| <code>Quarto Blog</code> | <code>Quarto 博客</code> | <code>quartoBlogTitle</code> | [GWT R032][R032] |
| <code>Create Quarto Book</code> | <code>创建 Quarto 书</code> | <code>quartoBookPageCaption</code> | [GWT R032][R032] |
| <code>Create a new Quarto book project</code> | <code>创建新的 Quarto 书籍项目</code> | <code>quartoBookSubTitle</code> | [GWT R032][R032] |
| <code>Quarto Book</code> | <code>Quarto 书</code> | <code>quartoBookTitle</code> | [GWT R032][R032] |
| <code>Create Quarto Manuscript</code> | <code>创建 Quarto 手稿</code> | <code>quartoManuscriptPageCaption</code> | [GWT R032][R032] |
| <code>Create a new Quarto manuscript project</code> | <code>创建新的 Quarto 手稿项目</code> | <code>quartoManuscriptSubTitle</code> | [GWT R032][R032] |
| <code>Quarto Manuscript</code> | <code>Quarto 手稿</code> | <code>quartoManuscriptTitle</code> | [GWT R032][R032] |
| <code>engine</code> | <code>引擎</code> | <code>quartoProjectEngineOption</code> | [GWT R032][R032] |
| <code>kernel</code> | <code>内核</code> | <code>quartoProjectKernelOption</code> | [GWT R032][R032] |
| <code>Create Quarto Project</code> | <code>创建 Quarto 项目</code> | <code>quartoProjectPageCaption</code> | [GWT R032][R032] |
| <code>Create a new Quarto project</code> | <code>创建新的 Quarto 项目</code> | <code>quartoProjectSubTitle</code> | [GWT R032][R032] |
| <code>Quarto Project</code> | <code>Quarto 项目</code> | <code>quartoProjectTitle</code> | [GWT R032][R032] |
| <code>type</code> | <code>类型</code> | <code>quartoProjectTypeOption</code> | [GWT R032][R032] |
| <code>Create Quarto Website</code> | <code>创建 Quarto 网站</code> | <code>quartoWebsitePageCaption</code> | [GWT R032][R032] |
| <code>Create a new Quarto website project</code> | <code>创建新的 Quarto 网站项目</code> | <code>quartoWebsiteSubTitle</code> | [GWT R032][R032] |
| <code>Quarto Website</code> | <code>Quarto 网站</code> | <code>quartoWebsiteTitle</code> | [GWT R032][R032] |
| <code>Quit child processes on exit</code> | <code>退出时终止子进程</code> | <code>quitChildProcessesOnExitText</code> | [GWT R032][R032] |
| <code>Package w/ Rcpp</code> | <code>使用 Rcpp 的程序包</code> | <code>rcppPackageOption</code> | [GWT R032][R032] |
| <code>Reading options...</code> | <code>正在读取选项...</code> | <code>readingOptionsMessage</code> | [GWT R032][R032] |
| <code>Reduce background file operations on remote drives</code> | <code>减少远程驱动器上的后台文件操作</code> | <code>reduceRemoteFilesystemOperationsText</code> | [GWT R032][R032] |
| <code>(Default)</code> | <code>(默认)</code> | <code>referencesDefaultItem</code> | [GWT R032][R032] |
| <code>Write references at end of current:</code> | <code>将参考文献写在当前内容末尾:</code> | <code>referencesFormLabel</code> | [GWT R032][R032] |
| <code>Remove</code> | <code>移除</code> | <code>removeButtonCaption</code> | [GWT R032][R032] |
| <code>Learn more about renv</code> | <code>详细了解 renv</code> | <code>renvHelpLink</code> | [GWT R032][R032] |
| <code>Repo:</code> | <code>仓库：</code> | <code>repoCaption</code> | [GWT R032][R032] |
| <code>Repository URL:</code> | <code>仓库 URL :</code> | <code>repoURLLabel</code> | [GWT R032][R032] |
| <code>Confirm Restart RStudio</code> | <code>确认重新启动 RStudio</code> | <code>restartRStudioCaption</code> | [GWT R032][R032] |
| <code>You need to restart RStudio in order for this change to take effect. Do you want to do this now?</code> | <code>需要重新启动 RStudio 才能使此更改生效。是否立即重新启动？</code> | <code>restartRStudioMessage</code> | [GWT R032][R032] |
| <code>Restore .RData into workspace at startup:</code> | <code>启动时将 .RData 恢复到工作区</code> | <code>restoreWorkspaceText</code> | [GWT R032][R032] |
| <code>Use (Default) to inherit the global default setting.</code> | <code>使用( 默认) 来继承全局默认设置。</code> | <code>rMarkdownInfoLabel</code> | [GWT R032][R032] |
| <code>Get help on Compile PDF root document</code> | <code>获取“编译 PDF 根文档”的帮助</code> | <code>rootDocumentChooserTitle</code> | [GWT R032][R032] |
| <code>Roxygen Options</code> | <code>Roxygen 选项</code> | <code>roxygenOptionsCaption</code> | [GWT R032][R032] |
| <code>RStudio uses the renv package to give your projects their own privately-managed package library, making your R code more isolated, portable, and reproducible.</code> | <code>RStudio 使用 renv 程序包为项目提供独立管理的私有程序包库，使 R 代码更加隔离、可移植且可复现。</code> | <code>rstudioInitializeLabel</code> | [GWT R032][R032] |
| <code>Save workspace to .RData on exit:</code> | <code>退出时将工作区保存到 .RData</code> | <code>saveWorkspaceText</code> | [GWT R032][R032] |
| <code>Saving defaults...</code> | <code>保存默认值...</code> | <code>savingDefaultsLabel</code> | [GWT R032][R032] |
| <code>Saving</code> | <code>保存</code> | <code>savingTitle</code> | [GWT R032][R032] |
| <code>Project scratch path:</code> | <code>项目临时路径：</code> | <code>scratchPathLabel</code> | [GWT R032][R032] / Source patch |
| <code>Sharing</code> | <code>共享</code> | <code>sharingText</code> | [GWT R032][R032] |
| <code>Create Shiny Application</code> | <code>创建 Shiny 应用</code> | <code>shinyApplicationPageCaption</code> | [GWT R032][R032] |
| <code>Create a new Shiny application</code> | <code>创建新的 Shiny 应用</code> | <code>shinyApplicationSubTitle</code> | [GWT R032][R032] |
| <code>Shiny Application</code> | <code>Shiny 应用</code> | <code>shinyApplicationTitle</code> | [GWT R032][R032] |
| <code>Show _{0}</code> | <code>_显示 {0}</code> | <code>showVCSMenuLabel</code> | [GWT R032][R032] |
| <code>You must specify a name for the new project directory.</code> | <code>您必须指定新项目目录的名称。</code> | <code>specifyProjectDirectoryName</code> | [GWT R032][R032] |
| <code>You must specify a repository URL and directory to create the new project within.</code> | <code>必须指定仓库 URL 以及用于创建新项目的目录。</code> | <code>specifyRepoURLErrorMessage</code> | [GWT R032][R032] |
| <code>Spelling</code> | <code>拼写检查</code> | <code>spellingText</code> | [GWT R032][R032] |
| <code>Checkout Subversion Repository</code> | <code>检出 Subversion 仓库</code> | <code>svnPagePageCaption</code> | [GWT R032][R032] |
| <code>Checkout a project from a Subversion repository</code> | <code>从 Subversion 仓库检出项目</code> | <code>svnPageSubTitle</code> | [GWT R032][R032] |
| <code>Switch Projects</code> | <code>切换项目</code> | <code>switchProjectsCaption</code> | [GWT R032][R032] |
| <code>Tab width:</code> | <code>Tab 宽度:</code> | <code>tabWidthLabel</code> | [GWT R032][R032] |
| <code>Text encoding:</code> | <code>文本编码 :</code> | <code>textEncodingLabel</code> | [GWT R032][R032] |
| <code>title</code> | <code>标题</code> | <code>titleName</code> | [GWT R032][R032] |
| <code>{0} Not Found</code> | <code>{0} 未找到</code> | <code>titleNotFound</code> | [GWT R032][R032] |
| <code>Additional arguments:</code> | <code>其他参数：</code> | <code>txtMakefileArgs</code> | [GWT R032][R032] |
| <code>(none)</code> | <code>(无)</code> | <code>txtVenvPackagesNone</code> | [GWT R032][R032] |
| <code>Type:</code> | <code>类型 :</code> | <code>typeLabel</code> | [GWT R032][R032] |
| <code>Type:</code> | <code>类型 :</code> | <code>typeText</code> | [GWT R032][R032] |
| <code>Update</code> | <code>更新</code> | <code>updateButtonLabel</code> | [GWT R032][R032] |
| <code>_Update</code> | <code>_更新</code> | <code>updateMenuLabel</code> | [GWT R032][R032] |
| <code>Use condaenv with packages:</code> | <code>使用 condaenv，并安装程序包：</code> | <code>useCondaenv</code> | [GWT R032][R032] |
| <code>(Use default)</code> | <code>(使用默认)</code> | <code>useDefaultText</code> | [GWT R032][R032] |
| <code>Use native pipe operator, &#124;&gt; (requires R 4.1+)</code> | <code>使用原生管道运算符 &#124;&gt;（需要 R 4.1+）</code> | <code>useNativePipeOperatorLabel</code> | [GWT R032][R032] |
| <code>Username (if required for this repository URL):</code> | <code>用户名（此仓库 URL 要求时）：</code> | <code>usernameLabel</code> | [GWT R032][R032] |
| <code>Invalid package name ''{0}''. Package names should start with a letter, and contain only letters and numbers.</code> | <code>程序包名称“{0}”无效。程序包名称应以字母开头，并且只能包含字母和数字。</code> | <code>validateAsyncMessage</code> | [GWT R032][R032] |
| <code>You must specify an existing working directory to create the new project within.</code> | <code>您必须指定一个已有的工作目录才能在其中创建新项目。</code> | <code>validateMessage</code> | [GWT R032][R032] |
| <code>Script Not Specified</code> | <code>未指定脚本</code> | <code>validateScriptCaption</code> | [GWT R032][R032] |
| <code>You must specify a path to the custom build script.</code> | <code>您必须指定自定义构建脚本的路径。</code> | <code>validateScriptMessage</code> | [GWT R032][R032] |
| <code>vcsClone failed</code> | <code>vcsClone 失败</code> | <code>vcsCloneFailMessage</code> | [GWT R032][R032] |
| <code>Using {0} with RStudio</code> | <code>在 RStudio 中使用 {0}</code> | <code>vcsHelpLink</code> | [GWT R032][R032] |
| <code>Version control system:</code> | <code>版本控制系统 :</code> | <code>vcsSelectLabel</code> | [GWT R032][R032] |
| <code>Verifying prerequisites...</code> | <code>正在验证先决条件...</code> | <code>verifyPrerequisitesLabel</code> | [GWT R032][R032] |
| <code>Create Project from Version Control</code> | <code>从版本控制创建项目</code> | <code>versionControlPageCaption</code> | [GWT R032][R032] |
| <code>Version control features can only be accessed from within an RStudio project. Note that if you have an existing directory under version control you can associate an RStudio project with that directory using the New Project dialog.</code> | <code>只能在 RStudio 项目内使用版本控制功能。如果已有受版本控制的目录，可以使用“新建项目”对话框将 RStudio 项目与该目录关联。</code> | <code>versionControlProjectSetupMessage</code> | [GWT R032][R032] |
| <code>Checkout a project from a version control repository</code> | <code>从版本控制仓库检出项目</code> | <code>versionControlSubTitle</code> | [GWT R032][R032] |
| <code>Version Control</code> | <code>版本控制</code> | <code>versionControlTitle</code> | [GWT R032][R032] |
| <code>Visual Mode: Markdown Output</code> | <code>可视化模式：Markdown 输出</code> | <code>visualModeCaption</code> | [GWT R032][R032] |
| <code>Visual Mode: Zotero</code> | <code>可视化模式：Zotero</code> | <code>visualModeZoteroCaption</code> | [GWT R032][R032] |
| <code>Book output format(s):</code> | <code>书籍输出格式：</code> | <code>websiteOutputFormatLabel</code> | [GWT R032][R032] |
| <code>Workspace</code> | <code>工作区</code> | <code>workspaceTitle</code> | [GWT R032][R032] |
| <code>Wrap at column:</code> | <code>换行列：</code> | <code>wrapColumnLabel</code> | [GWT R032][R032] |
| <code>Automatic text wrapping (line breaks):</code> | <code>自动文本换行（换行符）:</code> | <code>wrapPanelText</code> | [GWT R032][R032] |
| <code>Yes</code> | <code>是</code> | <code>yesLabel</code> | [GWT R032][R032] |
| <code>Zoom _{0}</code> | <code>_缩放 {0}</code> | <code>zoomVCSMenuLabel</code> | [GWT R032][R032] |

## 13. Global Options / 设置

本节 1347 条。

### 界面状态显示说明

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Whether we have automatically created an .Rprofile for this user.</code> | <code>我们是否为该用户自动创建了 .Rprofile。</code> | <code>autoCreatedProfileDescription</code> | [GWT R061][R061] |
| <code>The default type for new bibliographies.</code> | <code>新参考文献的默认类型。</code> | <code>bibliographyDefaultTypeDescription</code> | [GWT R061][R061] |
| <code>The default style for inserting citations.</code> | <code>插入引用的默认样式。</code> | <code>citationDefaultInTextDescription</code> | [GWT R061][R061] |
| <code>Whether to clear hidden objects along with visible objects when clearing the workspace. Set automatically to remember last action.</code> | <code>清空工作区时是否同时清除隐藏对象和可见对象。该值会自动保存上次操作。</code> | <code>clearHiddenDescription</code> | [GWT R061][R061] |
| <code>Most recently used settings for compiling a notebook using R Markdown.</code> | <code>最近一次使用 R Markdown 编译 Notebook 时使用的设置。</code> | <code>compileRMarkdownNotebookPrefsDescription</code> | [GWT R061][R061] |
| <code>Most recently used settings for compiling a notebook from an R script.</code> | <code>最近一次从 R 脚本编译 Notebook 时使用的设置。</code> | <code>compileRNotebookPrefsDescription</code> | [GWT R061][R061] |
| <code>How to create new connections to data sources.</code> | <code>如何创建数据源的新连接。</code> | <code>connectViaDescription</code> | [GWT R061][R061] |
| <code>A unique identifier representing the user and machine.</code> | <code>代表用户和机器的独特标识符。</code> | <code>contextIdDescription</code> | [GWT R061][R061] |
| <code>The directory path under which to place new projects by default. Shadows a uipref.</code> | <code>默认用于存放新项目的目录路径。此状态值会覆盖对应的界面首选项。</code> | <code>defaultProjectLocationDescription</code> | [GWT R061][R061] |
| <code>The preferred width, in pixels, of the document outline pane.</code> | <code>文档大纲窗格的首选宽度（像素）。</code> | <code>documentOutlineWidthDescription</code> | [GWT R061][R061] |
| <code>Whether to show UI for publishing content to Posit Connect.</code> | <code>是否显示将内容发布到 Posit Connect 的界面。</code> | <code>enableRsconnectPublishUiDescription</code> | [GWT R061][R061] |
| <code>The kind of handler to invoke when errors occur.</code> | <code>发生错误时要调用的处理程序类型。</code> | <code>errorHandlerTypeDescription</code> | [GWT R061][R061] |
| <code>The most recently used plot export options.</code> | <code>最近使用的图导出选项。</code> | <code>exportPlotOptionsDescription</code> | [GWT R061][R061] |
| <code>The most recently used viewer export options.</code> | <code>最近使用的查看器导出选项。</code> | <code>exportViewerOptionsDescription</code> | [GWT R061][R061] |
| <code>Font options from the Appearance category</code> | <code>来自外观类的字体选项</code> | <code>fontDescription</code> | [GWT R061][R061] |
| <code>State related to the Posit Assistant feature.</code> | <code>与 Posit Assistant 功能相关的状态。</code> | <code>positAssistantDescription</code> | [GWT R061][R061] |
| <code>Posit Assistant State</code> | <code>Posit Assistant 状态</code> | <code>positAssistantTitle</code> | [GWT R061][R061] |
| <code>The default (last) account used for publishing</code> | <code>用于发布的默认账户（即最近使用的账户）。</code> | <code>publishAccountDescription</code> | [GWT R061][R061] |
| <code>Sync source editor to Quarto website preview navigation.</code> | <code>使源代码编辑器与 Quarto 网站预览导航同步。</code> | <code>quartoWebsiteSyncEditorDescription</code> | [GWT R061][R061] |
| <code>Quarto Website Sync Editor</code> | <code>Quarto 网站同步编辑器</code> | <code>quartoWebsiteSyncEditorTitle</code> | [GWT R061][R061] |
| <code>The most recently used options for saving a plot as a PDF.</code> | <code>最近一次将图形保存为 PDF 时使用的选项。</code> | <code>savePlotAsPdfOptionsDescription</code> | [GWT R061][R061] |
| <code>Whether to show UI for publishing content.</code> | <code>是否显示发布内容的 UI。</code> | <code>showPublishUiDescription</code> | [GWT R061][R061] |
| <code>The color theme to apply.</code> | <code>要应用的颜色主题。</code> | <code>themeDescription</code> | [GWT R061][R061] |
| <code>Whether or not the MinGW compiler with GCC 4.9 is used.</code> | <code>是否使用带 GCC 4.9 的 MinGW 编译器。</code> | <code>usingMingwGcc49Description</code> | [GWT R061][R061] |
| <code>Whether or not the use of Visual Mode has been confirmed.</code> | <code>是否已确认使用可视化模式。</code> | <code>visualModeConfirmedDescription</code> | [GWT R061][R061] |
| <code>Key for making Zotero API calls</code> | <code>用于调用 Zotero API 的密钥。</code> | <code>zoteroApiKeyDescription</code> | [GWT R061][R061] |
| <code>Zotero API Key</code> | <code>Zotero API 密钥</code> | <code>zoteroApiKeyTitle</code> | [GWT R061][R061] |
| <code>Zotero connection type (local or web)</code> | <code>Zotero 连接类型( 本地或网络)</code> | <code>zoteroConnectionTypeDescription</code> | [GWT R061][R061] |
| <code>Zotero connection type</code> | <code>Zotero 连接类型</code> | <code>zoteroConnectionTypeTitle</code> | [GWT R061][R061] |
| <code>Directory containing Zotero data files</code> | <code>包含 Zotero 数据文件的目录</code> | <code>zoteroDataDirDescription</code> | [GWT R061][R061] |
| <code>Zotero Data Directory</code> | <code>Zotero 数据目录</code> | <code>zoteroDataDirTitle</code> | [GWT R061][R061] |
| <code>Whether to use Better BibTeX when suggesting citation keys and writing citations to BibTeX bibliographies</code> | <code>建议引用键并将引用写入 BibTeX 参考文献时，是否使用 Better BibTeX。</code> | <code>zoteroUseBetterBibtexDescription</code> | [GWT R061][R061] |
| <code>Use Better BibTeX for citation keys and BibTeX export</code> | <code>使用 Better BibTeX 生成引用键并导出 BibTeX</code> | <code>zoteroUseBetterBibtexTitle</code> | [GWT R061][R061] |

### 偏好设置显示标题与说明（不是 preference key 翻译）

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>When set, Air will only be used to format R documents located within a project or directory containing an air.toml file.</code> | <code>启用后，Air 仅用于格式化位于含有 air.toml 文件的项目或目录中的 R 文档。</code> | <code>airFormatterRequireTomlDescription</code> | [GWT R060][R060] |
| <code>Only use Air when an air.toml file is found</code> | <code>只有在找到 air.toml 文件时才使用 Air</code> | <code>airFormatterRequireTomlTitle</code> | [GWT R060][R060] |
| <code>Whether to enable the ability to add source columns to display.</code> | <code>是否启用添加源列以显示的能力。</code> | <code>allowSourceColumnsDescription</code> | [GWT R060][R060] |
| <code>Allow source columns</code> | <code>允许源列</code> | <code>allowSourceColumnsTitle</code> | [GWT R060][R060] |
| <code>Whether to always enable the concordance for RNW files.</code> | <code>是否总是启用 RNW 文件的对齐。</code> | <code>alwaysEnableRnwConcordanceDescription</code> | [GWT R060][R060] |
| <code>Enable Rnw concordance</code> | <code>启用 Rnw concordance</code> | <code>alwaysEnableRnwConcordanceTitle</code> | [GWT R060][R060] |
| <code>Whether to always save the R console history.</code> | <code>是否总是保存 R 控制台历史。</code> | <code>alwaysSaveHistoryDescription</code> | [GWT R060][R060] |
| <code>Save R console history</code> | <code>保存 R 控制台历史</code> | <code>alwaysSaveHistoryTitle</code> | [GWT R060][R060] |
| <code>List of file extensions (beginning with ., not case sensitive) that are always shown in the Files Pane, regardless of whether hidden files are shown</code> | <code>始终显示在“文件”窗格中的文件扩展名列表（以 . 开头，不区分大小写），无论是否显示隐藏文件。</code> | <code>alwaysShownExtensionsDescription</code> | [GWT R060][R060] |
| <code>Extensions always shown in the Files Pane</code> | <code>扩展名总是在文件窗格中显示</code> | <code>alwaysShownExtensionsTitle</code> | [GWT R060][R060] |
| <code>List of file names (case sensitive) that are always shown in the Files Pane, regardless of whether hidden files are shown</code> | <code>始终显示在“文件”窗格中的文件名列表（区分大小写），无论是否显示隐藏文件。</code> | <code>alwaysShownFilesDescription</code> | [GWT R060][R060] |
| <code>Files always shown in the Files Pane</code> | <code>文件总是在文件窗格中显示</code> | <code>alwaysShownFilesTitle</code> | [GWT R060][R060] |
| <code>How to treat ANSI escape codes in the console.</code> | <code>如何处理控制台中的 ANSI 转义代码。</code> | <code>ansiConsoleModeDescription</code> | [GWT R060][R060] |
| <code>Ignore ANSI escapes</code> | <code>忽略 ANSI 转义代码</code> | <code>ansiConsoleModeEnum_off</code> | [GWT R060][R060] |
| <code>Render ANSI escapes</code> | <code>渲染 ANSI 转义代码</code> | <code>ansiConsoleModeEnum_on</code> | [GWT R060][R060] |
| <code>Remove ANSI escapes</code> | <code>移除 ANSI 转义代码</code> | <code>ansiConsoleModeEnum_strip</code> | [GWT R060][R060] |
| <code>ANSI escape codes in R console</code> | <code>R 控制台中的 ANSI 转义代码</code> | <code>ansiConsoleModeTitle</code> | [GWT R060][R060] |
| <code>The delay (in milliseconds) before AI completions are requested after the cursor position has changed.</code> | <code>光标位置改变后，等待多少毫秒再请求 AI 代码补全。</code> | <code>assistantCompletionsDelayDescription</code> | [GWT R060][R060] |
| <code>AI completions delay</code> | <code>AI 代码补全延迟</code> | <code>assistantCompletionsDelayTitle</code> | [GWT R060][R060] |
| <code>Control when code suggestions are displayed in the editor.</code> | <code>控制何时在编辑器中显示代码建议。</code> | <code>assistantCompletionsTriggerDescription</code> | [GWT R060][R060] |
| <code>Automatically</code> | <code>自动</code> | <code>assistantCompletionsTriggerEnum_auto</code> | [GWT R060][R060] |
| <code>Manually</code> | <code>手动</code> | <code>assistantCompletionsTriggerEnum_manual</code> | [GWT R060][R060] |
| <code>Show code suggestions:</code> | <code>显示代码建议:</code> | <code>assistantCompletionsTriggerTitle</code> | [GWT R060][R060] |
| <code>Select which AI assistant to use for code suggestions and assistance.</code> | <code>选择用于代码建议和帮助的 AI 助手。</code> | <code>assistantDescription</code> | [GWT R060][R060] |
| <code>(None)</code> | <code>(无)</code> | <code>assistantEnum_none</code> | [GWT R060][R060] |
| <code>Posit AI Pass Next Edit Suggestions</code> | <code>Posit AI Pass 下一步编辑建议</code> | <code>assistantEnum_posit</code> | [GWT R060][R060] |
| <code>When enabled, RStudio will index project files with the AI assistant.</code> | <code>启用后，RStudio 将使用 AI 助手索引项目文件。</code> | <code>assistantIndexingEnabledDescription</code> | [GWT R060][R060] |
| <code>Index project files with AI assistant</code> | <code>使用 AI 助手索引项目文件</code> | <code>assistantIndexingEnabledTitle</code> | [GWT R060][R060] |
| <code>When enabled, next edit suggestions will be automatically displayed. When disabled, suggestions will only be shown when hovering over the gutter icon.</code> | <code>启用后，下一步编辑建议会自动显示；禁用后，仅在鼠标悬停于边栏图标上时显示建议。</code> | <code>assistantNesAutoshowDescription</code> | [GWT R060][R060] |
| <code>Automatically display next edit suggestions in editor</code> | <code>自动在编辑器中显示下一次编辑建议</code> | <code>assistantNesAutoshowTitle</code> | [GWT R060][R060] |
| <code>When enabled, RStudio will display next edit suggestions as provided by the active AI assistant when available.</code> | <code>启用后，RStudio 会在可用时显示当前 AI 助手提供的下一步编辑建议。</code> | <code>assistantNesEnabledDescription</code> | [GWT R060][R060] |
| <code>Enable next edit suggestions</code> | <code>启用下一步编辑建议</code> | <code>assistantNesEnabledTitle</code> | [GWT R060][R060] |
| <code>Control the behavior of the Tab key when both AI code suggestions and RStudio code completions are visible.</code> | <code>当 AI 代码建议和 RStudio 代码补全同时可见时，控制 Tab 键的行为。</code> | <code>assistantTabKeyBehaviorDescription</code> | [GWT R060][R060] |
| <code>Code Completion</code> | <code>代码补全</code> | <code>assistantTabKeyBehaviorEnum_completions</code> | [GWT R060][R060] |
| <code>AI Suggestion</code> | <code>AI 建议</code> | <code>assistantTabKeyBehaviorEnum_suggestion</code> | [GWT R060][R060] |
| <code>Pressing Tab key will prefer inserting:</code> | <code>按 Tab 键将倾向于插入 :</code> | <code>assistantTabKeyBehaviorTitle</code> | [GWT R060][R060] |
| <code>AI Assistant</code> | <code>AI 助手</code> | <code>assistantTitle</code> | [GWT R060][R060] |
| <code>When enabled, the Posit Assistant button is displayed in the main toolbar.</code> | <code>启用后，主工具栏中会显示 Posit Assistant 按钮。</code> | <code>assistantToolbarButtonVisibleDescription</code> | [GWT R060][R060] |
| <code>Show Posit Assistant button in toolbar</code> | <code>在工具栏中显示 Posit Assistant 按钮</code> | <code>assistantToolbarButtonVisibleTitle</code> | [GWT R060][R060] |
| <code>When enabled, the AI assistant agents trust the operating system certificate store (e.g. the Windows Certificate Store or macOS Keychain) in addition to Node.js's built-in certificate authorities. Useful behind a TLS-inspecting proxy. Restart the R session for the change to take effect.</code> | <code>启用后，AI 助手代理除信任 Node.js 内置证书颁发机构外，还会信任操作系统证书存储（例如 Windows 证书存储或 macOS 钥匙串）。适用于会检查 TLS 的代理；重启 R 会话后生效。</code> | <code>assistantUseSystemCaDescription</code> | [GWT R060][R060] |
| <code>Use the system certificate store (restart required)</code> | <code>使用系统证书存储（需要重启）</code> | <code>assistantUseSystemCaTitle</code> | [GWT R060][R060] |
| <code>Whether to ensure that source files end with a newline character.</code> | <code>是否确保源文件以新行字符结尾。</code> | <code>autoAppendNewlineDescription</code> | [GWT R060][R060] |
| <code>Ensure files end with a newline when saving</code> | <code>确保文件在保存时以新行结尾</code> | <code>autoAppendNewlineTitle</code> | [GWT R060][R060] |
| <code>Whether to automatically detect indentation settings from file contents.</code> | <code>是否从文件内容中自动检测缩进设置。</code> | <code>autoDetectIndentationDescription</code> | [GWT R060][R060] |
| <code>Auto-detect indentation in files</code> | <code>文件自动检测缩进</code> | <code>autoDetectIndentationTitle</code> | [GWT R060][R060] |
| <code>Whether to automatically discover and offer to install missing R package dependencies.</code> | <code>是否自动发现并提示安装缺少的 R 程序包依赖项。</code> | <code>autoDiscoverPackageDependenciesDescription</code> | [GWT R060][R060] |
| <code>Detect missing R packages in the editor</code> | <code>在编辑器中检测缺少的 R 程序包</code> | <code>autoDiscoverPackageDependenciesTitle</code> | [GWT R060][R060] |
| <code>Whether to automatically expand tracebacks when an error occurs.</code> | <code>是否在发生错误时自动扩展溯源。</code> | <code>autoExpandErrorTracebacksDescription</code> | [GWT R060][R060] |
| <code>Auto-expand error tracebacks</code> | <code>自动扩展错误追踪</code> | <code>autoExpandErrorTracebacksTitle</code> | [GWT R060][R060] |
| <code>Hide desktop menu bar until Alt key is pressed.</code> | <code>隐藏桌面菜单栏，直到按下 Alt 键。</code> | <code>autohideMenubarDescription</code> | [GWT R060][R060] |
| <code>Auto hide menu bar</code> | <code>自动隐藏菜单栏</code> | <code>autohideMenubarTitle</code> | [GWT R060][R060] |
| <code>Whether to automatically run an R Markdown document's Setup chunk before running other chunks.</code> | <code>运行其他代码块前，是否自动运行 R Markdown 文档的 Setup 代码块。</code> | <code>autoRunSetupChunkDescription</code> | [GWT R060][R060] |
| <code>Automatically run Setup chunk when needed</code> | <code>需要时自动运行 setup 代码块</code> | <code>autoRunSetupChunkTitle</code> | [GWT R060][R060] |
| <code>The idle period, in milliseconds, after which documents should be auto-saved.</code> | <code>文档自动保存前的空闲时间（毫秒）。</code> | <code>autoSaveIdleMsDescription</code> | [GWT R060][R060] |
| <code>Idle period for document autosave (ms)</code> | <code>文档自动保存的空闲期</code> | <code>autoSaveIdleMsTitle</code> | [GWT R060][R060] |
| <code>Whether to automatically save when the editor loses focus.</code> | <code>当编辑器失去焦点时是否自动保存。</code> | <code>autoSaveOnBlurDescription</code> | [GWT R060][R060] |
| <code>Save documents when editor loses input focus</code> | <code>编辑器丢失输入焦点时保存文档</code> | <code>autoSaveOnBlurTitle</code> | [GWT R060][R060] |
| <code>How to deal with changes to documents on idle.</code> | <code>如何处理闲置文档的更改.</code> | <code>autoSaveOnIdleDescription</code> | [GWT R060][R060] |
| <code>Backup unsaved changes</code> | <code>备份未保存的更改</code> | <code>autoSaveOnIdleEnum_backup</code> | [GWT R060][R060] |
| <code>Save and write changes</code> | <code>保存并写入更改</code> | <code>autoSaveOnIdleEnum_commit</code> | [GWT R060][R060] |
| <code>Do nothing</code> | <code>不执行任何操作</code> | <code>autoSaveOnIdleEnum_none</code> | [GWT R060][R060] |
| <code>Autosave mode on idle</code> | <code>闲置时自动保存模式</code> | <code>autoSaveOnIdleTitle</code> | [GWT R060][R060] |
| <code>The number of milliseconds to delay before running code diagnostics in the background.</code> | <code>在后台运行代码诊断前等待的毫秒数。</code> | <code>backgroundDiagnosticsDelayMsDescription</code> | [GWT R060][R060] |
| <code>Run R code diagnostics after (ms)</code> | <code>在 (ms) 后运行 R 代码诊断</code> | <code>backgroundDiagnosticsDelayMsTitle</code> | [GWT R060][R060] |
| <code>Whether to run code diagnostics in the background, as you type.</code> | <code>输入代码时是否在后台运行代码诊断。</code> | <code>backgroundDiagnosticsDescription</code> | [GWT R060][R060] |
| <code>Run R code diagnostics in the background</code> | <code>在后台运行 R 代码诊断</code> | <code>backgroundDiagnosticsTitle</code> | [GWT R060][R060] |
| <code>The name of the default Bioconductor mirror.</code> | <code>默认 Bioconductor 镜像的名称。</code> | <code>bioconductorMirrorNameDescription</code> | [GWT R060][R060] |
| <code>The URL of the default Bioconductor mirror.</code> | <code>默认 Bioconductor 镜像的 URL。</code> | <code>bioconductorMirrorUrlDescription</code> | [GWT R060][R060] |
| <code>Whether to flash the cursor off and on.</code> | <code>光标是否闪烁。</code> | <code>blinkingCursorDescription</code> | [GWT R060][R060] |
| <code>Use a blinking cursor</code> | <code>使用闪烁光标</code> | <code>blinkingCursorTitle</code> | [GWT R060][R060] |
| <code>List of fixed-width fonts to check for browser support.</code> | <code>要检查浏览器支持的固定宽字体列表。</code> | <code>browserFixedWidthFontsDescription</code> | [GWT R060][R060] |
| <code>Fixed-width font list for RStudio Server</code> | <code>RStudio Server 等宽字体列表</code> | <code>browserFixedWidthFontsTitle</code> | [GWT R060][R060] |
| <code>How to detect busy status in the Terminal.</code> | <code>如何检测终端的繁忙状态。</code> | <code>busyDetectionDescription</code> | [GWT R060][R060] |
| <code>A list of apps that should not be considered busy in the Terminal.</code> | <code>终端中不应被视为繁忙的应用程序列表。</code> | <code>busyExclusionListDescription</code> | [GWT R060][R060] |
| <code>Select which AI assistant to use for chat functionality.</code> | <code>选择用于聊天功能的 AI 助手。</code> | <code>chatProviderDescription</code> | [GWT R060][R060] |
| <code>(None)</code> | <code>(无)</code> | <code>chatProviderEnum_none</code> | [GWT R060][R060] |
| <code>Chat Provider</code> | <code>聊天服务提供方</code> | <code>chatProviderTitle</code> | [GWT R060][R060] |
| <code>Whether to check arguments to R function calls.</code> | <code>是否检查 R 函数调用参数。</code> | <code>checkArgumentsToRFunctionCallsDescription</code> | [GWT R060][R060] |
| <code>Check arguments to R function calls</code> | <code>检查 R 函数调用参数</code> | <code>checkArgumentsToRFunctionCallsTitle</code> | [GWT R060][R060] |
| <code>Whether to check for new versions of RStudio when RStudio starts.</code> | <code>RStudio 启动时是否检查新版本。</code> | <code>checkForUpdatesDescription</code> | [GWT R060][R060] |
| <code>Check for new version at startup</code> | <code>启动时检查新版本</code> | <code>checkForUpdatesTitle</code> | [GWT R060][R060] |
| <code>(Deprecated) When enabled, RStudio will detect R objects containing null external pointers when building the Environment pane, and avoid introspecting their contents further. This preference is no longer used.</code> | <code>（已弃用）启用后，RStudio 在构建环境窗格时会检测包含空外部指针的 R 对象，并避免继续检查其内容。此首选项已不再使用。</code> | <code>checkNullExternalPointersDescription</code> | [GWT R060][R060] |
| <code>Check values in the Environment pane for null external pointers</code> | <code>在环境窗格中检查无效的外部指针值</code> | <code>checkNullExternalPointersTitle</code> | [GWT R060][R060] |
| <code>Whether to check for unexpected variable assignments inside R function calls.</code> | <code>是否检查 R 函数调用中的意外变量赋值。</code> | <code>checkUnexpectedAssignmentInFunctionCallDescription</code> | [GWT R060][R060] |
| <code>Check for unexpected assignments</code> | <code>检查意外赋值</code> | <code>checkUnexpectedAssignmentInFunctionCallTitle</code> | [GWT R060][R060] |
| <code>The verbosity level to use with Clang (0 - 2)</code> | <code>Clang 使用的详细程度（0–2）。</code> | <code>clangVerboseDescription</code> | [GWT R060][R060] |
| <code>Clang verbosity level (0 - 2)</code> | <code>Clang 详细程度（0–2）</code> | <code>clangVerboseTitle</code> | [GWT R060][R060] |
| <code>Always use --preclean when installing package.</code> | <code>安装程序包时始终使用 --preclean。</code> | <code>cleanBeforeInstallDescription</code> | [GWT R060][R060] |
| <code>Always use --preclean when installing package</code> | <code>安装程序包时始终使用 --preclean</code> | <code>cleanBeforeInstallTitle</code> | [GWT R060][R060] |
| <code>Whether to clean output after running Texi2Dvi.</code> | <code>运行 Texi2Dvi 后是否清理输出。</code> | <code>cleanTexi2dviOutputDescription</code> | [GWT R060][R060] |
| <code>Clean output after running Texi2Dvi</code> | <code>运行 Texi2Dvi 后清理输出</code> | <code>cleanTexi2dviOutputTitle</code> | [GWT R060][R060] |
| <code>Whether to clean up temporary files after running R CMD CHECK.</code> | <code>运行 R CMD CHECK 后是否清理临时文件。</code> | <code>cleanupAfterRCmdCheckDescription</code> | [GWT R060][R060] |
| <code>Clean up temporary files after R CMD CHECK</code> | <code>R CMD CHECK 之后清理临时文件</code> | <code>cleanupAfterRCmdCheckTitle</code> | [GWT R060][R060] |
| <code>The number of characters in a symbol that can be entered before completions are offered.</code> | <code>输入符号中的多少个字符后提供补全建议。</code> | <code>codeCompletionCharactersDescription</code> | [GWT R060][R060] |
| <code>Number of characters for code completion</code> | <code>触发代码补全的字符数</code> | <code>codeCompletionCharactersTitle</code> | [GWT R060][R060] |
| <code>The number of milliseconds to wait before offering code suggestions.</code> | <code>在提供代码建议前等待的毫秒数。</code> | <code>codeCompletionDelayDescription</code> | [GWT R060][R060] |
| <code>Delay before completing code (ms)</code> | <code>显示代码补全前的延迟（毫秒）</code> | <code>codeCompletionDelayTitle</code> | [GWT R060][R060] |
| <code>When to use auto-completion for R code in the RStudio code editor.</code> | <code>何时在 RStudio 代码编辑器中为 R 代码使用自动补全。</code> | <code>codeCompletionDescription</code> | [GWT R060][R060] |
| <code>Automatically</code> | <code>自动</code> | <code>codeCompletionEnum_always</code> | [GWT R060][R060] |
| <code>Manually (Tab, Ctrl + Space)</code> | <code>手动（Tab、Ctrl+Space）</code> | <code>codeCompletionEnum_manual</code> | [GWT R060][R060] |
| <code>Never</code> | <code>从不</code> | <code>codeCompletionEnum_never</code> | [GWT R060][R060] |
| <code>When triggered ($, ::)</code> | <code>触发时（$、::）</code> | <code>codeCompletionEnum_triggered</code> | [GWT R060][R060] |
| <code>When set, RStudio will include all function arguments in the completion list, even if those arguments have already appeared to be used in the current function invocation.</code> | <code>设置后，RStudio 会在补全列表中包含所有函数参数，即使这些参数看起来已在当前函数调用中使用。</code> | <code>codeCompletionIncludeAlreadyUsedDescription</code> | [GWT R060][R060] |
| <code>Include all function arguments in completion list</code> | <code>在补全列表中包含所有函数参数</code> | <code>codeCompletionIncludeAlreadyUsedTitle</code> | [GWT R060][R060] |
| <code>When to use auto-completion for other languages (such as JavaScript and SQL) in the RStudio code editor.</code> | <code>何时在 RStudio 代码编辑器中为 JavaScript、SQL 等其他语言使用自动补全。</code> | <code>codeCompletionOtherDescription</code> | [GWT R060][R060] |
| <code>Automatically</code> | <code>自动</code> | <code>codeCompletionOtherEnum_always</code> | [GWT R060][R060] |
| <code>Manually (Ctrl+Space)</code> | <code>手动（Ctrl+Space）</code> | <code>codeCompletionOtherEnum_manual</code> | [GWT R060][R060] |
| <code>When triggered</code> | <code>触发时</code> | <code>codeCompletionOtherEnum_triggered</code> | [GWT R060][R060] |
| <code>Use code completion for other languages</code> | <code>其他语言使用代码补全</code> | <code>codeCompletionOtherTitle</code> | [GWT R060][R060] |
| <code>Use code completion for R</code> | <code>对 R 使用代码补全</code> | <code>codeCompletionTitle</code> | [GWT R060][R060] |
| <code>The formatter to use when reformatting code.</code> | <code>重新格式化代码时使用的格式化工具。</code> | <code>codeFormatterDescription</code> | [GWT R060][R060] |
| <code>External</code> | <code>外部工具</code> | <code>codeFormatterEnum_external</code> | [GWT R060][R060] |
| <code>(Default)</code> | <code>(默认)</code> | <code>codeFormatterEnum_none</code> | [GWT R060][R060] |
| <code>The external command to be used when reformatting code.</code> | <code>重新格式化代码时使用的外部命令。</code> | <code>codeFormatterExternalCommandDescription</code> | [GWT R060][R060] |
| <code>When set, strict transformers will be used when formatting code. See the &#96;styler&#96; package documentation for more details.</code> | <code>启用后，格式化代码时将使用严格转换器。详情请参阅 &#96;styler&#96; 程序包文档。</code> | <code>codeFormatterStylerStrictDescription</code> | [GWT R060][R060] |
| <code>Use strict transformers when formatting code</code> | <code>格式化代码时使用严格转换器</code> | <code>codeFormatterStylerStrictTitle</code> | [GWT R060][R060] |
| <code>Code formatter</code> | <code>代码格式化工具</code> | <code>codeFormatterTitle</code> | [GWT R060][R060] |
| <code>Whether to show preview for named and hexadecimal colors.</code> | <code>是否显示命名颜色和十六进制颜色的预览。</code> | <code>colorPreviewDescription</code> | [GWT R060][R060] |
| <code>Enable preview of named and hexadecimal colors</code> | <code>启用命名颜色和十六进制颜色预览</code> | <code>colorPreviewTitle</code> | [GWT R060][R060] |
| <code>Whether to keep track of recently used commands in the Command Palette</code> | <code>是否跟踪命令面板中最近使用的命令。</code> | <code>commandPaletteMruDescription</code> | [GWT R060][R060] |
| <code>Remember recently used items in Command Palette</code> | <code>记住命令面板中最近使用的项目</code> | <code>commandPaletteMruTitle</code> | [GWT R060][R060] |
| <code>Whether to always use code completion in the R console.</code> | <code>是否总是在 R 控制台中使用代码补全。</code> | <code>consoleCodeCompletionDescription</code> | [GWT R060][R060] |
| <code>Use code completion in the R console</code> | <code>在 R 控制台中使用代码补全</code> | <code>consoleCodeCompletionTitle</code> | [GWT R060][R060] |
| <code>Whether double-clicking should select a word in the Console pane.</code> | <code>双击是否在控制台窗格中选择一个单词。</code> | <code>consoleDoubleClickSelectDescription</code> | [GWT R060][R060] |
| <code>Double click to select in the Console</code> | <code>在控制台上双击选择</code> | <code>consoleDoubleClickSelectTitle</code> | [GWT R060][R060] |
| <code>When enabled, R errors, warnings, and messages will receive an extended display with custom styles applied.</code> | <code>启用后，将以应用了自定义样式的扩展形式显示 R 错误、警告和消息。</code> | <code>consoleHighlightConditionsDescription</code> | [GWT R060][R060] |
| <code>Errors only</code> | <code>仅错误</code> | <code>consoleHighlightConditionsEnum_errors</code> | [GWT R060][R060] |
| <code>Errors and Warnings only</code> | <code>仅错误和警告</code> | <code>consoleHighlightConditionsEnum_errors_warnings</code> | [GWT R060][R060] |
| <code>Errors, Warnings, and Messages</code> | <code>错误、警告和消息</code> | <code>consoleHighlightConditionsEnum_errors_warnings_messages</code> | [GWT R060][R060] |
| <code>(None)</code> | <code>(无)</code> | <code>consoleHighlightConditionsEnum_none</code> | [GWT R060][R060] |
| <code>Use extended display for</code> | <code>对以下内容使用扩展显示</code> | <code>consoleHighlightConditionsTitle</code> | [GWT R060][R060] |
| <code>The maximum number of characters to display in a single line in the R console.</code> | <code>R 控制台单行显示的最大字符数。</code> | <code>consoleLineLengthLimitDescription</code> | [GWT R060][R060] |
| <code>Maximum characters per line in R console</code> | <code>R 控制台每行最大字符数</code> | <code>consoleLineLengthLimitTitle</code> | [GWT R060][R060] |
| <code>The maximum number of console actions to store and display in the console scrollback buffer.</code> | <code>控制台回滚缓冲区中保存和显示的最大控制台操作数。</code> | <code>consoleMaxLinesDescription</code> | [GWT R060][R060] |
| <code>Maximum lines in R console</code> | <code>R 控制台中的最大行数</code> | <code>consoleMaxLinesTitle</code> | [GWT R060][R060] |
| <code>When enabled, console output will be wrapped at the console width.</code> | <code>启用后，控制台输出将按控制台宽度自动换行。</code> | <code>consoleSoftWrapDescription</code> | [GWT R060][R060] |
| <code>Enable soft-wrapping of console output</code> | <code>启用控制台输出自动换行</code> | <code>consoleSoftWrapTitle</code> | [GWT R060][R060] |
| <code>How long to wait before warning that automatic session suspension has been paused. Higher values for less frequent notices.</code> | <code>自动会话挂起暂停后等待多长时间再发出警告。值越大，通知越不频繁。</code> | <code>consoleSuspendBlockedNoticeDelayDescription</code> | [GWT R060][R060] |
| <code>Number of seconds to delay warning</code> | <code>延迟警告的秒数</code> | <code>consoleSuspendBlockedNoticeDelayTitle</code> | [GWT R060][R060] |
| <code>Whether the 'Auto Suspension Blocked' icon should appear in the R Console toolbar.</code> | <code>是否在 R 控制台工具栏中显示“自动挂起已暂停”图标。</code> | <code>consoleSuspendBlockedNoticeDescription</code> | [GWT R060][R060] |
| <code>Warn when automatic session suspension is paused</code> | <code>自动会话挂起暂停时发出警告</code> | <code>consoleSuspendBlockedNoticeTitle</code> | [GWT R060][R060] |
| <code>Whether to continue comments (by inserting the comment character) after adding a new line.</code> | <code>在添加新行后是否继续注释(通过插入注释字符)。</code> | <code>continueCommentsOnNewlineDescription</code> | [GWT R060][R060] |
| <code>Continue comments after adding new line</code> | <code>添加新行后继续注释</code> | <code>continueCommentsOnNewlineTitle</code> | [GWT R060][R060] |
| <code>The delay (in milliseconds) before GitHub Copilot completions are requested after the cursor position has changed.</code> | <code>光标位置改变后，等待多少毫秒再请求 GitHub Copilot 代码补全。</code> | <code>copilotCompletionsDelayDescription</code> | [GWT R060][R060] |
| <code>GitHub Copilot completions delay</code> | <code>GitHub Copilot 代码补全延迟</code> | <code>copilotCompletionsDelayTitle</code> | [GWT R060][R060] |
| <code>Control when code suggestions are displayed in the editor.</code> | <code>控制何时在编辑器中显示代码建议。</code> | <code>copilotCompletionsTriggerDescription</code> | [GWT R060][R060] |
| <code>Automatically</code> | <code>自动</code> | <code>copilotCompletionsTriggerEnum_auto</code> | [GWT R060][R060] |
| <code>Manually (Ctrl + Backslash)</code> | <code>手动（Ctrl + 反斜杠）</code> | <code>copilotCompletionsTriggerEnum_manual</code> | [GWT R060][R060] |
| <code>Show code suggestions:</code> | <code>显示代码建议:</code> | <code>copilotCompletionsTriggerTitle</code> | [GWT R060][R060] |
| <code>When enabled, RStudio will use GitHub Copilot to provide code suggestions.</code> | <code>启用后，RStudio 将使用 GitHub Copilot 提供代码建议。</code> | <code>copilotEnabledDescription</code> | [GWT R060][R060] |
| <code>Enable GitHub Copilot</code> | <code>启用 GitHub Copilot</code> | <code>copilotEnabledTitle</code> | [GWT R060][R060] |
| <code>When enabled, RStudio will index project files with GitHub Copilot.</code> | <code>启用后，RStudio 将使用 GitHub Copilot 索引项目文件。</code> | <code>copilotIndexingEnabledDescription</code> | [GWT R060][R060] |
| <code>Index project files with GitHub Copilot</code> | <code>使用 GitHub Copilot 索引项目文件</code> | <code>copilotIndexingEnabledTitle</code> | [GWT R060][R060] |
| <code>When enabled, next edit suggestions will be automatically displayed. When disabled, suggestions will only be shown when hovering over the gutter icon.</code> | <code>启用后，下一步编辑建议会自动显示；禁用后，仅在鼠标悬停于边栏图标上时显示建议。</code> | <code>copilotNesAutoshowDescription</code> | [GWT R060][R060] |
| <code>Automatically show next edit suggestions</code> | <code>自动显示下次编辑建议</code> | <code>copilotNesAutoshowTitle</code> | [GWT R060][R060] |
| <code>When enabled, RStudio will display next edit suggestions as provided by Copilot when available.</code> | <code>启用后，RStudio 会在可用时显示 Copilot 提供的下一步编辑建议。</code> | <code>copilotNesEnabledDescription</code> | [GWT R060][R060] |
| <code>Enable next edit suggestions</code> | <code>启用下一步编辑建议</code> | <code>copilotNesEnabledTitle</code> | [GWT R060][R060] |
| <code>When enabled, RStudio will tell Copilot to use the current project's directory as a workspace.</code> | <code>启用后，RStudio 将指示 Copilot 使用当前项目目录作为工作区。</code> | <code>copilotProjectWorkspaceDescription</code> | [GWT R060][R060] |
| <code>Use project directory as a Copilot workspace</code> | <code>使用项目目录作为 Copilot 工作区</code> | <code>copilotProjectWorkspaceTitle</code> | [GWT R060][R060] |
| <code>When enabled, RStudio will show account and billing messages from GitHub Copilot in a message box.</code> | <code>启用后，RStudio 会在消息框中显示 GitHub Copilot 的账户和计费消息。</code> | <code>copilotShowMessagesDescription</code> | [GWT R060][R060] |
| <code>Display account and billing messages from GitHub Copilot</code> | <code>显示 GitHub Copilot 的账户和计费消息</code> | <code>copilotShowMessagesTitle</code> | [GWT R060][R060] |
| <code>Control the behavior of the Tab key when both Copilot code suggestions and RStudio code completions are visible.</code> | <code>当 Copilot 代码建议和 RStudio 代码补全同时可见时，控制 Tab 键的行为。</code> | <code>copilotTabKeyBehaviorDescription</code> | [GWT R060][R060] |
| <code>Code Completion</code> | <code>代码补全</code> | <code>copilotTabKeyBehaviorEnum_completions</code> | [GWT R060][R060] |
| <code>Copilot Suggestion</code> | <code>Copilot 建议</code> | <code>copilotTabKeyBehaviorEnum_suggestion</code> | [GWT R060][R060] |
| <code>Pressing Tab key will prefer inserting:</code> | <code>按 Tab 键将倾向于插入 :</code> | <code>copilotTabKeyBehaviorTitle</code> | [GWT R060][R060] |
| <code>C++ template.</code> | <code>C++ 模板.</code> | <code>cppTemplateDescription</code> | [GWT R060][R060] |
| <code>C++ template</code> | <code>C++ 模板</code> | <code>cppTemplateTitle</code> | [GWT R060][R060] |
| <code>The CRAN mirror to use.</code> | <code>要使用的 CRAN 镜像。</code> | <code>cranMirrorDescription</code> | [GWT R060][R060] |
| <code>The fully qualified path to the custom shell command to use in the Terminal tab.</code> | <code>终端标签页中使用的自定义 Shell 命令的完整路径。</code> | <code>customShellCommandDescription</code> | [GWT R060][R060] |
| <code>The command-line options to pass to the custom shell command.</code> | <code>传递到自定义 shell 命令的命令行选项。</code> | <code>customShellOptionsDescription</code> | [GWT R060][R060] |
| <code>The maximum number of characters to show in a data viewer cell.</code> | <code>在数据查看器单元格中显示的最大字符数。</code> | <code>dataViewerMaxCellSizeDescription</code> | [GWT R060][R060] |
| <code>Maximum number of character in data viewer cells</code> | <code>数据查看器单元格中最大字符数</code> | <code>dataViewerMaxCellSizeTitle</code> | [GWT R060][R060] |
| <code>The maximum number of columns to show at once in the data viewer.</code> | <code>在数据查看器中同时显示的最大列数。</code> | <code>dataViewerMaxColumnsDescription</code> | [GWT R060][R060] |
| <code>Maximum number of columns in data viewer</code> | <code>数据查看器的最大列数</code> | <code>dataViewerMaxColumnsTitle</code> | [GWT R060][R060] |
| <code>Whether the data viewer filter UI is shown by default when opening the data viewer.</code> | <code>打开数据查看器时是否默认显示筛选界面。</code> | <code>dataViewerShowFiltersDescription</code> | [GWT R060][R060] |
| <code>Show data viewer filter UI by default</code> | <code>默认显示数据查看器筛选界面</code> | <code>dataViewerShowFiltersTitle</code> | [GWT R060][R060] |
| <code>Whether the Summary side panel is shown by default when opening the data viewer.</code> | <code>打开数据查看器时是否默认显示摘要侧面板。</code> | <code>dataViewerShowSummaryDescription</code> | [GWT R060][R060] |
| <code>Show data viewer summary panel by default</code> | <code>默认显示数据查看器摘要面板</code> | <code>dataViewerShowSummaryTitle</code> | [GWT R060][R060] |
| <code>Whether the data viewer draws its own overlay scrollbars; when disabled, native scrollbars are used instead.</code> | <code>数据查看器是否自行绘制覆盖式滚动条；禁用后将改用系统滚动条。</code> | <code>dataViewerUseOverlayScrollbarsDescription</code> | [GWT R060][R060] |
| <code>Use overlay scrollbars in the data viewer</code> | <code>在数据查看器中使用覆盖滚动条</code> | <code>dataViewerUseOverlayScrollbarsTitle</code> | [GWT R060][R060] |
| <code>Whether to display dates and times using the ISO-8601 format (e.g. 2026-03-09 14:30) instead of the format inferred from the system region.</code> | <code>是否使用 ISO-8601 格式（例如 2026-03-09 14:30）显示日期和时间，而不是使用从系统区域设置推断的格式。</code> | <code>dateTimeUseIso8601Description</code> | [GWT R060][R060] |
| <code>Use ISO-8601 date-time formatting</code> | <code>使用 ISO-8601 日期时间格式化</code> | <code>dateTimeUseIso8601Title</code> | [GWT R060][R060] |
| <code>Whether to display dates and times in the UTC time zone instead of the local time zone.</code> | <code>是否在协调世界时区而非当地时区显示日期和时间.</code> | <code>dateTimeUseUtcDescription</code> | [GWT R060][R060] |
| <code>Use UTC time zone</code> | <code>使用 UTC 时区</code> | <code>dateTimeUseUtcTitle</code> | [GWT R060][R060] |
| <code>The default character encoding to use when saving files.</code> | <code>保存文件时使用的默认字符编码。</code> | <code>defaultEncodingDescription</code> | [GWT R060][R060] |
| <code>Default character encoding</code> | <code>默认字符编码</code> | <code>defaultEncodingTitle</code> | [GWT R060][R060] |
| <code>The default program to use when processing LaTeX documents.</code> | <code>处理 LaTeX 文档时使用的默认程序。</code> | <code>defaultLatexProgramDescription</code> | [GWT R060][R060] |
| <code>Default LaTeX program</code> | <code>默认 LaTeX 程序</code> | <code>defaultLatexProgramTitle</code> | [GWT R060][R060] |
| <code>The default directory to use in file dialogs when opening a project.</code> | <code>打开项目时用于文件对话框的默认目录。</code> | <code>defaultOpenProjectLocationDescription</code> | [GWT R060][R060] |
| <code>Default open project location</code> | <code>打开项目时的默认位置</code> | <code>defaultOpenProjectLocationTitle</code> | [GWT R060][R060] |
| <code>The directory path under which to place new projects by default.</code> | <code>默认用于存放新项目的目录路径。</code> | <code>defaultProjectLocationDescription</code> | [GWT R060][R060] |
| <code>Default new project location</code> | <code>新项目的默认位置</code> | <code>defaultProjectLocationTitle</code> | [GWT R060][R060] |
| <code>The R version to use by default.</code> | <code>默认使用的 R 版本。</code> | <code>defaultRVersionDescription</code> | [GWT R060][R060] |
| <code>The default engine to use when processing Sweave documents.</code> | <code>处理 Sweave 文档时使用的默认引擎。</code> | <code>defaultSweaveEngineDescription</code> | [GWT R060][R060] |
| <code>Default Sweave engine</code> | <code>默认 Sweave 引擎</code> | <code>defaultSweaveEngineTitle</code> | [GWT R060][R060] |
| <code>Whether to move deleted files to the system Trash/Recycle Bin instead of permanently deleting them.</code> | <code>是否将删除的文件移到系统废纸篓或回收站，而不是永久删除。</code> | <code>deleteToTrashDescription</code> | [GWT R060][R060] |
| <code>Delete files to Trash/Recycle Bin</code> | <code>将删除的文件移到废纸篓/回收站</code> | <code>deleteToTrashTitle</code> | [GWT R060][R060] |
| <code>Whether to run diagnostics in R function calls.</code> | <code>是否在 R 函数调用中运行诊断。</code> | <code>diagnosticsInRFunctionCallsDescription</code> | [GWT R060][R060] |
| <code>Run diagnostics on R function calls</code> | <code>对 R 函数调用运行诊断</code> | <code>diagnosticsInRFunctionCallsTitle</code> | [GWT R060][R060] |
| <code>Whether to check code for problems after saving it.</code> | <code>保存后是否检查代码。</code> | <code>diagnosticsOnSaveDescription</code> | [GWT R060][R060] |
| <code>Check code for problems when saving</code> | <code>保存时检查问题代码</code> | <code>diagnosticsOnSaveTitle</code> | [GWT R060][R060] |
| <code>List of aria-live announcements to disable.</code> | <code>要禁用的 aria-live 通知列表。</code> | <code>disabledAriaLiveAnnouncementsDescription</code> | [GWT R060][R060] |
| <code>Disabled aria-live announcements</code> | <code>已禁用的 aria-live 通知</code> | <code>disabledAriaLiveAnnouncementsTitle</code> | [GWT R060][R060] |
| <code>Disable Electron accessibility support.</code> | <code>禁用 Electron 辅助功能支持。</code> | <code>disableRendererAccessibilityDescription</code> | [GWT R060][R060] |
| <code>Disable Electron accessibility support</code> | <code>禁用 Electron 辅助功能支持</code> | <code>disableRendererAccessibilityTitle</code> | [GWT R060][R060] |
| <code>When enabled, any pending console input will be discarded when an (uncaught) R error occurs.</code> | <code>启用后，发生未捕获的 R 错误时，将丢弃所有待处理的控制台输入。</code> | <code>discardPendingConsoleInputOnErrorDescription</code> | [GWT R060][R060] |
| <code>Discard pending console input on error</code> | <code>发生错误时丢弃待处理的控制台输入</code> | <code>discardPendingConsoleInputOnErrorTitle</code> | [GWT R060][R060] |
| <code>Which objects to show in the document outline pane.</code> | <code>在文档大纲中要显示的哪个对象。</code> | <code>docOutlineShowDescription</code> | [GWT R060][R060] |
| <code>Show in Document Outline</code> | <code>在文档大纲中显示</code> | <code>docOutlineShowTitle</code> | [GWT R060][R060] |
| <code>The default name to use as the document author when creating new documents.</code> | <code>创建新文档时用作文档作者的默认名称。</code> | <code>documentAuthorDescription</code> | [GWT R060][R060] |
| <code>Document author</code> | <code>文档作者</code> | <code>documentAuthorTitle</code> | [GWT R060][R060] |
| <code>The number of milliseconds to wait before linting a document after it is loaded.</code> | <code>文档加载后等待多少毫秒再执行 Lint 检查。</code> | <code>documentLoadLintDelayDescription</code> | [GWT R060][R060] |
| <code>Lint document after load (ms)</code> | <code>文档加载后的 Lint 延迟（毫秒）</code> | <code>documentLoadLintDelayTitle</code> | [GWT R060][R060] |
| <code>The font size to use for items in the document outline.</code> | <code>文档大纲条目使用的字体大小。</code> | <code>documentOutlineFontSizeDescription</code> | [GWT R060][R060] |
| <code>Document outline font size</code> | <code>文档大纲字体大小</code> | <code>documentOutlineFontSizeTitle</code> | [GWT R060][R060] |
| <code>The keybindings to use in the RStudio code editor.</code> | <code>RStudio 代码编辑器使用的键位绑定方案。</code> | <code>editorKeybindingsDescription</code> | [GWT R060][R060] |
| <code>Default</code> | <code>默认</code> | <code>editorKeybindingsEnum_default</code> | [GWT R060][R060] |
| <code>Keybinding set for editor</code> | <code>编辑器键位绑定方案</code> | <code>editorKeybindingsTitle</code> | [GWT R060][R060] |
| <code>The editor line height, as a percentage of the font size.</code> | <code>编辑器行高（以字体大小的百分比表示）。</code> | <code>editorLineHeightDescription</code> | [GWT R060][R060] |
| <code>Editor line height</code> | <code>编辑器行高</code> | <code>editorLineHeightTitle</code> | [GWT R060][R060] |
| <code>An integer value, 1-200, to set the editor scroll multiplier. The higher the value, the faster the scrolling.</code> | <code>用于设置编辑器滚动倍数的整数值（1–200）。值越大，滚动越快。</code> | <code>editorScrollMultiplierDescription</code> | [GWT R060][R060] |
| <code>Editor scroll speed sensitivity</code> | <code>编辑器滚动速度敏感性</code> | <code>editorScrollMultiplierTitle</code> | [GWT R060][R060] |
| <code>The name of the color theme to apply to the text editor in RStudio.</code> | <code>应用于 RStudio 文本编辑器的颜色主题名称。</code> | <code>editorThemeDescription</code> | [GWT R060][R060] |
| <code>Theme</code> | <code>主题</code> | <code>editorThemeTitle</code> | [GWT R060][R060] |
| <code>Control the granularity of change highlighting in edit suggestion previews. Word-level highlighting marks whole changed words; character-level highlighting marks individual changed characters.</code> | <code>控制编辑建议预览中更改内容的突出显示粒度。单词级会标记整个发生变化的单词；字符级会标记发生变化的单个字符。</code> | <code>editSuggestionDiffGranularityDescription</code> | [GWT R060][R060] |
| <code>Character</code> | <code>字符</code> | <code>editSuggestionDiffGranularityEnum_character</code> | [GWT R060][R060] |
| <code>Word</code> | <code>单词</code> | <code>editSuggestionDiffGranularityEnum_word</code> | [GWT R060][R060] |
| <code>Highlight changes in edit suggestions by:</code> | <code>编辑建议中的更改突出显示方式:</code> | <code>editSuggestionDiffGranularityTitle</code> | [GWT R060][R060] |
| <code>Preferred emoji skintone</code> | <code>首选的表情符号肤色。</code> | <code>emojiSkintoneDescription</code> | [GWT R060][R060] |
| <code>Use Ctrl+Mouse Wheel (Cmd+Mouse Wheel on macOS) to zoom the interface in and out.</code> | <code>按住 Ctrl 并滚动鼠标滚轮（macOS 上为 Cmd+鼠标滚轮）缩放界面。</code> | <code>enableMousewheelZoomDescription</code> | [GWT R060][R060] |
| <code>Zoom with mouse wheel when holding Ctrl (Cmd on macOS)</code> | <code>按住 Ctrl（macOS 上为 Cmd）时用鼠标滚轮缩放</code> | <code>enableMousewheelZoomTitle</code> | [GWT R060][R060] |
| <code>Support accessibility aids such as screen readers.</code> | <code>支持屏幕阅读器等无障碍辅助工具.</code> | <code>enableScreenReaderDescription</code> | [GWT R060][R060] |
| <code>Enable support for screen readers</code> | <code>启用屏幕阅读器支持</code> | <code>enableScreenReaderTitle</code> | [GWT R060][R060] |
| <code>Whether to enable code snippets in the RStudio code editor.</code> | <code>是否在 RStudio 代码编辑器中启用代码片段。</code> | <code>enableSnippetsDescription</code> | [GWT R060][R060] |
| <code>Enable code snippets</code> | <code>启用代码片段</code> | <code>enableSnippetsTitle</code> | [GWT R060][R060] |
| <code>Whether to show the splash screen when RStudio is starting.</code> | <code>RStudio 启动时是否显示启动画面。</code> | <code>enableSplashScreenDescription</code> | [GWT R060][R060] |
| <code>Show splash screen when RStudio is starting</code> | <code>RStudio 启动时显示启动画面</code> | <code>enableSplashScreenTitle</code> | [GWT R060][R060] |
| <code>Whether to enable moving text on the editing surface by clicking and dragging it.</code> | <code>是否通过点击和拖动在编辑表面移动文本。</code> | <code>enableTextDragDescription</code> | [GWT R060][R060] |
| <code>Enable dragging text in code editor</code> | <code>允许在代码编辑器中拖曳文本</code> | <code>enableTextDragTitle</code> | [GWT R060][R060] |
| <code>The unit of R code to execute when the Execute command is invoked.</code> | <code>当引用执行命令时要执行的 R 代码单位。</code> | <code>executionBehaviorDescription</code> | [GWT R060][R060] |
| <code>Current line</code> | <code>当前行</code> | <code>executionBehaviorEnum_line</code> | [GWT R060][R060] |
| <code>Multiple consecutive R lines</code> | <code>连续多行 R 代码</code> | <code>executionBehaviorEnum_paragraph</code> | [GWT R060][R060] |
| <code>Multi-line R statement</code> | <code>多行 R 语句</code> | <code>executionBehaviorEnum_statement</code> | [GWT R060][R060] |
| <code>Unit of R code execution</code> | <code>R代码执行单位</code> | <code>executionBehaviorTitle</code> | [GWT R060][R060] |
| <code>List of path components; file monitor will ignore paths containing one or more of these components.</code> | <code>路径组件列表；文件监控器将忽略包含其中一个或多个组件的路径。</code> | <code>fileMonitorIgnoredComponentsDescription</code> | [GWT R060][R060] |
| <code>List of path components ignored by file monitor</code> | <code>文件监控器忽略的路径组件列表</code> | <code>fileMonitorIgnoredComponentsTitle</code> | [GWT R060][R060] |
| <code>When enabled, directories ignored by Git (.gitignore rules) and their contents will be excluded from project file monitoring and code indexing.</code> | <code>启用后，Git 忽略的目录（按 .gitignore 规则）及其内容将从项目文件监控和代码索引中排除。</code> | <code>fileMonitorUseGitignoreDescription</code> | [GWT R060][R060] |
| <code>Use .gitignore for file monitoring</code> | <code>使用 .gitignore 进行文件监控</code> | <code>fileMonitorUseGitignoreTitle</code> | [GWT R060][R060] |
| <code>In source editor find panel, tab key moves focus directly from find text to replace text.</code> | <code>在源代码编辑器的查找面板中，Tab 键是否从查找文本框直接将焦点移到替换文本框。</code> | <code>findPanelLegacyTabSequenceDescription</code> | [GWT R060][R060] |
| <code>Tab key moves focus directly from find text to replace text in find panel</code> | <code>在查找面板中，Tab 键从查找文本直接移到替换文本</code> | <code>findPanelLegacyTabSequenceTitle</code> | [GWT R060][R060] |
| <code>Whether to focus the R console after executing an R command from a script.</code> | <code>是否在从脚本执行 R 命令后聚焦 R 控制台。</code> | <code>focusConsoleAfterExecDescription</code> | [GWT R060][R060] |
| <code>Focus console after executing R code</code> | <code>执行 R 代码后聚焦控制台</code> | <code>focusConsoleAfterExecTitle</code> | [GWT R060][R060] |
| <code>The style of folding to use.</code> | <code>要使用的代码折叠样式。</code> | <code>foldStyleDescription</code> | [GWT R060][R060] |
| <code>Start and End</code> | <code>开始和结束</code> | <code>foldStyleEnum_begin_and_end</code> | [GWT R060][R060] |
| <code>Start Only</code> | <code>仅开始</code> | <code>foldStyleEnum_begin_only</code> | [GWT R060][R060] |
| <code>Fold style in editor</code> | <code>编辑器中的折叠样式</code> | <code>foldStyleTitle</code> | [GWT R060][R060] |
| <code>The default editor font size, in points.</code> | <code>默认编辑器字体大小（磅）。</code> | <code>fontSizePointsDescription</code> | [GWT R060][R060] |
| <code>Editor font size (points)</code> | <code>编辑器字体大小( 点)</code> | <code>fontSizePointsTitle</code> | [GWT R060][R060] |
| <code>Whether to show the full path to project in desktop window title.</code> | <code>是否在桌面窗口标题中显示全部项目路径。</code> | <code>fullProjectPathInWindowTitleDescription</code> | [GWT R060][R060] |
| <code>Show full path to project in RStudio Desktop windows</code> | <code>在 RStudio Desktop 窗口中显示项目完整路径</code> | <code>fullProjectPathInWindowTitleTitle</code> | [GWT R060][R060] |
| <code>Whether to ignore whitespace when generating diffs of version controlled files.</code> | <code>在生成版本控制文件的 diffs 时是否忽略空白。</code> | <code>gitDiffIgnoreWhitespaceDescription</code> | [GWT R060][R060] |
| <code>Ignore whitespace in VCS diffs</code> | <code>在 VCS diffs 中忽略空白</code> | <code>gitDiffIgnoreWhitespaceTitle</code> | [GWT R060][R060] |
| <code>The path to the Git executable to use.</code> | <code>要使用的 Git 可执行文件路径。</code> | <code>gitExePathDescription</code> | [GWT R060][R060] |
| <code>Path to Git executable</code> | <code>Git 可执行文件路径</code> | <code>gitExePathTitle</code> | [GWT R060][R060] |
| <code>Whether to sign git commits.</code> | <code>是否对 Git 提交进行签名。</code> | <code>gitSignedCommitsDescription</code> | [GWT R060][R060] |
| <code>Sign git commits</code> | <code>为 Git 提交签名</code> | <code>gitSignedCommitsTitle</code> | [GWT R060][R060] |
| <code>The theme to use for the main RStudio user interface.</code> | <code>RStudio 主用户界面使用的主题。</code> | <code>globalThemeDescription</code> | [GWT R060][R060] |
| <code>Global theme</code> | <code>全局主题</code> | <code>globalThemeTitle</code> | [GWT R060][R060] |
| <code>Type of anti-aliasing to be used for generated R plots.</code> | <code>生成 R 图形时使用的抗锯齿类型。</code> | <code>graphicsAntialiasingDescription</code> | [GWT R060][R060] |
| <code>R graphics antialiasing method</code> | <code>R 图形抗锯齿方法</code> | <code>graphicsAntialiasingTitle</code> | [GWT R060][R060] |
| <code>R graphics backend.</code> | <code>R 图形后端。</code> | <code>graphicsBackendDescription</code> | [GWT R060][R060] |
| <code>R graphics backend</code> | <code>R 图形后端</code> | <code>graphicsBackendTitle</code> | [GWT R060][R060] |
| <code>Whether to handle errors only when user code is on the stack.</code> | <code>是否仅在用户代码位于堆栈时处理错误。</code> | <code>handleErrorsInUserCodeOnlyDescription</code> | [GWT R060][R060] |
| <code>Handle errors only when user code present</code> | <code>仅在用户代码出现时处理错误</code> | <code>handleErrorsInUserCodeOnlyTitle</code> | [GWT R060][R060] |
| <code>The help panel font size, in points.</code> | <code>帮助窗格字体大小（磅）。</code> | <code>helpFontSizePointsDescription</code> | [GWT R060][R060] |
| <code>Help panel font size (points)</code> | <code>帮助面板字体大小( 点)</code> | <code>helpFontSizePointsTitle</code> | [GWT R060][R060] |
| <code>Whether to hide the R console when executing inline R Markdown chunks.</code> | <code>执行 R Markdown 代码块时是否隐藏 R 控制台。</code> | <code>hideConsoleOnChunkExecuteDescription</code> | [GWT R060][R060] |
| <code>Hide console when running R Markdown chunks</code> | <code>运行 R Markdown 代码块时隐藏控制台</code> | <code>hideConsoleOnChunkExecuteTitle</code> | [GWT R060][R060] |
| <code>Whether to hide object files in the Files pane.</code> | <code>是否在文件窗格中隐藏对象文件。</code> | <code>hideObjectFilesDescription</code> | [GWT R060][R060] |
| <code>Hide object files in the Files pane</code> | <code>在文件窗格中隐藏对象文件</code> | <code>hideObjectFilesTitle</code> | [GWT R060][R060] |
| <code>Whether section headers create nested folds based on their heading level (e.g. ## folds inside # sections).</code> | <code>章节标题是否根据标题级别创建嵌套折叠（例如 ## 标题折叠在 # 章节内）。</code> | <code>hierarchicalSectionFoldingDescription</code> | [GWT R060][R060] |
| <code>Hierarchical section folding</code> | <code>分级区域折叠</code> | <code>hierarchicalSectionFoldingTitle</code> | [GWT R060][R060] |
| <code>Whether to highlight code chunks in R Markdown documents with a different background color.</code> | <code>是否使用不同的背景颜色突出显示 R Markdown 文档中的代码块。</code> | <code>highlightCodeChunksDescription</code> | [GWT R060][R060] |
| <code>Highlight code chunks in R Markdown files</code> | <code>突出显示 R Markdown 文件中的代码块</code> | <code>highlightCodeChunksTitle</code> | [GWT R060][R060] |
| <code>Whether to display error, warning, and message output in a different color.</code> | <code>是否使用不同颜色显示错误、警告和消息输出。</code> | <code>highlightConsoleErrorsDescription</code> | [GWT R060][R060] |
| <code>Different color for error output in R console</code> | <code>R 控制台中错误输出的不同颜色</code> | <code>highlightConsoleErrorsTitle</code> | [GWT R060][R060] |
| <code>Whether to highlight R function calls in the code editor.</code> | <code>是否在代码编辑器中突出显示 R 函数调用。</code> | <code>highlightRFunctionCallsDescription</code> | [GWT R060][R060] |
| <code>Highlight R function calls</code> | <code>突出显示 R 函数调用</code> | <code>highlightRFunctionCallsTitle</code> | [GWT R060][R060] |
| <code>Highlight the selected line in RStudio's code editor.</code> | <code>是否在 RStudio 代码编辑器中突出显示当前行。</code> | <code>highlightSelectedLineDescription</code> | [GWT R060][R060] |
| <code>Highlight selected line in editor</code> | <code>在编辑器中突出显示选中的行</code> | <code>highlightSelectedLineTitle</code> | [GWT R060][R060] |
| <code>Highlight the selected word in RStudio's code editor.</code> | <code>是否在 RStudio 代码编辑器中突出显示选中的单词。</code> | <code>highlightSelectedWordDescription</code> | [GWT R060][R060] |
| <code>Highlight selected word in editor</code> | <code>在编辑器中突出显示选中的单词</code> | <code>highlightSelectedWordTitle</code> | [GWT R060][R060] |
| <code>Whether web links in comments are clickable.</code> | <code>注释中的网络链接是否可以点击。</code> | <code>highlightWebLinkDescription</code> | [GWT R060][R060] |
| <code>Whether web links in comments are clickable</code> | <code>评论中的网页链接是否可以点击</code> | <code>highlightWebLinkTitle</code> | [GWT R060][R060] |
| <code>Whether to ignore appearance settings (such as the editor theme) configured at the project level, always using the global settings instead.</code> | <code>是否忽略项目级别配置的外观设置（如编辑器主题），始终改用全局设置。</code> | <code>ignoreProjectAppearanceDescription</code> | [GWT R060][R060] |
| <code>Ignore project-specific appearance settings</code> | <code>忽略项目专用的外观设置</code> | <code>ignoreProjectAppearanceTitle</code> | [GWT R060][R060] |
| <code>Whether to ignore words in uppercase when spell checking.</code> | <code>拼写检查时是否忽略全大写单词。</code> | <code>ignoreUppercaseWordsDescription</code> | [GWT R060][R060] |
| <code>Ignore uppercase words in spell check</code> | <code>在拼写检查中忽略大写单词</code> | <code>ignoreUppercaseWordsTitle</code> | [GWT R060][R060] |
| <code>Whether to ignore words with numbers in them when spell checking.</code> | <code>拼写检查时是否忽略带有数字的单词。</code> | <code>ignoreWordsWithNumbersDescription</code> | [GWT R060][R060] |
| <code>Ignore words with numbers in spell check</code> | <code>拼写检查时忽略含数字的单词</code> | <code>ignoreWordsWithNumbersTitle</code> | [GWT R060][R060] |
| <code>Style for indentation guides in the RStudio code editor.</code> | <code>RStudio 代码编辑器中缩进参考线的样式。</code> | <code>indentGuidesDescription</code> | [GWT R060][R060] |
| <code>Gray lines</code> | <code>灰色线条</code> | <code>indentGuidesEnum_gray</code> | [GWT R060][R060] |
| <code>None</code> | <code>无</code> | <code>indentGuidesEnum_none</code> | [GWT R060][R060] |
| <code>Rainbow fills</code> | <code>彩虹色填充</code> | <code>indentGuidesEnum_rainbowfills</code> | [GWT R060][R060] |
| <code>Rainbow lines</code> | <code>彩虹色线条</code> | <code>indentGuidesEnum_rainbowlines</code> | [GWT R060][R060] |
| <code>Indentation guides</code> | <code>缩进参考线</code> | <code>indentGuidesTitle</code> | [GWT R060][R060] |
| <code>The initial working directory for new R sessions.</code> | <code>新 R 会话的初始工作目录。</code> | <code>initialWorkingDirectoryDescription</code> | [GWT R060][R060] |
| <code>Initial working directory</code> | <code>初始工作目录</code> | <code>initialWorkingDirectoryTitle</code> | [GWT R060][R060] |
| <code>Whether to insert matching pairs, such as () and [], when the first is typed.</code> | <code>输入左侧符号时，是否自动插入匹配的符号对，如 () 和 []。</code> | <code>insertMatchingDescription</code> | [GWT R060][R060] |
| <code>Auto-insert matching parentheses and brackets</code> | <code>自动插入匹配的圆括号和方括号</code> | <code>insertMatchingTitle</code> | [GWT R060][R060] |
| <code>Whether the Insert Pipe Operator command should use the native R pipe operator, &#124;&gt;</code> | <code>“插入管道运算符”命令是否使用 R 原生管道运算符 &#124;&gt;。</code> | <code>insertNativePipeOperatorDescription</code> | [GWT R060][R060] |
| <code>Use R's native pipe operator, &#124;&gt;</code> | <code>使用 R 原生管道运算符 &#124;&gt;</code> | <code>insertNativePipeOperatorTitle</code> | [GWT R060][R060] |
| <code>Whether to insert numbered sections in LaTeX.</code> | <code>是否在 LaTeX 中插入带编号的章节。</code> | <code>insertNumberedLatexSectionsDescription</code> | [GWT R060][R060] |
| <code>Insert numbered LaTeX sections</code> | <code>插入带编号的 LaTeX 章节</code> | <code>insertNumberedLatexSectionsTitle</code> | [GWT R060][R060] |
| <code>Whether to insert parentheses after function completions.</code> | <code>是否在函数完成后插入括号。</code> | <code>insertParensAfterFunctionCompletionDescription</code> | [GWT R060][R060] |
| <code>Insert parentheses after functions</code> | <code>在函数后插入括号</code> | <code>insertParensAfterFunctionCompletionTitle</code> | [GWT R060][R060] |
| <code>Whether to insert spaces around the equals sign in R code.</code> | <code>是否在 R 代码中的等号符号周围插入空格。</code> | <code>insertSpacesAroundEqualsDescription</code> | [GWT R060][R060] |
| <code>Insert spaces around = in R code</code> | <code>在 R 代码的等号两侧插入空格</code> | <code>insertSpacesAroundEqualsTitle</code> | [GWT R060][R060] |
| <code>Whether to install R package dependencies one at a time.</code> | <code>是否逐个安装 R 程序包依赖项。</code> | <code>installPkgDepsIndividuallyDescription</code> | [GWT R060][R060] |
| <code>Install R package dependencies one at a time</code> | <code>逐个安装 R 程序包依赖项</code> | <code>installPkgDepsIndividuallyTitle</code> | [GWT R060][R060] |
| <code>The visibility of the Jobs tab.</code> | <code>后台任务标签页的可见性。</code> | <code>jobsTabVisibilityDescription</code> | [GWT R060][R060] |
| <code>Jobs tab visibility</code> | <code>后台任务标签页可见性</code> | <code>jobsTabVisibilityTitle</code> | [GWT R060][R060] |
| <code>The working directory to use when knitting R Markdown documents.</code> | <code>编织 R Markdown 文档时使用的工作目录。</code> | <code>knitWorkingDirDescription</code> | [GWT R060][R060] |
| <code>Working directory for knitting</code> | <code>编织工作目录</code> | <code>knitWorkingDirTitle</code> | [GWT R060][R060] |
| <code>When to preview LaTeX mathematical equations when cursor has not moved recently.</code> | <code>光标一段时间未移动时，何时预览 LaTeX 数学公式。</code> | <code>latexPreviewOnCursorIdleDescription</code> | [GWT R060][R060] |
| <code>Preview LaTeX equations on idle</code> | <code>光标空闲时预览 LaTeX 公式</code> | <code>latexPreviewOnCursorIdleTitle</code> | [GWT R060][R060] |
| <code>Whether to enable shell escaping with LaTeX documents.</code> | <code>是否为 LaTeX 文档启用 shell escape。</code> | <code>latexShellEscapeDescription</code> | [GWT R060][R060] |
| <code>Shell escape LaTeX documents</code> | <code>为 LaTeX 文档启用 shell escape</code> | <code>latexShellEscapeTitle</code> | [GWT R060][R060] |
| <code>How to sort jobs in the Workbench Jobs tab in RStudio Pro and RStudio Workbench.</code> | <code>在 RStudio Pro 和 RStudio Workbench 的 Workbench 后台任务标签页中如何排序任务。</code> | <code>launcherJobsSortDescription</code> | [GWT R060][R060] |
| <code>The line ending format to use when saving files.</code> | <code>保存文件时使用的行尾格式。</code> | <code>lineEndingConversionDescription</code> | [GWT R060][R060] |
| <code>Line ending format</code> | <code>行尾格式</code> | <code>lineEndingConversionTitle</code> | [GWT R060][R060] |
| <code>Whether to load the workspace when the R session begins.</code> | <code>R 会话启动时是否加载工作区。</code> | <code>loadWorkspaceDescription</code> | [GWT R060][R060] |
| <code>Load workspace on start</code> | <code>启动时加载工作区</code> | <code>loadWorkspaceTitle</code> | [GWT R060][R060] |
| <code>The number of columns of text after which the margin is shown.</code> | <code>显示边距线前的文本列数。</code> | <code>marginColumnDescription</code> | [GWT R060][R060] |
| <code>When set, the editor width will be clamped to the size of the margin column.</code> | <code>设置后，编辑器宽度将限制为边距列的宽度。</code> | <code>marginColumnEditorWidthDescription</code> | [GWT R060][R060] |
| <code>Clamp editor width to margin column</code> | <code>将编辑器宽度限制到边距列</code> | <code>marginColumnEditorWidthTitle</code> | [GWT R060][R060] |
| <code>When set and soft-wrapping is enabled, soft-wrap at the margin column instead of editor width.</code> | <code>设置并启用自动换行后，在边距列而不是编辑器宽度处换行。</code> | <code>marginColumnSoftWrapDescription</code> | [GWT R060][R060] |
| <code>Soft-wrap at margin column</code> | <code>在边距列处自动换行</code> | <code>marginColumnSoftWrapTitle</code> | [GWT R060][R060] |
| <code>Margin column</code> | <code>边距列</code> | <code>marginColumnTitle</code> | [GWT R060][R060] |
| <code>How many seconds to wait between automatic requeries of memory statistics (0 to disable)</code> | <code>自动重新查询内存统计之间等待的秒数（设为 0 可禁用）。</code> | <code>memoryQueryIntervalSecondsDescription</code> | [GWT R060][R060] |
| <code>Interval for requerying memory stats (seconds)</code> | <code>重新查询内存统计的间隔（秒）</code> | <code>memoryQueryIntervalSecondsTitle</code> | [GWT R060][R060] |
| <code>Whether scrolling the mouse wheel over the editor tab bar changes the active editor tab.</code> | <code>在编辑器标签栏上滚动鼠标滚轮时是否切换当前标签页。</code> | <code>mousewheelChangesEditorTabDescription</code> | [GWT R060][R060] |
| <code>Change active editor tab with mouse wheel</code> | <code>使用鼠标滚轮切换当前编辑器标签页</code> | <code>mousewheelChangesEditorTabTitle</code> | [GWT R060][R060] |
| <code>A delay in milliseconds to wait before applying the zoom level after a mouse wheel event.</code> | <code>滚动鼠标滚轮后，应用缩放级别前等待的毫秒数。</code> | <code>mousewheelZoomDebounceMsDescription</code> | [GWT R060][R060] |
| <code>Mouse wheel zoom debounce delay (ms)</code> | <code>鼠标滚轮缩放防抖延迟（毫秒）</code> | <code>mousewheelZoomDebounceMsTitle</code> | [GWT R060][R060] |
| <code>Whether RStudio Desktop will use the operating system's native File and Message dialog boxes.</code> | <code>RStudio Desktop 是否使用操作系统原生的文件和消息对话框。</code> | <code>nativeFileDialogsDescription</code> | [GWT R060][R060] |
| <code>Use native file and message dialog boxes</code> | <code>使用系统原生文件和消息对话框</code> | <code>nativeFileDialogsTitle</code> | [GWT R060][R060] |
| <code>Whether to navigate to build errors.</code> | <code>是否自动定位到构建错误。</code> | <code>navigateToBuildErrorDescription</code> | [GWT R060][R060] |
| <code>Navigate to build errors</code> | <code>定位到构建错误</code> | <code>navigateToBuildErrorTitle</code> | [GWT R060][R060] |
| <code>Whether a git repo should be initialized inside new projects by default.</code> | <code>是否默认在新项目中初始化 Git 仓库。</code> | <code>newProjGitInitDescription</code> | [GWT R060][R060] |
| <code>Create a Git repo in new projects</code> | <code>在新项目中创建 Git 仓库</code> | <code>newProjGitInitTitle</code> | [GWT R060][R060] |
| <code>Whether an renv environment should be created inside new projects by default.</code> | <code>是否默认在新项目中创建 renv 环境。</code> | <code>newProjUseRenvDescription</code> | [GWT R060][R060] |
| <code>Create an renv environment in new projects</code> | <code>在新项目中创建 renv 环境</code> | <code>newProjUseRenvTitle</code> | [GWT R060][R060] |
| <code>Whether to evaluate a notebook's inline R code in the current R session when creating a notebook preview, so that inline code can use objects in the global environment. When disabled, inline code is evaluated in the background rendering process instead.</code> | <code>创建笔记本预览时是否在当前 R 会话中计算行内 R 代码，以便使用全局环境中的对象。禁用后，行内代码将在后台渲染进程中计算。</code> | <code>notebookExecuteInlineChunksDescription</code> | [GWT R060][R060] |
| <code>Execute inline R code when previewing notebooks</code> | <code>预览笔记本时执行行内 R 代码</code> | <code>notebookExecuteInlineChunksTitle</code> | [GWT R060][R060] |
| <code>The number of spaces to insert when pressing the Tab key.</code> | <code>按 Tab 键时要插入的空格数。</code> | <code>numSpacesForTabDescription</code> | [GWT R060][R060] |
| <code>Number of spaces for Tab</code> | <code>Tab 对应的空格数</code> | <code>numSpacesForTabTitle</code> | [GWT R060][R060] |
| <code>Whether to enable RStudio's Packages pane.</code> | <code>是否启用 RStudio 程序包窗格。</code> | <code>packagesPaneEnabledDescription</code> | [GWT R060][R060] |
| <code>Enable the Packages pane</code> | <code>启用程序包窗格</code> | <code>packagesPaneEnabledTitle</code> | [GWT R060][R060] |
| <code>Whether to display the Source column in the Package's pane.</code> | <code>是否在程序包窗格中显示“来源”列。</code> | <code>packagesSourceColumnEnabledDescription</code> | [GWT R060][R060] |
| <code>Display the Source column in the Packages pane</code> | <code>在程序包窗格中显示“来源”列</code> | <code>packagesSourceColumnEnabledTitle</code> | [GWT R060][R060] |
| <code>Layout of panes in the RStudio workbench.</code> | <code>RStudio 工作台中的窗格布局。</code> | <code>panesDescription</code> | [GWT R060][R060] |
| <code>The program to use to preview PDF files after generation.</code> | <code>生成 PDF 后用于预览文件的程序。</code> | <code>pdfPreviewerDescription</code> | [GWT R060][R060] |
| <code>PDF previewer</code> | <code>PDF 预览器</code> | <code>pdfPreviewerTitle</code> | [GWT R060][R060] |
| <code>Where to display Shiny applications when they are run.</code> | <code>在哪里显示 Shiny 应用程序运行时。</code> | <code>plumberViewerTypeDescription</code> | [GWT R060][R060] |
| <code>Run Plumber APIs in</code> | <code>Plumber API 运行位置</code> | <code>plumberViewerTypeTitle</code> | [GWT R060][R060] |
| <code>Use a pre-release version of the Posit Assistant for testing purposes. Do not use for production work.</code> | <code>使用 Posit Assistant 预发行版进行测试。请勿用于生产工作。</code> | <code>positAssistantTestManifestDescription</code> | [GWT R060][R060] |
| <code>Use pre-release version of Posit Assistant (restart required)</code> | <code>使用 Posit Assistant 预发行版（需要重启）</code> | <code>positAssistantTestManifestTitle</code> | [GWT R060][R060] |
| <code>The minimum number of hours between checks for a new version of the Posit Assistant. Set to 0 to check every time.</code> | <code>两次检查 Posit Assistant 更新之间的最小间隔小时数。设为 0 表示每次都检查。</code> | <code>positAssistantUpdateCheckIntervalHoursDescription</code> | [GWT R060][R060] |
| <code>Posit Assistant update check interval (hours)</code> | <code>Posit Assistant 更新检查间隔（小时）</code> | <code>positAssistantUpdateCheckIntervalHoursTitle</code> | [GWT R060][R060] |
| <code>The terminal shell to use on POSIX operating systems (MacOS and Linux).</code> | <code>POSIX 操作系统（macOS 和 Linux）上要使用的终端 Shell。</code> | <code>posixTerminalShellDescription</code> | [GWT R060][R060] |
| <code>User-provided name for the currently opened R project.</code> | <code>用户为当前打开的 R 项目提供的名称。</code> | <code>projectNameDescription</code> | [GWT R060][R060] |
| <code>The number of seconds after which a project is deemed to have successfully started.</code> | <code>经过多少秒后将项目视为已成功启动。</code> | <code>projectSafeStartupSecondsDescription</code> | [GWT R060][R060] |
| <code>Number of seconds for safe project startup</code> | <code>项目安全启动判定时间（秒）</code> | <code>projectSafeStartupSecondsTitle</code> | [GWT R060][R060] |
| <code>The folder in which RStudio should store project .Rproj.user data.</code> | <code>RStudio 用于存储项目 .Rproj.user 数据的文件夹。</code> | <code>projectUserDataDirectoryDescription</code> | [GWT R060][R060] |
| <code>Default project user data directory</code> | <code>默认项目用户数据目录</code> | <code>projectUserDataDirectoryTitle</code> | [GWT R060][R060] |
| <code>The path to the custom certificate authority (CA) bundle to use when publishing content.</code> | <code>发布内容时使用的自定义证书颁发机构（CA）证书包路径。</code> | <code>publishCaBundleDescription</code> | [GWT R060][R060] |
| <code>Path to custom CA bundle for publishing</code> | <code>发布所用自定义 CA 证书包的路径</code> | <code>publishCaBundleTitle</code> | [GWT R060][R060] |
| <code>Whether to check remote server SSL certificates when publishing content.</code> | <code>发布内容时是否检查远程服务器 SSL 证书。</code> | <code>publishCheckCertificatesDescription</code> | [GWT R060][R060] |
| <code>Check SSL certificates when publishing</code> | <code>发布时检查 SSL 证书</code> | <code>publishCheckCertificatesTitle</code> | [GWT R060][R060] |
| <code>The path to the default Python interpreter.</code> | <code>默认 Python 解释器的路径。</code> | <code>pythonPathDescription</code> | [GWT R060][R060] |
| <code>When enabled, if the active project contains a Python virtual environment, then RStudio will automatically activate this environment on startup.</code> | <code>启用后，如果当前项目包含 Python 虚拟环境，RStudio 将在启动时自动激活该环境。</code> | <code>pythonProjectEnvironmentAutomaticActivateDescription</code> | [GWT R060][R060] |
| <code>Automatically activate project Python environments</code> | <code>自动激活项目 Python 环境</code> | <code>pythonProjectEnvironmentAutomaticActivateTitle</code> | [GWT R060][R060] |
| <code>The Python type.</code> | <code>Python 类型。</code> | <code>pythonTypeDescription</code> | [GWT R060][R060] |
| <code>The Python version.</code> | <code>Python 版本。</code> | <code>pythonVersionDescription</code> | [GWT R060][R060] |
| <code>Whether to highlight fenced divs in a variety of colors.</code> | <code>是否用多种颜色突出显示围栏 Div。</code> | <code>rainbowFencedDivsDescription</code> | [GWT R060][R060] |
| <code>Use rainbow fenced divs</code> | <code>使用彩虹色围栏 Div</code> | <code>rainbowFencedDivsTitle</code> | [GWT R060][R060] |
| <code>Whether to highlight parentheses in a variety of colors.</code> | <code>是否用多种颜色突出显示括号。</code> | <code>rainbowParenthesesDescription</code> | [GWT R060][R060] |
| <code>Use rainbow parentheses</code> | <code>使用彩虹色括号</code> | <code>rainbowParenthesesTitle</code> | [GWT R060][R060] |
| <code>Whether to enable real-time spellchecking by default.</code> | <code>默认是否启用实时拼写检查。</code> | <code>realTimeSpellcheckingDescription</code> | [GWT R060][R060] |
| <code>Use real-time spellchecking</code> | <code>使用实时拼写检查</code> | <code>realTimeSpellcheckingTitle</code> | [GWT R060][R060] |
| <code>Reduce use of animations in the user interface.</code> | <code>减少动画在用户界面中的使用.</code> | <code>reducedMotionDescription</code> | [GWT R060][R060] |
| <code>Reduced animation/motion mode</code> | <code>减少动画/动作模式</code> | <code>reducedMotionTitle</code> | [GWT R060][R060] |
| <code>When enabled, RStudio reduces background file monitoring, code indexing, and external-edit checks for projects detected to be on a network or remote filesystem. This improves responsiveness on slow drives, at the cost of less frequent automatic refreshing of file listings and version-control status.</code> | <code>启用后，RStudio 会减少网络或远程文件系统上项目的后台文件监控、代码索引和外部编辑检查。这可提高慢速驱动器上的响应速度，但文件列表和版本控制状态的自动刷新频率会降低。</code> | <code>reduceRemoteFilesystemOperationsDescription</code> | [GWT R060][R060] |
| <code>Reduce background file operations on network and remote drives</code> | <code>减少网络和远程驱动器上的后台文件操作</code> | <code>reduceRemoteFilesystemOperationsTitle</code> | [GWT R060][R060] |
| <code>When set, the selected formatter will be used to reformat documents on save.</code> | <code>设置后，保存文档时将使用所选格式化工具重新格式化。</code> | <code>reformatOnSaveDescription</code> | [GWT R060][R060] |
| <code>Reformat documents on save</code> | <code>保存时重新格式化文档</code> | <code>reformatOnSaveTitle</code> | [GWT R060][R060] |
| <code>Whether to automatically re-indent code when it's pasted into RStudio.</code> | <code>将代码粘贴到 RStudio 时是否自动重新缩进。</code> | <code>reindentOnPasteDescription</code> | [GWT R060][R060] |
| <code>Re-indent code when pasting</code> | <code>粘贴时重缩进代码</code> | <code>reindentOnPasteTitle</code> | [GWT R060][R060] |
| <code>Show relative, rather than absolute, line numbers in RStudio's code editor.</code> | <code>是否在 RStudio 代码编辑器中使用相对行号。</code> | <code>relativeLineNumbersDescription</code> | [GWT R060][R060] |
| <code>Use relative line numbers in editor</code> | <code>在编辑器中使用相对行号</code> | <code>relativeLineNumbersTitle</code> | [GWT R060][R060] |
| <code>Whether to remove duplicate entries from the R console history.</code> | <code>是否从 R 控制台历史中删除重复的条目。</code> | <code>removeHistoryDuplicatesDescription</code> | [GWT R060][R060] |
| <code>Remove duplicates from console history</code> | <code>从控制台历史中删除重复</code> | <code>removeHistoryDuplicatesTitle</code> | [GWT R060][R060] |
| <code>Whether to restore the last project when starting RStudio.</code> | <code>RStudio 启动时是否恢复上一个项目。</code> | <code>restoreLastProjectDescription</code> | [GWT R060][R060] |
| <code>Restore last project when starting RStudio</code> | <code>RStudio 启动时恢复上一个项目</code> | <code>restoreLastProjectTitle</code> | [GWT R060][R060] |
| <code>Whether to restore the last version of R used by the project in RStudio Pro and RStudio Workbench.</code> | <code>是否在 RStudio Pro 和 RStudio Workbench 中恢复项目上次使用的 R 版本。</code> | <code>restoreProjectRVersionDescription</code> | [GWT R060][R060] |
| <code>Restore project R version in RStudio Pro and RStudio Workbench</code> | <code>在 RStudio Pro 和 RStudio Workbench 中恢复项目 R 版本</code> | <code>restoreProjectRVersionTitle</code> | [GWT R060][R060] |
| <code>Whether to save the position of the cursor when a file is closed, restore it when the file is opened.</code> | <code>是否在关闭文件时保存光标位置，并在重新打开文件时恢复。</code> | <code>restoreSourceDocumentCursorPositionDescription</code> | [GWT R060][R060] |
| <code>Restore cursor position when reopening files</code> | <code>重新打开文件时恢复光标位置</code> | <code>restoreSourceDocumentCursorPositionTitle</code> | [GWT R060][R060] |
| <code>Whether to restore the last opened source documents when RStudio starts up.</code> | <code>RStudio 启动时是否恢复上次打开的源文档。</code> | <code>restoreSourceDocumentsDescription</code> | [GWT R060][R060] |
| <code>Restore last opened documents on startup</code> | <code>启动时恢复上次打开的文档</code> | <code>restoreSourceDocumentsTitle</code> | [GWT R060][R060] |
| <code>Whether to reuse sessions when opening projects in RStudio Workbench.</code> | <code>在 RStudio Workbench 中打开项目时是否重复使用现有会话。</code> | <code>reuseSessionsForProjectLinksDescription</code> | [GWT R060][R060] |
| <code>Use current date when rendering document</code> | <code>渲染文档时使用当前日期。</code> | <code>rmdAutoDateDescription</code> | [GWT R060][R060] |
| <code>Use current date when rendering document</code> | <code>渲染文档时使用当前日期</code> | <code>rmdAutoDateTitle</code> | [GWT R060][R060] |
| <code>Whether to show chunk output inline for ordinary R Markdown documents.</code> | <code>是否在普通 R Markdown 文档中行内显示代码块输出。</code> | <code>rmdChunkOutputInlineDescription</code> | [GWT R060][R060] |
| <code>Show chunk output inline in all documents</code> | <code>在所有文档中行内显示代码块输出</code> | <code>rmdChunkOutputInlineTitle</code> | [GWT R060][R060] |
| <code>The path to the preferred R Markdown template.</code> | <code>首选 R Markdown 模板的路径。</code> | <code>rmdPreferredTemplatePathDescription</code> | [GWT R060][R060] |
| <code>Path to preferred R Markdown template</code> | <code>首选 R Markdown 模板的路径</code> | <code>rmdPreferredTemplatePathTitle</code> | [GWT R060][R060] |
| <code>Controls whether the Rename in Scope command acts only upon the current chunk, or upon all chunks in the document. Multiple executions of the command will toggle between the two selection types.</code> | <code>控制“在作用域内重命名”命令仅作用于当前代码块，还是作用于文档中的所有代码块。多次执行该命令可在两种选择范围之间切换。</code> | <code>rmdRenameInScopeBehaviorDescription</code> | [GWT R060][R060] |
| <code>All chunks</code> | <code>所有代码块</code> | <code>rmdRenameInScopeBehaviorEnum_all</code> | [GWT R060][R060] |
| <code>Current chunk</code> | <code>当前代码块</code> | <code>rmdRenameInScopeBehaviorEnum_current</code> | [GWT R060][R060] |
| <code>Rename in scope operates on:</code> | <code>作用域内重命名应用于:</code> | <code>rmdRenameInScopeBehaviorTitle</code> | [GWT R060][R060] |
| <code>Where to display R Markdown documents when they have completed rendering.</code> | <code>R Markdown 文档渲染完成后在哪里显示。</code> | <code>rmdViewerTypeDescription</code> | [GWT R060][R060] |
| <code>Display R Markdown documents in</code> | <code>R Markdown 文档显示位置</code> | <code>rmdViewerTypeTitle</code> | [GWT R060][R060] |
| <code>The root document to use when compiling PDF documents.</code> | <code>编译 PDF 文档时使用的根文档。</code> | <code>rootDocumentDescription</code> | [GWT R060][R060] |
| <code>Root document for PDF compilation</code> | <code>用于 PDF 编译的根文档</code> | <code>rootDocumentTitle</code> | [GWT R060][R060] |
| <code>The path to the SSH key file to use.</code> | <code>要使用的 SSH 密钥文件的路径。</code> | <code>rsaKeyPathDescription</code> | [GWT R060][R060] |
| <code>Default working directory in background job dialog.</code> | <code>后台任务对话框中的默认工作目录。</code> | <code>runBackgroundJobDefaultWorkingDirDescription</code> | [GWT R060][R060] |
| <code>Project folder</code> | <code>项目文件夹</code> | <code>runBackgroundJobDefaultWorkingDirEnum_project</code> | [GWT R060][R060] |
| <code>Script folder</code> | <code>脚本文件夹</code> | <code>runBackgroundJobDefaultWorkingDirEnum_script</code> | [GWT R060][R060] |
| <code>Default working directory for background jobs</code> | <code>后台任务的默认工作目录</code> | <code>runBackgroundJobDefaultWorkingDirTitle</code> | [GWT R060][R060] |
| <code>Whether to run .Rprofile again after resuming a suspended R session.</code> | <code>恢复已暂停的 R 会话后是否再次运行 .Rprofile。</code> | <code>runRprofileOnResumeDescription</code> | [GWT R060][R060] |
| <code>Run .Rprofile on resume</code> | <code>恢复会话时运行 .Rprofile</code> | <code>runRprofileOnResumeTitle</code> | [GWT R060][R060] |
| <code>Whether RStudio should save and reload the R workspace when building the project.</code> | <code>构建项目时 RStudio 是否保存并重新加载 R 工作区。</code> | <code>saveAndReloadWorkspaceOnBuildDescription</code> | [GWT R060][R060] |
| <code>Save and reload R workspace on build</code> | <code>构建时保存并重新加载 R 工作区</code> | <code>saveAndReloadWorkspaceOnBuildTitle</code> | [GWT R060][R060] |
| <code>Whether to automatically save scripts before executing them.</code> | <code>是否在执行脚本之前自动保存脚本。</code> | <code>saveBeforeSourcingDescription</code> | [GWT R060][R060] |
| <code>Save R scripts before sourcing</code> | <code>运行前保存 R 脚本</code> | <code>saveBeforeSourcingTitle</code> | [GWT R060][R060] |
| <code>Whether to save all open, unsaved files before building the project.</code> | <code>是否在构建项目前保存所有已打开但未保存的文件。</code> | <code>saveFilesBeforeBuildDescription</code> | [GWT R060][R060] |
| <code>Save files before building</code> | <code>在构建前保存文件</code> | <code>saveFilesBeforeBuildTitle</code> | [GWT R060][R060] |
| <code>Whether to flush saved files all the way to physical storage so that write failures (such as a full disk or an exceeded quota) are reported rather than silently lost. Disabling this can improve save performance on slow or networked filesystems, at the risk of not detecting some failed writes.</code> | <code>是否将保存的文件完全刷新到物理存储，以报告磁盘已满或配额超限等写入失败，而不是静默丢失。禁用可提高慢速或网络文件系统的保存性能，但可能无法检测某些写入失败。</code> | <code>saveFilesDurablyDescription</code> | [GWT R060][R060] |
| <code>Use durable writes when saving files</code> | <code>保存文件时使用持久写入</code> | <code>saveFilesDurablyTitle</code> | [GWT R060][R060] |
| <code>The maximum amount of seconds of retry for save operations.</code> | <code>保存操作的最大重试秒数。</code> | <code>saveRetryTimeoutDescription</code> | [GWT R060][R060] |
| <code>Save Retry Timeout</code> | <code>保存重试超时</code> | <code>saveRetryTimeoutTitle</code> | [GWT R060][R060] |
| <code>Whether to save the workspace to an .Rdata file after the R session ends.</code> | <code>R 会话结束后是否将工作区保存到 .RData 文件。</code> | <code>saveWorkspaceDescription</code> | [GWT R060][R060] |
| <code>Save workspace on quit</code> | <code>退出时保存工作区</code> | <code>saveWorkspaceTitle</code> | [GWT R060][R060] |
| <code>Maximum number of lines of console output announced after a command.</code> | <code>执行命令后朗读的控制台输出最大行数。</code> | <code>screenreaderConsoleAnnounceLimitDescription</code> | [GWT R060][R060] |
| <code>Maximum number of console lines to announce</code> | <code>屏幕阅读器朗读的最大控制台行数</code> | <code>screenreaderConsoleAnnounceLimitTitle</code> | [GWT R060][R060] |
| <code>Whether to allow scrolling past the end of a file.</code> | <code>是否允许滚动到文件的末尾。</code> | <code>scrollPastEndOfDocumentDescription</code> | [GWT R060][R060] |
| <code>Scroll past end of file</code> | <code>允许滚动超过文件末尾</code> | <code>scrollPastEndOfDocumentTitle</code> | [GWT R060][R060] |
| <code>The name of the fixed-width editor font to use with RStudio Server.</code> | <code>RStudio Server 使用的等宽编辑器字体名称。</code> | <code>serverEditorFontDescription</code> | [GWT R060][R060] |
| <code>Whether to use a custom editor font in RStudio Server.</code> | <code>是否在 RStudio Server 中使用自定义编辑器字体。</code> | <code>serverEditorFontEnabledDescription</code> | [GWT R060][R060] |
| <code>Enable editor fonts on RStudio Server</code> | <code>在 RStudio Server 上启用编辑器字体</code> | <code>serverEditorFontEnabledTitle</code> | [GWT R060][R060] |
| <code>Editor font</code> | <code>编辑器字体</code> | <code>serverEditorFontTitle</code> | [GWT R060][R060] |
| <code>Enable session protocol debug logging showing all session requests and events</code> | <code>启用显示全部会话请求和事件的会话协议调试记录</code> | <code>sessionProtocolDebugDescription</code> | [GWT R060][R060] |
| <code>Session protocol debug logging</code> | <code>会话协议调试日志</code> | <code>sessionProtocolDebugTitle</code> | [GWT R060][R060] |
| <code>Whether to run Shiny applications as background jobs.</code> | <code>是否将 Shiny 应用程序作为后台任务运行。</code> | <code>shinyBackgroundJobsDescription</code> | [GWT R060][R060] |
| <code>Run Shiny applications in the background</code> | <code>在后台运行 Shiny 应用程序</code> | <code>shinyBackgroundJobsTitle</code> | [GWT R060][R060] |
| <code>Where to display Shiny applications when they are run.</code> | <code>在哪里显示 Shiny 应用程序运行时。</code> | <code>shinyViewerTypeDescription</code> | [GWT R060][R060] |
| <code>Run Shiny applications in</code> | <code>Shiny 应用程序运行位置</code> | <code>shinyViewerTypeTitle</code> | [GWT R060][R060] |
| <code>Whether a data preview is shown in the autocompletion help popup for datasets and values.</code> | <code>是否在数据集和值的自动补全帮助弹窗中显示数据预览。</code> | <code>showDataPreviewDescription</code> | [GWT R060][R060] |
| <code>Show data preview in autocompletion help popup</code> | <code>在自动补全帮助弹窗中显示数据预览</code> | <code>showDataPreviewTitle</code> | [GWT R060][R060] |
| <code>Whether to show diagnostic messages for C++ code as you type.</code> | <code>是否在键入时显示 C++ 代码的诊断信息。</code> | <code>showDiagnosticsCppDescription</code> | [GWT R060][R060] |
| <code>Show diagnostics in C++ code</code> | <code>C++ 代码显示诊断</code> | <code>showDiagnosticsCppTitle</code> | [GWT R060][R060] |
| <code>Whether to show diagnostic messages for other types of code (not R, C++, or YAML).</code> | <code>是否显示其他类型代码（R、C++ 或 YAML 以外）的诊断信息。</code> | <code>showDiagnosticsOtherDescription</code> | [GWT R060][R060] |
| <code>Show diagnostics in other languages</code> | <code>以其他语言显示诊断</code> | <code>showDiagnosticsOtherTitle</code> | [GWT R060][R060] |
| <code>Whether to show diagnostic messages (such as syntax and usage errors) for R code as you type.</code> | <code>是否显示您输入的 R 代码的诊断信息( 如语法和用法错误)。</code> | <code>showDiagnosticsRDescription</code> | [GWT R060][R060] |
| <code>Show diagnostics in R code</code> | <code>在 R 代码中显示诊断</code> | <code>showDiagnosticsRTitle</code> | [GWT R060][R060] |
| <code>Whether to show diagnostic messages for YAML code as you type.</code> | <code>输入 YAML 代码时是否显示诊断信息。</code> | <code>showDiagnosticsYamlDescription</code> | [GWT R060][R060] |
| <code>Show diagnostics in YAML code</code> | <code>在 YAML 代码中显示诊断</code> | <code>showDiagnosticsYamlTitle</code> | [GWT R060][R060] |
| <code>Whether to show the document outline by default when opening R Markdown documents.</code> | <code>打开时是否默认显示文档大纲 R Markdown 文档。</code> | <code>showDocOutlineRmdDescription</code> | [GWT R060][R060] |
| <code>Open document outline by default</code> | <code>默认打开文档大纲</code> | <code>showDocOutlineRmdTitle</code> | [GWT R060][R060] |
| <code>Whether to show function signature tooltips during autocompletion.</code> | <code>自动补全时是否显示函数签名工具提示。</code> | <code>showFunctionSignatureTooltipsDescription</code> | [GWT R060][R060] |
| <code>Show function signature tooltips</code> | <code>显示函数签名工具提示</code> | <code>showFunctionSignatureTooltipsTitle</code> | [GWT R060][R060] |
| <code>Whether to show help tooltips for functions when the cursor has not been recently moved.</code> | <code>光标最近未移动时，是否显示函数帮助提示。</code> | <code>showHelpTooltipOnIdleDescription</code> | [GWT R060][R060] |
| <code>Show function help tooltips on idle</code> | <code>闲置时显示函数帮助工具提示</code> | <code>showHelpTooltipOnIdleTitle</code> | [GWT R060][R060] |
| <code>Whether to show hidden files in the Files pane.</code> | <code>是否在文件窗格中显示隐藏文件。</code> | <code>showHiddenFilesDescription</code> | [GWT R060][R060] |
| <code>Show hidden files in Files pane</code> | <code>在文件窗格中显示隐藏的文件</code> | <code>showHiddenFilesTitle</code> | [GWT R060][R060] |
| <code>Whether to show a toolbar on code chunks in R Markdown documents.</code> | <code>是否在 R Markdown 文档的代码块上显示工具栏。</code> | <code>showInlineToolbarForRCodeChunksDescription</code> | [GWT R060][R060] |
| <code>Show toolbar on R Markdown chunks</code> | <code>在 R Markdown 代码块上显示工具栏</code> | <code>showInlineToolbarForRCodeChunksTitle</code> | [GWT R060][R060] |
| <code>Whether to show functions without source references in the Traceback pane while debugging.</code> | <code>调试时是否在 Traceback 窗格中显示没有源引用的函数。</code> | <code>showInternalFunctionsDescription</code> | [GWT R060][R060] |
| <code>Show internal functions when debugging</code> | <code>调试时显示内部函数</code> | <code>showInternalFunctionsTitle</code> | [GWT R060][R060] |
| <code>Whether to show invisible characters, such as spaces and tabs, in the RStudio code editor.</code> | <code>是否在 RStudio 代码编辑器中显示空格和制表符等不可见字符。</code> | <code>showInvisiblesDescription</code> | [GWT R060][R060] |
| <code>Show invisible characters in editor</code> | <code>在编辑器中显示隐形字符</code> | <code>showInvisiblesTitle</code> | [GWT R060][R060] |
| <code>Show the result of the last expression (.Last.value) in the Environment pane.</code> | <code>在环境窗格中显示最后一个表达式的结果（.Last.value）。</code> | <code>showLastDotValueDescription</code> | [GWT R060][R060] |
| <code>Show .Last.value in Environment pane</code> | <code>在环境窗格中显示 .Last.value</code> | <code>showLastDotValueTitle</code> | [GWT R060][R060] |
| <code>Whether to show the Workbench Jobs tab in RStudio Pro and RStudio Workbench.</code> | <code>是否在 RStudio Pro 和 RStudio Workbench 中显示 Workbench 后台任务标签页。</code> | <code>showLauncherJobsTabDescription</code> | [GWT R060][R060] |
| <code>Show line numbers in RStudio's code editor.</code> | <code>是否在 RStudio 代码编辑器中显示行号。</code> | <code>showLineNumbersDescription</code> | [GWT R060][R060] |
| <code>Show line numbers in editor</code> | <code>在编辑器中显示行号</code> | <code>showLineNumbersTitle</code> | [GWT R060][R060] |
| <code>Whether to show the margin guide in the RStudio code editor.</code> | <code>是否在 RStudio 代码编辑器中显示边距参考线。</code> | <code>showMarginDescription</code> | [GWT R060][R060] |
| <code>Show margin in editor</code> | <code>在编辑器中显示边距</code> | <code>showMarginTitle</code> | [GWT R060][R060] |
| <code>Whether to compute and show memory usage in the Environment Pane</code> | <code>是否在环境窗格中计算和显示内存使用情况</code> | <code>showMemoryUsageDescription</code> | [GWT R060][R060] |
| <code>Show memory usage in Environment Pane</code> | <code>在环境窗格中显示内存使用情况</code> | <code>showMemoryUsageTitle</code> | [GWT R060][R060] |
| <code>Show which panel contains keyboard focus.</code> | <code>显示哪个面板包含键盘焦点。</code> | <code>showPanelFocusRectangleDescription</code> | [GWT R060][R060] |
| <code>Show focus outline around focused panel</code> | <code>围绕焦点面板显示焦点大纲</code> | <code>showPanelFocusRectangleTitle</code> | [GWT R060][R060] |
| <code>Whether to show verbose diagnostic information when publishing content.</code> | <code>发布内容时是否显示详细诊断信息。</code> | <code>showPublishDiagnosticsDescription</code> | [GWT R060][R060] |
| <code>Show diagnostic info when publishing</code> | <code>发布时显示诊断信息</code> | <code>showPublishDiagnosticsTitle</code> | [GWT R060][R060] |
| <code>Whether to print the render command use to knit R Markdown documents in the R Markdown tab.</code> | <code>是否在 R Markdown 标签页中打印用于编织 R Markdown 文档的渲染命令。</code> | <code>showRmdRenderCommandDescription</code> | [GWT R060][R060] |
| <code>Show R Markdown render command</code> | <code>显示 R Markdown 渲染命令</code> | <code>showRmdRenderCommandTitle</code> | [GWT R060][R060] |
| <code>Whether to show the Terminal tab.</code> | <code>是否显示终端标签。</code> | <code>showTerminalTabDescription</code> | [GWT R060][R060] |
| <code>Show the Terminal tab</code> | <code>显示终端标签页</code> | <code>showTerminalTabTitle</code> | [GWT R060][R060] |
| <code>When to show the server home page in RStudio Workbench.</code> | <code>何时在 RStudio Workbench 中显示服务器主页。</code> | <code>showUserHomePageDescription</code> | [GWT R060][R060] |
| <code>Show user home page in RStudio Workbench</code> | <code>在 RStudio Workbench 中显示用户主页</code> | <code>showUserHomePageTitle</code> | [GWT R060][R060] |
| <code>Whether to automatically show the What's New window after updating to a new version of RStudio Desktop.</code> | <code>更新到新版本 RStudio Desktop 后是否自动显示“新增功能”窗口。</code> | <code>showWhatsNewDescription</code> | [GWT R060][R060] |
| <code>Show the What's New window automatically after updating RStudio</code> | <code>RStudio 更新后自动显示“新增功能”窗口</code> | <code>showWhatsNewTitle</code> | [GWT R060][R060] |
| <code>Whether to soft-wrap source files, wrapping the text for display without inserting newline characters.</code> | <code>是否对源文件自动换行，仅改变显示而不插入换行符。</code> | <code>softWrapRFilesDescription</code> | [GWT R060][R060] |
| <code>Soft-wrap source files</code> | <code>源文件自动换行</code> | <code>softWrapRFilesTitle</code> | [GWT R060][R060] |
| <code>Whether to soft-wrap R Markdown files (and similar types such as R HTML and R Notebooks)</code> | <code>是否对 R Markdown 文件以及 R HTML、R Notebook 等类似文件自动换行。</code> | <code>softWrapRmdFilesDescription</code> | [GWT R060][R060] |
| <code>Soft-wrap R Markdown files</code> | <code>R Markdown 文件自动换行</code> | <code>softWrapRmdFilesTitle</code> | [GWT R060][R060] |
| <code>Whether to sort file names naturally, so that e.g., file10.R comes after file9.R</code> | <code>是否对文件名进行自然排序，例如让 file10.R 排在 file9.R 之后。</code> | <code>sortFileNamesNaturallyDescription</code> | [GWT R060][R060] |
| <code>Sort file names naturally in Files pane</code> | <code>在文件窗格中自然排序文件名</code> | <code>sortFileNamesNaturallyTitle</code> | [GWT R060][R060] |
| <code>Whether to echo R code when sourcing it.</code> | <code>运行脚本时是否回显 R 代码。</code> | <code>sourceWithEchoDescription</code> | [GWT R060][R060] |
| <code>Source with echo by default</code> | <code>运行脚本时默认回显代码</code> | <code>sourceWithEchoTitle</code> | [GWT R060][R060] |
| <code>The list of custom dictionaries to use when spell checking.</code> | <code>拼写检查时使用的自定义词典列表。</code> | <code>spellingCustomDictionariesDescription</code> | [GWT R060][R060] |
| <code>Custom spelling dictionaries</code> | <code>自定义拼写词典</code> | <code>spellingCustomDictionariesTitle</code> | [GWT R060][R060] |
| <code>The language of the spelling dictionary to use for spell checking.</code> | <code>拼写检查所用词典的语言。</code> | <code>spellingDictionaryLanguageDescription</code> | [GWT R060][R060] |
| <code>Spelling dictionary language</code> | <code>拼写词典语言</code> | <code>spellingDictionaryLanguageTitle</code> | [GWT R060][R060] |
| <code>The encryption type to use for the SSH key file.</code> | <code>SSH 密钥文件使用的加密类型。</code> | <code>sshKeyTypeDescription</code> | [GWT R060][R060] |
| <code>Whether to strip trailing whitespace from each line when saving.</code> | <code>保存时是否删除每行末尾的空白字符。</code> | <code>stripTrailingWhitespaceDescription</code> | [GWT R060][R060] |
| <code>Strip trailing whitespace when saving</code> | <code>保存时删除行尾空白</code> | <code>stripTrailingWhitespaceTitle</code> | [GWT R060][R060] |
| <code>Whether to show style diagnostics (suggestions for improving R code style)</code> | <code>是否显示样式诊断( 改进 R 代码样式的建议)</code> | <code>styleDiagnosticsDescription</code> | [GWT R060][R060] |
| <code>Show style diagnostics for R code</code> | <code>显示 R 代码的样式诊断</code> | <code>styleDiagnosticsTitle</code> | [GWT R060][R060] |
| <code>Which kinds of delimiters can be used to surround the current selection.</code> | <code>哪些类型的分隔符可以用于包围当前选择。</code> | <code>surroundSelectionDescription</code> | [GWT R060][R060] |
| <code>Never</code> | <code>从不</code> | <code>surroundSelectionEnum_never</code> | [GWT R060][R060] |
| <code>Quotes</code> | <code>引号</code> | <code>surroundSelectionEnum_quotes</code> | [GWT R060][R060] |
| <code>Quotes &amp; Brackets</code> | <code>引号和括号</code> | <code>surroundSelectionEnum_quotes_and_brackets</code> | [GWT R060][R060] |
| <code>Surround selections with</code> | <code>用以下符号包围所选内容</code> | <code>surroundSelectionTitle</code> | [GWT R060][R060] |
| <code>The path to the Subversion executable to use.</code> | <code>要使用的 Subversion 可执行文件的路径。</code> | <code>svnExePathDescription</code> | [GWT R060][R060] |
| <code>Path to Subversion executable</code> | <code>Subversion 可执行文件路径</code> | <code>svnExePathTitle</code> | [GWT R060][R060] |
| <code>Whether to change the directory in the Files pane automatically when the working directory in R changes.</code> | <code>R 的工作目录发生变化时，是否自动更改“文件”窗格中的目录。</code> | <code>syncFilesPaneWorkingDirDescription</code> | [GWT R060][R060] |
| <code>Synchronize the Files pane with the current working directory</code> | <code>与当前工作目录同步文件窗格</code> | <code>syncFilesPaneWorkingDirTitle</code> | [GWT R060][R060] |
| <code>Whether to use syntax highlighting in the R console.</code> | <code>在 R 控制台中是否使用语法突出显示。</code> | <code>syntaxColorConsoleDescription</code> | [GWT R060][R060] |
| <code>Syntax highlighting in R console</code> | <code>R 控制台中的语法突出显示</code> | <code>syntaxColorConsoleTitle</code> | [GWT R060][R060] |
| <code>Whether to attempt completion of statements when pressing Tab.</code> | <code>是否尝试在按 Tab 时完成语句。</code> | <code>tabCompletionDescription</code> | [GWT R060][R060] |
| <code>Use Tab to trigger autocompletion</code> | <code>使用 Tab 启动自动补全</code> | <code>tabCompletionTitle</code> | [GWT R060][R060] |
| <code>Tab key moves focus out of text editing controls instead of inserting tabs.</code> | <code>Tab 键将焦点移出文本编辑控件，而不是插入制表符。</code> | <code>tabKeyMoveFocusDescription</code> | [GWT R060][R060] |
| <code>Tab key always moves focus</code> | <code>Tab 键始终移动焦点</code> | <code>tabKeyMoveFocusTitle</code> | [GWT R060][R060] |
| <code>Whether to attempt completion of multiple-line statements when pressing Tab.</code> | <code>按 Tab 键时是否尝试完成多行语句。</code> | <code>tabMultilineCompletionDescription</code> | [GWT R060][R060] |
| <code>Complete multi-line statements with Tab</code> | <code>使用 Tab 完成多行语句</code> | <code>tabMultilineCompletionTitle</code> | [GWT R060][R060] |
| <code>Terminal bell style</code> | <code>终端铃声样式</code> | <code>terminalBellStyleDescription</code> | [GWT R060][R060] |
| <code>Terminal bell style</code> | <code>终端铃声样式</code> | <code>terminalBellStyleTitle</code> | [GWT R060][R060] |
| <code>Whether to close the terminal pane after the shell exits.</code> | <code>Shell 退出后是否关闭终端窗格。</code> | <code>terminalCloseBehaviorDescription</code> | [GWT R060][R060] |
| <code>Close Terminal pane after shell exit</code> | <code>shell 退出后关闭终端窗格</code> | <code>terminalCloseBehaviorTitle</code> | [GWT R060][R060] |
| <code>Enabled Terminal hooks? Required for Python terminal integration, which places the active version of Python on the PATH in new Terminal sessions.</code> | <code>是否启用终端钩子。Python 终端集成需要此功能，它会将当前 Python 版本加入新终端会话的 PATH。</code> | <code>terminalHooksDescription</code> | [GWT R060][R060] |
| <code>Enable Terminal hooks</code> | <code>启用终端钩子</code> | <code>terminalHooksTitle</code> | [GWT R060][R060] |
| <code>Environment variables which should be ignored when tracking changed to environment variables within a Terminal. Environment variables in this list will not be saved when a Terminal instance is saved and restored.</code> | <code>跟踪终端中的环境变量变化时应忽略的环境变量。保存和恢复终端实例时，不会保存此列表中的环境变量。</code> | <code>terminalIgnoredEnvironmentVariablesDescription</code> | [GWT R060][R060] |
| <code>Ignored environment variables</code> | <code>忽略环境变量</code> | <code>terminalIgnoredEnvironmentVariablesTitle</code> | [GWT R060][R060] |
| <code>Initial directory for new terminals.</code> | <code>新终端初始目录。</code> | <code>terminalInitialDirectoryDescription</code> | [GWT R060][R060] |
| <code>Initial working directory for new terminals</code> | <code>新终端的初始工作目录</code> | <code>terminalInitialDirectoryTitle</code> | [GWT R060][R060] |
| <code>Whether to use local echo in the Terminal.</code> | <code>是否在终端中使用本地回显。</code> | <code>terminalLocalEchoDescription</code> | [GWT R060][R060] |
| <code>Use local echo in the Terminal</code> | <code>在终端中使用本地回显</code> | <code>terminalLocalEchoTitle</code> | [GWT R060][R060] |
| <code>The path to the terminal executable to use.</code> | <code>要使用的终端可执行文件路径。</code> | <code>terminalPathDescription</code> | [GWT R060][R060] |
| <code>Enable Python terminal hooks. When enabled, the RStudio-configured version of Python will be placed on the PATH.</code> | <code>启用 Python 终端钩子。启用后，RStudio 配置的 Python 版本将加入 PATH。</code> | <code>terminalPythonIntegrationDescription</code> | [GWT R060][R060] |
| <code>Enable terminal Python integration</code> | <code>启用终端 Python 集成</code> | <code>terminalPythonIntegrationTitle</code> | [GWT R060][R060] |
| <code>Terminal rendering engine: canvas is faster, dom may be needed for some browsers or graphics cards</code> | <code>终端渲染引擎：canvas 更快；某些浏览器或显卡可能需要 DOM。</code> | <code>terminalRendererDescription</code> | [GWT R060][R060] |
| <code>Terminal tab rendering engine</code> | <code>终端标签渲染引擎</code> | <code>terminalRendererTitle</code> | [GWT R060][R060] |
| <code>Whether to track and save changes to system environment variables in the Terminal.</code> | <code>是否跟踪和保存终端中系统环境变量的更改。</code> | <code>terminalTrackEnvironmentDescription</code> | [GWT R060][R060] |
| <code>Save and restore system environment in Terminal tab</code> | <code>在终端标签中保存和恢复系统环境</code> | <code>terminalTrackEnvironmentTitle</code> | [GWT R060][R060] |
| <code>Whether web links displayed in the Terminal tab are made clickable.</code> | <code>终端标签中显示的网页链接是否可以点击。</code> | <code>terminalWeblinksDescription</code> | [GWT R060][R060] |
| <code>Make links in Terminal clickable</code> | <code>在终端中单击链接</code> | <code>terminalWeblinksTitle</code> | [GWT R060][R060] |
| <code>Whether to use websockets to communicate with the shell in the Terminal tab.</code> | <code>是否使用 Websockets 在终端标签中与 shell 通信。</code> | <code>terminalWebsocketsDescription</code> | [GWT R060][R060] |
| <code>Use websockets in the Terminal</code> | <code>在终端中使用 Websockets</code> | <code>terminalWebsocketsTitle</code> | [GWT R060][R060] |
| <code>Control how text is rendered within the IDE surface.</code> | <code>控制文本如何在 IDE 表面内渲染。</code> | <code>textRenderingDescription</code> | [GWT R060][R060] |
| <code>Text rendering</code> | <code>文本渲染</code> | <code>textRenderingTitle</code> | [GWT R060][R060] |
| <code>Whether to show the toolbar at the top of the RStudio workbench.</code> | <code>是否在 RStudio 工作台顶部显示工具栏。</code> | <code>toolbarVisibleDescription</code> | [GWT R060][R060] |
| <code>Show top toolbar</code> | <code>显示顶部工具栏</code> | <code>toolbarVisibleTitle</code> | [GWT R060][R060] |
| <code>Number of milliseconds to wait after last keystroke before updating live region.</code> | <code>最后一次按键后等待多少毫秒再更新实时区域。</code> | <code>typingStatusDelayMsDescription</code> | [GWT R060][R060] |
| <code>Seconds to wait before updating ARIA live region</code> | <code>更新 ARIA 实时区域前的等待时间</code> | <code>typingStatusDelayMsTitle</code> | [GWT R060][R060] |
| <code>The IDE's user-interface language.</code> | <code>IDE 的用户界面语言。</code> | <code>uiLanguageDescription</code> | [GWT R060][R060] |
| <code>User Interface Language:</code> | <code>用户界面语言:</code> | <code>uiLanguageTitle</code> | [GWT R060][R060] |
| <code>When set, RStudio will automatically select and use an appropriate version of Air when formatting R code.</code> | <code>设置后，RStudio 在格式化 R 代码时会自动选择并使用合适版本的 Air。</code> | <code>useAirFormatterDescription</code> | [GWT R060][R060] |
| <code>Use Air for code formatting</code> | <code>使用 Air 格式化代码</code> | <code>useAirFormatterTitle</code> | [GWT R060][R060] |
| <code>When set, RStudio will build your package in a '_build' sub-directory of your current library paths.</code> | <code>设置后，RStudio 会在当前库路径的 '_build' 子目录中构建程序包。</code> | <code>useBuildSubdirectoryDescription</code> | [GWT R060][R060] |
| <code>Use alternate library path when building package</code> | <code>构建程序包时使用备用库路径</code> | <code>useBuildSubdirectoryTitle</code> | [GWT R060][R060] |
| <code>Whether modal dialogs should use dark styling when a dark editor theme is active.</code> | <code>启用深色编辑器主题时，模态对话框是否使用深色样式。</code> | <code>useDarkThemeModalDialogsDescription</code> | [GWT R060][R060] |
| <code>Use dark theme modal dialogs</code> | <code>模态对话框使用深色主题</code> | <code>useDarkThemeModalDialogsTitle</code> | [GWT R060][R060] |
| <code>Whether to use RStudio's data import feature.</code> | <code>是否启用 RStudio 数据导入功能。</code> | <code>useDataimportDescription</code> | [GWT R060][R060] |
| <code>Enable data import</code> | <code>启用数据导入</code> | <code>useDataimportTitle</code> | [GWT R060][R060] |
| <code>Whether to use the devtools R package.</code> | <code>是否使用 devtools R 程序包。</code> | <code>useDevtoolsDescription</code> | [GWT R060][R060] |
| <code>Use the devtools R package if available</code> | <code>可用时使用 devtools R 程序包</code> | <code>useDevtoolsTitle</code> | [GWT R060][R060] |
| <code>Whether to use newlines when saving Makefiles.</code> | <code>保存 Makefile 时是否使用新行。</code> | <code>useNewlinesInMakefilesDescription</code> | [GWT R060][R060] |
| <code>Use newlines in Makefiles</code> | <code>Makefile 中使用新行</code> | <code>useNewlinesInMakefilesTitle</code> | [GWT R060][R060] |
| <code>Whether to use a custom certificate authority (CA) bundle when publishing content.</code> | <code>发布内容时是否使用自定义证书颁发机构（CA）证书包。</code> | <code>usePublishCaBundleDescription</code> | [GWT R060][R060] |
| <code>Use custom CA bundle when publishing</code> | <code>发布时使用自定义 CA 证书包</code> | <code>usePublishCaBundleTitle</code> | [GWT R060][R060] |
| <code>Whether to use Roxygen for documentation.</code> | <code>是否将 Roxygen 用于文档。</code> | <code>useRoxygenDescription</code> | [GWT R060][R060] |
| <code>Use Roxygen for documentation</code> | <code>文档使用 Roxygen</code> | <code>useRoxygenTitle</code> | [GWT R060][R060] |
| <code>Whether to use secure downloads when fetching R packages.</code> | <code>获取 R 程序包时是否使用安全下载。</code> | <code>useSecureDownloadDescription</code> | [GWT R060][R060] |
| <code>Download R packages securely</code> | <code>安全下载 R 程序包</code> | <code>useSecureDownloadTitle</code> | [GWT R060][R060] |
| <code>Whether to insert spaces when pressing the Tab key.</code> | <code>按 Tab 键时是否插入空格。</code> | <code>useSpacesForTabDescription</code> | [GWT R060][R060] |
| <code>Insert spaces for Tab</code> | <code>按 Tab 键时插入空格</code> | <code>useSpacesForTabTitle</code> | [GWT R060][R060] |
| <code>Use tinytex to compile .tex files.</code> | <code>使用 tinytex 编译 .tex 文件。</code> | <code>useTinytexDescription</code> | [GWT R060][R060] |
| <code>Use tinytex to compile .tex files</code> | <code>使用 tinytex 编译 .tex 文件</code> | <code>useTinytexTitle</code> | [GWT R060][R060] |
| <code>Automatically refresh VCS status?</code> | <code>是否自动刷新版本控制状态。</code> | <code>vcsAutorefreshDescription</code> | [GWT R060][R060] |
| <code>Auto-refresh state from version control</code> | <code>自动刷新版本控制状态</code> | <code>vcsAutorefreshTitle</code> | [GWT R060][R060] |
| <code>Whether to enable RStudio's version control system interface.</code> | <code>是否启用 RStudio 版本控制界面。</code> | <code>vcsEnabledDescription</code> | [GWT R060][R060] |
| <code>Enable version control if available</code> | <code>启用可用版本控制</code> | <code>vcsEnabledTitle</code> | [GWT R060][R060] |
| <code>Whether to vertically align arguments to R function calls during automatic indentation.</code> | <code>在自动缩进时是否将参数垂直对齐到 R 函数调用。</code> | <code>verticallyAlignArgumentsIndentDescription</code> | [GWT R060][R060] |
| <code>Vertically align function arguments</code> | <code>垂直对齐函数参数</code> | <code>verticallyAlignArgumentsIndentTitle</code> | [GWT R060][R060] |
| <code>Whether to view the directory after running R CMD CHECK.</code> | <code>运行 R CMD CHECK 后是否查看目录。</code> | <code>viewDirAfterRCmdCheckDescription</code> | [GWT R060][R060] |
| <code>View directory after R CMD CHECK</code> | <code>在 R CMD CHECK 之后查看目录</code> | <code>viewDirAfterRCmdCheckTitle</code> | [GWT R060][R060] |
| <code>Whether to load Vim key mappings from ~/.rstudio-vimrc (or ~/.vimrc) when Vim editor keybindings are enabled.</code> | <code>启用 Vim 编辑器键位绑定时，是否从 ~/.rstudio-vimrc（或 ~/.vimrc）加载 Vim 键位映射。</code> | <code>vimLoadVimrcDescription</code> | [GWT R060][R060] |
| <code>Load Vim keybindings from a vimrc file</code> | <code>从 vimrc 文件加载 Vim 键位绑定</code> | <code>vimLoadVimrcTitle</code> | [GWT R060][R060] |
| <code>The name of the editor to use to provide code editing in visual mode</code> | <code>可视化模式下用于编辑代码的编辑器名称</code> | <code>visualMarkdownCodeEditorDescription</code> | [GWT R060][R060] |
| <code>Whether to show line numbers in the code editors used in visual mode</code> | <code>是否在可视化模式所用的代码编辑器中显示行号</code> | <code>visualMarkdownCodeEditorLineNumbersDescription</code> | [GWT R060][R060] |
| <code>Show line numbers in visual mode code blocks</code> | <code>在可视化模式代码块中显示行号</code> | <code>visualMarkdownCodeEditorLineNumbersTitle</code> | [GWT R060][R060] |
| <code>Editor for code chunks in visual editing mode</code> | <code>可视化编辑模式的代码块编辑器</code> | <code>visualMarkdownCodeEditorTitle</code> | [GWT R060][R060] |
| <code>Whether to write canonical visual mode markdown when saving from source mode.</code> | <code>从源代码模式保存时，是否写入规范的可视化模式 Markdown</code> | <code>visualMarkdownEditingCanonicalDescription</code> | [GWT R060][R060] |
| <code>Write canonical visual mode markdown in source mode</code> | <code>在源代码模式中写入规范的可视化模式 Markdown</code> | <code>visualMarkdownEditingCanonicalTitle</code> | [GWT R060][R060] |
| <code>The default visual editing mode font size, in points</code> | <code>可视化编辑模式的默认字体大小（磅）</code> | <code>visualMarkdownEditingFontSizePointsDescription</code> | [GWT R060][R060] |
| <code>Font size for visual editing mode</code> | <code>可视化编辑模式的字体大小</code> | <code>visualMarkdownEditingFontSizePointsTitle</code> | [GWT R060][R060] |
| <code>Whether to enable visual editing by default for new markdown documents</code> | <code>是否为新建 Markdown 文档默认启用可视化编辑</code> | <code>visualMarkdownEditingIsDefaultDescription</code> | [GWT R060][R060] |
| <code>Use visual editing by default for new markdown documents</code> | <code>新建 Markdown 文档默认使用可视化编辑</code> | <code>visualMarkdownEditingIsDefaultTitle</code> | [GWT R060][R060] |
| <code>Default spacing for lists created in the visual editor</code> | <code>可视化编辑器所创建列表的默认间距</code> | <code>visualMarkdownEditingListSpacingDescription</code> | [GWT R060][R060] |
| <code>Default list spacing in visual markdown editing mode</code> | <code>可视化 Markdown 编辑模式的默认列表间距</code> | <code>visualMarkdownEditingListSpacingTitle</code> | [GWT R060][R060] |
| <code>Maximum content width for visual editing mode, in pixels</code> | <code>可视化编辑模式的最大内容宽度（像素）</code> | <code>visualMarkdownEditingMaxContentWidthDescription</code> | [GWT R060][R060] |
| <code>Max content width for visual markdown editor (px)</code> | <code>可视化 Markdown 编辑器的最大内容宽度（像素）</code> | <code>visualMarkdownEditingMaxContentWidthTitle</code> | [GWT R060][R060] |
| <code>Placement of footnotes within markdown output.</code> | <code>脚注在 Markdown 输出中的位置</code> | <code>visualMarkdownEditingReferencesLocationDescription</code> | [GWT R060][R060] |
| <code>Place visual markdown footnotes in</code> | <code>可视化 Markdown 脚注位置</code> | <code>visualMarkdownEditingReferencesLocationTitle</code> | [GWT R060][R060] |
| <code>Whether to show the document outline by default when opening R Markdown documents in visual mode.</code> | <code>以可视化模式打开 R Markdown 文档时，是否默认显示文档大纲</code> | <code>visualMarkdownEditingShowDocOutlineDescription</code> | [GWT R060][R060] |
| <code>Show document outline in visual markdown editing mode</code> | <code>在可视化 Markdown 编辑模式中显示文档大纲</code> | <code>visualMarkdownEditingShowDocOutlineTitle</code> | [GWT R060][R060] |
| <code>Whether to show the margin guide in the visual mode code blocks.</code> | <code>是否在可视化模式代码块中显示边距参考线</code> | <code>visualMarkdownEditingShowMarginDescription</code> | [GWT R060][R060] |
| <code>Show margin in visual mode code blocks</code> | <code>在可视化模式代码块中显示边距线</code> | <code>visualMarkdownEditingShowMarginTitle</code> | [GWT R060][R060] |
| <code>The column to wrap text at when writing markdown</code> | <code>编写 Markdown 时的文本换行列</code> | <code>visualMarkdownEditingWrapAtColumnDescription</code> | [GWT R060][R060] |
| <code>Wrap column for visual markdown editing mode</code> | <code>可视化 Markdown 编辑模式的换行列</code> | <code>visualMarkdownEditingWrapAtColumnTitle</code> | [GWT R060][R060] |
| <code>Whether to automatically wrap text when writing markdown</code> | <code>编写 Markdown 时是否自动换行</code> | <code>visualMarkdownEditingWrapDescription</code> | [GWT R060][R060] |
| <code>Wrap text in visual markdown editing mode</code> | <code>在可视化 Markdown 编辑模式中自动换行</code> | <code>visualMarkdownEditingWrapTitle</code> | [GWT R060][R060] |
| <code>Whether to generate a warning if a variable is used without being defined in the current scope.</code> | <code>是否在使用当前作用域中未定义的变量时发出警告。</code> | <code>warnIfNoSuchVariableInScopeDescription</code> | [GWT R060][R060] |
| <code>Warn when R variable used but not defined</code> | <code>R 变量使用但未定义时警告</code> | <code>warnIfNoSuchVariableInScopeTitle</code> | [GWT R060][R060] |
| <code>Whether to generate a warning if a variable is defined without being used in the current scope</code> | <code>是否在定义了变量但未在当前作用域中使用时发出警告。</code> | <code>warnVariableDefinedButNotUsedDescription</code> | [GWT R060][R060] |
| <code>Warn when R variable defined but not used</code> | <code>R 变量定义但未使用时警告</code> | <code>warnVariableDefinedButNotUsedTitle</code> | [GWT R060][R060] |
| <code>The terminal shell to use on Windows.</code> | <code>Windows 上要使用的终端 Shell。</code> | <code>windowsTerminalShellDescription</code> | [GWT R060][R060] |
| <code>Whether to wrap around when going to the previous or next editor tab.</code> | <code>是否在去往上一个或下个编辑标签时环绕。</code> | <code>wrapTabNavigationDescription</code> | [GWT R060][R060] |
| <code>Wrap around when going to previous/next tab</code> | <code>到上个/ 下个标签时环绕</code> | <code>wrapTabNavigationTitle</code> | [GWT R060][R060] |
| <code>Zotero libraries to insert citations from.</code> | <code>用于插入引用的 Zotero 库。</code> | <code>zoteroLibrariesDescription</code> | [GWT R060][R060] |
| <code>Zotero libraries</code> | <code>Zotero 库</code> | <code>zoteroLibrariesTitle</code> | [GWT R060][R060] |

### 选项页与窗格布局

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Collate field</code> | <code>整理字段</code> | <code>collateField</code> | [GWT R033][R033] |
| <code>Install and Restart</code> | <code>安装和重新启动</code> | <code>installRestart</code> | [GWT R033][R033] |
| <code>NAMESPACE file</code> | <code>NAMESPACE 文件</code> | <code>namespaceFile</code> | [GWT R033][R033] |
| <code>Source and binary package builds</code> | <code>源程序包和二进制程序包构建</code> | <code>packageBuildsText</code> | [GWT R033][R033] |
| <code>R CMD check</code> | <code>R CMD 检查</code> | <code>rCMDCheck</code> | [GWT R033][R033] |
| <code>Rd files</code> | <code>Rd 文件</code> | <code>rdFiles</code> | [GWT R033][R033] |
| <code>Use roxygen to generate:</code> | <code>使用 roxygen 生成：</code> | <code>roxygenGenerate</code> | [GWT R033][R033] |
| <code>Automatically roxygenize when running:</code> | <code>执行以下操作时自动运行 roxygenize：</code> | <code>roxygenizeRunningText</code> | [GWT R033][R033] |
| <code>Vignettes</code> | <code>程序包文档</code> | <code>vignettesText</code> | [GWT R033][R033] |
| <code>Publishing Accounts</code> | <code>发布账户</code> | <code>accountListLabel</code> | [GWT R059][R059] |
| <code>Add column</code> | <code>添加列</code> | <code>addButtonLabel</code> | [GWT R059][R059] |
| <code>Add Column</code> | <code>添加列</code> | <code>addButtonText</code> | [GWT R059][R059] |
| <code>Theme Files (*.tmTheme *.rstheme)</code> | <code>主题文件 (*.tmTheme *.rstheme)</code> | <code>addThemeButtonCaption</code> | [GWT R059][R059] |
| <code>Add...</code> | <code>添加...</code> | <code>addThemeButtonLabel</code> | [GWT R059][R059] |
| <code>Converting a tmTheme to an rstheme</code> | <code>将 tmTheme 转换为 rstheme</code> | <code>addThemeUserActionLabel</code> | [GWT R059][R059] |
| <code>Debugging</code> | <code>调试</code> | <code>advancedDebuggingCaption</code> | [GWT R059][R059] |
| <code>Use debug error handler only when my code contains errors</code> | <code>仅当我的代码包含错误时使用调试错误处理程序</code> | <code>advancedDebuggingLabel</code> | [GWT R059][R059] |
| <code>Display render command in R Markdown tab</code> | <code>在 R Markdown 标签页中显示渲染命令</code> | <code>advancedDisplayRender</code> | [GWT R059][R059] |
| <code>Enable chunk background highlight</code> | <code>启用代码块背景高亮</code> | <code>advancedEnableChunkLabel</code> | [GWT R059][R059] |
| <code>Display</code> | <code>显示</code> | <code>advancedHeaderLabel</code> | [GWT R059][R059] |
| <code>OS Integration</code> | <code>系统集成</code> | <code>advancedOsIntegrationCaption</code> | [GWT R059][R059] |
| <code>Rendering engine:</code> | <code>渲染引擎:</code> | <code>advancedRenderingEngineLabel</code> | [GWT R059][R059] |
| <code>Show inline toolbar for R code chunks</code> | <code>为 R 代码块显示行内工具栏</code> | <code>advancedShowInlineLabel</code> | [GWT R059][R059] |
| <code>Formatting with Air</code> | <code>使用 Air 格式化</code> | <code>airFormattingHelpLink</code> | [GWT R059][R059] / Source patch |
| <code>is already included</code> | <code>已经包含</code> | <code>alreadyIncludedMessage</code> | [GWT R059][R059] |
| <code>Always enable Rnw concordance (required for synctex)</code> | <code>始终启用 Rnw concordance（synctex 必需）</code> | <code>alwaysEnableRnwConcordanceLabel</code> | [GWT R059][R059] |
| <code>Always save history (even when not saving .RData)</code> | <code>始终保存历史记录（即使不保存 .RData）</code> | <code>alwaysSaveHistoryLabel</code> | [GWT R059][R059] |
| <code>Enable / Disable Announcements</code> | <code>启用或禁用通知</code> | <code>announcementsLabel</code> | [GWT R059][R059] |
| <code>Announcements</code> | <code>通知</code> | <code>announcementsPanelText</code> | [GWT R059][R059] |
| <code>Warning: screen reader mode not enabled. Turn on using shortcut {0}.</code> | <code>警告：屏幕阅读器模式未启用。请使用快捷键 {0} 启用。</code> | <code>announceScreenReaderStateMessage</code> | [GWT R059][R059] |
| <code>(Default)</code> | <code>(默认)</code> | <code>antialiasingDefaultOption</code> | [GWT R059][R059] |
| <code>Gray</code> | <code>灰色</code> | <code>antialiasingGrayOption</code> | [GWT R059][R059] |
| <code>None</code> | <code>无</code> | <code>antialiasingNoneOption</code> | [GWT R059][R059] |
| <code>Subpixel</code> | <code>子像素</code> | <code>antialiasingSubpixelOption</code> | [GWT R059][R059] |
| <code>Editor font:</code> | <code>编辑器字体:</code> | <code>appearanceEditorFontLabel</code> | [GWT R059][R059] |
| <code>Editor font size:</code> | <code>编辑器字体大小:</code> | <code>appearanceEditorFontSizeLabel</code> | [GWT R059][R059] |
| <code>Line height (%):</code> | <code>行高（%）:</code> | <code>appearanceEditorLineHeightLabel</code> | [GWT R059][R059] |
| <code>Editor theme:</code> | <code>编辑器主题:</code> | <code>appearanceEditorThemeLabel</code> | [GWT R059][R059] |
| <code>The editor theme is overridden by project settings.</code> | <code>编辑器主题已被项目设置覆盖。</code> | <code>appearanceEditorThemeProjectOverrideText</code> | [GWT R059][R059] |
| <code>Appearance</code> | <code>外观</code> | <code>appearanceLabel</code> | [GWT R059][R059] |
| <code>RStudio theme:</code> | <code>RStudio 主题:</code> | <code>appearanceRStudioThemeLabel</code> | [GWT R059][R059] |
| <code>Zoom:</code> | <code>缩放:</code> | <code>appearanceZoomLabelZoom</code> | [GWT R059][R059] |
| <code>The assistant has not been enabled.</code> | <code>该助手尚未启用。</code> | <code>assistantAgentNotEnabled</code> | [GWT R059][R059] |
| <code>The assistant is not currently running.</code> | <code>助手当前未运行。</code> | <code>assistantAgentNotRunning</code> | [GWT R059][R059] |
| <code>Chat provider:</code> | <code>聊天服务提供方:</code> | <code>assistantChatProviderLabel</code> | [GWT R059][R059] |
| <code>Chat</code> | <code>聊天</code> | <code>assistantChatTab</code> | [GWT R059][R059] |
| <code>Show code suggestions after keyboard idle (ms):</code> | <code>键盘空闲后显示代码建议（毫秒）:</code> | <code>assistantCompletionsDelayLabel</code> | [GWT R059][R059] |
| <code>Completions</code> | <code>代码补全</code> | <code>assistantCompletionsHeader</code> | [GWT R059][R059] |
| <code>Code Assistant</code> | <code>代码助手</code> | <code>assistantCompletionsTab</code> | [GWT R059][R059] |
| <code>This project has been configured to use {0}.</code> | <code>此项目已配置为使用 {0}。</code> | <code>assistantConfiguredInProject</code> | [GWT R059][R059] |
| <code>Generating diagnostics report...</code> | <code>正在生成诊断报告…</code> | <code>assistantDiagnosticReportProgressLabel</code> | [GWT R059][R059] |
| <code>Diagnostics</code> | <code>诊断</code> | <code>assistantDiagnosticsLabel</code> | [GWT R059][R059] |
| <code>{0} has been disabled in this project.</code> | <code>此项目已禁用 {0}。</code> | <code>assistantDisabledInProject</code> | [GWT R059][R059] |
| <code>AI Assistant</code> | <code>AI 助手</code> | <code>assistantDisplayName</code> | [GWT R059][R059] |
| <code>(Loading...)</code> | <code>（正在加载…）</code> | <code>assistantLoadingMessage</code> | [GWT R059][R059] |
| <code>When enabled, next edit suggestions will only be shown as a gutter icon. Hover over the icon to preview the suggestion.</code> | <code>启用后，下一步编辑建议仅显示为边栏图标；将鼠标悬停在图标上可预览建议。</code> | <code>assistantNesCollapseDescription</code> | [GWT R059][R059] |
| <code>Collapse next edit suggestions into editor gutter</code> | <code>将下一步编辑建议折叠到编辑器边栏</code> | <code>assistantNesCollapseLabel</code> | [GWT R059][R059] |
| <code>No code assistant is currently active. Select an assistant above to enable code suggestions and other AI-powered features.</code> | <code>当前没有启用代码助手。请在上方选择一个助手，以启用代码建议和其他 AI 功能。</code> | <code>assistantNoneInfo</code> | [GWT R059][R059] |
| <code>You are not currently signed in.</code> | <code>当前未登录。</code> | <code>assistantNotSignedIn</code> | [GWT R059][R059] |
| <code>Assistant</code> | <code>助手</code> | <code>assistantPaneName</code> | [GWT R059][R059] |
| <code>Project Options...</code> | <code>项目选项…</code> | <code>assistantProjectOptionsLabel</code> | [GWT R059][R059] |
| <code>Quick Reference</code> | <code>快速参考</code> | <code>assistantQuickReferenceHeader</code> | [GWT R059][R059] |
| <code>Refresh</code> | <code>刷新</code> | <code>assistantRefreshLabel</code> | [GWT R059][R059] |
| <code>Use code assistant:</code> | <code>使用代码助手:</code> | <code>assistantSelectLabel</code> | [GWT R059][R059] |
| <code>Show Error...</code> | <code>显示错误…</code> | <code>assistantShowErrorLabel</code> | [GWT R059][R059] |
| <code>Signed in: {0}</code> | <code>已登录：{0}</code> | <code>assistantSignedInAsLabel</code> | [GWT R059][R059] |
| <code>Sign In</code> | <code>登录</code> | <code>assistantSignInLabel</code> | [GWT R059][R059] |
| <code>Sign Out</code> | <code>退出登录</code> | <code>assistantSignOutLabel</code> | [GWT R059][R059] |
| <code>An error occurred while starting the assistant.</code> | <code>启动助手时发生错误。</code> | <code>assistantStartupError</code> | [GWT R059][R059] |
| <code>AI Assistant: Status</code> | <code>AI 助手：状态</code> | <code>assistantStatusDialogCaption</code> | [GWT R059][R059] |
| <code>Dismiss the active edit suggestion</code> | <code>忽略当前编辑建议</code> | <code>assistantSuggestionsDismissHint</code> | [GWT R059][R059] |
| <code>Code Suggestions</code> | <code>代码建议</code> | <code>assistantSuggestionsHeader</code> | [GWT R059][R059] |
| <code>Request and accept edit suggestions</code> | <code>请求并接受编辑建议</code> | <code>assistantSuggestionsRequestAcceptHint</code> | [GWT R059][R059] |
| <code>Assistant</code> | <code>助手</code> | <code>assistantTabPanel</code> | [GWT R059][R059] |
| <code>An unexpected error occurred while checking the status of the assistant.</code> | <code>检查助手状态时发生意外错误。</code> | <code>assistantUnexpectedError</code> | [GWT R059][R059] |
| <code>RStudio received an unexpected response from the assistant.\n{0}</code> | <code>RStudio 收到了助手无法识别的响应。\n{0}</code> | <code>assistantUnknownResponse</code> | [GWT R059][R059] |
| <code>Set to 0 to check for a new version every time the Posit Assistant starts.</code> | <code>设为 0 时，每次 Posit Assistant 启动都会检查新版本。</code> | <code>assistantUpdateCheckIntervalTooltip</code> | [GWT R059][R059] |
| <code>When shell exits:</code> | <code>Shell 退出时:</code> | <code>autoClosePrefLabel</code> | [GWT R059][R059] |
| <code>Execute setup chunk automatically in notebooks</code> | <code>在笔记本中自动执行 setup 代码块</code> | <code>autoExecuteSetupChunkLabel</code> | [GWT R059][R059] |
| <code>Hide menu bar until Alt-key pressed</code> | <code>按下 Alt 键前隐藏菜单栏</code> | <code>autohideMenubarLabel</code> | [GWT R059][R059] |
| <code>Bottom left panel</code> | <code>左下窗格</code> | <code>bottomLeftPanelLabel</code> | [GWT R059][R059] / Source patch |
| <code>Bottom right panel</code> | <code>右下窗格</code> | <code>bottomRightPanelLabel</code> | [GWT R059][R059] / Source patch |
| <code>Browse...</code> | <code>浏览…</code> | <code>browseLabel</code> | [GWT R059][R059] |
| <code>Build</code> | <code>构建</code> | <code>buildPaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>Always</code> | <code>始终</code> | <code>busyModeAlwaysOption</code> | [GWT R059][R059] |
| <code>Ask before killing processes:</code> | <code>终止进程前询问:</code> | <code>busyModeLabel</code> | [GWT R059][R059] |
| <code>Always except for list</code> | <code>始终询问，但列表中的进程除外</code> | <code>busyModeListOption</code> | [GWT R059][R059] |
| <code>Never</code> | <code>从不</code> | <code>busyModeNeverOption</code> | [GWT R059][R059] |
| <code>Don''t ask before killing:</code> | <code>终止以下进程前不询问:</code> | <code>busyWhitelistLabel</code> | [GWT R059][R059] |
| <code>Add...</code> | <code>添加...</code> | <code>buttonAddLabel</code> | [GWT R059][R059] |
| <code>Down</code> | <code>下移</code> | <code>buttonDownLabel</code> | [GWT R059][R059] |
| <code>Remove...</code> | <code>移除...</code> | <code>buttonRemoveLabel</code> | [GWT R059][R059] |
| <code>Up</code> | <code>上移</code> | <code>buttonUpLabel</code> | [GWT R059][R059] |
| <code>(none)</code> | <code>(无)</code> | <code>caBundlePath</code> | [GWT R059][R059] |
| <code>Cancel</code> | <code>取消</code> | <code>cancel</code> | [GWT R059][R059] |
| <code>Cancel</code> | <code>取消</code> | <code>cancelButton</code> | [GWT R059][R059] |
| <code>''. The following error occurred: </code> | <code>''。发生了以下错误: </code> | <code>cantAddThemeErrorCaption</code> | [GWT R059][R059] |
| <code>Failed to Add Theme</code> | <code>添加主题失败</code> | <code>cantAddThemeGlobalMessage</code> | [GWT R059][R059] |
| <code>Unable to add the theme ''</code> | <code>无法添加主题 ''</code> | <code>cantAddThemeMessage</code> | [GWT R059][R059] |
| <code>Automatically activate project-local Python environments</code> | <code>自动激活项目本地 Python 环境</code> | <code>cbAutoUseProjectInterpreter</code> | [GWT R059][R059] |
| <code>When enabled, RStudio will automatically find and activate a Python environment located within the project root directory (if any).</code> | <code>启用后，RStudio 会自动查找并激活项目根目录中的 Python 环境（如有）。</code> | <code>cbAutoUseProjectInterpreterMessage</code> | [GWT R059][R059] |
| <code>Information about Posit Connect</code> | <code>Posit Connect 相关信息</code> | <code>checkBoxWithHelpTitle</code> | [GWT R059][R059] |
| <code>Checking</code> | <code>检查</code> | <code>checkingHeader</code> | [GWT R059][R059] |
| <code>Audible bell</code> | <code>声音提示</code> | <code>chkAudibleBellLabel</code> | [GWT R059][R059] |
| <code>Save and restore environment variables</code> | <code>保存和恢复环境变量</code> | <code>chkCaptureEnvLabel</code> | [GWT R059][R059] |
| <code>Terminal occasionally runs a hidden command to capture state of environment variables.</code> | <code>终端会偶尔运行隐藏命令，以捕获环境变量的状态。</code> | <code>chkCaptureEnvTitle</code> | [GWT R059][R059] |
| <code>Clean auxiliary output after compile</code> | <code>编译后清理辅助输出</code> | <code>chkCleanTexi2DviOutputLabel</code> | [GWT R059][R059] |
| <code>Enable packages pane</code> | <code>启用程序包窗格</code> | <code>chkEnablePackagesTitle</code> | [GWT R059][R059] |
| <code>Enable publishing documents, apps, and APIs</code> | <code>启用文档、应用和 API 发布</code> | <code>chkEnablePublishingLabel</code> | [GWT R059][R059] |
| <code>Enable publishing to Posit Connect</code> | <code>启用发布到 Posit Connect</code> | <code>chkEnableRSConnectLabel</code> | [GWT R059][R059] |
| <code>Enable shell escape commands</code> | <code>启用 Shell 转义命令</code> | <code>chkEnableShellEscapeLabel</code> | [GWT R059][R059] |
| <code>Hardware acceleration</code> | <code>硬件加速</code> | <code>chkHardwareAccelerationLabel</code> | [GWT R059][R059] |
| <code>Enable Python integration</code> | <code>启用 Python 集成</code> | <code>chkPythonIntegration</code> | [GWT R059][R059] |
| <code>When enabled, the active version of Python will be placed on the PATH for new terminal sessions. Only bash and zsh are supported.</code> | <code>启用后，当前 Python 版本会加入新终端会话的 PATH。仅支持 bash 和 zsh。</code> | <code>chkPythonIntegrationTitle</code> | [GWT R059][R059] |
| <code>Screen reader support (requires restart)</code> | <code>屏幕阅读器支持（需要重启）</code> | <code>chkScreenReaderLabel</code> | [GWT R059][R059] |
| <code>Tab key always moves focus</code> | <code>Tab 键始终移动焦点</code> | <code>chkTabMovesFocusLabel</code> | [GWT R059][R059] |
| <code>Local terminal echo</code> | <code>本地终端回显</code> | <code>chkTerminalLocalEchoLabel</code> | [GWT R059][R059] |
| <code>Local echo is more responsive but may get out of sync with some line-editing modes or custom shells.</code> | <code>本地回显响应更快，但可能与某些行编辑模式或自定义 Shell 不同步。</code> | <code>chkTerminalLocalEchoTitle</code> | [GWT R059][R059] |
| <code>Connect with WebSockets</code> | <code>使用 WebSocket 连接</code> | <code>chkTerminalWebsocketLabel</code> | [GWT R059][R059] |
| <code>WebSockets are generally more responsive; try turning off if terminal won''t connect.</code> | <code>WebSocket 通常响应更快；如果终端无法连接，请尝试关闭此选项。</code> | <code>chkTerminalWebsocketTitle</code> | [GWT R059][R059] |
| <code>Use tinytex when compiling .tex files</code> | <code>编译 .tex 文件时使用 tinytex</code> | <code>chkUseTinytexLabel</code> | [GWT R059][R059] |
| <code>Enable version control interface for RStudio projects</code> | <code>为 RStudio 项目启用版本控制界面</code> | <code>chkVcsEnabledLabel</code> | [GWT R059][R059] |
| <code>Clickable web links</code> | <code>可点击的网页链接</code> | <code>chkWebLinksLabel</code> | [GWT R059][R059] |
| <code>Retrieving list of CRAN mirrors...</code> | <code>正在获取 CRAN 镜像列表…</code> | <code>chooseMirrorDialogMessage</code> | [GWT R059][R059] |
| <code>Citations</code> | <code>引用</code> | <code>citationsHeader</code> | [GWT R059][R059] / Source patch |
| <code>Learn more about using citations with visual editing mode</code> | <code>详细了解在可视化编辑模式中使用引用</code> | <code>citationsHelpLink</code> | [GWT R059][R059] |
| <code>Citation features are available within R Markdown visual mode.</code> | <code>引用功能可在 R Markdown 可视化模式中使用。</code> | <code>citationsLabel</code> | [GWT R059][R059] |
| <code>Clear</code> | <code>清除</code> | <code>clearLabel</code> | [GWT R059][R059] |
| <code>Enable X11 clipboard monitoring</code> | <code>启用 X11 剪贴板监视器</code> | <code>clipboardMonitoringLabel</code> | [GWT R059][R059] |
| <code>Close the pane</code> | <code>关闭窗格</code> | <code>closePaneOption</code> | [GWT R059][R059] |
| <code>Code assistance has been disabled in this project.</code> | <code>此项目已禁用代码助手。</code> | <code>codeAssistantDisabledInProject</code> | [GWT R059][R059] |
| <code>Editing</code> | <code>编辑</code> | <code>codeEditingHeader</code> | [GWT R059][R059] / Source patch |
| <code>Code Formatting</code> | <code>代码格式化</code> | <code>codeFormattingHeaderLabel</code> | [GWT R059][R059] |
| <code>Code</code> | <code>代码</code> | <code>codePaneLabel</code> | [GWT R059][R059] |
| <code>Use the styler R package to reformat code.</code> | <code>使用 styler R 程序包重新格式化代码。</code> | <code>codeStylerDescription</code> | [GWT R059][R059] / Source patch |
| <code>Format with styler</code> | <code>使用 styler 格式化</code> | <code>codeStylerHeader</code> | [GWT R059][R059] / Source patch |
| <code>Manage Column Display</code> | <code>管理列显示</code> | <code>columnToolbarLabel</code> | [GWT R059][R059] |
| <code>Show completions after characters entered:</code> | <code>输入指定字符数后显示补全:</code> | <code>completionCodeCompletionCharactersLabel</code> | [GWT R059][R059] |
| <code>Show completions after keyboard idle (ms):</code> | <code>键盘空闲后显示补全（毫秒）:</code> | <code>completionCodeCompletionDelayLabel</code> | [GWT R059][R059] |
| <code>Show code completions:</code> | <code>显示代码补全:</code> | <code>completionCodeCompletionLabel</code> | [GWT R059][R059] |
| <code>Show code completions:</code> | <code>显示代码补全:</code> | <code>completionCodeCompletionOtherLabel</code> | [GWT R059][R059] |
| <code>Allow automatic completions in console</code> | <code>允许在控制台中自动补全</code> | <code>completionConsoleCodeCompletionLabel</code> | [GWT R059][R059] |
| <code>Insert parentheses after function completions</code> | <code>函数补全后插入括号</code> | <code>completionInsertParensAfterFunctionCompletion</code> | [GWT R059][R059] |
| <code>Insert spaces around equals for argument completions</code> | <code>参数补全时在等号两侧插入空格</code> | <code>completionInsertSpacesAroundEqualsLabel</code> | [GWT R059][R059] |
| <code>Show help tooltip after function completions</code> | <code>函数补全后显示帮助提示</code> | <code>completionShowFunctionSignatureTooltipsLabel</code> | [GWT R059][R059] |
| <code>Show help tooltip on cursor idle</code> | <code>光标空闲时显示帮助提示</code> | <code>completionShowHelpTooltipOnIdleLabel</code> | [GWT R059][R059] |
| <code>Use tab for autocompletions</code> | <code>使用 Tab 进行自动补全</code> | <code>completionTabCompletionLabel</code> | [GWT R059][R059] |
| <code>Use tab for multiline autocompletions</code> | <code>使用 Tab 进行多行自动补全</code> | <code>completionTabMultilineCompletionLabel</code> | [GWT R059][R059] |
| <code>Conda Environment</code> | <code>Conda 环境</code> | <code>condaEnvironment</code> | [GWT R059][R059] |
| <code>Conda Environments</code> | <code>Conda 环境</code> | <code>condaEnvironmentPlural</code> | [GWT R059][R059] |
| <code>Conda Environment</code> | <code>Conda 环境</code> | <code>condaEnvironmentType</code> | [GWT R059][R059] |
| <code>Confirm Remove</code> | <code>确认删除</code> | <code>confirmRemoveCaption</code> | [GWT R059][R059] |
| <code>Are you sure you want to remove the {0} repository?</code> | <code>确定要删除 {0} 仓库吗？</code> | <code>confirmRemoveMessage</code> | [GWT R059][R059] |
| <code>Connect...</code> | <code>连接...</code> | <code>connectButtonLabel</code> | [GWT R059][R059] |
| <code>Connections</code> | <code>连接</code> | <code>connectionsPaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>ANSI escape codes:</code> | <code>ANSI 转义代码:</code> | <code>consoleANSIEscapeCodesLabel</code> | [GWT R059][R059] |
| <code>Show ANSI colors</code> | <code>显示 ANSI 颜色</code> | <code>consoleColorModeANSIOption</code> | [GWT R059][R059] |
| <code>Ignore ANSI codes (1.0 behavior)</code> | <code>忽略 ANSI 代码（1.0 版行为）</code> | <code>consoleColorModeIgnoreANSIOption</code> | [GWT R059][R059] |
| <code>Remove ANSI codes</code> | <code>删除 ANSI 代码</code> | <code>consoleColorModeRemoveANSIOption</code> | [GWT R059][R059] |
| <code>Different color for error or message output (requires restart)</code> | <code>为错误或消息输出使用不同颜色（需要重启）</code> | <code>consoleDifferentColorLabel</code> | [GWT R059][R059] |
| <code>Discard pending console input on error</code> | <code>发生错误时丢弃待处理的控制台输入</code> | <code>consoleDiscardPendingConsoleInputOnErrorLabel</code> | [GWT R059][R059] |
| <code>Display</code> | <code>显示</code> | <code>consoleDisplayLabel</code> | [GWT R059][R059] |
| <code>Execution</code> | <code>执行</code> | <code>consoleExecutionLabel</code> | [GWT R059][R059] |
| <code>Highlight</code> | <code>突出显示</code> | <code>consoleHighlightLabel</code> | [GWT R059][R059] |
| <code>Console</code> | <code>控制台</code> | <code>consoleLabel</code> | [GWT R059][R059] |
| <code>Truncate lines to maximum length (characters):</code> | <code>将行截断到最大长度（字符）:</code> | <code>consoleLimitOutputLengthLabel</code> | [GWT R059][R059] |
| <code>Limit visible console output (requires restart)</code> | <code>限制控制台可见输出（需要重启）</code> | <code>consoleLimitVariableLabel</code> | [GWT R059][R059] |
| <code>Number of lines to show in console history:</code> | <code>控制台历史记录显示行数:</code> | <code>consoleMaxLinesLabel</code> | [GWT R059][R059] |
| <code>Console</code> | <code>控制台</code> | <code>consolePaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>Show syntax highlighting in console input</code> | <code>在控制台输入中显示语法高亮</code> | <code>consoleSyntaxHighlightingLabel</code> | [GWT R059][R059] |
| <code>You are currently signed in as {0}, but you haven''t yet activated GitHub Copilot.</code> | <code>当前已以 {0} 登录，但尚未激活 GitHub Copilot。</code> | <code>copilotAccountNotActivated</code> | [GWT R059][R059] |
| <code>Activate</code> | <code>激活</code> | <code>copilotActivateLabel</code> | [GWT R059][R059] |
| <code>The GitHub Copilot agent has not been enabled.</code> | <code>尚未启用 GitHub Copilot 代理。</code> | <code>copilotAgentNotEnabled</code> | [GWT R059][R059] |
| <code>The GitHub Copilot agent is not currently running.</code> | <code>GitHub Copilot 代理当前未运行。</code> | <code>copilotAgentNotRunning</code> | [GWT R059][R059] |
| <code>Show code suggestions after keyboard idle (ms):</code> | <code>键盘空闲后显示代码建议（毫秒）:</code> | <code>copilotCompletionsDelayLabel</code> | [GWT R059][R059] |
| <code>Copilot Completions</code> | <code>Copilot 代码补全</code> | <code>copilotCompletionsHeader</code> | [GWT R059][R059] |
| <code>Generating diagnostics report...</code> | <code>正在生成诊断报告…</code> | <code>copilotDiagnosticReportProgressLabel</code> | [GWT R059][R059] |
| <code>Diagnostics</code> | <code>诊断</code> | <code>copilotDiagnosticsLabel</code> | [GWT R059][R059] |
| <code>GitHub Copilot integration has been disabled by the administrator.</code> | <code>管理员已禁用 GitHub Copilot 集成。</code> | <code>copilotDisabledByAdmin</code> | [GWT R059][R059] |
| <code>GitHub Copilot has been disabled in this project.</code> | <code>此项目已禁用 GitHub Copilot。</code> | <code>copilotDisabledInProject</code> | [GWT R059][R059] |
| <code>Copilot Indexing</code> | <code>Copilot 索引</code> | <code>copilotIndexingHeader</code> | [GWT R059][R059] |
| <code>(Loading...)</code> | <code>（正在加载…）</code> | <code>copilotLoadingMessage</code> | [GWT R059][R059] |
| <code>You are not currently signed in.</code> | <code>当前未登录。</code> | <code>copilotNotSignedIn</code> | [GWT R059][R059] |
| <code>Project Options...</code> | <code>项目选项…</code> | <code>copilotProjectOptionsLabel</code> | [GWT R059][R059] |
| <code>Refresh</code> | <code>刷新</code> | <code>copilotRefreshLabel</code> | [GWT R059][R059] |
| <code>Show Error...</code> | <code>显示错误…</code> | <code>copilotShowErrorLabel</code> | [GWT R059][R059] |
| <code>You are currently signed in as: {0}</code> | <code>当前登录账户：{0}</code> | <code>copilotSignedInAsLabel</code> | [GWT R059][R059] |
| <code>Sign In</code> | <code>登录</code> | <code>copilotSignInLabel</code> | [GWT R059][R059] |
| <code>Sign Out</code> | <code>退出登录</code> | <code>copilotSignOutLabel</code> | [GWT R059][R059] |
| <code>An error occurred while starting the Copilot agent.</code> | <code>启动 Copilot 代理时发生错误。</code> | <code>copilotStartupError</code> | [GWT R059][R059] |
| <code>GitHub Copilot: Status</code> | <code>GitHub Copilot：状态</code> | <code>copilotStatusDialogCaption</code> | [GWT R059][R059] |
| <code>Copilot Suggestions</code> | <code>Copilot 建议</code> | <code>copilotSuggestionsHeader</code> | [GWT R059][R059] |
| <code>Use {0}+; to request and accept edit suggestions, {0}+Shift+; to dismiss.</code> | <code>使用 {0}+; 请求并接受编辑建议，使用 {0}+Shift+; 忽略建议。</code> | <code>copilotSuggestionsShortcutHint</code> | [GWT R059][R059] |
| <code>By using GitHub Copilot, you agree to abide by their terms of service.</code> | <code>使用 GitHub Copilot 即表示您同意遵守其服务条款。</code> | <code>copilotTermsOfServiceLabel</code> | [GWT R059][R059] |
| <code>GitHub Copilot: Terms of Service</code> | <code>GitHub Copilot：服务条款</code> | <code>copilotTermsOfServiceLinkLabel</code> | [GWT R059][R059] |
| <code>An unexpected error occurred while checking the status of the GitHub Copilot agent.</code> | <code>检查 GitHub Copilot 代理状态时发生意外错误。</code> | <code>copilotUnexpectedError</code> | [GWT R059][R059] |
| <code>RStudio received a Copilot response that it does not understand.\n{0}</code> | <code>RStudio 收到了无法识别的 Copilot 响应。\n{0}</code> | <code>copilotUnknownResponse</code> | [GWT R059][R059] |
| <code>C/C++ Development</code> | <code>C/C++ 开发</code> | <code>cppDevelopmentTitle</code> | [GWT R059][R059] |
| <code>Change...</code> | <code>更改…</code> | <code>cranMirrorChangeLabel</code> | [GWT R059][R059] |
| <code>Primary CRAN repository:</code> | <code>主要 CRAN 仓库:</code> | <code>cranMirrorTextBoxTitle</code> | [GWT R059][R059] |
| <code>Additional source column</code> | <code>额外来源栏</code> | <code>createColumnLabel</code> | [GWT R059][R059] |
| <code>Columns and Panes Layout</code> | <code>列和窗格布局</code> | <code>createGridLabel</code> | [GWT R059][R059] |
| <code>Current directory</code> | <code>当前目录</code> | <code>currentDirectoryOption</code> | [GWT R059][R059] |
| <code>Custom:</code> | <code>自定义 :</code> | <code>customLabel</code> | [GWT R059][R059] |
| <code>(Not Found)</code> | <code>(未发现)</code> | <code>customShellChooserEmptyLabel</code> | [GWT R059][R059] |
| <code>Custom shell command-line options:</code> | <code>自定义 shell 命令行选项 :</code> | <code>customShellOptionsLabel</code> | [GWT R059][R059] |
| <code>Custom shell binary:</code> | <code>自定义 shell 二进制 :</code> | <code>customShellPathLabel</code> | [GWT R059][R059] |
| <code>Automatically expand tracebacks in error inspector</code> | <code>在错误检查器中自动展开回溯</code> | <code>debuggingExpandTracebacksLabel</code> | [GWT R059][R059] |
| <code>Debugging</code> | <code>调试</code> | <code>debuggingHeaderLabel</code> | [GWT R059][R059] |
| <code>(Default)</code> | <code>(默认)</code> | <code>defaultInParentheses</code> | [GWT R059][R059] |
| <code>Home Page</code> | <code>主页</code> | <code>desktopCaption</code> | [GWT R059][R059] |
| <code>Developing Packages</code> | <code>开发程序包</code> | <code>developingPkgHelpLink</code> | [GWT R059][R059] |
| <code>Cleanup output after successful R CMD check</code> | <code>R CMD check 成功后清理输出</code> | <code>developmentCleanupLabel</code> | [GWT R059][R059] |
| <code>Use template for new C++ files:</code> | <code>新建 C++ 文件使用模板:</code> | <code>developmentCppTemplate</code> | [GWT R059][R059] |
| <code>empty</code> | <code>空</code> | <code>developmentEmptyLabel</code> | [GWT R059][R059] |
| <code>Hide object files in package src directory</code> | <code>隐藏程序包 src 目录中的目标文件</code> | <code>developmentHideLabel</code> | [GWT R059][R059] |
| <code>Development</code> | <code>开发</code> | <code>developmentManagementPanelTitle</code> | [GWT R059][R059] |
| <code>Automatically navigate editor to build errors</code> | <code>自动在编辑器中定位构建错误</code> | <code>developmentNavigateLabel</code> | [GWT R059][R059] |
| <code>Save all files prior to building packages</code> | <code>构建程序包前保存所有文件</code> | <code>developmentSaveLabel</code> | [GWT R059][R059] |
| <code>Package Development</code> | <code>程序包开发</code> | <code>developmentTitle</code> | [GWT R059][R059] |
| <code>Always use LF line-endings in Unix Makefiles</code> | <code>Unix Makefile 始终使用 LF 行尾</code> | <code>developmentUseLFLabel</code> | [GWT R059][R059] |
| <code>View Rcheck directory after failed R CMD check</code> | <code>R CMD check 失败后查看 Rcheck 目录</code> | <code>developmentViewLabel</code> | [GWT R059][R059] |
| <code>Prompt to install missing R packages discovered in R source files</code> | <code>提示安装 R 源文件中发现的缺失程序包</code> | <code>diagnosticsAutoDiscoverPackageDependenciesLabel</code> | [GWT R059][R059] |
| <code>Keyboard idle time (ms):</code> | <code>键盘空闲时间（毫秒）:</code> | <code>diagnosticsBackgroundDiagnosticsDelayMsLabel</code> | [GWT R059][R059] |
| <code>Show diagnostics after keyboard is idle for a period of time</code> | <code>键盘空闲一段时间后显示诊断</code> | <code>diagnosticsBackgroundDiagnosticsLabel</code> | [GWT R059][R059] |
| <code>Check arguments to R function calls</code> | <code>检查 R 函数调用参数</code> | <code>diagnosticsCheckArgumentsToRFunctionCallsLabel</code> | [GWT R059][R059] |
| <code>Check usage of ''&lt;-'' in function call</code> | <code>检查函数调用中“&lt;-”的使用</code> | <code>diagnosticsCheckUnexpectedAssignmentInFunctionCallLabel</code> | [GWT R059][R059] |
| <code>Enable diagnostics within R function calls</code> | <code>在 R 函数调用中启用诊断</code> | <code>diagnosticsInRFunctionCallsLabel</code> | [GWT R059][R059] |
| <code>Show diagnostics whenever source files are saved</code> | <code>每次保存源文件时显示诊断</code> | <code>diagnosticsOnSaveLabel</code> | [GWT R059][R059] |
| <code>Show diagnostics for C/C++</code> | <code>显示 C/C++ 诊断</code> | <code>diagnosticsShowDiagnosticsCppLabel</code> | [GWT R059][R059] |
| <code>Show diagnostics for JavaScript, HTML, and CSS</code> | <code>显示 JavaScript、HTML 和 CSS 诊断</code> | <code>diagnosticsShowDiagnosticsOtherLabel</code> | [GWT R059][R059] |
| <code>Show diagnostics for R</code> | <code>显示 R 诊断</code> | <code>diagnosticsShowDiagnosticsRLabel</code> | [GWT R059][R059] |
| <code>Show diagnostics for YAML</code> | <code>显示 YAML 诊断</code> | <code>diagnosticsShowDiagnosticsYamlLabel</code> | [GWT R059][R059] |
| <code>Provide R style diagnostics (e.g. whitespace)</code> | <code>提供 R 代码风格诊断（例如空白）</code> | <code>diagnosticsStyleDiagnosticsLabel</code> | [GWT R059][R059] |
| <code>Warn if variable used has no definition in scope</code> | <code>使用的变量在作用域内没有定义时警告</code> | <code>diagnosticsWarnIfNoSuchVariableInScopeLabel</code> | [GWT R059][R059] |
| <code>Warn if variable is defined but not used</code> | <code>变量已定义但未使用时警告</code> | <code>diagnosticsWarnVariableDefinedButNotUsedLabel</code> | [GWT R059][R059] |
| <code>Choose Directory</code> | <code>选择目录</code> | <code>directoryLabel</code> | [GWT R059][R059] |
| <code>disable</code> | <code>禁用</code> | <code>disable</code> | [GWT R059][R059] |
| <code>Disconnect</code> | <code>断开连接</code> | <code>disconnectButtonLabel</code> | [GWT R059][R059] |
| <code>Error Disconnecting Account</code> | <code>断开账户出错</code> | <code>disconnectingErrorMessage</code> | [GWT R059][R059] |
| <code>Blinking cursor</code> | <code>闪烁光标</code> | <code>displayBlinkingCursorLabel</code> | [GWT R059][R059] |
| <code>Allow drag and drop of text</code> | <code>允许拖放文本</code> | <code>displayEnableTextDragLabel</code> | [GWT R059][R059] |
| <code>Fold style:</code> | <code>折叠样式:</code> | <code>displayFoldStyleLabel</code> | [GWT R059][R059] |
| <code>Display</code> | <code>显示</code> | <code>displayHeaderLabel</code> | [GWT R059][R059] |
| <code>Fold sections hierarchically based on heading level</code> | <code>按标题级别分层折叠章节</code> | <code>displayHierarchicalSectionFoldingLabel</code> | [GWT R059][R059] |
| <code>Highlight selected line</code> | <code>突出显示当前行</code> | <code>displayHighlightSelectedLineLabel</code> | [GWT R059][R059] |
| <code>Highlight selected word</code> | <code>突出显示所选单词</code> | <code>displayHighlightSelectedWordLabel</code> | [GWT R059][R059] |
| <code>Other</code> | <code>其他</code> | <code>displayLabel</code> | [GWT R059][R059] |
| <code>Relative line numbers</code> | <code>相对行号</code> | <code>displayRelativeLineNumbersLabel</code> | [GWT R059][R059] |
| <code>Allow scroll past end of document</code> | <code>允许滚动超过文档末尾</code> | <code>displayScrollPastEndOfDocumentLabel</code> | [GWT R059][R059] |
| <code>Show indent guides</code> | <code>显示缩进参考线</code> | <code>displayShowIndentGuidesLabel</code> | [GWT R059][R059] |
| <code>Show whitespace characters</code> | <code>显示空白字符</code> | <code>displayShowInvisiblesLabel</code> | [GWT R059][R059] |
| <code>Show line numbers</code> | <code>显示行号</code> | <code>displayShowLineNumbersLabel</code> | [GWT R059][R059] |
| <code>Show margin</code> | <code>显示边距</code> | <code>displayShowMarginLabel</code> | [GWT R059][R059] |
| <code>Show in document outline: </code> | <code>文档大纲中显示:</code> | <code>docOutlineDisplayLabel</code> | [GWT R059][R059] |
| <code>Sections and All Chunks</code> | <code>章节和所有代码块</code> | <code>docOutlineSectionsAllChunksOption</code> | [GWT R059][R059] |
| <code>Sections and Named Chunks</code> | <code>章节和命名代码块</code> | <code>docOutlineSectionsNamedChunksOption</code> | [GWT R059][R059] |
| <code>Sections Only</code> | <code>仅章节</code> | <code>docOutlineSectionsOption</code> | [GWT R059][R059] |
| <code>Document Outline</code> | <code>文档大纲</code> | <code>documentOutlineHeaderLabel</code> | [GWT R059][R059] |
| <code>Don''t close the pane</code> | <code>不关闭窗格</code> | <code>doNotClosePaneOption</code> | [GWT R059][R059] |
| <code>Edit</code> | <code>编辑</code> | <code>editDialog</code> | [GWT R059][R059] |
| <code>When enabled, the indentation for documents not part of an RStudio project will be automatically detected.</code> | <code>启用后，将自动检测不属于 RStudio 项目的文档缩进。</code> | <code>editingAutoDetectIndentationDesc</code> | [GWT R059][R059] |
| <code>Auto-detect code indentation</code> | <code>自动检测代码缩进</code> | <code>editingAutoDetectIndentationLabel</code> | [GWT R059][R059] |
| <code>Cancel</code> | <code>取消</code> | <code>editingCancelShortcuts</code> | [GWT R059][R059] |
| <code>R and C/C++</code> | <code>R 和 C/C++</code> | <code>editingCompletionPanel</code> | [GWT R059][R059] |
| <code>When enabled, pressing Enter will continue comments on new lines. Press Shift + Enter to exit a comment.</code> | <code>启用后，按 Enter 会在新行继续注释；按 Shift+Enter 可退出注释。</code> | <code>editingContinueCommentsOnNewlineDesc</code> | [GWT R059][R059] |
| <code>Continue comment when inserting new line</code> | <code>插入新行时延续注释</code> | <code>editingContinueCommentsOnNewlineLabel</code> | [GWT R059][R059] |
| <code>R Diagnostics</code> | <code>R 诊断</code> | <code>editingDiagnosticsPanel</code> | [GWT R059][R059] |
| <code>Other Languages</code> | <code>其他语言</code> | <code>editingDiagOtherLabel</code> | [GWT R059][R059] |
| <code>Show Diagnostics</code> | <code>显示诊断</code> | <code>editingDiagShowLabel</code> | [GWT R059][R059] |
| <code>General</code> | <code>常规</code> | <code>editingDisplayPanel</code> | [GWT R059][R059] |
| <code>Modify Keyboard Shortcuts...</code> | <code>修改键盘快捷键...</code> | <code>editingEditShortcuts</code> | [GWT R059][R059] |
| <code>Ctrl+Enter executes:</code> | <code>Ctrl+Enter 执行:</code> | <code>editingExecutionBehaviorLabel</code> | [GWT R059][R059] |
| <code>Execution</code> | <code>执行</code> | <code>editingExecutionLabel</code> | [GWT R059][R059] |
| <code>Filter...</code> | <code>筛选…</code> | <code>editingFilterWidget</code> | [GWT R059][R059] |
| <code>Focus console after executing from source</code> | <code>从源代码执行后聚焦控制台</code> | <code>editingFocusConsoleAfterExecLabel</code> | [GWT R059][R059] |
| <code>Are you sure you want to reset keyboard shortcuts to their default values? </code> | <code>确定要将键盘快捷键重置为默认值吗？</code> | <code>editingGlobalCaption</code> | [GWT R059][R059] |
| <code>Reset Keyboard Shortcuts</code> | <code>重置键盘快捷键</code> | <code>editingGlobalDisplay</code> | [GWT R059][R059] |
| <code>This action cannot be undone.</code> | <code>此操作无法撤销。</code> | <code>editingGlobalMessage</code> | [GWT R059][R059] |
| <code>General</code> | <code>常规</code> | <code>editingHeader</code> | [GWT R059][R059] |
| <code>Completion Delay</code> | <code>补全延迟</code> | <code>editingHeaderLabel</code> | [GWT R059][R059] |
| <code>When enabled, hyperlinks in comments will be underlined and clickable.</code> | <code>启用后，注释中的超链接会带下划线并可点击。</code> | <code>editingHighlightWebLinkDesc</code> | [GWT R059][R059] |
| <code>Enable hyperlink highlighting in editor</code> | <code>在编辑器中突出显示超链接</code> | <code>editingHighlightWebLinkLabel</code> | [GWT R059][R059] |
| <code>Insert matching parens/quotes</code> | <code>自动插入匹配的括号和引号</code> | <code>editingInsertMatchingLabel</code> | [GWT R059][R059] |
| <code>Keybindings:</code> | <code>键位绑定:</code> | <code>editingKeybindingsLabel</code> | [GWT R059][R059] |
| <code>No bindings available</code> | <code>没有可用的快捷键绑定</code> | <code>editingKeyboardShortcuts</code> | [GWT R059][R059] |
| <code>Keyboard Shortcuts</code> | <code>键盘快捷键</code> | <code>editingKeyboardText</code> | [GWT R059][R059] |
| <code>Other Languages</code> | <code>其他语言</code> | <code>editingOtherLabel</code> | [GWT R059][R059] |
| <code>Keyword and text-based completions are supported for several other languages including JavaScript, HTML, CSS, Python, and SQL.</code> | <code>其他多种语言也支持关键字和文本补全，包括 JavaScript、HTML、CSS、Python 和 SQL。</code> | <code>editingOtherTip</code> | [GWT R059][R059] |
| <code>Resetting Keyboard Shortcuts...</code> | <code>正在重置键盘快捷键…</code> | <code>editingProgressMessage</code> | [GWT R059][R059] |
| <code>Some settings may be overridden by project options.</code> | <code>某些设置可能会被项目选项覆盖。</code> | <code>editingProjectOverrideInfoText</code> | [GWT R059][R059] |
| <code>Customized</code> | <code>自定义</code> | <code>editingRadioCustomized</code> | [GWT R059][R059] |
| <code>Auto-indent code after paste</code> | <code>粘贴后自动缩进代码</code> | <code>editingReindentOnPasteLabel</code> | [GWT R059][R059] |
| <code>Reset...</code> | <code>重置…</code> | <code>editingResetText</code> | [GWT R059][R059] |
| <code>General</code> | <code>常规</code> | <code>editingSavePanel</code> | [GWT R059][R059] |
| <code>Change...</code> | <code>更改…</code> | <code>editingSavePanelAction</code> | [GWT R059][R059] |
| <code>Autosave</code> | <code>自动保存</code> | <code>editingSavePanelAutosave</code> | [GWT R059][R059] |
| <code>Serialization</code> | <code>序列化</code> | <code>editingSerializationLabel</code> | [GWT R059][R059] |
| <code>Help on code snippets</code> | <code>代码片段帮助</code> | <code>editingSnippetHelpTitle</code> | [GWT R059][R059] |
| <code>Snippets</code> | <code>代码片段</code> | <code>editingSnippetsLabel</code> | [GWT R059][R059] |
| <code>Surround selection on text insertion:</code> | <code>插入文本时包围所选内容:</code> | <code>editingSurroundSelectionLabel</code> | [GWT R059][R059] |
| <code>Editing</code> | <code>编辑</code> | <code>editingTabPanel</code> | [GWT R059][R059] |
| <code>Completion</code> | <code>补全</code> | <code>editingTabPanelCompletionPanel</code> | [GWT R059][R059] |
| <code>Diagnostics</code> | <code>诊断</code> | <code>editingTabPanelDiagnosticsPanel</code> | [GWT R059][R059] |
| <code>Display</code> | <code>显示</code> | <code>editingTabPanelDisplayPanel</code> | [GWT R059][R059] |
| <code>Formatting</code> | <code>格式化</code> | <code>editingTabPanelFormattingPanel</code> | [GWT R059][R059] |
| <code>Saving</code> | <code>保存</code> | <code>editingTabPanelSavePanel</code> | [GWT R059][R059] |
| <code>Tab width:</code> | <code>Tab 宽度:</code> | <code>editingTabWidthLabel</code> | [GWT R059][R059] |
| <code>Use native pipe operator, &#124;&gt; (requires R 4.1+)</code> | <code>使用原生管道运算符 &#124;&gt;（需要 R 4.1+）</code> | <code>editingUseNativePipeOperatorLabel</code> | [GWT R059][R059] |
| <code>Vertically align arguments in auto-indent</code> | <code>自动缩进时垂直对齐参数</code> | <code>editingVerticallyAlignArgumentsIndentLabel</code> | [GWT R059][R059] |
| <code>column</code> | <code>栏</code> | <code>editingWrapColumn</code> | [GWT R059][R059] |
| <code>none</code> | <code>无</code> | <code>editingWrapNone</code> | [GWT R059][R059] |
| <code>sentence</code> | <code>句子</code> | <code>editingWrapSentence</code> | [GWT R059][R059] |
| <code>Editor font:</code> | <code>编辑器字体:</code> | <code>editorFontLabel</code> | [GWT R059][R059] |
| <code>Editor scroll speed sensitivity:</code> | <code>编辑器滚动速度灵敏度:</code> | <code>editorScrollMultiplier</code> | [GWT R059][R059] |
| <code>Adjust the editor scroll speed sensitivity. Higher is faster.</code> | <code>调整编辑器滚动速度灵敏度，数值越高速度越快。</code> | <code>editorScrollMultiplierDesc</code> | [GWT R059][R059] |
| <code>Editor Theme Preview</code> | <code>编辑器主题预览</code> | <code>editorThemePreview</code> | [GWT R059][R059] |
| <code>Edit Project Options...</code> | <code>编辑项目选项…</code> | <code>editProjectPreferencesButtonLabel</code> | [GWT R059][R059] |
| <code>Edit Snippets...</code> | <code>编辑代码片段…</code> | <code>editSnippetsButtonLabel</code> | [GWT R059][R059] |
| <code>Edit User Dictionary</code> | <code>编辑用户词典</code> | <code>editUserDictCaption</code> | [GWT R059][R059] |
| <code>Edit User Dictionary...</code> | <code>编辑用户词典...</code> | <code>editUserDictLabel</code> | [GWT R059][R059] |
| <code>Save</code> | <code>保存</code> | <code>editUserDictSaveCaption</code> | [GWT R059][R059] |
| <code>enable</code> | <code>启用</code> | <code>enable</code> | [GWT R059][R059] |
| <code>Enable Quarto preview</code> | <code>启用 Quarto 预览</code> | <code>enableQuartoPreviewCheckboxLabel</code> | [GWT R059][R059] |
| <code>English</code> | <code>英语</code> | <code>englishLabel</code> | [GWT R059][R059] |
| <code>Environment</code> | <code>环境</code> | <code>environmentPaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>Error</code> | <code>错误</code> | <code>error</code> | [GWT R059][R059] |
| <code>Error Changing Setting</code> | <code>更改设置出错</code> | <code>errorChangingSettingCaption</code> | [GWT R059][R059] |
| <code>Experimental Features</code> | <code>实验性功能</code> | <code>experimentalLabel</code> | [GWT R059][R059] |
| <code>Use an external application to reformat code.</code> | <code>使用外部应用程序重新格式化代码。</code> | <code>externalFormatterDescription</code> | [GWT R059][R059] / Source patch |
| <code>Format with an External Tool</code> | <code>使用外部工具格式化</code> | <code>externalFormatterHeader</code> | [GWT R059][R059] / Source patch |
| <code>Files</code> | <code>文件</code> | <code>filesPaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>Editor font (loading...):</code> | <code>编辑器字体（正在加载…）:</code> | <code>fontFaceEditorFontLabel</code> | [GWT R059][R059] |
| <code>French (Français)</code> | <code>法语（Français）</code> | <code>frenchLabel</code> | [GWT R059][R059] / Source patch |
| <code>Show full path to project in window title</code> | <code>在窗口标题中显示项目完整路径</code> | <code>fullProjectPathInWindowTitleLabel</code> | [GWT R059][R059] |
| <code>General</code> | <code>常规</code> | <code>general</code> | [GWT R059][R059] |
| <code>General</code> | <code>常规</code> | <code>generalHeaderLabel</code> | [GWT R059][R059] |
| <code>Assistive Tools</code> | <code>辅助工具</code> | <code>generalHeaderPanel</code> | [GWT R059][R059] |
| <code>Highlight focused panel</code> | <code>突出显示获得焦点的窗格</code> | <code>generalPanelLabel</code> | [GWT R059][R059] |
| <code>General</code> | <code>常规</code> | <code>generalPanelText</code> | [GWT R059][R059] |
| <code>Advanced</code> | <code>高级</code> | <code>generalTabListAdvancedOption</code> | [GWT R059][R059] |
| <code>Basic</code> | <code>基本</code> | <code>generalTabListBasicOption</code> | [GWT R059][R059] |
| <code>Graphics</code> | <code>图形</code> | <code>generalTabListGraphicsOption</code> | [GWT R059][R059] |
| <code>General</code> | <code>常规</code> | <code>generalTabListLabel</code> | [GWT R059][R059] |
| <code>Geometric Precision</code> | <code>几何精度</code> | <code>geometricPrecision</code> | [GWT R059][R059] |
| <code>Connecting a publishing account</code> | <code>正在连接发布账户</code> | <code>getAccountCountLabel</code> | [GWT R059][R059] |
| <code>Git executable:</code> | <code>Git 可执行文件:</code> | <code>gitExePathLabel</code> | [GWT R059][R059] |
| <code>The program ''{0}'' is unlikely to be a valid git executable.\nPlease select a git executable called ''git.exe''.</code> | <code>程序“{0}”似乎不是有效的 Git 可执行文件。\n请选择名为“git.exe”的 Git 可执行文件。</code> | <code>gitExePathMessage</code> | [GWT R059][R059] |
| <code>(Not Found)</code> | <code>(未发现)</code> | <code>gitExePathNotFoundLabel</code> | [GWT R059][R059] |
| <code>Invalid Git Executable</code> | <code>无效 Git 可执行文件</code> | <code>gitGlobalDisplay</code> | [GWT R059][R059] |
| <code>Sign git commits</code> | <code>为 Git 提交签名</code> | <code>gitSignCommitLabel</code> | [GWT R059][R059] |
| <code>Disable</code> | <code>禁用</code> | <code>globalDisplayDisable</code> | [GWT R059][R059] |
| <code>Enable</code> | <code>启用</code> | <code>globalDisplayEnable</code> | [GWT R059][R059] |
| <code>Theme File Already Exists</code> | <code>主题文件已经存在</code> | <code>globalDisplayThemeExistsCaption</code> | [GWT R059][R059] |
| <code>Version Control {0} Version Control </code> | <code>版本控制 {0} 版本控制 </code> | <code>globalDisplayVC</code> | [GWT R059][R059] |
| <code>You must restart RStudio for this change to take effect.</code> | <code>必须重启 RStudio 才能使此更改生效。</code> | <code>globalDisplayVCMessage</code> | [GWT R059][R059] |
| <code>Antialiasing:</code> | <code>抗锯齿:</code> | <code>graphicsAntialiasingLabel</code> | [GWT R059][R059] |
| <code>(Default)</code> | <code>(默认)</code> | <code>graphicsBackEndDefaultOption</code> | [GWT R059][R059] |
| <code>Backend:</code> | <code>后端:</code> | <code>graphicsBackendLabel</code> | [GWT R059][R059] |
| <code>Using the AGG renderer</code> | <code>使用 AGG 渲染器</code> | <code>graphicsBackendUserAction</code> | [GWT R059][R059] |
| <code>Graphics Device</code> | <code>图形设备</code> | <code>graphicsDeviceCaption</code> | [GWT R059][R059] |
| <code>Whether the user has an SSH key</code> | <code>用户是否有 SSH 密钥</code> | <code>haveRSAKeyDescription</code> | [GWT R059][R059] |
| <code>Has SSH Key</code> | <code>有 SSH 密钥</code> | <code>haveRSAKeyTitle</code> | [GWT R059][R059] |
| <code>Choose Primary Repository</code> | <code>选择主仓库</code> | <code>headerLabel</code> | [GWT R059][R059] |
| <code>PDF Generation</code> | <code>PDF 生成</code> | <code>headerPDFGenerationLabel</code> | [GWT R059][R059] |
| <code>Help font size:</code> | <code>帮助字体大小:</code> | <code>helpFontSizeLabel</code> | [GWT R059][R059] |
| <code>Learn more about Quarto</code> | <code>详细了解 Quarto</code> | <code>helpLinkCaption</code> | [GWT R059][R059] |
| <code>RStudio accessibility help</code> | <code>RStudio 辅助功能帮助</code> | <code>helpLinkLabel</code> | [GWT R059][R059] |
| <code>Troubleshooting Deployments</code> | <code>排查部署问题</code> | <code>helpLinkTroubleshooting</code> | [GWT R059][R059] |
| <code>Help</code> | <code>帮助</code> | <code>helpPaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>Using Python in RStudio</code> | <code>在 RStudio 中使用 Python</code> | <code>helpRnwButtonLabel</code> | [GWT R059][R059] |
| <code>Using the RStudio terminal</code> | <code>使用 RStudio 终端</code> | <code>helpRStudioAccessibilityLinkLabel</code> | [GWT R059][R059] |
| <code>Using R Notebooks</code> | <code>使用 R 笔记本</code> | <code>helpRStudioLinkLabel</code> | [GWT R059][R059] |
| <code>History</code> | <code>历史</code> | <code>historyCaption</code> | [GWT R059][R059] |
| <code>History</code> | <code>历史</code> | <code>historyPaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>Home directory</code> | <code>主目录</code> | <code>homeDirectoryOption</code> | [GWT R059][R059] |
| <code>Ignore</code> | <code>忽略</code> | <code>ignoreHeader</code> | [GWT R059][R059] |
| <code>Ignore project-specific appearance settings</code> | <code>忽略项目专用的外观设置</code> | <code>ignoreProjectAppearanceLabel</code> | [GWT R059][R059] |
| <code>Ignore words with numbers</code> | <code>忽略含数字的单词</code> | <code>ignoreWordsNumbersLabel</code> | [GWT R059][R059] |
| <code>Ignore words in UPPERCASE</code> | <code>忽略全大写单词</code> | <code>ignoreWordsUppercaseLabel</code> | [GWT R059][R059] |
| <code>Initial directory:</code> | <code>初始目录:</code> | <code>initialDirectoryLabel</code> | [GWT R059][R059] |
| <code>Insert numbered sections and subsections</code> | <code>插入带编号的章节和子章节</code> | <code>insertNumberedLatexSectionsLabel</code> | [GWT R059][R059] |
| <code>Install Missing Packages</code> | <code>安装缺少的程序包</code> | <code>installPkgsMessage</code> | [GWT R059][R059] |
| <code>The selected Python interpreter appears to be invalid.</code> | <code>所选 Python 解释器似乎无效。</code> | <code>invalidReasonLabel</code> | [GWT R059][R059] |
| <code>Current</code> | <code>当前目录</code> | <code>knitWorkingDirCurrentOption</code> | [GWT R059][R059] |
| <code>Document</code> | <code>文档</code> | <code>knitWorkingDirDocumentOption</code> | [GWT R059][R059] |
| <code>Evaluate chunks in directory: </code> | <code>在以下目录中运行代码块:</code> | <code>knitWorkingDirLabel</code> | [GWT R059][R059] |
| <code>Project</code> | <code>项目</code> | <code>knitWorkingDirProjectOption</code> | [GWT R059][R059] |
| <code>User dictionary: </code> | <code>用户词典:</code> | <code>kUserDictionaryLabel</code> | [GWT R059][R059] |
| <code>{0}{1} words</code> | <code>{0}{1} 单词</code> | <code>kUserDictionaryWordsLabel</code> | [GWT R059][R059] |
| <code>Inline</code> | <code>行内</code> | <code>latexPreviewWidgetInlineOption</code> | [GWT R059][R059] |
| <code>Show equation and image previews: </code> | <code>公式和图像预览显示方式:</code> | <code>latexPreviewWidgetLabel</code> | [GWT R059][R059] |
| <code>Never</code> | <code>从不</code> | <code>latexPreviewWidgetNeverOption</code> | [GWT R059][R059] |
| <code>In a popup</code> | <code>弹出窗口</code> | <code>latexPreviewWidgetPopupOption</code> | [GWT R059][R059] |
| <code>Line ending conversion:</code> | <code>行尾转换:</code> | <code>lineEndingConversion</code> | [GWT R059][R059] |
| <code>spaced</code> | <code>间距</code> | <code>listSpacingSpaced</code> | [GWT R059][R059] |
| <code>tight</code> | <code>紧</code> | <code>listSpacingTight</code> | [GWT R059][R059] |
| <code>Local</code> | <code>本地</code> | <code>local</code> | [GWT R059][R059] |
| <code>Management</code> | <code>管理</code> | <code>managementPanelTitle</code> | [GWT R059][R059] |
| <code>Managing Packages</code> | <code>管理程序包</code> | <code>managePackagesTitle</code> | [GWT R059][R059] |
| <code>Learn more about markdown writer options</code> | <code>详细了解 Markdown 写入选项</code> | <code>markdownPerFileOptionsHelpLink</code> | [GWT R059][R059] |
| <code>Maximum number of console output lines to read:</code> | <code>读取控制台输出的最大行数:</code> | <code>maxOutputLabel</code> | [GWT R059][R059] |
| <code>Middle column splitter</code> | <code>中间列分隔条</code> | <code>middleColumnSplitterLabel</code> | [GWT R059][R059] / Source patch |
| <code>CRAN Mirrors:</code> | <code>CRAN 镜像 :</code> | <code>mirrorsLabel</code> | [GWT R059][R059] |
| <code>Miscellaneous</code> | <code>其他</code> | <code>miscLabel</code> | [GWT R059][R059] |
| <code>The active Python interpreter has been changed by an R startup script.</code> | <code>活跃 Python 解释器已被 R 启动脚本更改。</code> | <code>mismatchWarningBarText</code> | [GWT R059][R059] |
| <code>Account records appear to exist, but cannot be viewed because a </code> | <code>账户记录似乎存在，但因缺少程序包而无法查看：</code> | <code>missingPkgPanelMessage</code> | [GWT R059][R059] |
| <code>Modern</code> | <code>现代</code> | <code>modernThemeLabel</code> | [GWT R059][R059] |
| <code>My Library</code> | <code>我的库</code> | <code>myLibrary</code> | [GWT R059][R059] |
| <code>Name:</code> | <code>名称 :</code> | <code>nameLabel</code> | [GWT R059][R059] |
| <code>None</code> | <code>无</code> | <code>none</code> | [GWT R059][R059] |
| <code>(None available)</code> | <code>(无)</code> | <code>noneAvailableParentheses</code> | [GWT R059][R059] |
| <code>(None)</code> | <code>(无)</code> | <code>noneParentheses</code> | [GWT R059][R059] |
| <code>(None)</code> | <code>(无)</code> | <code>nonePlaceholder</code> | [GWT R059][R059] / Source patch |
| <code>Hide console automatically when executing notebook chunks</code> | <code>执行笔记本代码块时自动隐藏控制台</code> | <code>notebookHideConsoleLabel</code> | [GWT R059][R059] |
| <code>Number of seconds to delay warning</code> | <code>延迟警告的秒数</code> | <code>numSecondsToDelayWarningLabel</code> | [GWT R059][R059] |
| <code>Confirm Clear Preferences</code> | <code>确认清除首选项</code> | <code>onClearUserPrefsCaption</code> | [GWT R059][R059] |
| <code>Are you sure you want to clear your preferences? All RStudio settings will be restored to their defaults, and your R session will be restarted.</code> | <code>确定要清除首选项吗？所有 RStudio 设置将恢复为默认值，并重新启动 R 会话。</code> | <code>onClearUserPrefsMessage</code> | [GWT R059][R059] |
| <code>Preferences Cleared</code> | <code>首选项已清除</code> | <code>onClearUserPrefsResponseCaption</code> | [GWT R059][R059] |
| <code>Your preferences have been cleared, and your R session will now be restarted. A backup copy of your preferences can be found at: \n\n{0}</code> | <code>您的首选项已清除，R 会话将重新启动。首选项备份位于：\n\n{0}</code> | <code>onClearUserPrefsResponseMessage</code> | [GWT R059][R059] |
| <code>Restart R</code> | <code>重启 R</code> | <code>onClearUserPrefsRestartR</code> | [GWT R059][R059] |
| <code>Clear Preferences</code> | <code>清除首选项</code> | <code>onClearUserPrefsYesLabel</code> | [GWT R059][R059] |
| <code>Cancel</code> | <code>取消</code> | <code>onConfirmDisconnectNoLabel</code> | [GWT R059][R059] |
| <code>Disconnect Account</code> | <code>断开账户</code> | <code>onConfirmDisconnectYesLabel</code> | [GWT R059][R059] |
| <code>Error finding Python interpreters:</code> | <code>查找 Python 解释器时出错:</code> | <code>onDependencyErrorMessage</code> | [GWT R059][R059] |
| <code>The given URL does not appear to be a valid CRAN repository.</code> | <code>给定的 URL 似乎不是有效的 CRAN 仓库。</code> | <code>onResponseReceived</code> | [GWT R059][R059] |
| <code>Options</code> | <code>选项</code> | <code>options</code> | [GWT R059][R059] |
| <code>Other</code> | <code>其他</code> | <code>otherCaption</code> | [GWT R059][R059] |
| <code>Double-click to select words</code> | <code>双击选择单词</code> | <code>otherDoubleClickLabel</code> | [GWT R059][R059] |
| <code>Other</code> | <code>其他</code> | <code>otherHeaderCaption</code> | [GWT R059][R059] |
| <code>Other</code> | <code>其他</code> | <code>otherLabel</code> | [GWT R059][R059] |
| <code>Automatically notify me of updates to RStudio</code> | <code>自动通知我 RStudio 更新</code> | <code>otherNotifyMeLabel</code> | [GWT R059][R059] |
| <code>Send automated crash reports to Posit</code> | <code>自动向 Posit 发送崩溃报告</code> | <code>otherSendReportsLabel</code> | [GWT R059][R059] |
| <code>Show .Last.value in environment listing</code> | <code>在环境列表中显示 .Last.value</code> | <code>otherShowLastDotValueLabel</code> | [GWT R059][R059] |
| <code>Wrap around when navigating to previous/next tab</code> | <code>切换上一个或下一个标签页时循环</code> | <code>otherWrapAroundLabel</code> | [GWT R059][R059] |
| <code>(NOTE: This project has already been configured with its own Python interpreter. Use the Edit Project Options button to change the version of Python used in this project.)</code> | <code>（注意：此项目已配置专用的 Python 解释器。请使用“编辑项目选项”按钮更改此项目使用的 Python 版本。）</code> | <code>overrideText</code> | [GWT R059][R059] |
| <code>Package Management</code> | <code>程序包管理</code> | <code>packageManagementTitle</code> | [GWT R059][R059] |
| <code>CRAN repositories modified outside package preferences.</code> | <code>CRAN 仓库已在程序包首选项之外被修改。</code> | <code>packagesInfoBarText</code> | [GWT R059][R059] |
| <code>Packages</code> | <code>程序包</code> | <code>packagesPaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>Repositories are being managed by a renv.lock file</code> | <code>仓库由 renv.lock 文件管理</code> | <code>packagesRenvInfoBarText</code> | [GWT R059][R059] |
| <code>Pane Layout</code> | <code>窗格布局</code> | <code>paneLayoutLabel</code> | [GWT R059][R059] |
| <code>Choose the layout of the panels in RStudio by selecting from the controls in each panel. Add up to three additional Source Columns to the left side of the layout. When a column is removed, all saved files within the column are closed and any unsaved files are moved to the main Source Pane.</code> | <code>通过各窗格中的控件选择 RStudio 窗格布局。最多可在布局左侧添加三个源代码列。移除列时，其中已保存的文件会关闭，未保存的文件会移到主源代码窗格。</code> | <code>paneLayoutText</code> | [GWT R059][R059] |
| <code>(No Preview)</code> | <code>(无预览)</code> | <code>pdfNoPreviewOption</code> | [GWT R059][R059] |
| <code>Help on previewing PDF files</code> | <code>PDF 文件预览帮助</code> | <code>pdfPreviewHelpButtonTitle</code> | [GWT R059][R059] |
| <code>RStudio Viewer</code> | <code>RStudio 查看器</code> | <code>pdfPreviewRStudioViewerOption</code> | [GWT R059][R059] |
| <code>Preview PDF after compile using:</code> | <code>编译后使用以下方式预览 PDF:</code> | <code>pdfPreviewSelectWidgetLabel</code> | [GWT R059][R059] |
| <code>(Recommended)</code> | <code>(建议)</code> | <code>pdfPreviewSumatraOption</code> | [GWT R059][R059] |
| <code>System Viewer</code> | <code>系统查看器</code> | <code>pdfPreviewSystemViewerOption</code> | [GWT R059][R059] |
| <code>Connection</code> | <code>连接</code> | <code>perfLabel</code> | [GWT R059][R059] |
| <code>LaTeX Editing and Compilation</code> | <code>LaTeX 编辑和编译</code> | <code>perProjectHeaderLabel</code> | [GWT R059][R059] |
| <code>NOTE: The Rnw weave and LaTeX compilation options are also set on a per-project (and optionally per-file) basis. Click the help icons above for more details.</code> | <code>注意：Rnw 编织和 LaTeX 编译选项也可按项目（并可按文件）设置。单击上方帮助图标了解详情。</code> | <code>perProjectNoteLabel</code> | [GWT R059][R059] |
| <code>Platform Native</code> | <code>平台原生格式</code> | <code>platformNative</code> | [GWT R059][R059] |
| <code>Plots</code> | <code>图形</code> | <code>plotsPaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>Cancel</code> | <code>取消</code> | <code>positAssistantCancelButton</code> | [GWT R059][R059] |
| <code>Checking for Updates</code> | <code>正在检查更新</code> | <code>positAssistantCheckInProgressCaption</code> | [GWT R059][R059] |
| <code>RStudio is still checking whether Posit Assistant needs to be installed or updated. Please wait for the check to finish, then try again.</code> | <code>RStudio 仍在检查是否需要安装或更新 Posit Assistant。请等待检查完成后重试。</code> | <code>positAssistantCheckInProgressMessage</code> | [GWT R059][R059] / Source patch |
| <code>Posit Assistant version {0} is currently recommended, which is older than your installed version. Would you like to install it?</code> | <code>目前建议使用 Posit Assistant {0}，该版本比当前安装版本更旧。是否安装建议版本？</code> | <code>positAssistantDowngradeMessage</code> | [GWT R059][R059] |
| <code>Older Posit Assistant Version Recommended</code> | <code>建议使用较旧版本的 Posit Assistant</code> | <code>positAssistantDowngradeTitle</code> | [GWT R059][R059] |
| <code>There is no compatible version of Posit Assistant available for this version of RStudio.</code> | <code>没有与此 RStudio 版本兼容的 Posit Assistant 版本。</code> | <code>positAssistantIncompatibleMessage</code> | [GWT R059][R059] |
| <code>Incompatible Version</code> | <code>不兼容的版本</code> | <code>positAssistantIncompatibleTitle</code> | [GWT R059][R059] |
| <code>Posit Assistant is managed by your administrator and is not currently installed.</code> | <code>Posit Assistant 由管理员管理，目前尚未安装。</code> | <code>positAssistantInstallationManagedMessage</code> | [GWT R059][R059] |
| <code>Posit Assistant updates are controlled by your administrator.</code> | <code>Posit Assistant 的更新由管理员控制。</code> | <code>positAssistantInstallationManagedNotice</code> | [GWT R059][R059] |
| <code>Not Installed</code> | <code>尚未安装</code> | <code>positAssistantInstallationManagedTitle</code> | [GWT R059][R059] |
| <code>Posit Assistant is managed by your administrator. Installs, updates, and uninstalls are not available.</code> | <code>Posit Assistant 由管理员管理，无法自行安装、更新或卸载。</code> | <code>positAssistantInstallationManagedUnavailableMessage</code> | [GWT R059][R059] |
| <code>Managed by Administrator</code> | <code>由管理员管理</code> | <code>positAssistantInstallationManagedUnavailableTitle</code> | [GWT R059][R059] |
| <code>Install</code> | <code>安装</code> | <code>positAssistantInstallButton</code> | [GWT R059][R059] |
| <code>Posit Assistant has been installed successfully.</code> | <code>Posit Assistant 已成功安装。</code> | <code>positAssistantInstallCompleteMessage</code> | [GWT R059][R059] |
| <code>Installation Complete</code> | <code>安装完成</code> | <code>positAssistantInstallCompleteTitle</code> | [GWT R059][R059] |
| <code>Failed to install Posit Assistant: {0}</code> | <code>无法安装 Posit Assistant：{0}</code> | <code>positAssistantInstallFailedMessage</code> | [GWT R059][R059] |
| <code>Installation Failed</code> | <code>安装失败</code> | <code>positAssistantInstallFailedTitle</code> | [GWT R059][R059] |
| <code>Installing Posit Assistant...</code> | <code>正在安装 Posit Assistant…</code> | <code>positAssistantInstallingMessage</code> | [GWT R059][R059] |
| <code>Posit Assistant version {0} is available for installation. Would you like to install it now?</code> | <code>可以安装 Posit Assistant {0}。是否立即安装？</code> | <code>positAssistantInstallMessage</code> | [GWT R059][R059] |
| <code>Posit Assistant is not installed. Would you like to install it now?</code> | <code>尚未安装 Posit Assistant。是否立即安装？</code> | <code>positAssistantInstallMessageNoVersion</code> | [GWT R059][R059] |
| <code>Install Posit Assistant</code> | <code>安装 Posit Assistant</code> | <code>positAssistantInstallTitle</code> | [GWT R059][R059] |
| <code>Install Version {0}</code> | <code>安装版本 {0}</code> | <code>positAssistantInstallVersionButton</code> | [GWT R059][R059] |
| <code>Unable to verify Posit Assistant compatibility. Please check your network connection and try again.</code> | <code>无法验证 Posit Assistant 的兼容性。请检查网络连接后重试。</code> | <code>positAssistantManifestUnavailableMessage</code> | [GWT R059][R059] |
| <code>Connection Error</code> | <code>连接错误</code> | <code>positAssistantManifestUnavailableTitle</code> | [GWT R059][R059] |
| <code>This version of RStudio is no longer supported by Posit Assistant. Please update RStudio to the latest version.</code> | <code>Posit Assistant 不再支持此版本的 RStudio。请将 RStudio 更新到最新版本。</code> | <code>positAssistantUnsupportedProtocolMessage</code> | [GWT R059][R059] |
| <code>Unsupported Version</code> | <code>不支持的版本</code> | <code>positAssistantUnsupportedProtocolTitle</code> | [GWT R059][R059] |
| <code>Your installed version of Posit Assistant is no longer supported and no update is available. Please update RStudio to the latest version.</code> | <code>不再支持已安装的 Posit Assistant，且目前没有可用更新。请将 RStudio 更新到最新版本。</code> | <code>positAssistantUnsupportedVersionMessage</code> | [GWT R059][R059] |
| <code>Unsupported Version</code> | <code>不支持的版本</code> | <code>positAssistantUnsupportedVersionTitle</code> | [GWT R059][R059] |
| <code>Update</code> | <code>更新</code> | <code>positAssistantUpdateButton</code> | [GWT R059][R059] |
| <code>A new version of Posit Assistant ({0}) is available. Would you like to update now?</code> | <code>Posit Assistant 有新版本（{0}）可用。是否立即更新？</code> | <code>positAssistantUpdateMessage</code> | [GWT R059][R059] |
| <code>Update Posit Assistant</code> | <code>更新 Posit Assistant</code> | <code>positAssistantUpdateTitle</code> | [GWT R059][R059] |
| <code>Presentations</code> | <code>演示</code> | <code>presentationsPaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>PDF Preview</code> | <code>PDF 预览</code> | <code>previewingOptionsHeaderLabel</code> | [GWT R059][R059] |
| <code>The given URL does not appear to be a valid CRAN repository.</code> | <code>给定的 URL 似乎不是有效的 CRAN 仓库。</code> | <code>progressIndicatorError</code> | [GWT R059][R059] |
| <code>Validating CRAN repository...</code> | <code>正在验证 CRAN 仓库…</code> | <code>progressIndicatorMessage</code> | [GWT R059][R059] |
| <code>Finding interpreters...</code> | <code>正在查找解释器…</code> | <code>progressIndicatorText</code> | [GWT R059][R059] |
| <code>Using global setting: {0}</code> | <code>使用全局设置：{0}</code> | <code>projectAssistantDefaultInfo</code> | [GWT R059][R059] |
| <code>Using global setting: {0}</code> | <code>使用全局设置：{0}</code> | <code>projectChatProviderDefaultInfo</code> | [GWT R059][R059] |
| <code>Project directory</code> | <code>项目目录</code> | <code>projectDirectoryOption</code> | [GWT R059][R059] |
| <code>Check SSL certificates when publishing</code> | <code>发布时检查 SSL 证书</code> | <code>publishCheckCertificatesLabel</code> | [GWT R059][R059] |
| <code>Publishing</code> | <code>发布</code> | <code>publishingPaneHeader</code> | [GWT R059][R059] |
| <code>Python Interpreter</code> | <code>Python 解释器</code> | <code>pythonInterpreter</code> | [GWT R059][R059] |
| <code>Python Interpreters</code> | <code>Python 解释器</code> | <code>pythonInterpreterPlural</code> | [GWT R059][R059] |
| <code>(No interpreter selected)</code> | <code>（未选择解释器）</code> | <code>pythonPreferencesText</code> | [GWT R059][R059] |
| <code>Quarto is the next generation of R Markdown. This version of RStudio includes a preview of Quarto which you can enable below.</code> | <code>Quarto 是下一代 R Markdown。此版本的 RStudio 包含 Quarto 预览功能，可在下方启用。</code> | <code>quartoPreviewLabel</code> | [GWT R059][R059] |
| <code>Change R Version</code> | <code>更改 R 版本</code> | <code>rChangeVersionMessage</code> | [GWT R059][R059] |
| <code>Default working directory (when not in a project):</code> | <code>默认工作目录（未打开项目时）:</code> | <code>rDefaultDirectoryTitle</code> | [GWT R059][R059] |
| <code>Use real time spell-checking</code> | <code>使用实时拼写检查</code> | <code>realTimeSpellcheckingCheckboxLabel</code> | [GWT R059][R059] |
| <code>Reconnect...</code> | <code>重新连接...</code> | <code>reconnectButtonLabel</code> | [GWT R059][R059] |
| <code>Reduce user interface animations</code> | <code>减少用户界面动画</code> | <code>reducedMotionLabel</code> | [GWT R059][R059] |
| <code>block</code> | <code>块</code> | <code>refLocationBlock</code> | [GWT R059][R059] |
| <code>document</code> | <code>文档</code> | <code>refLocationDocument</code> | [GWT R059][R059] |
| <code>section</code> | <code>章节</code> | <code>refLocationSection</code> | [GWT R059][R059] |
| <code>Reformat command:</code> | <code>重新格式化命令:</code> | <code>reformatCommandLabel</code> | [GWT R059][R059] / Source patch |
| <code>Confirm Remove Account</code> | <code>确认删除账户</code> | <code>removeAccountGlobalDisplay</code> | [GWT R059][R059] |
| <code>Are you sure you want to disconnect the ''{0}'' account on ''{1}''? This won''t delete the account on the server.</code> | <code>确定要断开“{1}”上的“{0}”账户吗？这不会删除服务器上的账户。</code> | <code>removeAccountMessage</code> | [GWT R059][R059] |
| <code>Remove column</code> | <code>移除列</code> | <code>removeButtonLabel</code> | [GWT R059][R059] |
| <code>Remove Column</code> | <code>移除列</code> | <code>removeButtonText</code> | [GWT R059][R059] |
| <code>Remove duplicate entries in history</code> | <code>删除历史记录中的重复条目</code> | <code>removeDuplicatesLabel</code> | [GWT R059][R059] |
| <code>Remove</code> | <code>移除</code> | <code>removeThemeButtonLabel</code> | [GWT R059][R059] |
| <code>Auto-detect (recommended)</code> | <code>自动检测（推荐）</code> | <code>renderingEngineAutoDetectOption</code> | [GWT R059][R059] |
| <code>Desktop OpenGL</code> | <code>桌面 OpenGL</code> | <code>renderingEngineDesktopOption</code> | [GWT R059][R059] |
| <code>OpenGL for Embedded Systems</code> | <code>嵌入式系统的 OpenGL</code> | <code>renderingEngineLinuxDesktopOption</code> | [GWT R059][R059] |
| <code>Software</code> | <code>软件</code> | <code>renderingEngineSoftwareOption</code> | [GWT R059][R059] |
| <code>Available repositories:</code> | <code>可用仓库:</code> | <code>reposLabel</code> | [GWT R059][R059] |
| <code>Restore Default Layout</code> | <code>恢复默认布局</code> | <code>resetPaneLayoutToDefaults</code> | [GWT R059][R059] |
| <code>Restore Default Pane and Tab Layout</code> | <code>恢复默认窗格和标签布局</code> | <code>restoreDefaultPaneAndTabLayoutCaption</code> | [GWT R059][R059] |
| <code>Are you sure you want to restore the default pane and tab layout? This will reset all pane and tab layouts to their default values. This action cannot be undone.</code> | <code>确定要恢复默认的窗格和标签页布局吗？所有窗格和标签页布局都将重置为默认值，且无法撤销。</code> | <code>restoreDefaultPaneAndTabLayoutMessage</code> | [GWT R059][R059] |
| <code>Re-use idle sessions for project links</code> | <code>为项目链接重复使用空闲会话</code> | <code>reUseIdleSessionLabel</code> | [GWT R059][R059] |
| <code>Show document outline by default</code> | <code>默认显示文档大纲</code> | <code>rMarkdownShowLabel</code> | [GWT R059][R059] |
| <code>Soft-wrap R Markdown files</code> | <code>R Markdown 文件自动换行</code> | <code>rMarkdownSoftWrapLabel</code> | [GWT R059][R059] |
| <code>Show output inline for all R Markdown documents</code> | <code>为所有 R Markdown 文档显示行内输出</code> | <code>rmdInlineOutputLabel</code> | [GWT R059][R059] |
| <code>Show output preview in: </code> | <code>输出预览显示在:</code> | <code>rmdViewerModeLabel</code> | [GWT R059][R059] |
| <code>(None)</code> | <code>(无)</code> | <code>rmdViewerModeNoneOption</code> | [GWT R059][R059] |
| <code>Viewer Pane</code> | <code>查看器窗格</code> | <code>rmdViewerModeViewerPaneOption</code> | [GWT R059][R059] |
| <code>Window</code> | <code>窗口</code> | <code>rmdViewerModeWindowOption</code> | [GWT R059][R059] |
| <code>R Notebooks</code> | <code>R 笔记本</code> | <code>rNotebooksCaption</code> | [GWT R059][R059] |
| <code>You need to quit and re-open RStudio in order for this change to take effect.</code> | <code>需要退出并重新打开 RStudio 才能使此更改生效。</code> | <code>rQuitReOpenMessage</code> | [GWT R059][R059] |
| <code>Restore last used R version for projects</code> | <code>恢复项目上次使用的 R 版本</code> | <code>rRestoreLabel</code> | [GWT R059][R059] |
| <code>Restore previously open source documents at startup</code> | <code>启动时恢复之前打开的源代码文档</code> | <code>rRestorePreviousOpenTitle</code> | [GWT R059][R059] |
| <code>Restore most recently opened project at startup</code> | <code>启动时恢复最近打开的项目</code> | <code>rRestorePreviousTitle</code> | [GWT R059][R059] |
| <code>Run Rprofile when resuming suspended session</code> | <code>恢复暂停会话时运行 Rprofile</code> | <code>rRunProfileTitle</code> | [GWT R059][R059] |
| <code>Filename of SSH public key</code> | <code>SSH 公钥的文件名</code> | <code>rsaKeyFileDescription</code> | [GWT R059][R059] |
| <code>SSH Public Key Filename</code> | <code>SSH 公钥文件名</code> | <code>rsaKeyFileTitle</code> | [GWT R059][R059] |
| <code>R Sessions</code> | <code>R 会话</code> | <code>rSessionsTitle</code> | [GWT R059][R059] |
| <code>Change...</code> | <code>更改…</code> | <code>rVersionChangeTitle</code> | [GWT R059][R059] |
| <code>Loading...</code> | <code>正在加载…</code> | <code>rVersionLoadingText</code> | [GWT R059][R059] |
| <code>R version:</code> | <code>R 版本</code> | <code>rVersionTitle</code> | [GWT R059][R059] |
| <code>Save</code> | <code>保存</code> | <code>saveDialog</code> | [GWT R059][R059] |
| <code>Always</code> | <code>始终</code> | <code>saveWorkAlways</code> | [GWT R059][R059] |
| <code>Ask</code> | <code>询问</code> | <code>saveWorkAsk</code> | [GWT R059][R059] |
| <code>Never</code> | <code>从不</code> | <code>saveWorkNever</code> | [GWT R059][R059] |
| <code>Save workspace to .RData on exit:</code> | <code>退出时将工作区保存到 .RData:</code> | <code>saveWorkSpaceLabel</code> | [GWT R059][R059] |
| <code>Ensure that source files end with newline</code> | <code>确保源文件以换行符结尾</code> | <code>savingAutoAppendNewLineLabel</code> | [GWT R059][R059] |
| <code>Idle period:</code> | <code>空闲时间:</code> | <code>savingAutoSaveIdleMsLabel</code> | [GWT R059][R059] |
| <code>Automatically save when editor loses focus</code> | <code>编辑器失去焦点时自动保存</code> | <code>savingAutoSaveOnBlurLabel</code> | [GWT R059][R059] |
| <code>When editor is idle:</code> | <code>编辑器空闲时:</code> | <code>savingAutoSaveOnIdleLabel</code> | [GWT R059][R059] |
| <code>Default text encoding:</code> | <code>默认文本编码:</code> | <code>savingDefaultEncodingLabel</code> | [GWT R059][R059] |
| <code>Restore last cursor position when opening file</code> | <code>打开文件时恢复上次光标位置</code> | <code>savingRestoreSourceDocumentCursorPositionLabel</code> | [GWT R059][R059] |
| <code>Always save R scripts before sourcing</code> | <code>运行脚本前始终保存 R 脚本</code> | <code>savingSaveBeforeSourcingLabel</code> | [GWT R059][R059] |
| <code>Strip trailing horizontal whitespace when saving</code> | <code>保存时删除行尾水平空白</code> | <code>savingStripTrailingWhitespaceLabel</code> | [GWT R059][R059] |
| <code>{0} (disabled)</code> | <code>{0}（已禁用）</code> | <code>screenReaderStateDisabled</code> | [GWT R059][R059] |
| <code>{0} (enabled)</code> | <code>{0} (已启用)</code> | <code>screenReaderStateEnabled</code> | [GWT R059][R059] |
| <code>Add Secondary Repository</code> | <code>添加二级仓库</code> | <code>secondaryRepoLabel</code> | [GWT R059][R059] |
| <code>Retrieving list of secondary repositories...</code> | <code>正在获取次要仓库列表…</code> | <code>secondaryReposDialog</code> | [GWT R059][R059] |
| <code>Secondary repositories:</code> | <code>次要仓库:</code> | <code>secondaryReposTitle</code> | [GWT R059][R059] |
| <code>Select</code> | <code>选择</code> | <code>select</code> | [GWT R059][R059] |
| <code>Selected Libraries</code> | <code>所选库</code> | <code>selectedLibraries</code> | [GWT R059][R059] |
| <code>You must select at least one Zotero library</code> | <code>您必须至少选择一个 Zotero 库</code> | <code>selectOneZoteroLibrary</code> | [GWT R059][R059] |
| <code>Multiple active sessions</code> | <code>存在多个活动会话时</code> | <code>serverHomePageActiveSessionsOption</code> | [GWT R059][R059] |
| <code>Always</code> | <code>始终</code> | <code>serverHomePageAlwaysOption</code> | [GWT R059][R059] |
| <code>Show server home page:</code> | <code>显示服务器主页 :</code> | <code>serverHomePageLabel</code> | [GWT R059][R059] |
| <code>Never</code> | <code>从不</code> | <code>serverHomePageNeverOption</code> | [GWT R059][R059] |
| <code>The active theme "{0}" could not be found. It''s possible it was removed outside the context of RStudio. Switching to the {1} default theme: ''</code> | <code>找不到当前主题“{0}”。它可能已在 RStudio 之外被删除。正在切换到默认的{1}主题：''</code> | <code>setThemeWarningMessage</code> | [GWT R059][R059] |
| <code>Settings</code> | <code>设置</code> | <code>settingsHeaderLabel</code> | [GWT R059][R059] |
| <code>Invalid Shell Executable</code> | <code>无效的 Shell 可执行文件</code> | <code>shellExeCaption</code> | [GWT R059][R059] |
| <code>The program ''{0}'' is unlikely to be a valid shell executable.</code> | <code>程序 ''{0}'' 不太可能是有效的 shell 可执行文件。</code> | <code>shellExePathMessage</code> | [GWT R059][R059] |
| <code>Close pane if shell exits cleanly</code> | <code>Shell 正常退出时关闭窗格</code> | <code>shellExitsPaneOption</code> | [GWT R059][R059] |
| <code>The theme "{0}" cannot be removed because it is currently in use. To delete this theme, please change the active theme and retry.</code> | <code>主题“{0}”当前正在使用，无法删除。要删除此主题，请先更改活动主题，然后重试。</code> | <code>showCantRemoveActiveThemeDialog</code> | [GWT R059][R059] |
| <code>Failed to Remove Theme</code> | <code>删除主题失败</code> | <code>showCantRemoveErrorMessage</code> | [GWT R059][R059] |
| <code>Cannot Remove Active Theme</code> | <code>无法删除活动主题</code> | <code>showCantRemoveThemeCaption</code> | [GWT R059][R059] |
| <code>Unable to remove the theme ''{0}'': {1}</code> | <code>无法删除主题 ''{0}'': {1}</code> | <code>showCantRemoveThemeDialogMessage</code> | [GWT R059][R059] |
| <code>Error Disconnecting Account</code> | <code>断开账户出错</code> | <code>showDisconnectErrorCaption</code> | [GWT R059][R059] |
| <code>Please select an account to disconnect.</code> | <code>请选择要断开的账户。</code> | <code>showDisconnectErrorMessage</code> | [GWT R059][R059] |
| <code>Duplicate Theme In Same Location</code> | <code>同一位置存在重名主题</code> | <code>showDuplicateThemeDuplicateGlobalMessage</code> | [GWT R059][R059] |
| <code>There is an existing theme with the same name as the new theme in the current location. Would you like remove the existing theme, "{0}", and add the new theme?</code> | <code>当前位置已有与新主题同名的主题。是否删除现有主题“{0}”并添加新主题？</code> | <code>showDuplicateThemeErrorMessage</code> | [GWT R059][R059] |
| <code>Duplicate Theme In Another Location</code> | <code>其他位置存在重名主题</code> | <code>showDuplicateThemeGlobalMessage</code> | [GWT R059][R059] |
| <code>There is an existing theme with the same name as the new theme, "{0}" in another location. The existing theme will be hidden but not removed. Removing the new theme later will un-hide the existing theme. Would you like to continue?</code> | <code>其他位置已有同名主题“{0}”。现有主题将被隐藏但不会删除；以后删除新主题时，现有主题会重新显示。是否继续？</code> | <code>showDuplicateThemeWarningMessage</code> | [GWT R059][R059] |
| <code>Error</code> | <code>错误</code> | <code>showErrorCaption</code> | [GWT R059][R059] |
| <code>Please select a CRAN Mirror.</code> | <code>请选择一个 CRAN 镜像。</code> | <code>showErrorMessage</code> | [GWT R059][R059] |
| <code>The repository </code> | <code>仓库 </code> | <code>showErrorRepoMessage</code> | [GWT R059][R059] |
| <code>Show line numbers in code blocks</code> | <code>在代码块中显示行号</code> | <code>showLinkNumbersLabel</code> | [GWT R059][R059] |
| <code>Show diagnostic information when publishing</code> | <code>发布时显示诊断信息</code> | <code>showPublishDiagnosticsLabel</code> | [GWT R059][R059] |
| <code>Remove Theme</code> | <code>删除主题</code> | <code>showRemoveThemeGlobalMessage</code> | [GWT R059][R059] |
| <code>Taking this action will delete the theme "{0}" and cannot be undone. Are you sure you wish to continue?</code> | <code>此操作将删除主题“{0}”，且无法撤销。确定要继续吗？</code> | <code>showRemoveThemeWarningMessage</code> | [GWT R059][R059] |
| <code>A theme file with the same name, ''{0}'', already exists. Adding the theme will cause the existing file to be overwritten. Would you like to add the theme anyway?</code> | <code>名为“{0}”的主题文件已经存在。添加主题将覆盖现有文件。仍要添加该主题吗？</code> | <code>showThemeExistsDialogLabel</code> | [GWT R059][R059] |
| <code>Process Termination</code> | <code>进程终止</code> | <code>shutdownLabel</code> | [GWT R059][R059] |
| <code>Sidebar column splitter</code> | <code>侧边栏列分隔条</code> | <code>sidebarColumnSplitterLabel</code> | [GWT R059][R059] / Source patch |
| <code>Sidebar on Left</code> | <code>侧边栏在左侧</code> | <code>sidebarLocationLeft</code> | [GWT R059][R059] |
| <code>Sidebar on Right</code> | <code>侧边栏在右侧</code> | <code>sidebarLocationRight</code> | [GWT R059][R059] |
| <code>Sidebar Visible</code> | <code>显示侧边栏</code> | <code>sidebarVisible</code> | [GWT R059][R059] |
| <code>Simplified Chinese (简体中文)</code> | <code>简体中文</code> | <code>simplifiedChineseLabel</code> | [GWT R059][R059] / Source patch |
| <code>Sky</code> | <code>天空</code> | <code>skyThemeLabel</code> | [GWT R059][R059] |
| <code>Source column {0} splitter</code> | <code>源代码列 {0} 分隔条</code> | <code>sourceColumnSplitterLabel</code> | [GWT R059][R059] / Source patch |
| <code>Source</code> | <code>源代码</code> | <code>sourcePaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>Spelling</code> | <code>拼写检查</code> | <code>spellingPaneLabel</code> | [GWT R059][R059] |
| <code>Dictionaries</code> | <code>词典</code> | <code>spellingPreferencesPaneHeader</code> | [GWT R059][R059] |
| <code>The context for the user''s spelling preferences</code> | <code>用户拼写首选项的上下文</code> | <code>spellingPrefsDescription</code> | [GWT R059][R059] |
| <code>Spelling Prefs</code> | <code>拼写首选项</code> | <code>spellingPrefsTitle</code> | [GWT R059][R059] |
| <code>SSL Certificates</code> | <code>SSL 证书</code> | <code>sSLCertificatesHeaderLabel</code> | [GWT R059][R059] |
| <code>SVN executable:</code> | <code>SVN 可执行文件:</code> | <code>svnExePathLabel</code> | [GWT R059][R059] |
| <code>Syntax</code> | <code>语法</code> | <code>syntaxHeaderLabel</code> | [GWT R059][R059] |
| <code>System</code> | <code>系统</code> | <code>system</code> | [GWT R059][R059] |
| <code>System Interpreter</code> | <code>系统解释器</code> | <code>systemInterpreterType</code> | [GWT R059][R059] |
| <code>Closing</code> | <code>关闭</code> | <code>tabClosingPanelLabel</code> | [GWT R059][R059] |
| <code>General</code> | <code>常规</code> | <code>tabGeneralPanelLabel</code> | [GWT R059][R059] |
| <code>Accessibility</code> | <code>辅助功能</code> | <code>tabHeaderPanel</code> | [GWT R059][R059] |
| <code>The tab key moves focus setting could not be updated.</code> | <code>无法更新“Tab 键移动焦点”设置。</code> | <code>tabKeyErrorMessage</code> | [GWT R059][R059] |
| <code>Tab key always moves focus off</code> | <code>Tab 键始终移动焦点：关</code> | <code>tabKeyFocusOffMessage</code> | [GWT R059][R059] |
| <code>Tab key always moves focus on</code> | <code>Tab 键始终移动焦点：开</code> | <code>tabKeyFocusOnMessage</code> | [GWT R059][R059] |
| <code>Packages</code> | <code>程序包</code> | <code>tabPackagesPanelTitle</code> | [GWT R059][R059] |
| <code>Advanced</code> | <code>高级</code> | <code>tabPanelAdvanced</code> | [GWT R059][R059] |
| <code>Basic</code> | <code>基本</code> | <code>tabPanelBasic</code> | [GWT R059][R059] |
| <code>General</code> | <code>常规</code> | <code>tabPanelCaption</code> | [GWT R059][R059] |
| <code>Citations</code> | <code>引用</code> | <code>tabPanelCitations</code> | [GWT R059][R059] |
| <code>Visual</code> | <code>可视化</code> | <code>tabPanelVisual</code> | [GWT R059][R059] |
| <code>Tab set</code> | <code>标签组</code> | <code>tabSetPaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>Select...</code> | <code>选择...</code> | <code>tbPythonActionText</code> | [GWT R059][R059] |
| <code>Python interpreter:</code> | <code>Python 解释器:</code> | <code>tbPythonInterpreterText</code> | [GWT R059][R059] |
| <code>Terminal</code> | <code>终端</code> | <code>terminalPaneLabel</code> | [GWT R059][R059] |
| <code>Terminal executable:</code> | <code>终端可执行文件 :</code> | <code>terminalPathLabel</code> | [GWT R059][R059] |
| <code>New terminals open with:</code> | <code>新终端打开方式:</code> | <code>terminalShellLabel</code> | [GWT R059][R059] |
| <code>Text rendering:</code> | <code>文本渲染:</code> | <code>textRenderingLabel</code> | [GWT R059][R059] |
| <code>dark</code> | <code>深色</code> | <code>themeWarningMessageDarkLabel</code> | [GWT R059][R059] |
| <code>light</code> | <code>浅色</code> | <code>themeWarningMessageLightLabel</code> | [GWT R059][R059] |
| <code>Confirm Toggle Screen Reader Support</code> | <code>确认切换屏幕阅读器支持</code> | <code>toggleScreenReaderConfirmCaption</code> | [GWT R059][R059] |
| <code>The screen reader support setting could not be changed.</code> | <code>屏幕阅读器支持设置无法更改。</code> | <code>toggleScreenReaderErrorMessage</code> | [GWT R059][R059] |
| <code>Are you sure you want to {0} screen reader support? The application will reload to apply the change.</code> | <code>确定要{0}屏幕阅读器支持吗？应用程序将重新加载以应用更改。</code> | <code>toggleScreenReaderMessageConfirmDialog</code> | [GWT R059][R059] |
| <code>Top left panel</code> | <code>左上窗格</code> | <code>topLeftPanelLabel</code> | [GWT R059][R059] / Source patch |
| <code>Top right panel</code> | <code>右上窗格</code> | <code>topRightPanelLabel</code> | [GWT R059][R059] / Source patch |
| <code>Tutorial</code> | <code>教程</code> | <code>tutorialPaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>Milliseconds after typing before speaking results:</code> | <code>输入后等待朗读结果的毫秒数:</code> | <code>typingStatusDelayLabel</code> | [GWT R059][R059] |
| <code>[Unknown]</code> | <code>[未知]</code> | <code>unknownType</code> | [GWT R059][R059] |
| <code>(Use Default)</code> | <code>(使用默认)</code> | <code>useDefaultParentheses</code> | [GWT R059][R059] |
| <code>Use devtools package functions if available</code> | <code>可用时使用 devtools 程序包函数</code> | <code>useDevtoolsLabel</code> | [GWT R059][R059] |
| <code>Use formatter:</code> | <code>使用格式化工具:</code> | <code>useFormatterLabel</code> | [GWT R059][R059] |
| <code>Use Internet Explorer library/proxy for HTTP</code> | <code>为 HTTP 使用 Internet Explorer 库/代理</code> | <code>useInternetTitle</code> | [GWT R059][R059] |
| <code>Use libraries:</code> | <code>使用以下库:</code> | <code>useLibraries</code> | [GWT R059][R059] |
| <code>Use custom CA bundle</code> | <code>使用自定义 CA 证书包</code> | <code>usePublishCaBundleLabel</code> | [GWT R059][R059] |
| <code>Use secure download method for HTTP</code> | <code>为 HTTP 使用安全下载方式</code> | <code>useSecurePackageDownloadTitle</code> | [GWT R059][R059] |
| <code>Help on secure package downloads for R</code> | <code>R 程序包安全下载帮助</code> | <code>useSecurePackageTitle</code> | [GWT R059][R059] |
| <code>Using Zotero</code> | <code>使用 Zotero</code> | <code>usingZotero</code> | [GWT R059][R059] |
| <code>Validating CRAN repository...</code> | <code>验证 CRAN 仓库...</code> | <code>validateAsyncProgress</code> | [GWT R059][R059] |
| <code>Please select or input a CRAN repository</code> | <code>请选择或输入一个 CRAN 仓库</code> | <code>validateSyncLabel</code> | [GWT R059][R059] |
| <code>Version Control</code> | <code>版本控制</code> | <code>vcsPaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>Verifying Key...</code> | <code>正在校验密钥...</code> | <code>verifyingKey</code> | [GWT R059][R059] |
| <code>Verify Key...</code> | <code>校验密钥...</code> | <code>verifyKey</code> | [GWT R059][R059] |
| <code>Viewer</code> | <code>查看器</code> | <code>viewerPaneDisplayLabel</code> | [GWT R059][R059] / Source patch |
| <code>Virtual Environment</code> | <code>虚拟环境</code> | <code>virtualEnvironment</code> | [GWT R059][R059] |
| <code>Virtual Environments</code> | <code>虚拟环境</code> | <code>virtualEnvironmentPlural</code> | [GWT R059][R059] |
| <code>Virtual Environment</code> | <code>虚拟环境</code> | <code>virtualEnvironmentType</code> | [GWT R059][R059] |
| <code>Write canonical visual mode markdown in source mode:</code> | <code>在源代码模式中写入规范的可视化模式 Markdown:</code> | <code>visualModeCanonicalLabel</code> | [GWT R059][R059] |
| <code>Visual Mode Preferences</code> | <code>可视化模式首选项</code> | <code>visualModeCanonicalMessageCaption</code> | [GWT R059][R059] |
| <code>Are you sure you want to write canonical markdown from source mode for all R Markdown files?\n\nThis preference should generally only be used at a project level (to prevent re-writing of markdown source that you or others don''t intend to use with visual mode).\n\nChange this preference now?</code> | <code>确定要在源代码模式下为所有 R Markdown 文件写入规范 Markdown 吗？\n\n通常应仅在项目级别使用此首选项，以免重写您或他人无意在可视化模式中使用的 Markdown 源代码。\n\n是否立即更改此首选项？</code> | <code>visualModeCanonicalPreferenceMessage</code> | [GWT R059][R059] |
| <code>Editor content width (px):</code> | <code>编辑器内容宽度（像素）:</code> | <code>visualModeContentWidthLabel</code> | [GWT R059][R059] |
| <code>Editor font size:</code> | <code>编辑器字体大小:</code> | <code>visualModeFontSizeLabel</code> | [GWT R059][R059] |
| <code>General</code> | <code>常规</code> | <code>visualModeGeneralCaption</code> | [GWT R059][R059] |
| <code>Display</code> | <code>显示</code> | <code>visualModeHeaderLabel</code> | [GWT R059][R059] |
| <code>Learn more about visual editing mode</code> | <code>详细了解可视化编辑模式</code> | <code>visualModeHelpLink</code> | [GWT R059][R059] |
| <code>Default spacing between list items: </code> | <code>列表项默认间距:</code> | <code>visualModeListSpacingLabel</code> | [GWT R059][R059] |
| <code>Wrap at column:</code> | <code>在此列自动换行:</code> | <code>visualModeOptionsLabel</code> | [GWT R059][R059] |
| <code>Write references at end of current:</code> | <code>将参考文献写在当前内容末尾:</code> | <code>visualModeReferencesLabel</code> | [GWT R059][R059] |
| <code>Learn more about automatic line wrapping</code> | <code>详细了解自动换行</code> | <code>visualModeWrapHelpLabel</code> | [GWT R059][R059] |
| <code>Automatic text wrapping (line breaks): </code> | <code>自动文本换行（换行符）:</code> | <code>visualModeWrapLabel</code> | [GWT R059][R059] |
| <code>Warn when automatic session suspension is paused</code> | <code>自动会话挂起暂停时发出警告</code> | <code>warnAutoSuspendPausedLabel</code> | [GWT R059][R059] |
| <code>Web</code> | <code>网络</code> | <code>web</code> | [GWT R059][R059] |
| <code>Web</code> | <code>网络</code> | <code>webOption</code> | [GWT R059][R059] |
| <code>Viewing publish accounts</code> | <code>查看发布账户</code> | <code>withRSConnectLabel</code> | [GWT R059][R059] |
| <code>Workspace</code> | <code>工作区</code> | <code>workspaceCaption</code> | [GWT R059][R059] |
| <code>Restore .RData into workspace at startup:</code> | <code>启动时将 .RData 恢复到工作区:</code> | <code>workspaceLabel</code> | [GWT R059][R059] |
| <code>Zotero Data Directory:</code> | <code>Zotero 数据目录:</code> | <code>zoteroDataDirLabel</code> | [GWT R059][R059] |
| <code>(None Detected)</code> | <code>（未检测到）</code> | <code>zoteroDataDirNotDectedLabel</code> | [GWT R059][R059] |
| <code>Zotero API key successfully verified.</code> | <code>Zotero API 密钥已成功验证。</code> | <code>zoteroKeyVerified</code> | [GWT R059][R059] |
| <code>Zotero Library:</code> | <code>Zotero 库:</code> | <code>zoteroLibrary</code> | [GWT R059][R059] |
| <code>Use Better BibTeX for citation keys and BibTeX export</code> | <code>使用 Better BibTeX 生成引用键并导出 BibTeX</code> | <code>zoteroUseBetterBibtexLabel</code> | [GWT R059][R059] |
| <code>Unable to verify Zotero API key.\n\nYou should verify that your API key is still valid, and if necessary create a new key.</code> | <code>无法验证 Zotero API 密钥。\n\n请确认 API 密钥仍然有效，并在必要时创建新密钥。</code> | <code>zoteroVerifyKeyFailedMessage</code> | [GWT R059][R059] |
| <code>Zotero Web API Key:</code> | <code>Zotero Web API 密钥 :</code> | <code>zoteroWebApiKey</code> | [GWT R059][R059] |

## 14. Keyboard Shortcuts / 键盘快捷键与共享命令文案

本节 1418 条。

Workbench 命令优先使用已有本地化菜单显示名；专用命令与范围通过 `shortcutCommandDisplay` / `shortcutScopeDisplay` 适配。下面区分菜单/显示名和说明文本：不是每条命令说明都会出现在快捷键列表中。命令 ID、binding、scope 身份不变，`identity` 仅作追踪。部分 Editor / Ace 上游命令仍保留英文。

### 范围显示名

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Addin</code> | <code>插件</code> | <code>shortcutScopeAddin [identity: Addin]</code> | [Shortcut Scopes R001][R001] / Source patch |
| <code>Diagnostics</code> | <code>诊断</code> | <code>shortcutScopeDiagnostics [identity: Diagnostics]</code> | [Shortcut Scopes R001][R001] / Source patch |
| <code>Editor</code> | <code>编辑器</code> | <code>shortcutScopeEditor [identity: Editor]</code> | [Shortcut Scopes R001][R001] / Source patch |
| <code>Files</code> | <code>文件</code> | <code>shortcutScopeFiles [identity: Files]</code> | [Shortcut Scopes R001][R001] / Source patch |
| <code>Help</code> | <code>帮助</code> | <code>shortcutScopeHelp [identity: Help]</code> | [Shortcut Scopes R001][R001] / Source patch |
| <code>History</code> | <code>历史</code> | <code>shortcutScopeHistory [identity: History]</code> | [Shortcut Scopes R001][R001] / Source patch |
| <code>Import</code> | <code>导入</code> | <code>shortcutScopeImport [identity: Import]</code> | [Shortcut Scopes R001][R001] / Source patch |
| <code>Package Development</code> | <code>程序包开发</code> | <code>shortcutScopePackageDevelopment [identity: Package Development]</code> | [Shortcut Scopes R001][R001] / Source patch |
| <code>Tutorial</code> | <code>教程</code> | <code>shortcutScopeTutorial [identity: Tutorial]</code> | [Shortcut Scopes R001][R001] / Source patch |
| <code>Viewer</code> | <code>查看器</code> | <code>shortcutScopeViewer [identity: Viewer]</code> | [Shortcut Scopes R001][R001] / Source patch |
| <code>Workbench</code> | <code>工作台</code> | <code>shortcutScopeWorkbench [identity: Workbench]</code> | [Shortcut Scopes R001][R001] / Source patch |

### 快捷键窗口说明

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>See All Shortcuts...</code> | <code>查看所有快捷键...</code> | <code>allShortcutsText</code> | [Keyboard Shortcuts / GWT R005][R005] |

### 专用命令显示名

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Block Indent</code> | <code>增加代码块缩进</code> | <code>shortcutDisplayBlockindent [identity: blockindent]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Block Outdent</code> | <code>减少代码块缩进</code> | <code>shortcutDisplayBlockoutdent [identity: blockoutdent]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Center Selection</code> | <code>将选区居中显示</code> | <code>shortcutDisplayCenterselection [identity: centerselection]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Copy Lines Down</code> | <code>向下复制行</code> | <code>shortcutDisplayCopylinesdown [identity: copylinesdown]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Copy Lines Up</code> | <code>向上复制行</code> | <code>shortcutDisplayCopylinesup [identity: copylinesup]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Cut or Delete</code> | <code>剪切或删除</code> | <code>shortcutDisplayCut_or_delete [identity: cut_or_delete]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Delete</code> | <code>删除</code> | <code>shortcutDisplayDel [identity: del]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Duplicate Selection</code> | <code>复制所选内容</code> | <code>shortcutDisplayDuplicateSelection [identity: duplicateSelection]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Expand to Line</code> | <code>扩展选区至整行</code> | <code>shortcutDisplayExpandtoline [identity: expandtoline]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Expand To Matching</code> | <code>扩展选区至匹配括号</code> | <code>shortcutDisplayExpandToMatching [identity: expandToMatching]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Find</code> | <code>查找</code> | <code>shortcutDisplayFind [identity: find]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Find Next</code> | <code>查找下一处</code> | <code>shortcutDisplayFindnext [identity: findnext]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Find Previous</code> | <code>查找上一处</code> | <code>shortcutDisplayFindprevious [identity: findprevious]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Fold</code> | <code>折叠</code> | <code>shortcutDisplayFold [identity: fold]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Fold All</code> | <code>折叠全部</code> | <code>shortcutDisplayFoldall [identity: foldall]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Fold Other</code> | <code>折叠其他区域</code> | <code>shortcutDisplayFoldOther [identity: foldOther]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Move Downwards one Line</code> | <code>向下移动一行</code> | <code>shortcutDisplayGolinedown [identity: golinedown]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Move Upwards One Line</code> | <code>向上移动一行</code> | <code>shortcutDisplayGolineup [identity: golineup]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Go to End of Document</code> | <code>移至文档末尾</code> | <code>shortcutDisplayGotoend [identity: gotoend]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Go To End Of Current Scope</code> | <code>移至当前作用域末尾</code> | <code>shortcutDisplayGoToEndOfCurrentScope [identity: goToEndOfCurrentScope]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Move to Previous Character</code> | <code>移至上一个字符</code> | <code>shortcutDisplayGotoleft [identity: gotoleft]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Go To Line</code> | <code>转到指定行</code> | <code>shortcutDisplayGotoline [identity: gotoline]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Go to End of Line</code> | <code>移至行尾</code> | <code>shortcutDisplayGotolineend [identity: gotolineend]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Go to Start of Line</code> | <code>移至行首</code> | <code>shortcutDisplayGotolinestart [identity: gotolinestart]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Move Cursor Down a Page</code> | <code>光标向下移动一页</code> | <code>shortcutDisplayGotopagedown [identity: gotopagedown]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Move Cursor Up a Page</code> | <code>光标向上移动一页</code> | <code>shortcutDisplayGotopageup [identity: gotopageup]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Go to Next Character</code> | <code>移至下一个字符</code> | <code>shortcutDisplayGotoright [identity: gotoright]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Go to Start of Document</code> | <code>移至文档开头</code> | <code>shortcutDisplayGotostart [identity: gotostart]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Go To Start Of Current Scope</code> | <code>移至当前作用域开头</code> | <code>shortcutDisplayGoToStartOfCurrentScope [identity: goToStartOfCurrentScope]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Go to Previous Word</code> | <code>移至上一个单词</code> | <code>shortcutDisplayGotowordleft [identity: gotowordleft]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Move to Next Word</code> | <code>移至下一个单词</code> | <code>shortcutDisplayGotowordright [identity: gotowordright]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Indent</code> | <code>增加缩进</code> | <code>shortcutDisplayIndent [identity: indent]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Join Lines</code> | <code>合并行</code> | <code>shortcutDisplayJoinlines [identity: joinlines]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Jump to Matching Bracket</code> | <code>跳转至匹配括号</code> | <code>shortcutDisplayJumptomatching [identity: jumptomatching]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Decrement Number at Cursor</code> | <code>递减光标处的数值</code> | <code>shortcutDisplayModifyNumberDown [identity: modifyNumberDown]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Increment Number at Cursor</code> | <code>递增光标处的数值</code> | <code>shortcutDisplayModifyNumberUp [identity: modifyNumberUp]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Move Lines Down</code> | <code>下移代码行</code> | <code>shortcutDisplayMovelinesdown [identity: movelinesdown]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Move Lines Up</code> | <code>上移代码行</code> | <code>shortcutDisplayMovelinesup [identity: movelinesup]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Open Command Palette</code> | <code>打开命令面板</code> | <code>shortcutDisplayOpenCommandPalette [identity: openCommandPalette]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Open Link</code> | <code>打开链接</code> | <code>shortcutDisplayOpenlink [identity: openlink]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Outdent</code> | <code>减少缩进</code> | <code>shortcutDisplayOutdent [identity: outdent]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Overwrite</code> | <code>切换覆盖输入模式</code> | <code>shortcutDisplayOverwrite [identity: overwrite]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Scroll View Down a Page</code> | <code>向下滚动一页</code> | <code>shortcutDisplayPagedown [identity: pagedown]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Scroll View Up a Page</code> | <code>向上滚动一页</code> | <code>shortcutDisplayPageup [identity: pageup]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Redo</code> | <code>重做</code> | <code>shortcutDisplayRedo [identity: redo]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Remove Line</code> | <code>删除行</code> | <code>shortcutDisplayRemoveline [identity: removeline]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Remove to End of Line</code> | <code>删除至行尾</code> | <code>shortcutDisplayRemovetolineend [identity: removetolineend]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Remove to Line End (Including Selection)</code> | <code>删除选区及其所在行的后部</code> | <code>shortcutDisplayRemovetolineendhard [identity: removetolineendhard]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Remove to Start of Line</code> | <code>删除至行首</code> | <code>shortcutDisplayRemovetolinestart [identity: removetolinestart]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Remove to Line Start (Including Selection)</code> | <code>删除选区及其所在行的前部</code> | <code>shortcutDisplayRemovetolinestarthard [identity: removetolinestarthard]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Remove Word Left</code> | <code>删除左侧单词</code> | <code>shortcutDisplayRemovewordleft [identity: removewordleft]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Remove Word Right</code> | <code>删除右侧单词</code> | <code>shortcutDisplayRemovewordright [identity: removewordright]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Scroll Down a Line</code> | <code>向下滚动一行</code> | <code>shortcutDisplayScrolldown [identity: scrolldown]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Scroll Up a Line</code> | <code>向上滚动一行</code> | <code>shortcutDisplayScrollup [identity: scrollup]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select All</code> | <code>全选</code> | <code>shortcutDisplaySelectall [identity: selectall]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select Line Downwards</code> | <code>向下选择一行</code> | <code>shortcutDisplaySelectdown [identity: selectdown]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select Previous Character</code> | <code>选择上一个字符</code> | <code>shortcutDisplaySelectleft [identity: selectleft]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select to End of Line</code> | <code>选择至行尾</code> | <code>shortcutDisplaySelectlineend [identity: selectlineend]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select to Start of Line</code> | <code>选择至行首</code> | <code>shortcutDisplaySelectlinestart [identity: selectlinestart]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select Or Find Next</code> | <code>选择单词或查找下一处</code> | <code>shortcutDisplaySelectOrFindNext [identity: selectOrFindNext]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select Or Find Previous</code> | <code>选择单词或查找上一处</code> | <code>shortcutDisplaySelectOrFindPrevious [identity: selectOrFindPrevious]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Expand Selection down a Page</code> | <code>向下扩展选区一页</code> | <code>shortcutDisplaySelectpagedown [identity: selectpagedown]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Expand Selection Up a Page</code> | <code>向上扩展选区一页</code> | <code>shortcutDisplaySelectpageup [identity: selectpageup]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select Next Character</code> | <code>选择下一个字符</code> | <code>shortcutDisplaySelectright [identity: selectright]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select to End of Document</code> | <code>选择至文档末尾</code> | <code>shortcutDisplaySelecttoend [identity: selecttoend]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select to End of Line</code> | <code>选择至行尾</code> | <code>shortcutDisplaySelecttolineend [identity: selecttolineend]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select to Line Start</code> | <code>选择至行首</code> | <code>shortcutDisplaySelecttolinestart [identity: selecttolinestart]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select to Matching Bracket</code> | <code>选择至匹配括号</code> | <code>shortcutDisplaySelecttomatching [identity: selecttomatching]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select to Beginning of Document</code> | <code>选择至文档开头</code> | <code>shortcutDisplaySelecttostart [identity: selecttostart]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select Line Upwards</code> | <code>向上选择一行</code> | <code>shortcutDisplaySelectup [identity: selectup]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select Previous Word</code> | <code>选择上一个单词</code> | <code>shortcutDisplaySelectwordleft [identity: selectwordleft]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Select Next Word</code> | <code>选择下一个单词</code> | <code>shortcutDisplaySelectwordright [identity: selectwordright]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Sort Lines</code> | <code>对行排序</code> | <code>shortcutDisplaySortlines [identity: sortlines]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Split Line</code> | <code>拆分行</code> | <code>shortcutDisplaySplitline [identity: splitline]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Toggle Comment</code> | <code>切换注释</code> | <code>shortcutDisplayTogglecomment [identity: togglecomment]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Toggle Fold Widget</code> | <code>切换当前区域折叠</code> | <code>shortcutDisplayToggleFoldWidget [identity: toggleFoldWidget]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Toggle Parent Fold Widget</code> | <code>切换上级区域折叠</code> | <code>shortcutDisplayToggleParentFoldWidget [identity: toggleParentFoldWidget]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>To Lower Case</code> | <code>转换为小写</code> | <code>shortcutDisplayTolowercase [identity: tolowercase]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>To Upper Case</code> | <code>转换为大写</code> | <code>shortcutDisplayTouppercase [identity: touppercase]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Transpose Letters</code> | <code>交换相邻字符</code> | <code>shortcutDisplayTransposeletters [identity: transposeletters]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Tutorial Popout</code> | <code>在独立窗口中打开教程</code> | <code>shortcutDisplayTutorialPopout [identity: tutorialPopout]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Undo</code> | <code>撤销</code> | <code>shortcutDisplayUndo [identity: undo]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Unfold</code> | <code>展开</code> | <code>shortcutDisplayUnfold [identity: unfold]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Unfold All</code> | <code>展开全部</code> | <code>shortcutDisplayUnfoldall [identity: unfoldall]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |
| <code>Viewer Popout</code> | <code>在独立窗口中打开查看器</code> | <code>shortcutDisplayViewerPopout [identity: viewerPopout]</code> | [Keyboard Shortcuts / GWT R001][R001] / Source patch |

### Workbench 共享菜单 / 快捷键显示名

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Show Background _Jobs</code> | <code>_显示后台任务</code> | <code>activateBackgroundJobsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Build</code> | <code>_显示构建窗格</code> | <code>activateBuildMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Pos_it Assistant</code> | <code>_显示 Posit Assistant</code> | <code>activateChatMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Compile _PDF</code> | <code>_显示 PDF 编译</code> | <code>activateCompilePDFMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Co_nnections</code> | <code>_显示连接</code> | <code>activateConnectionsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Focus to _Console</code> | <code>_将焦点移到控制台</code> | <code>activateConsoleMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Focus to _Console Panel</code> | <code>_将焦点移到控制台窗格</code> | <code>activateConsolePaneMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Databricks</code> | <code>_显示 Databricks</code> | <code>activateDatabricksMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Data</code> | <code>_显示数据</code> | <code>activateDataMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Deploy _Content</code> | <code>_显示部署内容</code> | <code>activateDeployContentMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Environment</code> | <code>_显示环境窗格</code> | <code>activateEnvironmentMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show F_iles</code> | <code>_显示文件窗格</code> | <code>activateFilesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Find in Files</code> | <code>_显示文件查找</code> | <code>activateFindInFilesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Focus to _Help</code> | <code>_将焦点移到帮助</code> | <code>activateHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Histor_y</code> | <code>_显示历史窗格</code> | <code>activateHistoryMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Markers</code> | <code>_显示标记</code> | <code>activateMarkersMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Pac_kages</code> | <code>_显示程序包窗格</code> | <code>activatePackagesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Pl_ots</code> | <code>_显示图形窗格</code> | <code>activatePlotsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Prese_ntation</code> | <code>_显示演示</code> | <code>activatePresentation2MenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Prese_ntation</code> | <code>_显示演示</code> | <code>activatePresentationMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _R Markdown</code> | <code>_显示 R Markdown</code> | <code>activateRMarkdownMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Sou_rce Cpp</code> | <code>_显示 Source Cpp</code> | <code>activateSourceCppMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Focus to Sou_rce</code> | <code>_将焦点移到源代码</code> | <code>activateSourceMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show S_QL Results</code> | <code>_显示 SQL 结果</code> | <code>activateSQLResultsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Move Focus to Terminal</code> | <code>_将焦点移到终端</code> | <code>activateTerminalMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Tutorial</code> | <code>_显示教程</code> | <code>activateTutorialMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Vcs</code> | <code>_显示版本控制</code> | <code>activateVcsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Vie_wer</code> | <code>_显示查看器</code> | <code>activateViewerMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Workbench Jobs</code> | <code>_显示 Workbench 任务</code> | <code>activateWorkbenchJobsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Add Cursor Above Current Cursor</code> | <code>在当前光标上方添加光标</code> | <code>addCursorAboveMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Add Cursor Below Current Cursor</code> | <code>在当前光标下添加光标</code> | <code>addCursorBelowMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Accept Next Edit Suggestion</code> | <code>接受下一个编辑建议</code> | <code>assistantAcceptNextEditSuggestionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Accept Next Word</code> | <code>接受下一个单词</code> | <code>assistantAcceptNextWordMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Assistant Diagnostics</code> | <code>显示 Assistant 诊断</code> | <code>assistantDiagnosticsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Dismiss Next Edit Suggestion</code> | <code>忽略下一项编辑建议</code> | <code>assistantDismissNextEditSuggestionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Request Completions</code> | <code>请求补全</code> | <code>assistantRequestCompletionsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Request Suggestions</code> | <code>请求建议</code> | <code>assistantRequestSuggestionsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sign In</code> | <code>登录</code> | <code>assistantSignInMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sign Out</code> | <code>退出登录</code> | <code>assistantSignOutMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Status</code> | <code>状态</code> | <code>assistantStatusMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Automatic Completions</code> | <code>切换自动补全</code> | <code>assistantToggleAutomaticCompletionsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Authoring R Presentations</code> | <code>_制作 R 演示文稿</code> | <code>authoringRPresentationsHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Browse Addins...</code> | <code>_浏览插件...</code> | <code>browseAddinsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Browse Cheat Sheets...</code> | <code>_浏览速查表...</code> | <code>browseCheatSheetsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Install Package</code> | <code>_安装程序包</code> | <code>buildAllMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Build Binar_y Package</code> | <code>_构建二进制程序包</code> | <code>buildBinaryPackageMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clean and Install</code> | <code>清理并安装</code> | <code>buildFullMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Install Package</code> | <code>安装程序包</code> | <code>buildIncrementalMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Build _Source Package</code> | <code>_构建源程序包</code> | <code>buildSourcePackageMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Configure Build _Tools...</code> | <code>_配置构建工具...</code> | <code>buildToolsProjectSetupMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Check for Posit Assistant Updates...</code> | <code>_检查 Posit Assistant 更新...</code> | <code>checkForPositAssistantUpdatesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Check for RStudio _Updates</code> | <code>_检查 RStudio 更新</code> | <code>checkForUpdatesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Check Package</code> | <code>_检查程序包</code> | <code>checkPackageMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Check _Spelling...</code> | <code>_检查拼写...</code> | <code>checkSpellingMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Clean All</code> | <code>_全部清理</code> | <code>cleanAllMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Clear Background Jobs</code> | <code>_清除后台任务</code> | <code>clearBackgroundJobsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear Recently Executed Command List</code> | <code>清除最近执行的命令列表</code> | <code>clearCommandPaletteMruMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear history</code> | <code>清除历史记录</code> | <code>clearHelpHistoryMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear _All...</code> | <code>_全部清除...</code> | <code>clearHistoryMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear Knitr Cache...</code> | <code>清除 Knitr 缓存...</code> | <code>clearKnitrCacheMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Clear All...</code> | <code>_全部清除...</code> | <code>clearPlotsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear Prerendered Output...</code> | <code>清除预渲染输出...</code> | <code>clearPrerenderedOutputMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear Knitr Cache...</code> | <code>清除 Knitr 缓存...</code> | <code>clearPresentationCacheMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Clear List</code> | <code>_清空列表</code> | <code>clearRecentFilesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Clear Project List</code> | <code>_清空项目列表</code> | <code>clearRecentProjectsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Clear Terminal Buffer</code> | <code>_清空终端缓冲区</code> | <code>clearTerminalScrollbackBufferMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Clear User Prefs</code> | <code>_清除用户首选项</code> | <code>clearUserPrefsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Clear Workspace...</code> | <code>_清空工作区...</code> | <code>clearWorkspaceMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>C_lose All</code> | <code>_全部关闭</code> | <code>closeAllSourceDocsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Close _All Terminals</code> | <code>_关闭所有终端</code> | <code>closeAllTerminalsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Close All E_xcept Current</code> | <code>_关闭除当前项外的全部项</code> | <code>closeOtherSourceDocsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Close Projec_t</code> | <code>_关闭项目</code> | <code>closeProjectMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Close</code> | <code>_关闭</code> | <code>closeSourceDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Cl_ose Terminal</code> | <code>_关闭终端</code> | <code>closeTerminalMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Code Completion</code> | <code>代码补全</code> | <code>codeCompletionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Comment/Uncomment Lines</code> | <code>_注释或取消注释行</code> | <code>commentUncommentMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Compile Report...</code> | <code>_编译报告...</code> | <code>compileNotebookMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Compile PDF</code> | <code>_编译 PDF</code> | <code>compilePDFMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Cle_ar Console</code> | <code>_清空控制台</code> | <code>consoleClearMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Find in Console</code> | <code>_在控制台中查找</code> | <code>consoleFindMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Copy</code> | <code>_复制</code> | <code>copyDummyMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy...</code> | <code>复制...</code> | <code>copyFileMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy To...</code> | <code>复制到...</code> | <code>copyFileToMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy Lines Down</code> | <code>向下复制代码行</code> | <code>copyLinesDownMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Cop_y to Clipboard...</code> | <code>_复制到剪贴板...</code> | <code>copyPlotToClipboardMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy Path</code> | <code>复制路径</code> | <code>copySourceDocPathMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Crash RStudio Desktop (DA_NGER)</code> | <code>_使 RStudio Desktop 崩溃（危险）</code> | <code>crashDesktopApplicationMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Cu_t</code> | <code>_剪切</code> | <code>cutDummyMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle _Breakpoint</code> | <code>_切换断点</code> | <code>debugBreakpointMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear _All Breakpoints...</code> | <code>_清除所有断点...</code> | <code>debugClearBreakpointsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Continue</code> | <code>_继续</code> | <code>debugContinueMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Dump Editor Contents...</code> | <code>_导出编辑器内容...</code> | <code>debugDumpContentsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Finish Function/Loop</code> | <code>_完成函数或循环</code> | <code>debugFinishMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Debugging _Help</code> | <code>_调试帮助</code> | <code>debugHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Import Editor Contents...</code> | <code>_导入编辑器内容...</code> | <code>debugImportDumpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Step _Into Function</code> | <code>_进入函数</code> | <code>debugStepIntoMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>E_xecute Next Line</code> | <code>_执行下一行</code> | <code>debugStepMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Stop Debugging</code> | <code>_停止调试</code> | <code>debugStopMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Load All</code> | <code>_加载全部</code> | <code>devtoolsLoadAllMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Write Diagnostics Report</code> | <code>_写入诊断报告</code> | <code>diagnosticsReportMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Disconnect</code> | <code>断开连接</code> | <code>disconnectConnectionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Edit Code Snippets...</code> | <code>_编辑代码片段...</code> | <code>editCodeSnippetsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Edit Lines from Start</code> | <code>从行首编辑多行</code> | <code>editLinesFromStartMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Output Options...</code> | <code>_输出选项...</code> | <code>editRmdFormatOptionsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Edit User Prefs File</code> | <code>_编辑用户首选项文件</code> | <code>editUserPrefsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Prosemirror DevTools</code> | <code>_ProseMirror 开发工具</code> | <code>enableProsemirrorDevToolsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Break in Code</code> | <code>_在代码中中断</code> | <code>errorsBreakMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Message Only</code> | <code>_仅显示消息</code> | <code>errorsMessageMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Error Inspector</code> | <code>_错误检查器</code> | <code>errorsTracebackMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run _All</code> | <code>_全部运行</code> | <code>executeAllCodeMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Selected _Line(s)</code> | <code>_运行所选行</code> | <code>executeCodeMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run _Line(s) without moving cursor</code> | <code>_运行行且不移动光标</code> | <code>executeCodeWithoutMovingCursorMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run _Current Chunk</code> | <code>_运行当前代码块</code> | <code>executeCurrentChunkMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run _Function Definition</code> | <code>_运行函数定义</code> | <code>executeCurrentFunctionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute Current _Line</code> | <code>_执行当前行</code> | <code>executeCurrentLineMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute Current _Paragraph</code> | <code>_执行当前段落</code> | <code>executeCurrentParagraphMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Code _Section</code> | <code>_运行代码节</code> | <code>executeCurrentSectionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute Current _Statement</code> | <code>_执行当前语句</code> | <code>executeCurrentStatementMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run From Line to _End</code> | <code>_从当前行运行到末尾</code> | <code>executeFromCurrentLineMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Re-Run _Previous</code> | <code>_重新运行上一项</code> | <code>executeLastCodeMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run _Next Chunk</code> | <code>_运行下一个代码块</code> | <code>executeNextChunkMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Run All Chunks Above</code> | <code>_运行上方所有代码块</code> | <code>executePreviousChunksMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run _Setup Chunk</code> | <code>_运行设置代码块</code> | <code>executeSetupChunkMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run All C_hunks Below</code> | <code>_运行下方所有代码块</code> | <code>executeSubsequentChunksMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run From _Beginning To Line</code> | <code>_从开头运行到当前行</code> | <code>executeToCurrentLineMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Expand Selection</code> | <code>扩展选择</code> | <code>expandSelectionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Expand Selection to Line</code> | <code>将选择扩展至行</code> | <code>expandToLineMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Expand To _Matching</code> | <code>_展开至匹配位置</code> | <code>expandToMatchingMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Export...</code> | <code>导出...</code> | <code>exportFilesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>E_xtract Function</code> | <code>_提取函数</code> | <code>extractFunctionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Extract _Variable</code> | <code>_提取变量</code> | <code>extractLocalVariableMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Use Selection for Find</code> | <code>_使用所选内容查找</code> | <code>findFromSelectionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find _in Files...</code> | <code>_在文件中查找...</code> | <code>findInFilesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find _Next</code> | <code>_查找下一个</code> | <code>findNextMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find Pre_vious</code> | <code>_查找上一个</code> | <code>findPreviousMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Find...</code> | <code>_查找...</code> | <code>findReplaceMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find And Select All</code> | <code>查找并选中所有</code> | <code>findSelectAllMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find _Usages</code> | <code>_查找用法</code> | <code>findUsagesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_First Tab</code> | <code>_第一个标签页</code> | <code>firstTabMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Adjust Center S_plitter</code> | <code>_调整中间分隔条</code> | <code>focusCenterSeparatorMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Focus Console Output</code> | <code>_聚焦控制台输出</code> | <code>focusConsoleOutputEndMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>A_djust Left Splitter</code> | <code>_调整左侧分隔条</code> | <code>focusLeftSeparatorMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Focus _Main Toolbar</code> | <code>_聚焦主工具栏</code> | <code>focusMainToolbarMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Focus Next Pane</code> | <code>_聚焦下一个窗格</code> | <code>focusNextPaneMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Focus Other Editor Split</code> | <code>聚焦另一拆分视图(_F)</code> | <code>focusOtherEditorSplitMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Focus Previous Pane</code> | <code>_聚焦上一个窗格</code> | <code>focusPreviousPaneMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Ad_just Right Splitter</code> | <code>_调整右侧分隔条</code> | <code>focusRightSeparatorMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Adjust _Sidebar Splitter</code> | <code>_调整侧边栏分隔条</code> | <code>focusSidebarSeparatorMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Adjust Source Column Spli_tter</code> | <code>_调整源代码列分隔条</code> | <code>focusSourceColumnSeparatorMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Collapse _All</code> | <code>_全部折叠</code> | <code>foldAllMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Collapse</code> | <code>_折叠</code> | <code>foldMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Force Quit Session...</code> | <code>强制退出会话...</code> | <code>forceQuitSessionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Free Unused R Memory</code> | <code>_释放未使用的 R 内存</code> | <code>freeUnusedMemoryMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Go To Function Definition</code> | <code>_转到函数定义</code> | <code>goToDefinitionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go To File/F_unction...</code> | <code>_转到文件或函数...</code> | <code>goToFileFunctionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go To _Help</code> | <code>_转到帮助</code> | <code>goToHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Go to Line...</code> | <code>_转到行...</code> | <code>goToLineMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go To Working Directory</code> | <code>转到工作目录</code> | <code>goToWorkingDirMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>R _Help</code> | <code>_R 帮助</code> | <code>helpHomeMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Keyboard Shortcuts Help</code> | <code>_键盘快捷键帮助</code> | <code>helpKeyboardShortcutsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Search R Hel_p</code> | <code>_搜索 R 帮助</code> | <code>helpSearchMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>RStudio _Docs</code> | <code>_RStudio 文档</code> | <code>helpUsingRStudioMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Hide _Toolbar</code> | <code>_隐藏工具栏</code> | <code>hideToolbarMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Remove Entries...</code> | <code>_删除条目...</code> | <code>historyRemoveEntriesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Send to _Console</code> | <code>_发送到控制台</code> | <code>historySendToConsoleMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert into _Source</code> | <code>_插入到源代码</code> | <code>historySendToSourceMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>From _CSV</code> | <code>_从 CSV 导入</code> | <code>importDatasetFromCsvMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>From Text (_base)...</code> | <code>_从文本导入（base）...</code> | <code>importDatasetFromCsvUsingBaseMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>From Text (_readr)...</code> | <code>_从文本导入（readr）...</code> | <code>importDatasetFromCsvUsingReadrMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>From _Local File...</code> | <code>_从本地文件导入...</code> | <code>importDatasetFromFileMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>From S_AS...</code> | <code>_从 SAS 导入...</code> | <code>importDatasetFromSASMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>From _SPSS...</code> | <code>_从 SPSS 导入...</code> | <code>importDatasetFromSAVMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>From S_tata...</code> | <code>_从 Stata 导入...</code> | <code>importDatasetFromStataMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>From _Web URL...</code> | <code>_从网页地址导入...</code> | <code>importDatasetFromURLMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>From _Excel...</code> | <code>_从 Excel 导入...</code> | <code>importDatasetFromXLSMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Insert Chunk</code> | <code>_插入代码块</code> | <code>insertChunkMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert Ro_xygen Skeleton</code> | <code>_插入 Roxygen 框架</code> | <code>insertRoxygenSkeletonMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Insert Section...</code> | <code>_插入节...</code> | <code>insertSectionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert Snippet</code> | <code>插入代码片段</code> | <code>insertSnippetMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Install Pac_kages...</code> | <code>_安装程序包...</code> | <code>installPackageMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Interrupt R</code> | <code>_中断 R</code> | <code>interruptRMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Interrupt Current Terminal</code> | <code>_中断当前终端</code> | <code>interruptTerminalMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Join Lines</code> | <code>连接行</code> | <code>joinLinesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Jump To _Matching</code> | <code>_跳转到匹配位置</code> | <code>jumpToMatchingMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Jump To...</code> | <code>_跳转到...</code> | <code>jumpToMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Knit Document</code> | <code>_编织文档</code> | <code>knitDocumentMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Knit _with Parameters...</code> | <code>_使用参数编织...</code> | <code>knitWithParametersMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Last Tab</code> | <code>_最后一个标签页</code> | <code>lastTabMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Console on _Left</code> | <code>_控制台置于左侧</code> | <code>layoutConsoleOnLeftMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Console on _Right</code> | <code>_控制台置于右侧</code> | <code>layoutConsoleOnRightMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Show All Panes</code> | <code>_显示所有窗格</code> | <code>layoutEndZoomMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom _Build</code> | <code>_缩放构建窗格</code> | <code>layoutZoomBuildMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Pos_it Assistant</code> | <code>_缩放 Posit Assistant</code> | <code>layoutZoomChatMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Co_nnections</code> | <code>_缩放连接窗格</code> | <code>layoutZoomConnectionsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom _Console</code> | <code>_缩放控制台</code> | <code>layoutZoomConsoleMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Console Pane</code> | <code>缩放控制台窗格</code> | <code>layoutZoomConsolePaneMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom _Environment</code> | <code>_缩放环境窗格</code> | <code>layoutZoomEnvironmentMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom _Files</code> | <code>_缩放文件窗格</code> | <code>layoutZoomFilesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom _Help</code> | <code>_缩放帮助窗格</code> | <code>layoutZoomHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Histor_y</code> | <code>_缩放历史窗格</code> | <code>layoutZoomHistoryMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Zoom Left / Center Column</code> | <code>_缩放左侧或中间列</code> | <code>layoutZoomLeftColumnMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Pac_kages</code> | <code>_缩放程序包窗格</code> | <code>layoutZoomPackagesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Pl_ots</code> | <code>_缩放图形</code> | <code>layoutZoomPlotsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom _Presentation</code> | <code>_缩放演示窗格</code> | <code>layoutZoomPresentation2MenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoo_m Right Column</code> | <code>_缩放右侧列</code> | <code>layoutZoomRightColumnMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Si_debar</code> | <code>_缩放侧边栏</code> | <code>layoutZoomSidebarMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Sou_rce</code> | <code>_缩放源代码窗格</code> | <code>layoutZoomSourceMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom _Tutorial</code> | <code>_缩放教程窗格</code> | <code>layoutZoomTutorialMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom _VCS</code> | <code>_缩放版本控制窗格</code> | <code>layoutZoomVcsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Vie_wer</code> | <code>_缩放查看器</code> | <code>layoutZoomViewerMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Load History...</code> | <code>_加载历史记录...</code> | <code>loadHistoryMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Posit Workbench _Home</code> | <code>_Posit Workbench 主页</code> | <code>loadServerHomeMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Load Workspace...</code> | <code>_加载工作区...</code> | <code>loadWorkspaceMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Log focused element</code> | <code>记录聚焦元素</code> | <code>logFocusedElementMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Preferences...</code> | <code>_首选项...</code> | <code>macPreferencesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Markdown Quick Reference</code> | <code>_Markdown 快速参考</code> | <code>markdownHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Modify Keyboard Shortcuts...</code> | <code>_修改键盘快捷键...</code> | <code>modifyKeyboardShortcutsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move...</code> | <code>移动...</code> | <code>moveFilesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Lines Down</code> | <code>下移代码行</code> | <code>moveLinesDownMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Lines Up</code> | <code>上移代码行</code> | <code>moveLinesUpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Tab Lef_t</code> | <code>_标签页左移</code> | <code>moveTabLeftMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Tab _Right</code> | <code>_标签页右移</code> | <code>moveTabRightMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Tab to _First</code> | <code>_标签页移到最前</code> | <code>moveTabToFirstMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Tab to La_st</code> | <code>_标签页移到最后</code> | <code>moveTabToLastMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_C File</code> | <code>_C 文件</code> | <code>newCDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>New Connection...</code> | <code>新建连接...</code> | <code>newConnectionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_C++ File</code> | <code>_C++ 文件</code> | <code>newCppDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_CSS File</code> | <code>_CSS 文件</code> | <code>newCssDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_D3 Script</code> | <code>_D3 脚本</code> | <code>newD3DocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Folder...</code> | <code>文件夹...</code> | <code>newFolderMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Header File</code> | <code>_头文件</code> | <code>newHeaderDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_HTML File</code> | <code>_HTML 文件</code> | <code>newHtmlDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_JavaScript File</code> | <code>_JavaScript 文件</code> | <code>newJavaScriptDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Markdown File</code> | <code>_Markdown 文件</code> | <code>newMarkdownDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>New _Project...</code> | <code>_新建项目...</code> | <code>newProjectMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Python Script</code> | <code>_Python 脚本</code> | <code>newPythonDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Quarto Document...</code> | <code>_Quarto 文档...</code> | <code>newQuartoDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Quarto Presentation...</code> | <code>_Quarto 演示文稿...</code> | <code>newQuartoPresMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>R Doc_umentation...</code> | <code>R 文档(_U)...</code> | <code>newRDocumentationDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>R _Presentation</code> | <code>_R 演示文稿</code> | <code>newRPresentationDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Shiny _Web App...</code> | <code>_Shiny Web 应用...</code> | <code>newRShinyAppMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_New Session</code> | <code>_新建会话</code> | <code>newSessionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Shell Script</code> | <code>_Shell 脚本</code> | <code>newShellDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Add Source Column</code> | <code>_添加源代码列</code> | <code>newSourceColumnMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_R Script</code> | <code>_R 脚本</code> | <code>newSourceDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>SQ_L Script</code> | <code>SQ_L 脚本</code> | <code>newSqlDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Stan File</code> | <code>_Stan 文件</code> | <code>newStanDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_New Terminal</code> | <code>_新建终端</code> | <code>newTerminalMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Text File</code> | <code>_文本文件</code> | <code>newTextDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Next Plot</code> | <code>_下一个图形</code> | <code>nextPlotMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Next Tab</code> | <code>_下一个标签页</code> | <code>nextTabMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Ne_xt Terminal</code> | <code>_下一个终端</code> | <code>nextTerminalMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear A_ll Output</code> | <code>_清除全部输出</code> | <code>notebookClearAllOutputMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Cl_ear Output</code> | <code>_清除输出</code> | <code>notebookClearOutputMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Collapse All _Output</code> | <code>_折叠所有输出</code> | <code>notebookCollapseAllOutputMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>E_xpand All Output</code> | <code>_展开所有输出</code> | <code>notebookExpandAllOutputMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Chunk Output Expansion</code> | <code>切换代码块输出的展开状态</code> | <code>notebookToggleExpansionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Import Data with readr</code> | <code>_使用 readr 导入数据</code> | <code>openDataImportCheatSheetMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Data Transformation with _dplyr</code> | <code>_使用 dplyr 转换数据</code> | <code>openDataTransformationCheatSheetMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Data Visualization with _ggplot2</code> | <code>_使用 ggplot2 可视化数据</code> | <code>openDataVisualizationCheatSheetMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Data Manipulation with dplyr, tid_yr</code> | <code>_使用 dplyr、tidyr 处理数据</code> | <code>openDataWranglingCheatSheetMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Open Developer Console</code> | <code>_打开开发者控制台</code> | <code>openDeveloperConsoleMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Open New Terminal at File Location</code> | <code>_在文件位置打开新终端</code> | <code>openNewTerminalAtEditorLocationMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open New Terminal Here</code> | <code>在此处打开新终端</code> | <code>openNewTerminalAtFilePaneLocationMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Package De_velopment with devtools</code> | <code>_使用 devtools 开发程序包</code> | <code>openPackageDevelopmentCheatSheetMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Open Profile in Browser</code> | <code>_在浏览器中打开性能分析</code> | <code>openProfileInBrowserMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Open Profile...</code> | <code>_打开性能分析...</code> | <code>openProfileMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Project in Ne_w Session...</code> | <code>_在新会话中打开项目...</code> | <code>openProjectInNewWindowMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Ope_n Project...</code> | <code>_打开项目...</code> | <code>openProjectMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>List manipulation with _purrr</code> | <code>_使用 purrr 处理列表</code> | <code>openPurrrCheatSheetMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>R _Markdown Cheat Sheet</code> | <code>_R Markdown 速查表</code> | <code>openRMarkdownCheatSheetMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>R Markdo_wn Reference Guide</code> | <code>_R Markdown 参考指南</code> | <code>openRMarkdownReferenceGuideMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Roxygen Quick Reference</code> | <code>_Roxygen 快速参考</code> | <code>openRoxygenQuickReferenceMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_RStudio IDE Cheat Sheet</code> | <code>_RStudio IDE 速查表</code> | <code>openRStudioIDECheatSheetMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>More...</code> | <code>更多...</code> | <code>openSharedProjectMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Web Applications with _shiny</code> | <code>_使用 Shiny 构建 Web 应用</code> | <code>openShinyCheatSheetMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Open File...</code> | <code>_打开文件...</code> | <code>openSourceDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open File in New C_olumn...</code> | <code>_在新列中打开文件...</code> | <code>openSourceDocNewColumnMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Interfacing Spar_k with sparklyr</code> | <code>_使用 sparklyr 连接 Spark</code> | <code>openSparklyrCheatSheetMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Initialize Packrat...</code> | <code>_初始化 Packrat...</code> | <code>packratBootstrapMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Export Project _Bundle...</code> | <code>_导出项目包...</code> | <code>packratBundleMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Check Library _Status...</code> | <code>_检查库状态...</code> | <code>packratCheckStatusMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Clean Unused Packages...</code> | <code>_清理未使用的程序包...</code> | <code>packratCleanMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Using Packrat</code> | <code>使用 Packrat</code> | <code>packratHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Packrat _Options...</code> | <code>Packrat _选项...</code> | <code>packratOptionsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Pane Layo_ut...</code> | <code>_窗格布局...</code> | <code>paneLayoutMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Paste</code> | <code>_粘贴</code> | <code>pasteDummyMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Pa_ste with Indent</code> | <code>_按缩进粘贴</code> | <code>pasteWithIndentDummyMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run External</code> | <code>在外部运行</code> | <code>plumberRunInBrowserMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run in Viewer Pane</code> | <code>在查看器窗格中运行</code> | <code>plumberRunInPaneMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run in Window</code> | <code>在窗口中运行</code> | <code>plumberRunInViewerMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Edit Presentation Source</code> | <code>编辑演示文稿来源</code> | <code>presentation2EditMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Present from Beginning</code> | <code>从头开始演示</code> | <code>presentation2PresentFromBeginningMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Save As Web Page...</code> | <code>_另存为网页...</code> | <code>presentationSaveAsStandaloneMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_View in Browser</code> | <code>_在浏览器中查看</code> | <code>presentationViewInBrowserMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Previe_w</code> | <code>_预览</code> | <code>previewHTMLMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Preview J_S</code> | <code>_预览 JavaScript</code> | <code>previewJSMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Preview S_QL</code> | <code>_预览 SQL</code> | <code>previewSqlMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Previous Plot</code> | <code>_上一个图形</code> | <code>previousPlotMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Previous Tab</code> | <code>_上一个标签页</code> | <code>previousTabMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Previous Terminal</code> | <code>_上一个终端</code> | <code>previousTerminalMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Pr_int...</code> | <code>_打印...</code> | <code>printSourceDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Profile Selected Line(s)</code> | <code>_分析所选行</code> | <code>profileCodeMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Profiling _Help</code> | <code>_性能分析帮助</code> | <code>profileHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Project Options...</code> | <code>_项目选项...</code> | <code>projectOptionsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>P_ublish to RPubs...</code> | <code>_发布到 RPubs...</code> | <code>publishHTMLMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Render Document</code> | <code>_渲染文档</code> | <code>quartoRenderDocumentMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find and Add Next</code> | <code>查找和添加下一个</code> | <code>quickAddNextMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Quit Session...</code> | <code>_退出会话...</code> | <code>quitSessionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Raise Exception _JS</code> | <code>_触发 JavaScript 异常</code> | <code>raiseException2MenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Raise E_xception</code> | <code>_触发异常</code> | <code>raiseExceptionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Re_do</code> | <code>_重做</code> | <code>redoDummyMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reflow Co_mment</code> | <code>_重排注释</code> | <code>reflowCommentMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Re_format Selection</code> | <code>_重新格式化所选内容</code> | <code>reformatCodeMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reformat _Document</code> | <code>_重新格式化文档</code> | <code>reformatDocumentMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh</code> | <code>刷新</code> | <code>refreshConnectionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Refresh Environment</code> | <code>_刷新环境</code> | <code>refreshEnvironmentMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh</code> | <code>刷新</code> | <code>refreshFilesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Refresh Find in Files</code> | <code>_刷新文件查找</code> | <code>refreshFindInFilesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh</code> | <code>刷新</code> | <code>refreshHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh</code> | <code>刷新</code> | <code>refreshPlotMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh Presentation</code> | <code>刷新演示文稿</code> | <code>refreshPresentation2MenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh</code> | <code>刷新</code> | <code>refreshWorkspaceMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Reindent Lines</code> | <code>_重新缩进行</code> | <code>reindentMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reload</code> | <code>重新加载</code> | <code>reloadPlumberAPIMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reload</code> | <code>重新加载</code> | <code>reloadShinyAppMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reload _UI</code> | <code>_重新加载界面</code> | <code>reloadUiMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Remove Connection...</code> | <code>删除连接...</code> | <code>removeConnectionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Remo_ve Editor Split</code> | <code>取消编辑器拆分(_V)</code> | <code>removeEditorSplitMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Remove Line</code> | <code>删除行</code> | <code>removeLineMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Remove Plot...</code> | <code>_删除图形...</code> | <code>removePlotMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Ren_ame in Scope</code> | <code>_在作用域内重命名</code> | <code>renameInScopeMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Rename</code> | <code>_重命名</code> | <code>renameSourceDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Rename Terminal</code> | <code>_重命名终端</code> | <code>renameTerminalMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Introduction to renv</code> | <code>介绍 renv</code> | <code>renvHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restore Library...</code> | <code>恢复库...</code> | <code>renvRestoreMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Snapshot Library...</code> | <code>创建库快照...</code> | <code>renvSnapshotMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reopen with _Encoding...</code> | <code>_使用编码重新打开...</code> | <code>reopenSourceDocWithEncodingMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Replace and Find</code> | <code>_替换并查找</code> | <code>replaceAndFindMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restart R and Clear _Output</code> | <code>_重启 R 并清除输出</code> | <code>restartRClearOutputMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Restart R</code> | <code>_重启 R</code> | <code>restartRMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restart R and Run _All Chunks</code> | <code>_重启 R 并运行所有代码块</code> | <code>restartRRunAllChunksMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restore De_fault Pane and Tab Layout...</code> | <code>_恢复默认窗格和标签页布局...</code> | <code>restoreDefaultPaneAndTabLayoutMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Document</code> | <code>_文档</code> | <code>roxygenizePackageMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Configure Application...</code> | <code>_配置应用程序...</code> | <code>rsconnectConfigureMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>P_ublish...</code> | <code>_发布...</code> | <code>rsconnectDeployMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Manage Accounts...</code> | <code>_管理账户...</code> | <code>rsconnectManageAccountsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>RStudio Community _Forum</code> | <code>_RStudio 社区论坛</code> | <code>rstudioCommunityForumMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>RStudio _License</code> | <code>RStudio _许可证</code> | <code>rstudioLicenseMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Posit _Support</code> | <code>_Posit 支持</code> | <code>rstudioSupportMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run _Document</code> | <code>_运行文档</code> | <code>runDocumentFromServerDotRMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Ru_n Selection as Background Job</code> | <code>_将所选内容作为后台任务运行</code> | <code>runSelectionAsBackgroundJobMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Selection as _Workbench Job</code> | <code>_将所选内容作为 Workbench 任务运行</code> | <code>runSelectionAsWorkbenchJobMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sa_ve All</code> | <code>_全部保存</code> | <code>saveAllSourceDocsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sa_ve History As...</code> | <code>_历史记录另存为...</code> | <code>saveHistoryMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>File on Local Computer...</code> | <code>本地计算机上的文件...</code> | <code>saveHtmlPreviewAsLocalFileMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>File on RStudio Server...</code> | <code>RStudio Server 上的文件...</code> | <code>saveHtmlPreviewAsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save as _Image...</code> | <code>_另存为图像...</code> | <code>savePlotAsImageMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save as P_DF...</code> | <code>_另存为 PDF...</code> | <code>savePlotAsPdfMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Save Profile As...</code> | <code>_性能分析另存为...</code> | <code>saveProfileAsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save _As...</code> | <code>_另存为...</code> | <code>saveSourceDocAsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Save</code> | <code>_保存</code> | <code>saveSourceDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save wit_h Encoding...</code> | <code>_使用编码保存...</code> | <code>saveSourceDocWithEncodingMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Save Workspace As...</code> | <code>_工作区另存为...</code> | <code>saveWorkspaceMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Select _All</code> | <code>_全选</code> | <code>selectAllDummyMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Send _Filename to Terminal</code> | <code>_将文件名发送到终端</code> | <code>sendFilenameToTerminalMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy Terminal to _Editor</code> | <code>_将终端内容复制到编辑器</code> | <code>sendTerminalToEditorMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Send to _Terminal</code> | <code>_发送到终端</code> | <code>sendToTerminalMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Preview Site</code> | <code>_预览网站</code> | <code>serveQuartoSiteMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Go to Current Directory</code> | <code>_转到当前目录</code> | <code>setTerminalToCurrentDirectoryMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Choose Directory...</code> | <code>_选择目录...</code> | <code>setWorkingDirMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>To _Source File Location</code> | <code>_转到源文件位置</code> | <code>setWorkingDirToActiveDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>To _Files Pane Location</code> | <code>_转到文件窗格位置</code> | <code>setWorkingDirToFilesPaneMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>To _Project Directory</code> | <code>转到项目目录(_P)</code> | <code>setWorkingDirToProjectDirMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>S_hare Project...</code> | <code>_共享项目...</code> | <code>shareProjectMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Compare Results</code> | <code>比较结果</code> | <code>shinyCompareTestMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Record Test</code> | <code>记录测试</code> | <code>shinyRecordTestMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Tests</code> | <code>运行测试</code> | <code>shinyRunAllTestsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run External</code> | <code>在外部运行</code> | <code>shinyRunInBrowserMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run in Viewer Pane</code> | <code>在查看器窗格中运行</code> | <code>shinyRunInPaneMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run in Window</code> | <code>在窗口中运行</code> | <code>shinyRunInViewerMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Accessibility Diagnostics</code> | <code>_显示辅助功能诊断</code> | <code>showA11yDiagnosticsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>A_bout RStudio</code> | <code>_关于 RStudio</code> | <code>showAboutDialogMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Accessibility _Help...</code> | <code>_辅助功能帮助...</code> | <code>showAccessibilityHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Accessibility _Options...</code> | <code>_辅助功能选项...</code> | <code>showAccessibilityOptionsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Build Menu</code> | <code>显示构建菜单</code> | <code>showBuildMenuMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Code Menu</code> | <code>显示代码菜单</code> | <code>showCodeMenuMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Command Palette</code> | <code>_显示命令面板</code> | <code>showCommandPaletteMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Debug Menu</code> | <code>显示调试菜单</code> | <code>showDebugMenuMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Diagnostics</code> | <code>_显示诊断</code> | <code>showDiagnosticsActiveDocumentMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Diagnostics (Projec_t)</code> | <code>_显示诊断（项目）</code> | <code>showDiagnosticsProjectMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Show DOM Elements</code> | <code>_显示 DOM 元素</code> | <code>showDomElementsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Edit Menu</code> | <code>显示编辑菜单</code> | <code>showEditMenuMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show File Menu</code> | <code>显示文件菜单</code> | <code>showFileMenuMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _GPU Diagnostics</code> | <code>_显示 GPU 诊断</code> | <code>showGpuDiagnosticsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Help Menu</code> | <code>显示帮助菜单</code> | <code>showHelpMenuMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Ma_nage License...</code> | <code>_管理许可证...</code> | <code>showLicenseDialogMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Show Log Files</code> | <code>_显示日志文件</code> | <code>showLogFilesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Manipulator</code> | <code>_显示操控器</code> | <code>showManipulatorMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Memory Usage _Report...</code> | <code>_内存使用报告...</code> | <code>showMemoryUsageReportMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Global Options...</code> | <code>_全局选项...</code> | <code>showOptionsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show PDF in External Viewer</code> | <code>在外部查看器中显示 PDF</code> | <code>showPdfExternalMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Plots Menu</code> | <code>显示图形菜单</code> | <code>showPlotsMenuMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Profile Menu</code> | <code>显示性能分析菜单</code> | <code>showProfileMenuMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>R_elease Notes</code> | <code>_发行说明</code> | <code>showReleaseNotesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Request Log</code> | <code>_请求日志</code> | <code>showRequestLogMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Session Menu</code> | <code>显示会话菜单</code> | <code>showSessionMenuMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Keyboard Shortcut Commands</code> | <code>_显示键盘快捷键命令</code> | <code>showShortcutCommandMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Terminal _Diagnostics...</code> | <code>_终端诊断...</code> | <code>showTerminalInfoMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Terminal Options...</code> | <code>_终端选项...</code> | <code>showTerminalOptionsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show _Toolbar</code> | <code>_显示工具栏</code> | <code>showToolbarMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Tools Menu</code> | <code>显示工具菜单</code> | <code>showToolsMenuMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show View Menu</code> | <code>显示视图菜单</code> | <code>showViewMenuMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show warning bar</code> | <code>显示警告栏</code> | <code>showWarningBarMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Shrink Selection</code> | <code>收缩选择</code> | <code>shrinkSelectionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sign Ou_t</code> | <code>_退出登录</code> | <code>signOutMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sort by Submission Time</code> | <code>按提交时间排序</code> | <code>sortWorkbenchJobsRecordedMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sort by Job State</code> | <code>按任务状态排序</code> | <code>sortWorkbenchJobsStateMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Source</code> | <code>_运行脚本</code> | <code>sourceActiveDocumentMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Source with _Echo</code> | <code>_运行并回显</code> | <code>sourceActiveDocumentWithEchoMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Source as Background Job...</code> | <code>作为后台任务运行脚本...</code> | <code>sourceAsJobMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Source as Workbench Job...</code> | <code>作为 Workbench 任务运行脚本...</code> | <code>sourceAsWorkbenchJobMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Source _File...</code> | <code>_运行文件...</code> | <code>sourceFileMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Bac_k</code> | <code>_后退</code> | <code>sourceNavigateBackMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>For_ward</code> | <code>_前进</code> | <code>sourceNavigateForwardMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Using Spark with RStudio</code> | <code>在 RStudio 中使用 Spark</code> | <code>sparkHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Spark Log</code> | <code>Spark 日志</code> | <code>sparkLogMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Speak Text _Editor Location</code> | <code>_朗读文本编辑器位置</code> | <code>speakEditorLocationMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Split Editor _Down</code> | <code>向下拆分编辑器(_D)</code> | <code>splitEditorDownMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Split Editor _Right</code> | <code>向右拆分编辑器(_R)</code> | <code>splitEditorRightMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Split Into Lines</code> | <code>分割成行</code> | <code>splitIntoLinesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Start Background Job...</code> | <code>_启动后台任务...</code> | <code>startJobMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Start Profiling</code> | <code>_开始性能分析</code> | <code>startProfilerMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Start Workbench _Job...</code> | <code>_启动 Workbench 任务...</code> | <code>startWorkbenchJobMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sto_p Build</code> | <code>_停止构建</code> | <code>stopBuildMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Stop Profilin_g</code> | <code>_停止性能分析</code> | <code>stopProfilerMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Suspend R Session</code> | <code>_挂起 R 会话</code> | <code>suspendSessionMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Switch to Ta_b...</code> | <code>_切换到标签页...</code> | <code>switchToTabMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>S_ync PDF View to Editor</code> | <code>_将 PDF 视图同步到编辑器</code> | <code>synctexSearchMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Terminate R...</code> | <code>_终止 R...</code> | <code>terminateRMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Test Package</code> | <code>_测试程序包</code> | <code>testPackageMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run test for file</code> | <code>运行文件测试</code> | <code>testShinytestFileMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run tests for file</code> | <code>运行文件测试</code> | <code>testTestthatFileMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Detect Missing Packages in This File</code> | <code>_检测此文件缺少的程序包</code> | <code>toggleDetectMissingPackagesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Show Document Outline</code> | <code>_显示文档大纲</code> | <code>toggleDocumentOutlineMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Toggle Editor Split</code> | <code>切换编辑器拆分(_T)</code> | <code>toggleEditorSplitMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Toggle Editor Token Information</code> | <code>_切换编辑器标记信息</code> | <code>toggleEditorTokenInfoMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle _Full Screen</code> | <code>_切换全屏</code> | <code>toggleFullScreenMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle GPU Driver Bug _Workarounds</code> | <code>_切换 GPU 驱动程序问题解决方案</code> | <code>toggleGpuDriverBugWorkaroundsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle GPU _Exclusion List</code> | <code>_切换 GPU 排除列表</code> | <code>toggleGpuExclusionListMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Rainb_ow Fenced Divs</code> | <code>_彩虹色围栏 Div</code> | <code>toggleRainbowFencedDivsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Rain_bow Parentheses</code> | <code>_彩虹括号</code> | <code>toggleRainbowParensMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Use Visual Editor</code> | <code>_使用可视化编辑器</code> | <code>toggleRmdVisualModeMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Screen Reader Support</code> | <code>_屏幕阅读器支持</code> | <code>toggleScreenReaderSupportMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Show Current Memory Usage</code> | <code>_显示当前内存用量</code> | <code>toggleShowMemoryUsageMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Sidebar Left/Right</code> | <code>将侧边栏移到左侧/右侧</code> | <code>toggleSidebarLocationMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show/Hide Sideb_ar</code> | <code>_显示或隐藏侧边栏</code> | <code>toggleSidebarMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Soft _Wrap Long Lines</code> | <code>_长行自动换行</code> | <code>toggleSoftWrapModeMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Tab Key Always Moves Focus</code> | <code>_Tab 键始终移动焦点</code> | <code>toggleTabKeyMovesFocusMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Toolbar</code> | <code>切换工具栏</code> | <code>toggleToolbarMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_C File</code> | <code>_C 文件</code> | <code>touchCDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_C++ File</code> | <code>_C++ 文件</code> | <code>touchCppDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_CSS File</code> | <code>_CSS 文件</code> | <code>touchCssDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_D3 Script</code> | <code>_D3 脚本</code> | <code>touchD3DocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Header File</code> | <code>_头文件</code> | <code>touchHeaderDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_HTML File</code> | <code>_HTML 文件</code> | <code>touchHtmlDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_JavaScript File</code> | <code>_JavaScript 文件</code> | <code>touchJavaScriptDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Markdown File</code> | <code>_Markdown 文件</code> | <code>touchMarkdownDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Python Script</code> | <code>_Python 脚本</code> | <code>touchPythonDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Quarto Document</code> | <code>_Quarto 文档</code> | <code>touchQuartoDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Shell Script</code> | <code>_Shell 脚本</code> | <code>touchShellDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_R Script</code> | <code>_R 脚本</code> | <code>touchSourceDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>SQ_L Script</code> | <code>SQ_L 脚本</code> | <code>touchSqlDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Stan File</code> | <code>_Stan 文件</code> | <code>touchStanDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Text File</code> | <code>_文本文件</code> | <code>touchTextDocMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Undo</code> | <code>_撤销</code> | <code>undoDummyMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Ex_pand All</code> | <code>_全部展开</code> | <code>unfoldAllMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>E_xpand</code> | <code>_展开</code> | <code>unfoldMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Uninsta_ll Posit Assistant...</code> | <code>_卸载 Posit Assistant...</code> | <code>uninstallPositAssistantMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Update Credentials</code> | <code>_更新凭据</code> | <code>updateCredentialsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Check for Package _Updates...</code> | <code>_检查程序包更新...</code> | <code>updatePackagesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Upload Files...</code> | <code>上传文件...</code> | <code>uploadFileMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Using R Markdown</code> | <code>_使用 R Markdown</code> | <code>usingRMarkdownHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Add</code> | <code>添加</code> | <code>vcsAddFilesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Blame FILE on GitHub</code> | <code>_在 GitHub 上追溯 FILE</code> | <code>vcsBlameOnGitHubMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Cleanu_p</code> | <code>_清理</code> | <code>vcsCleanupMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Commit...</code> | <code>_提交...</code> | <code>vcsCommitMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Diff</code> | <code>差异</code> | <code>vcsDiffMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Diff of</code> | <code>_比较差异</code> | <code>vcsFileDiffMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Log of</code> | <code>_查看日志</code> | <code>vcsFileLogMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Revert</code> | <code>_还原</code> | <code>vcsFileRevertMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Ignore...</code> | <code>忽略...</code> | <code>vcsIgnoreMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open File</code> | <code>打开文件</code> | <code>vcsOpenMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Pull Branches</code> | <code>_拉取分支</code> | <code>vcsPullMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Pull with Rebase</code> | <code>_拉取并变基</code> | <code>vcsPullRebaseMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>P_ush Branch</code> | <code>_推送分支</code> | <code>vcsPushMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Delete</code> | <code>删除</code> | <code>vcsRemoveFilesMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Resolve...</code> | <code>解决冲突...</code> | <code>vcsResolveMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Revert...</code> | <code>还原...</code> | <code>vcsRevertMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_History</code> | <code>_历史</code> | <code>vcsShowHistoryMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_View FILE on GitHub</code> | <code>_在 GitHub 上查看 FILE</code> | <code>vcsViewOnGitHubMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Using Version Control</code> | <code>_使用版本控制</code> | <code>versionControlHelpMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Options...</code> | <code>_选项...</code> | <code>versionControlOptionsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Project _Setup...</code> | <code>_项目设置...</code> | <code>versionControlProjectSetupMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Public Key...</code> | <code>显示公钥...</code> | <code>versionControlShowRsaKeyMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_View All Prefs</code> | <code>_查看所有首选项</code> | <code>viewAllPrefsMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy to Clipboard...</code> | <code>复制到剪贴板...</code> | <code>viewerCopyToClipboardMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save as Image...</code> | <code>另存为图像...</code> | <code>viewerSaveAsImageMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save as Web Page...</code> | <code>另存为网页...</code> | <code>viewerSaveAsWebPageMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>What's _New</code> | <code>RStudio _新功能</code> | <code>whatsNewRStudioMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Word Count</code> | <code>_字数统计</code> | <code>wordCountMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Actual _Size</code> | <code>_实际大小</code> | <code>zoomActualSizeMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Zoom In</code> | <code>_放大</code> | <code>zoomInMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom O_ut</code> | <code>_缩小</code> | <code>zoomOutMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>_Zoom Plot...</code> | <code>_缩放图形...</code> | <code>zoomPlotMenuLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |

### Workbench 共享命令标签

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Show Background Jobs Pane</code> | <code>显示后台任务窗格</code> | <code>activateBackgroundJobsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Build Pane</code> | <code>显示构建窗格</code> | <code>activateBuildLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Posit Assistant Pane</code> | <code>显示 Posit Assistant 窗格</code> | <code>activateChatLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Compile PDF Pane</code> | <code>显示“编译 PDF”窗格</code> | <code>activateCompilePDFLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Connections Pane</code> | <code>显示连接窗格</code> | <code>activateConnectionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Focus to Console</code> | <code>将焦点移动到控制台</code> | <code>activateConsoleLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Focus to Console Panel</code> | <code>将焦点移到控制台窗格</code> | <code>activateConsolePaneLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Databricks Pane</code> | <code>显示 Databricks 窗格</code> | <code>activateDatabricksLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Data Pane</code> | <code>显示数据窗格</code> | <code>activateDataLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Deploy Content Pane</code> | <code>显示部署内容窗格</code> | <code>activateDeployContentLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Environment Pane</code> | <code>显示环境窗格</code> | <code>activateEnvironmentLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Files Pane</code> | <code>显示文件窗格</code> | <code>activateFilesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Find in Files</code> | <code>显示“在文件中查找”</code> | <code>activateFindInFilesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Help Pane</code> | <code>显示帮助窗格</code> | <code>activateHelpLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show History Pane</code> | <code>显示历史窗格</code> | <code>activateHistoryLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Markers Pane</code> | <code>显示标记窗格</code> | <code>activateMarkersLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Packages Pane</code> | <code>显示程序包窗格</code> | <code>activatePackagesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Plots Pane</code> | <code>显示图形窗格</code> | <code>activatePlotsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Presentation Pane</code> | <code>显示演示窗格</code> | <code>activatePresentation2Label</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Presentation Pane</code> | <code>显示演示窗格</code> | <code>activatePresentationLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show R Markdown Pane</code> | <code>显示 R Markdown 窗格</code> | <code>activateRMarkdownLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Source Cpp Pane</code> | <code>显示源 Cpp 窗格</code> | <code>activateSourceCppLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Focus to Source</code> | <code>将焦点移到源代码</code> | <code>activateSourceLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show SQL Results Pane</code> | <code>显示 SQL 结果</code> | <code>activateSQLResultsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Focus to Terminal</code> | <code>将焦点移到终端</code> | <code>activateTerminalLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Tutorial Pane</code> | <code>显示教程窗格</code> | <code>activateTutorialLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show VCS Pane</code> | <code>显示 VCS 窗格</code> | <code>activateVcsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Viewer Pane</code> | <code>显示查看器窗格</code> | <code>activateViewerLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Workbench Jobs Pane</code> | <code>显示 Workbench 任务窗格</code> | <code>activateWorkbenchJobsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Assistant: Accept Next Edit Suggestion</code> | <code>助手: 接受下一个编辑建议</code> | <code>assistantAcceptNextEditSuggestionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Assistant: Accept Next Word</code> | <code>Assistant：接受下一个单词</code> | <code>assistantAcceptNextWordLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Assistant: Show Diagnostics</code> | <code>Assistant：显示诊断</code> | <code>assistantDiagnosticsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Assistant: Dismiss Next Edit Suggestion</code> | <code>Assistant：忽略下一项编辑建议</code> | <code>assistantDismissNextEditSuggestionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Posit Assistant</code> | <code>切换 Posit Assistant</code> | <code>assistantPaneToggleLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Assistant: Request Completions</code> | <code>Assistant：请求补全</code> | <code>assistantRequestCompletionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Assistant: Request Suggestions</code> | <code>Assistant：请求建议</code> | <code>assistantRequestSuggestionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Assistant: Sign In</code> | <code>Assistant：登录</code> | <code>assistantSignInLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Assistant: Sign Out</code> | <code>Assistant：退出登录</code> | <code>assistantSignOutLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Assistant: Check Status</code> | <code>Assistant：检查状态</code> | <code>assistantStatusLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Assistant: Toggle Automatic Completions</code> | <code>Assistant：切换自动补全</code> | <code>assistantToggleAutomaticCompletionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Browse Addins</code> | <code>浏览插件</code> | <code>browseAddinsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Install</code> | <code>安装</code> | <code>buildAllButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Install Package</code> | <code>安装程序包</code> | <code>buildAllLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clean and Install</code> | <code>清理并安装</code> | <code>buildFullLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Install Package</code> | <code>安装程序包</code> | <code>buildIncrementalLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Configure Build Tools...</code> | <code>配置构建工具...</code> | <code>buildToolsProjectSetupLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Check for Posit Assistant Updates</code> | <code>检查 Posit Assistant 更新</code> | <code>checkForPositAssistantUpdatesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Check for RStudio Updates</code> | <code>检查 RStudio 更新</code> | <code>checkForUpdatesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Check</code> | <code>检查</code> | <code>checkPackageButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clean</code> | <code>清理</code> | <code>cleanAllButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clean All</code> | <code>全部清理</code> | <code>cleanAllLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear Build Pane Output</code> | <code>清空构建窗格输出</code> | <code>clearBuildLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear Help History</code> | <code>清除帮助历史</code> | <code>clearHelpHistoryLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear All Plots...</code> | <code>清除所有图形...</code> | <code>clearPlotsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear Terminal Buffer</code> | <code>清除终端缓冲</code> | <code>clearTerminalScrollbackBufferLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Close All Documents</code> | <code>关闭所有文档</code> | <code>closeAllSourceDocsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Close All Terminals</code> | <code>关闭所有终端</code> | <code>closeAllTerminalsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Close Other Documents</code> | <code>关闭其他文档</code> | <code>closeOtherSourceDocsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Close Current Project</code> | <code>关闭当前项目</code> | <code>closeProjectLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Close Current Document</code> | <code>关闭当前文档</code> | <code>closeSourceDocLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Close Terminal</code> | <code>关闭终端</code> | <code>closeTerminalLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Retrieve Completions</code> | <code>获取补全</code> | <code>codeCompletionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Comment / Uncomment Selection</code> | <code>注释/取消注释选区</code> | <code>commentUncommentLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Compile PDF</code> | <code>编译 PDF</code> | <code>compilePDFButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Compile to PDF...</code> | <code>编译到 PDF...</code> | <code>compilePDFLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Console: Activate Python</code> | <code>控制台: 激活 Python</code> | <code>consoleActivatePythonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Console: Activate R</code> | <code>控制台: 激活 R</code> | <code>consoleActivateRLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear Console</code> | <code>清空控制台</code> | <code>consoleClearLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find in Console</code> | <code>在控制台中查找</code> | <code>consoleFindLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy</code> | <code>复制</code> | <code>copyFileButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy Files...</code> | <code>复制文件...</code> | <code>copyFileLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy Folder Path to Clipboard</code> | <code>复制文件夹路径到剪贴板</code> | <code>copyFilesPaneCurrentDirectoryLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy To</code> | <code>复制到</code> | <code>copyFileToButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy Files To...</code> | <code>复制文件到...</code> | <code>copyFileToLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy Current Plot to Clipboard...</code> | <code>将当前图形复制到剪贴板...</code> | <code>copyPlotToClipboardLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy RStudio Version</code> | <code>复制 RStudio 版本</code> | <code>copyRStudioVersionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy Document Path</code> | <code>复制文档路径</code> | <code>copySourceDocPathLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Breakpoint on Current Line</code> | <code>切换当前行的断点</code> | <code>debugBreakpointLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear All Breakpoints...</code> | <code>清除全部断点...</code> | <code>debugClearBreakpointsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Continue</code> | <code>继续</code> | <code>debugContinueButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Continue Execution</code> | <code>继续执行</code> | <code>debugContinueLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Finish Function/Loop</code> | <code>完成函数/循环</code> | <code>debugFinishLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Guide on Debugging with RStudio</code> | <code>显示 RStudio 调试指南</code> | <code>debugHelpLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Next</code> | <code>下一个</code> | <code>debugStepButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Step Into Function</code> | <code>步入子函数</code> | <code>debugStepIntoLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute Next Line</code> | <code>执行下一行</code> | <code>debugStepLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Stop</code> | <code>停止</code> | <code>debugStopButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Stop Debugging</code> | <code>停止调试</code> | <code>debugStopLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Delete</code> | <code>删除</code> | <code>deleteFilesButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Delete Files...</code> | <code>删除文件...</code> | <code>deleteFilesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute devtools::load_all()</code> | <code>执行 devtools::load_all()</code> | <code>devtoolsLoadAllLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Enable Prosemirror DevTools</code> | <code>启用 ProseMirror 开发工具</code> | <code>enableProsemirrorDevToolsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run All Code in Current Source File</code> | <code>运行当前源文件中的全部代码</code> | <code>executeAllCodeLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run</code> | <code>运行</code> | <code>executeCodeButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Current Line or Selection</code> | <code>运行当前行或选区</code> | <code>executeCodeLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run</code> | <code>运行</code> | <code>executeCodeWithoutMovingCursorButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Current Line or Selection (Without Moving Cursor)</code> | <code>运行当前行或选区（不移动光标）</code> | <code>executeCodeWithoutMovingCursorLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Current Function Definition</code> | <code>运行当前函数定义</code> | <code>executeCurrentFunctionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute Current Line</code> | <code>执行当前行</code> | <code>executeCurrentLineLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute Current Paragraph</code> | <code>执行当前段落</code> | <code>executeCurrentParagraphLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Section</code> | <code>运行代码节</code> | <code>executeCurrentSectionButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute Current Code Section</code> | <code>执行当前代码节</code> | <code>executeCurrentSectionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute Current Statement</code> | <code>执行当前语句</code> | <code>executeCurrentStatementLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute Code From Current Line to End of Document</code> | <code>执行从当前行到文档末尾的代码</code> | <code>executeFromCurrentLineLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Re-Run Previous Code Execution</code> | <code>重新运行上一次执行的代码</code> | <code>executeLastCodeLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute Code up to Current Line</code> | <code>执行到当前行为止的代码</code> | <code>executeToCurrentLineLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Expand Ragged Selection</code> | <code>扩展不规则选区</code> | <code>expandRaggedSelectionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Expand to Matching Bracket</code> | <code>展开到匹配括号</code> | <code>expandToMatchingLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Export</code> | <code>导出</code> | <code>exportFilesButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Export Files...</code> | <code>导出文件...</code> | <code>exportFilesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find All</code> | <code>查找所有</code> | <code>findAllLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Search in Build Pane</code> | <code>在构建窗格中搜索</code> | <code>findBuildLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Next</code> | <code>下一个</code> | <code>findNextButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find Next Occurrence</code> | <code>查找下一个匹配项</code> | <code>findNextLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Prev</code> | <code>上一个</code> | <code>findPreviousButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find Previous Occurrence</code> | <code>查找上一个匹配项</code> | <code>findPreviousLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find / Replace Text...</code> | <code>查找/替换文本...</code> | <code>findReplaceLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>All</code> | <code>全部</code> | <code>findSelectAllButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find and Select All</code> | <code>查找并选中所有</code> | <code>findSelectAllLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open First Tab</code> | <code>打开第一个标签页</code> | <code>firstTabLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Focus Other Editor Split</code> | <code>聚焦另一拆分视图</code> | <code>focusOtherEditorSplitLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Collapse All Folds</code> | <code>折叠全部区域</code> | <code>foldAllLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Collapse Fold</code> | <code>折叠</code> | <code>foldLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Quit the Current R Session Even if Busy</code> | <code>退出当前 R 会话（即使会话正忙）</code> | <code>forceQuitSessionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go To File/Function...</code> | <code>转到文件/函数...</code> | <code>goToFileFunctionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Help for Current Function</code> | <code>显示当前函数的帮助</code> | <code>goToHelpLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to Line...</code> | <code>转到行...</code> | <code>goToLineLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to Next Chunk</code> | <code>转到下一个代码块</code> | <code>goToNextChunkLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to Next Section</code> | <code>转到下一节</code> | <code>goToNextSectionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to Previous Chunk</code> | <code>转到上一个代码块</code> | <code>goToPrevChunkLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to Previous Section</code> | <code>转到上一节</code> | <code>goToPrevSectionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go To Profile Sources</code> | <code>转到性能分析源代码</code> | <code>gotoProfileSourceLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Previous Help Topic</code> | <code>上一个帮助主题</code> | <code>helpBackLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Next Help Topic</code> | <code>下一个帮助主题</code> | <code>helpForwardLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show R Help</code> | <code>显示 R 帮助</code> | <code>helpHomeLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Help in New Window</code> | <code>在新窗口中显示帮助</code> | <code>helpPopoutLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Back</code> | <code>后退</code> | <code>historyDismissContextButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Dismiss History Context</code> | <code>关闭历史记录上下文</code> | <code>historyDismissContextLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Done</code> | <code>完成</code> | <code>historyDismissResultsButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Dismiss History Results</code> | <code>关闭历史记录结果</code> | <code>historyDismissResultsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>To Console</code> | <code>发送至控制台</code> | <code>historySendToConsoleButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Send Command to Console</code> | <code>向控制台发送命令</code> | <code>historySendToConsoleLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>To Source</code> | <code>发送到源代码</code> | <code>historySendToSourceButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert Command into Document</code> | <code>在文档中插入命令</code> | <code>historySendToSourceLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show In Context</code> | <code>在上下文中显示</code> | <code>historyShowContextLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>From CSV</code> | <code>从 CSV 导入</code> | <code>importDatasetFromCsvLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>From Text (base)...</code> | <code>从文本（base）...</code> | <code>importDatasetFromCsvUsingBaseLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>From Text (readr)...</code> | <code>从文本（readr）...</code> | <code>importDatasetFromCsvUsingReadrLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Import Dataset from File...</code> | <code>从文件导入数据集...</code> | <code>importDatasetFromFileLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Import Dataset from SAS...</code> | <code>从 SAS 导入数据集...</code> | <code>importDatasetFromSASLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Import Dataset from SPSS...</code> | <code>从 SPSS 导入数据集...</code> | <code>importDatasetFromSAVLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Import Dataset from Stata...</code> | <code>从 Stata 导入数据集...</code> | <code>importDatasetFromStataLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Import Dataset from URL...</code> | <code>从 URL 导入数据集...</code> | <code>importDatasetFromURLLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Import Dataset from Excel...</code> | <code>从 Excel 导入数据集...</code> | <code>importDatasetFromXLSLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert Assignment Operator</code> | <code>插入赋值运算符</code> | <code>insertAssignmentOperatorLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert Pipe Operator</code> | <code>插入管道运算符</code> | <code>insertPipeOperatorLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Install</code> | <code>安装</code> | <code>installPackageButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Install Packages...</code> | <code>安装程序包...</code> | <code>installPackageLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Interrupt R Session</code> | <code>中断 R 会话</code> | <code>interruptRLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Send Interrupt</code> | <code>发送中断</code> | <code>interruptTerminalLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Jump To...</code> | <code>跳转到...</code> | <code>jumpToLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Jump to Matching Bracket</code> | <code>跳转到匹配括号</code> | <code>jumpToMatchingLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Knit</code> | <code>编织</code> | <code>knitDocumentButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Knit Current Document</code> | <code>编织当前文档</code> | <code>knitDocumentLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Knit with Parameters...</code> | <code>使用参数编织...</code> | <code>knitWithParametersLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Last Tab</code> | <code>打开最后一个标签页</code> | <code>lastTabLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Console on Left</code> | <code>控制台显示在左侧</code> | <code>layoutConsoleOnLeftLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Console on Right</code> | <code>控制台显示在右侧</code> | <code>layoutConsoleOnRightLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show All Panes</code> | <code>显示所有窗格</code> | <code>layoutEndZoomLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Build</code> | <code>缩放构建</code> | <code>layoutZoomBuildLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Posit Assistant</code> | <code>缩放 Posit Assistant</code> | <code>layoutZoomChatLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Connections</code> | <code>缩放连接窗格</code> | <code>layoutZoomConnectionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Console</code> | <code>缩放控制台</code> | <code>layoutZoomConsoleLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Console Pane</code> | <code>缩放控制台窗格</code> | <code>layoutZoomConsolePaneLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Zoom for Current Pane</code> | <code>切换当前窗格的缩放</code> | <code>layoutZoomCurrentPaneLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Environment</code> | <code>缩放环境</code> | <code>layoutZoomEnvironmentLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Files</code> | <code>缩放文件</code> | <code>layoutZoomFilesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Help</code> | <code>缩放帮助</code> | <code>layoutZoomHelpLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom History</code> | <code>缩放历史记录</code> | <code>layoutZoomHistoryLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Left / Center Column</code> | <code>缩放左侧/中间列</code> | <code>layoutZoomLeftColumnLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Packages</code> | <code>缩放程序包</code> | <code>layoutZoomPackagesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Plots</code> | <code>缩放图形</code> | <code>layoutZoomPlotsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Presentation</code> | <code>缩放演示文稿</code> | <code>layoutZoomPresentation2Label</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Right Column</code> | <code>缩放右侧列</code> | <code>layoutZoomRightColumnLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Sidebar</code> | <code>缩放侧边栏</code> | <code>layoutZoomSidebarLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Source</code> | <code>缩放源代码窗格</code> | <code>layoutZoomSourceLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Tutorial</code> | <code>缩放教程</code> | <code>layoutZoomTutorialLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom VCS</code> | <code>缩放 VCS</code> | <code>layoutZoomVcsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom Viewer</code> | <code>缩放查看器</code> | <code>layoutZoomViewerLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Markdown Quick Reference</code> | <code>打开 Markdown 快速参考</code> | <code>markdownHelpLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Maximize Console Pane</code> | <code>切换控制台窗格最大化</code> | <code>maximizeConsoleLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Maximize Source Pane</code> | <code>切换源代码窗格最大化</code> | <code>maximizeSourceLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Maximize Tab Group One</code> | <code>切换最大化标签组 1</code> | <code>maximizeTabSet1Label</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Maximize Tab Group Two</code> | <code>切换第二个标签页组最大化</code> | <code>maximizeTabSet2Label</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move</code> | <code>移动</code> | <code>moveFilesButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Files...</code> | <code>移动文件...</code> | <code>moveFilesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Tab Left</code> | <code>将标签页靠左</code> | <code>moveTabLeftLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Tab Right</code> | <code>将标签页靠右</code> | <code>moveTabRightLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Tab to First</code> | <code>将标签页移动到第一个</code> | <code>moveTabToFirstLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Tab to Last</code> | <code>将标签页移动到最后一个</code> | <code>moveTabToLastLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>New Connection</code> | <code>新建连接</code> | <code>newConnectionButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>New Folder</code> | <code>新建文件夹</code> | <code>newFolderButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a New Folder...</code> | <code>新建文件夹...</code> | <code>newFolderLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a New Project...</code> | <code>新建项目...</code> | <code>newProjectLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open a New R Session</code> | <code>打开新的 R 会话</code> | <code>newSessionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Add Source Column</code> | <code>添加源代码列</code> | <code>newSourceColumnLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a New R Script</code> | <code>新建 R 脚本</code> | <code>newSourceDocLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>New Terminal</code> | <code>新建终端</code> | <code>newTerminalLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Next Plot</code> | <code>显示下一个图形</code> | <code>nextPlotLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Next Tab</code> | <code>打开下一个标签页</code> | <code>nextTabLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Next Terminal</code> | <code>下一终端</code> | <code>nextTerminalLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Each File in New Columns</code> | <code>在新列中分别打开每个文件</code> | <code>openEachFileInColumnsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Selected in Source Pane</code> | <code>在源代码窗格中打开所选项</code> | <code>openFilesInSinglePaneLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Page with Web Browser</code> | <code>使用 Web 浏览器打开页面</code> | <code>openHtmlExternalLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Next File on Filesystem</code> | <code>在文件系统中打开下一个文件</code> | <code>openNextFileOnFilesystemLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Previous File on Filesystem</code> | <code>在文件系统中打开上一个文件</code> | <code>openPreviousFileOnFilesystemLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Profile in Browser...</code> | <code>在浏览器中打开性能分析结果...</code> | <code>openProfileInBrowserLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Profile...</code> | <code>打开性能分析结果...</code> | <code>openProfileLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Project with New R Session</code> | <code>在新 R 会话中打开项目</code> | <code>openProjectInNewWindowLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Project...</code> | <code>打开项目...</code> | <code>openProjectLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Shared Project</code> | <code>打开共享项目</code> | <code>openSharedProjectLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open File...</code> | <code>打开文件...</code> | <code>openSourceDocLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open File in New Column...</code> | <code>在新列中打开文件...</code> | <code>openSourceDocNewColumnLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Bundle</code> | <code>打包</code> | <code>packratBundleButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Options</code> | <code>选项</code> | <code>packratOptionsButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Pane Layout Options...</code> | <code>窗格布局选项...</code> | <code>paneLayoutLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Paste Last Yank</code> | <code>粘贴上次复制的内容</code> | <code>pasteLastYankLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Plumber API in Web Browser</code> | <code>在 Web 浏览器中运行 Plumber API</code> | <code>plumberRunInBrowserLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Plumber API in New Pane</code> | <code>在新窗格中运行 Plumber API</code> | <code>plumberRunInPaneLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Plumber API in RStudio Viewer</code> | <code>在 RStudio 查看器中运行 Plumber API</code> | <code>plumberRunInViewerLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Posit Assistant in Separate Window</code> | <code>在独立窗口中显示 Posit Assistant</code> | <code>popOutChatLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Document in New Window</code> | <code>在新窗口中显示文档</code> | <code>popoutDocLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Edit</code> | <code>编辑</code> | <code>presentation2EditButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Present</code> | <code>演示</code> | <code>presentation2PresentButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Print</code> | <code>打印</code> | <code>presentation2PrintButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Preview</code> | <code>预览</code> | <code>previewHTMLButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Preview Document as HTML</code> | <code>预览文档为 HTML</code> | <code>previewHTMLLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Preview</code> | <code>预览</code> | <code>previewJSButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Preview</code> | <code>预览</code> | <code>previewSqlButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Previous Plot</code> | <code>显示上一个图形</code> | <code>previousPlotLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Previous Tab</code> | <code>打开上一个标签页</code> | <code>previousTabLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Previous Terminal</code> | <code>上一个终端</code> | <code>previousTerminalLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Print Help Topic</code> | <code>打印帮助主题</code> | <code>printHelpLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Profile Current Line or Selection</code> | <code>分析当前行或选区的性能</code> | <code>profileCodeLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Profile Current Line or Selection Without Focus</code> | <code>分析当前行或选区的性能但不转移焦点</code> | <code>profileCodeWithoutFocusLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Guide on Profiling with RStudio</code> | <code>显示 RStudio 性能分析指南</code> | <code>profileHelpLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Edit Project Options...</code> | <code>编辑项目选项...</code> | <code>projectOptionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Publish</code> | <code>发布</code> | <code>publishHTMLButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Publish to RPubs...</code> | <code>发布到 RPubs...</code> | <code>publishHTMLLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Render</code> | <code>渲染</code> | <code>quartoRenderDocumentButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Render Current Document</code> | <code>渲染当前文档</code> | <code>quartoRenderDocumentLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Add</code> | <code>添加</code> | <code>quickAddNextButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find and Add Next</code> | <code>查找和添加下一个</code> | <code>quickAddNextLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Quit the Current R Session</code> | <code>退出当前 R 会话</code> | <code>quitSessionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reformat Current Selection</code> | <code>重新格式化当前选区</code> | <code>reformatCodeLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reformat Current Document</code> | <code>重新格式化当前文档</code> | <code>reformatDocumentLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh Connection Data</code> | <code>刷新连接数据</code> | <code>refreshConnectionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh Help Topic</code> | <code>刷新帮助主题</code> | <code>refreshHelpLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh Packages Pane</code> | <code>刷新程序包窗格</code> | <code>refreshPackagesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh Current Plot</code> | <code>刷新当前图形</code> | <code>refreshPlotLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reindent Selection</code> | <code>重新缩进选区</code> | <code>reindentLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reload Plumber API</code> | <code>重新加载 Plumber API</code> | <code>reloadPlumberAPILabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reload Shiny Application</code> | <code>重新加载 Shiny 应用</code> | <code>reloadShinyAppLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Remove Editor Split</code> | <code>取消编辑器拆分</code> | <code>removeEditorSplitLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Remove Current Plot...</code> | <code>删除当前图形...</code> | <code>removePlotLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Rename</code> | <code>重命名</code> | <code>renameFileButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Rename Current File...</code> | <code>重命名当前文件...</code> | <code>renameFileLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Rename Symbol in Scope</code> | <code>重命名作用域内的符号</code> | <code>renameInScopeLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Rename Current Document</code> | <code>重命名当前文档</code> | <code>renameSourceDocLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Rename Terminal</code> | <code>重命名终端</code> | <code>renameTerminalLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Help</code> | <code>帮助</code> | <code>renvHelpButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restore</code> | <code>恢复</code> | <code>renvRestoreButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Snapshot</code> | <code>快照</code> | <code>renvSnapshotButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reopen Current Document with Encoding...</code> | <code>使用指定编码重新打开当前文档...</code> | <code>reopenSourceDocWithEncodingLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Replace</code> | <code>替换</code> | <code>replaceAndFindButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Replace and Find Next</code> | <code>替换和查找下一个</code> | <code>replaceAndFindLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restart R Session and Clear Chunk Output</code> | <code>重新启动 R 会话并清除代码块输出</code> | <code>restartRClearOutputLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restart R Session</code> | <code>重启 R 会话</code> | <code>restartRLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restart R Session and Run All Chunks</code> | <code>重新启动 R 会话并运行所有代码块</code> | <code>restartRRunAllChunksLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restore Default Pane and Tab Layout...</code> | <code>恢复默认窗格和标签页布局...</code> | <code>restoreDefaultPaneAndTabLayoutLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restore Default Pane and Tab Layout (no prompt)</code> | <code>恢复默认窗格和标签页布局（不提示）</code> | <code>restoreDefaultPaneAndTabLayoutNoPromptLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Return Posit Assistant to Main Window</code> | <code>将 Posit Assistant 返回主窗口</code> | <code>returnChatToMainLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Return Document to Main Window</code> | <code>返回文档到主窗口</code> | <code>returnDocToMainLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Build Package Documentation</code> | <code>构建程序包文档</code> | <code>roxygenizePackageLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Document</code> | <code>运行文档</code> | <code>runDocumentFromServerDotRButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save All Source Documents</code> | <code>保存所有源文档</code> | <code>saveAllSourceDocsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save As</code> | <code>另存为</code> | <code>saveHtmlPreviewAsButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save Plot As Image...</code> | <code>将图形另存为图像...</code> | <code>savePlotAsImageLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save Plot as PDF...</code> | <code>将图形另存为 PDF...</code> | <code>savePlotAsPdfLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save Profile As...</code> | <code>性能分析结果另存为...</code> | <code>saveProfileAsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save as</code> | <code>另存为</code> | <code>saveSourceDocAsButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save Current Document As...</code> | <code>当前文档另存为...</code> | <code>saveSourceDocAsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save Current Document</code> | <code>保存当前文档</code> | <code>saveSourceDocLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save Current Document with Encoding...</code> | <code>使用指定编码保存当前文档...</code> | <code>saveSourceDocWithEncodingLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy Terminal to Editor</code> | <code>复制终端到编辑器</code> | <code>sendTerminalToEditorLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Send Selection to Terminal</code> | <code>将选区发送到终端</code> | <code>sendToTerminalLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Set As Working Directory</code> | <code>设置当前目录为工作目录</code> | <code>setAsWorkingDirLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Set Working Directory...</code> | <code>设置工作目录...</code> | <code>setWorkingDirLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Set Working Directory to Current Document's Directory</code> | <code>将工作目录设为当前文档所在目录</code> | <code>setWorkingDirToActiveDocLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Set Working Directory to Directory in Files Pane</code> | <code>将工作目录设为“文件”窗格中的目录</code> | <code>setWorkingDirToFilesPaneLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Set Working Directory to Project Directory</code> | <code>将工作目录设为项目目录</code> | <code>setWorkingDirToProjectDirLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Share Project...</code> | <code>共享项目...</code> | <code>shareProjectLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Compare Results</code> | <code>比较结果</code> | <code>shinyCompareTestButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Compare test results for Shiny application</code> | <code>比较 Shiny 应用的测试结果</code> | <code>shinyCompareTestLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Record Test</code> | <code>记录测试</code> | <code>shinyRecordTestButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Record a test for Shiny</code> | <code>为 Shiny 应用录制测试</code> | <code>shinyRecordTestLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Tests</code> | <code>运行测试</code> | <code>shinyRunAllTestsButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run tests for Shiny application</code> | <code>运行 Shiny 应用的测试</code> | <code>shinyRunAllTestsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Shiny Application in Web Browser</code> | <code>在 Web 浏览器中运行 Shiny 应用</code> | <code>shinyRunInBrowserLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Shiny Application in New Pane</code> | <code>在新窗格中运行 Shiny 应用</code> | <code>shinyRunInPaneLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Shiny Application in RStudio Viewer</code> | <code>在 RStudio 查看器中运行 Shiny 应用</code> | <code>shinyRunInViewerLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>About RStudio...</code> | <code>关于 RStudio...</code> | <code>showAboutDialogLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Appearance Options...</code> | <code>外观选项...</code> | <code>showAppearanceOptionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Assistant Options...</code> | <code>Assistant 选项...</code> | <code>showAssistantOptionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Code Options...</code> | <code>代码选项...</code> | <code>showCodeOptionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Command Palette</code> | <code>显示命令面板</code> | <code>showCommandPaletteLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Console Options...</code> | <code>控制台选项...</code> | <code>showConsoleOptionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Diagnostics for Current Document</code> | <code>显示当前文档的诊断</code> | <code>showDiagnosticsActiveDocumentLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Diagnostics for Current Project</code> | <code>显示当前项目的诊断</code> | <code>showDiagnosticsProjectLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Folder in New Window</code> | <code>在新窗口中显示文件夹</code> | <code>showFolderLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Log</code> | <code>日志</code> | <code>showHtmlPreviewLogButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Manage License...</code> | <code>管理许可证...</code> | <code>showLicenseDialogLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Manipulator for Current Plot</code> | <code>显示当前图形的交互控件</code> | <code>showManipulatorLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Packages Options...</code> | <code>程序包选项...</code> | <code>showPackagesOptionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show PDF in External Viewer</code> | <code>在外部查看器中显示 PDF</code> | <code>showPdfExternalLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Publishing Options...</code> | <code>发布选项...</code> | <code>showPublishingOptionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Python Options...</code> | <code>Python 选项...</code> | <code>showPythonOptionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>R Markdown Options...</code> | <code>R Markdown 选项...</code> | <code>showRMarkdownOptionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Spelling Options...</code> | <code>拼写选项...</code> | <code>showSpellingOptionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Splash Screen</code> | <code>显示启动画面</code> | <code>showSplashScreenLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sweave Options...</code> | <code>Sweave 选项...</code> | <code>showSweaveOptionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Terminal Diagnostics...</code> | <code>终端诊断…</code> | <code>showTerminalInfoLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Trust Dialog</code> | <code>显示信任对话框</code> | <code>showTrustRequestDialogLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Git/SVN Version Control Options...</code> | <code>Git/SVN 版本控制选项...</code> | <code>showVcsOptionsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sign Out</code> | <code>退出登录</code> | <code>signOutLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Source</code> | <code>运行脚本</code> | <code>sourceActiveDocumentButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Log</code> | <code>日志</code> | <code>sparkLogButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View Spark Log</code> | <code>查看 Spark 日志</code> | <code>sparkLogLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Split Editor Down</code> | <code>向下拆分编辑器</code> | <code>splitEditorDownLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Split Editor Right</code> | <code>向右拆分编辑器</code> | <code>splitEditorRightLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Start Background Job</code> | <code>启动后台任务</code> | <code>startJobButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Start Workbench Job</code> | <code>开始 Workbench 任务</code> | <code>startWorkbenchJobButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Stop Profiling</code> | <code>停止性能分析</code> | <code>stopProfilerButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Suspend R Session</code> | <code>暂停 R 会话</code> | <code>suspendSessionLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Switch Focus between Source/Console</code> | <code>在源代码与控制台之间切换焦点</code> | <code>switchFocusSourceConsoleLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Switch to Tab...</code> | <code>切换到标签页...</code> | <code>switchToTabLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Terminate R Session</code> | <code>终止 R 会话</code> | <code>terminateRLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Test</code> | <code>测试</code> | <code>testPackageButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Test</code> | <code>运行测试</code> | <code>testShinytestFileButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run shinytest2 Test</code> | <code>运行 shinytest2 测试</code> | <code>testShinytestFileLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run Tests</code> | <code>运行测试</code> | <code>testTestthatFileButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run testthat Tests</code> | <code>运行 testthat 测试</code> | <code>testTestthatFileLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Detection of Missing Packages in This File</code> | <code>切换此文件的缺失程序包检测</code> | <code>toggleDetectMissingPackagesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Outline</code> | <code>大纲</code> | <code>toggleDocumentOutlineButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Document Outline</code> | <code>切换文档大纲</code> | <code>toggleDocumentOutlineLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Editor Split</code> | <code>切换编辑器拆分</code> | <code>toggleEditorSplitLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Rainbow Fenced Divs Mode</code> | <code>切换彩虹色围栏 Div 模式</code> | <code>toggleRainbowFencedDivsLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Rainbow Parentheses Mode</code> | <code>切换彩虹括号模式</code> | <code>toggleRainbowParensLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Visual Markdown Editor</code> | <code>切换 Markdown 可视化编辑器</code> | <code>toggleRmdVisualModeLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Memory Usage Display in Environment Pane</code> | <code>切换环境窗格中的内存使用情况显示</code> | <code>toggleShowMemoryUsageLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show/Hide Sidebar</code> | <code>显示/隐藏侧边栏</code> | <code>toggleSidebarLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move Sidebar Location Left/Right</code> | <code>左/右移动边栏位置</code> | <code>toggleSidebarLocationLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Soft Wrap Mode</code> | <code>切换自动换行模式</code> | <code>toggleSoftWrapModeLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle Visibility of Toolbar</code> | <code>切换工具栏的可见度</code> | <code>toggleToolbarLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a Blank R script in current directory</code> | <code>在当前目录中创建空白 R 脚本</code> | <code>touchSourceDocLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom</code> | <code>缩放</code> | <code>tutorialZoomButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Expand All Folds</code> | <code>展开全部区域</code> | <code>unfoldAllLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Expand Fold</code> | <code>展开折叠</code> | <code>unfoldLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Uninstall Posit Assistant</code> | <code>卸载 Posit Assistant</code> | <code>uninstallPositAssistantLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Update</code> | <code>更新</code> | <code>updatePackagesButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Update Packages...</code> | <code>更新程序包...</code> | <code>updatePackagesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Upload</code> | <code>上传</code> | <code>uploadFileButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Upload Files...</code> | <code>上传文件...</code> | <code>uploadFileLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Add</code> | <code>添加</code> | <code>vcsAddFilesButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Add Files or Folders</code> | <code>添加文件或文件夹</code> | <code>vcsAddFilesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View 'git blame' on GitHub</code> | <code>在 GitHub 上查看 git blame</code> | <code>vcsBlameOnGitHubLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Cleanup</code> | <code>清理</code> | <code>vcsCleanupButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Commit</code> | <code>提交</code> | <code>vcsCommitButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Commit Pending Changes</code> | <code>提交待处理的更改</code> | <code>vcsCommitLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Diff</code> | <code>差异</code> | <code>vcsDiffButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Diff Selected Files</code> | <code>比较所选文件的差异</code> | <code>vcsDiffLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Differences for File</code> | <code>显示文件的差异</code> | <code>vcsFileDiffLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Changelog for File</code> | <code>显示文件的更改日志</code> | <code>vcsFileLogLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Revert Changes to File</code> | <code>还原文件更改</code> | <code>vcsFileRevertLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Ignore</code> | <code>忽略</code> | <code>vcsIgnoreButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Ignore Files or Folders</code> | <code>忽略文件或文件夹</code> | <code>vcsIgnoreLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open Selected Files(s)</code> | <code>打开选中的文件</code> | <code>vcsOpenLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Pull</code> | <code>拉取</code> | <code>vcsPullButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Pull with Rebase</code> | <code>拉取并变基</code> | <code>vcsPullRebaseButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Push</code> | <code>推送</code> | <code>vcsPushButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh File List from Source Control</code> | <code>从版本控制刷新文件列表</code> | <code>vcsRefreshLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Delete</code> | <code>删除</code> | <code>vcsRemoveFilesButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Remove Files or Folders</code> | <code>删除文件或文件夹</code> | <code>vcsRemoveFilesLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Resolve</code> | <code>解决</code> | <code>vcsResolveButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Revert</code> | <code>还原</code> | <code>vcsRevertButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Revert Changes</code> | <code>还原更改</code> | <code>vcsRevertLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>History</code> | <code>历史</code> | <code>vcsShowHistoryButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View History of Previous Commits</code> | <code>查看以往提交的历史</code> | <code>vcsShowHistoryLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View file on GitHub</code> | <code>在 GitHub 上查看文件</code> | <code>vcsViewOnGitHubLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Public Key...</code> | <code>显示公钥...</code> | <code>versionControlShowRsaKeyLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Edit</code> | <code>编辑</code> | <code>viewerEditSourceButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom</code> | <code>缩放</code> | <code>viewerZoomButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Yank After Cursor</code> | <code>粘贴到光标后</code> | <code>yankAfterCursorLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Yank Before Cursor</code> | <code>粘贴到光标前</code> | <code>yankBeforeCursorLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Zoom</code> | <code>缩放</code> | <code>zoomPlotButtonLabel</code> | [Keyboard Shortcuts / GWT R055][R055] |

### Workbench 命令说明 / tooltip（非快捷键名称）

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Accept the current assistant next edit suggestion, if any.</code> | <code>接受当前助手下一个编辑建议(如果有的话)。</code> | <code>assistantAcceptNextEditSuggestionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Accept the next word of the current assistant suggestion, if any.</code> | <code>接受当前 Assistant 建议中的下一个单词（如果有）。</code> | <code>assistantAcceptNextWordDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Print an assistant diagnostic report, indicating how the assistant agent has been configured.</code> | <code>输出 Assistant 诊断报告，说明 Assistant 代理的配置方式。</code> | <code>assistantDiagnosticsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Dismiss the current assistant next edit suggestion, if any.</code> | <code>忽略当前 Assistant 的下一项编辑建议（如果有）。</code> | <code>assistantDismissNextEditSuggestionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle the visibility of the Posit Assistant pane.</code> | <code>显示或隐藏 Posit Assistant 窗格。</code> | <code>assistantPaneToggleDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Request assistant completions at the cursor position.</code> | <code>在光标位置请求 Assistant 补全。</code> | <code>assistantRequestCompletionsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Request assistant suggestions at the cursor position.</code> | <code>在光标位置请求 Assistant 建议。</code> | <code>assistantRequestSuggestionsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sign in to the assistant service.</code> | <code>登录 Assistant 服务。</code> | <code>assistantSignInDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sign out from the assistant service.</code> | <code>退出 Assistant 服务。</code> | <code>assistantSignOutDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Check the status of the assistant agent.</code> | <code>检查 Assistant 代理的状态。</code> | <code>assistantStatusDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle assistant completions on and off in a session.</code> | <code>在当前会话中启用或停用 Assistant 补全。</code> | <code>assistantToggleAutomaticCompletionsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Guide to using R Markdown</code> | <code>R 演示文稿制作指南</code> | <code>authoringRPresentationsHelpDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Browse addins</code> | <code>浏览插件</code> | <code>browseAddinsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Browse available cheat sheets in your web browser</code> | <code>在 Web 浏览器中浏览可用的速查表</code> | <code>browseCheatSheetsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Install the package and restart R</code> | <code>安装程序包并重新启动 R</code> | <code>buildAllDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Build a binary package</code> | <code>构建二进制程序包</code> | <code>buildBinaryPackageDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clean, install the package, and restart R</code> | <code>清理、安装程序包并重新启动 R</code> | <code>buildFullDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Install the package and restart R</code> | <code>安装程序包并重新启动 R</code> | <code>buildIncrementalDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Build a source package</code> | <code>构建源程序包</code> | <code>buildSourcePackageDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Configure build tools</code> | <code>配置构建工具</code> | <code>buildToolsProjectSetupDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>R CMD check</code> | <code>R CMD 检查</code> | <code>checkPackageDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Check spelling in document</code> | <code>检查文档中的拼写</code> | <code>checkSpellingDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clean all</code> | <code>全部清理</code> | <code>cleanAllDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clean up all completed background jobs</code> | <code>清理所有已完成的后台任务</code> | <code>clearBackgroundJobsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear build</code> | <code>清空构建输出</code> | <code>clearBuildDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear history</code> | <code>清除历史记录</code> | <code>clearHelpHistoryDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear all history entries</code> | <code>清空全部历史记录</code> | <code>clearHistoryDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear the knitr cache for the current document</code> | <code>清除当前文档的 knitr 缓存</code> | <code>clearKnitrCacheDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear all Plots</code> | <code>清除所有图形</code> | <code>clearPlotsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear the prerendered output for the current document</code> | <code>清除当前文档的预渲染输出</code> | <code>clearPrerenderedOutputDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear knitr cache for this presentation</code> | <code>清除此演示文稿的缓存</code> | <code>clearPresentationCacheDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear terminal</code> | <code>清除终端</code> | <code>clearTerminalScrollbackBufferDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear objects from the workspace</code> | <code>清空工作区中的对象</code> | <code>clearWorkspaceDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Close the currently open project</code> | <code>关闭当前打开的项目</code> | <code>closeProjectDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Close current terminal session</code> | <code>关闭当前终端会话</code> | <code>closeTerminalDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show code completions at the current cursor location</code> | <code>在当前光标位置显示代码补全</code> | <code>codeCompletionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Comment or uncomment the current line/selection</code> | <code>注释或取消注释当前行/选区</code> | <code>commentUncommentDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Compile a report from the current R script</code> | <code>从当前 R 脚本编译报告</code> | <code>compileNotebookDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Compile a PDF from the current LaTeX or Sweave document</code> | <code>从当前 LaTeX 或 Sweave 文档编译 PDF</code> | <code>compilePDFDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear console</code> | <code>清除控制台中内容</code> | <code>consoleClearDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find in Console</code> | <code>在控制台中查找</code> | <code>consoleFindDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy selected file or folder</code> | <code>复制选中的文件或文件夹</code> | <code>copyFileDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy selected file or folder to another folder</code> | <code>将选中的文件或文件夹复制到其它文件夹</code> | <code>copyFileToDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy the current plot to the clipboard</code> | <code>将当前图复制到剪贴板</code> | <code>copyPlotToClipboardDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy current document path</code> | <code>复制当前文档路径</code> | <code>copySourceDocPathDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Set or remove a breakpoint on the current line of code</code> | <code>设置或删除当前代码行上的断点</code> | <code>debugBreakpointDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Remove all the breakpoints in the current project</code> | <code>删除当前项目中的所有断点</code> | <code>debugClearBreakpointsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Continue execution until the next breakpoint is encountered</code> | <code>继续执行直到遇到下一个断点</code> | <code>debugContinueDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute the remainder of the current function or loop</code> | <code>执行当前函数的剩余部分或循环</code> | <code>debugFinishDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Guide to debugging features</code> | <code>调试特性指南</code> | <code>debugHelpDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute the next line of code</code> | <code>执行下一行代码</code> | <code>debugStepDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Step into the current function call</code> | <code>步入当前函数调用</code> | <code>debugStepIntoDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Exit debug mode</code> | <code>退出调试模式</code> | <code>debugStopDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Delete selected files or folders</code> | <code>删除选中的文件或文件夹</code> | <code>deleteFilesDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute devtools::load_all</code> | <code>执行 devtools::load_all</code> | <code>devtoolsLoadAllDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Disconnect from a connection</code> | <code>从连接断开</code> | <code>disconnectConnectionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Edit code snippets</code> | <code>编辑代码片段</code> | <code>editCodeSnippetsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new cursor at start of each line in selection</code> | <code>在选中的每行开头创建新光标</code> | <code>editLinesFromStartDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Edit the R Markdown format options for the current file</code> | <code>编辑当前文件的 R Markdown 格式选项</code> | <code>editRmdFormatOptionsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Enable Prosemirror DevTools</code> | <code>启用 ProseMirror 开发工具</code> | <code>enableProsemirrorDevToolsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Break when any unhandled error occurs</code> | <code>发生任何未处理错误时中断执行</code> | <code>errorsBreakDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Print the error message when an unhandled error occurs</code> | <code>未处理错误发生时打印错误消息</code> | <code>errorsMessageDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show the error inspector when an unhandled error occurs</code> | <code>未处理错误发生时显示错误检查器</code> | <code>errorsTracebackDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run all of the code in the source file</code> | <code>运行源文件中的所有代码</code> | <code>executeAllCodeDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the current line or selection</code> | <code>运行当前行或所选内容</code> | <code>executeCodeDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the current line or selection without moving the cursor</code> | <code>运行当前行或选区，但不移动光标</code> | <code>executeCodeWithoutMovingCursorDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the current code chunk</code> | <code>运行当前代码块</code> | <code>executeCurrentChunkDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the top-level function definition, if any, that contains the cursor</code> | <code>运行光标所在的顶层函数定义（如果有）</code> | <code>executeCurrentFunctionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute the line which contains the cursor</code> | <code>执行包含光标的行</code> | <code>executeCurrentLineDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute the current paragraph of code, delimited by blank lines.</code> | <code>执行以空白行分隔的当前代码段落。</code> | <code>executeCurrentParagraphDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the code section that contains the cursor</code> | <code>运行包含光标的代码区域</code> | <code>executeCurrentSectionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Execute the entire R statement which contains the cursor.</code> | <code>执行包含光标的全部 R 语句。</code> | <code>executeCurrentStatementDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run from the current line through the end of the source file</code> | <code>从当前行运行到源文件的末尾</code> | <code>executeFromCurrentLineDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Re-run the previous code region</code> | <code>重新运行上一个代码区域</code> | <code>executeLastCodeDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the next code chunk</code> | <code>运行下一个代码块</code> | <code>executeNextChunkDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run all chunks above the current one</code> | <code>运行当前代码块上方的所有代码块</code> | <code>executePreviousChunksDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the initial setup chunk</code> | <code>运行初始设置代码块</code> | <code>executeSetupChunkDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run all chunks below the current one</code> | <code>运行当前代码块下方的所有代码块</code> | <code>executeSubsequentChunksDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run from the beginning of the source file up through the current line</code> | <code>从源文件开始运行到当前行</code> | <code>executeToCurrentLineDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Expand selection</code> | <code>扩展选择</code> | <code>expandSelectionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Expand selection to matching bracket</code> | <code>扩展选中范围以匹配括号</code> | <code>expandToMatchingDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Export selected files or folders</code> | <code>导出选中的文件或文件夹</code> | <code>exportFilesDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Turn the current selection into a function</code> | <code>将当前选择转换为函数</code> | <code>extractFunctionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Extract a variable out of the current selection</code> | <code>从当前选择中提取一个变量</code> | <code>extractLocalVariableDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Search in Build Pane</code> | <code>在构建窗格中搜索</code> | <code>findBuildDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find next occurrence</code> | <code>查找下一个匹配项</code> | <code>findNextDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find previous occurrence</code> | <code>查找上一个匹配项</code> | <code>findPreviousDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find and select all matches</code> | <code>查找并选中所有匹配项</code> | <code>findSelectAllDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find source locations where this symbol is used</code> | <code>查找使用此符号的源位置</code> | <code>findUsagesDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move focus to the other view of this document</code> | <code>将焦点移至此文档的另一个视图</code> | <code>focusOtherEditorSplitDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Quit the current R session even if busy</code> | <code>退出当前 R 会话即使繁忙</code> | <code>forceQuitSessionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to to the definition of the currently selected function</code> | <code>转到当前所选函数的定义</code> | <code>goToDefinitionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to help for the currently selected function</code> | <code>转到当前所选函数的帮助</code> | <code>goToHelpDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to next chunk</code> | <code>转到下一个代码块</code> | <code>goToNextChunkDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to next section/chunk</code> | <code>转到下一章节或代码块</code> | <code>goToNextSectionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to previous chunk</code> | <code>转到上一个代码块</code> | <code>goToPrevChunkDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to previous section/chunk</code> | <code>转到上一章节或代码块</code> | <code>goToPrevSectionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open sources associated with the selection</code> | <code>打开与所选项关联的源代码</code> | <code>gotoProfileSourceDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View the current working directory</code> | <code>在文件窗格中查看当前工作目录</code> | <code>goToWorkingDirDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Previous topic</code> | <code>上一个专题</code> | <code>helpBackDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Next topic</code> | <code>下一个主题</code> | <code>helpForwardDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show R Help</code> | <code>显示 R 帮助</code> | <code>helpHomeDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show in new window</code> | <code>在新窗口中显示</code> | <code>helpPopoutDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Remove the selected history entries</code> | <code>删除所选历史记录</code> | <code>historyRemoveEntriesDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Send the selected commands to the R console (Enter)</code> | <code>将所选命令发送到 R 控制台（Enter）</code> | <code>historySendToConsoleDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert the selected commands into the current document (Shift+Enter)</code> | <code>将所选命令插入当前文档（Shift+Enter）</code> | <code>historySendToSourceDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert a new Bash chunk</code> | <code>插入新的 Bash 代码块</code> | <code>insertChunkBashDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert a new D3 chunk</code> | <code>插入新的 D3 代码块</code> | <code>insertChunkD3Desc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert a new code chunk</code> | <code>插入新代码块</code> | <code>insertChunkDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert a new GraphViz chunk</code> | <code>插入新的 GraphViz 代码块</code> | <code>insertChunkGraphVizDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert a new Julia chunk</code> | <code>插入新的 Julia 代码块</code> | <code>insertChunkJuliaDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert a new Mermaid chunk</code> | <code>插入新的 Mermaid 代码块</code> | <code>insertChunkMermaidDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert a new Python chunk</code> | <code>插入新的 Python 代码块</code> | <code>insertChunkPythonDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert a new Rcpp chunk</code> | <code>插入新的 Rcpp 代码块</code> | <code>insertChunkRCPPDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert a new R chunk</code> | <code>插入新的 R 代码块</code> | <code>insertChunkRDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert a new SQL chunk</code> | <code>插入新的 SQL 代码块</code> | <code>insertChunkSQLDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert a new Stan chunk</code> | <code>插入新的 Stan 代码块</code> | <code>insertChunkStanDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert a roxygen comment for the current function</code> | <code>为当前函数插入 roxygen 注释</code> | <code>insertRoxygenSkeletonDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Insert a new code section</code> | <code>插入新的代码节</code> | <code>insertSectionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Expand snippet at cursor</code> | <code>展开光标处的代码片段</code> | <code>insertSnippetDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Install R packages</code> | <code>安装 R 程序包</code> | <code>installPackageDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Interrupt R</code> | <code>中断 R</code> | <code>interruptRDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Send Ctrl+C to Current Terminal</code> | <code>将 Ctrl+C 发送到当前终端</code> | <code>interruptTerminalDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Jump to matching bracket</code> | <code>跳转到匹配括号</code> | <code>jumpToMatchingDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Knit the current document</code> | <code>编织当前文档</code> | <code>knitDocumentDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Knit the document with a set of custom parameters</code> | <code>使用一组自定义参数编织文档</code> | <code>knitWithParametersDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Load history from an existing file</code> | <code>从现有文件加载历史记录</code> | <code>loadHistoryDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Load workspace</code> | <code>加载工作区</code> | <code>loadWorkspaceDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Markdown quick reference</code> | <code>Markdown 快速引用</code> | <code>markdownHelpDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Modify keyboard shortcuts</code> | <code>修改键盘快捷键</code> | <code>modifyKeyboardShortcutsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Move selected files or folders</code> | <code>移动选中的文件或文件夹</code> | <code>moveFilesDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new C file</code> | <code>新建 C 文件</code> | <code>newCDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new connection</code> | <code>新建连接</code> | <code>newConnectionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new C++ file</code> | <code>新建 C++ 文件</code> | <code>newCppDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new CSS file</code> | <code>新建 CSS 文件</code> | <code>newCssDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new D3 Script</code> | <code>新建 D3 脚本</code> | <code>newD3DocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new folder</code> | <code>新建文件夹</code> | <code>newFolderDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new header file</code> | <code>新建头文件</code> | <code>newHeaderDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new HTML file</code> | <code>新建 HTML 文件</code> | <code>newHtmlDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new JavaScript file</code> | <code>新建 JavaScript 文件</code> | <code>newJavaScriptDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new Markdown document</code> | <code>新建 Markdown 文档</code> | <code>newMarkdownDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a project</code> | <code>新建项目</code> | <code>newProjectDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new Python script</code> | <code>新建 Python 脚本</code> | <code>newPythonDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new Quarto document</code> | <code>新建 Quarto 文档</code> | <code>newQuartoDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new Quarto presentation</code> | <code>新建 Quarto 演示文稿</code> | <code>newQuartoPresDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new Rd documentation file</code> | <code>新建 Rd 文档文件</code> | <code>newRDocumentationDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new R HTML document</code> | <code>新建 R HTML 文档</code> | <code>newRHTMLDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new R Markdown document</code> | <code>新建 R Markdown 文档</code> | <code>newRMarkdownDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new R Markdown notebook</code> | <code>新建 R Markdown 笔记本</code> | <code>newRNotebookDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new Plumber API</code> | <code>新建 Plumber API</code> | <code>newRPlumberDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new R presentation</code> | <code>新建 R 演示文稿</code> | <code>newRPresentationDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new Shiny web application</code> | <code>新建 Shiny Web 应用</code> | <code>newRShinyAppDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open a new R session</code> | <code>打开新的 R 会话</code> | <code>newSessionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new shell script</code> | <code>新建 Shell 脚本</code> | <code>newShellDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new R script</code> | <code>新建 R 脚本</code> | <code>newSourceDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new SQL script</code> | <code>新建 SQL 脚本</code> | <code>newSqlDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new Stan program</code> | <code>新建 Stan 程序</code> | <code>newStanDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new R Sweave document</code> | <code>新建 R Sweave 文档</code> | <code>newSweaveDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new terminal</code> | <code>创建一个新的终端</code> | <code>newTerminalDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new text file</code> | <code>新建文本文件</code> | <code>newTextDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Next plot</code> | <code>下一幅图</code> | <code>nextPlotDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show next terminal</code> | <code>显示下一个终端</code> | <code>nextTerminalDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Remove all code chunk output in the current file</code> | <code>删除当前文件中的所有代码块输出</code> | <code>notebookClearAllOutputDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear the output of the current notebook chunk</code> | <code>清除当前 Notebook 代码块的输出</code> | <code>notebookClearOutputDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Collapse all code chunk output in the current file</code> | <code>折叠当前文件中的所有代码块输出</code> | <code>notebookCollapseAllOutputDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Expand all code chunk output in the current file</code> | <code>在当前文件中扩展所有代码块输出</code> | <code>notebookExpandAllOutputDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Expand or collapse the output of the current notebook chunk</code> | <code>展开或折叠当前 Notebook 代码块的输出</code> | <code>notebookToggleExpansionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Import data with readr</code> | <code>使用 readr 导入数据</code> | <code>openDataImportCheatSheetDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Data transformation with dplyr</code> | <code>用 dplyr 转换数据</code> | <code>openDataTransformationCheatSheetDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Data visualization with ggplot2</code> | <code>使用 ggplot2 实现数据可视化</code> | <code>openDataVisualizationCheatSheetDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Data manipulation with dplyr and tidyr</code> | <code>使用 dplyr 和 tidyr 处理数据</code> | <code>openDataWranglingCheatSheetDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View the page with the system web browser</code> | <code>用系统网页浏览器查看页面</code> | <code>openHtmlExternalDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Package development with devtools</code> | <code>使用 devtools 开发程序包</code> | <code>openPackageDevelopmentCheatSheetDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Opens a profile from a file</code> | <code>从文件打开性能分析结果</code> | <code>openProfileDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Opens current profile in a web browser</code> | <code>在 Web 浏览器中打开当前性能分析结果</code> | <code>openProfileInBrowserDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open a project</code> | <code>打开项目</code> | <code>openProjectDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open project in a new R session</code> | <code>在新 R 会话中打开项目</code> | <code>openProjectInNewWindowDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>List manipulation with purrr</code> | <code>使用 purrr 操作列表</code> | <code>openPurrrCheatSheetDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>R Markdown cheat sheet</code> | <code>R Markdown 速查表</code> | <code>openRMarkdownCheatSheetDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>R Markdown reference guide</code> | <code>R Markdown 参考指南</code> | <code>openRMarkdownReferenceGuideDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Roxygen quick reference</code> | <code>Roxygen 快速引用</code> | <code>openRoxygenQuickReferenceDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>RStudio IDE cheat sheet</code> | <code>RStudio IDE 速查表</code> | <code>openRStudioIDECheatSheetDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open a project shared with you</code> | <code>打开与您共享的项目</code> | <code>openSharedProjectDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Build web applications with Shiny</code> | <code>使用 Shiny 构建 Web 应用</code> | <code>openShinyCheatSheetDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open an existing file</code> | <code>打开现有文件</code> | <code>openSourceDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open an existing file in a new column</code> | <code>在新的列中打开现有文件</code> | <code>openSourceDocNewColumnDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Interfacing Apache Spark with sparklyr</code> | <code>使用 sparklyr 连接 Apache Spark</code> | <code>openSparklyrCheatSheetDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Use packrat with this project</code> | <code>在此项目中使用 Packrat</code> | <code>packratBootstrapDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Bundle a Packrat Project</code> | <code>打包 Packrat 项目</code> | <code>packratBundleDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Check the status of the Packrat library</code> | <code>检查 Packrat 库的状态</code> | <code>packratCheckStatusDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Remove unused packages from your packrat library</code> | <code>从 Packrat 库中移除未使用的程序包</code> | <code>packratCleanDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Help on using packrat with R projects</code> | <code>了解如何在 R 项目中使用 Packrat</code> | <code>packratHelpDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Configure packrat options for this project</code> | <code>配置此项目的 Packrat 选项</code> | <code>packratOptionsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the Plumber API in the system's default Web browser</code> | <code>在系统默认 Web 浏览器中运行 Plumber API</code> | <code>plumberRunInBrowserDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the Plumber API in an RStudio pane</code> | <code>在 RStudio 窗格中运行 Plumber API</code> | <code>plumberRunInPaneDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the Plumber API in an RStudio viewer window</code> | <code>在 RStudio 查看器窗口中运行 Plumber API</code> | <code>plumberRunInViewerDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show Posit Assistant in a separate window</code> | <code>在独立窗口中显示 Posit Assistant</code> | <code>popOutChatDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show in new window</code> | <code>在新窗口中显示</code> | <code>popoutDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Edit this slide of the presentation</code> | <code>编辑演示文稿的当前幻灯片</code> | <code>presentation2EditDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to the first slide</code> | <code>转到第一张幻灯片</code> | <code>presentation2HomeDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to the next slide</code> | <code>转到下一张幻灯片</code> | <code>presentation2NextDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Present in an external web browser</code> | <code>在外部浏览器中演示</code> | <code>presentation2PresentDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Present from the first slide in an external web browser</code> | <code>在外部 Web 浏览器中从第一张幻灯片开始演示</code> | <code>presentation2PresentFromBeginningDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to the previous slide</code> | <code>转到上一张幻灯片</code> | <code>presentation2PrevDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open a browser to print the presentation</code> | <code>在浏览器中打开并打印演示文稿</code> | <code>presentation2PrintDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Edit this slide of the presentation</code> | <code>编辑演示文稿的当前幻灯片</code> | <code>presentationEditDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show presentation in full screen mode</code> | <code>以全屏模式显示演示文稿</code> | <code>presentationFullscreenDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to the first slide</code> | <code>转到第一张幻灯片</code> | <code>presentationHomeDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to the next slide</code> | <code>转到下一张幻灯片</code> | <code>presentationNextDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go to the previous slide</code> | <code>转到上一张幻灯片</code> | <code>presentationPrevDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save the presentation as a standalone web page</code> | <code>将演示文稿另存为独立的网页</code> | <code>presentationSaveAsStandaloneDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View the presentation in an external web browser</code> | <code>在外部网页浏览器中查看演示文稿</code> | <code>presentationViewInBrowserDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show a preview of the current document as HTML</code> | <code>以 HTML 形式预览当前文档</code> | <code>previewHTMLDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Preview the active JavaScript document</code> | <code>预览活动 JavaScript 文档</code> | <code>previewJSDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Preview the active SQL document</code> | <code>预览活动 SQL 文档</code> | <code>previewSqlDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Previous plot</code> | <code>上一个图形</code> | <code>previousPlotDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show previous terminal</code> | <code>显示上一个终端</code> | <code>previousTerminalDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Print C++ Completions</code> | <code>输出 C++ 补全项</code> | <code>printCppCompletionsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Print topic</code> | <code>打印主题</code> | <code>printHelpDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Print the current file</code> | <code>打印当前文件</code> | <code>printSourceDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Profile the current line or selection</code> | <code>分析当前行或选区的性能</code> | <code>profileCodeDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Guide to profiling features</code> | <code>性能分析功能指南</code> | <code>profileHelpDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Edit options for the current project</code> | <code>编辑当前项目的选项</code> | <code>projectOptionsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Publish the current document</code> | <code>发布当前文档</code> | <code>publishHTMLDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Render the current document</code> | <code>渲染当前文档</code> | <code>quartoRenderDocumentDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Find and add next occurrence</code> | <code>查找并添加下一个匹配项</code> | <code>quickAddNextDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Quit the current R session</code> | <code>退出当前 R 会话</code> | <code>quitSessionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Help on using Rcpp</code> | <code>帮助使用 Rcpp</code> | <code>rcppHelpDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reflow selected comment lines so they wrap evenly</code> | <code>重排所选注释行，使其均匀换行</code> | <code>reflowCommentDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reformat the current line/selection</code> | <code>重新格式化当前行/选区</code> | <code>reformatCodeDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reformat the current document</code> | <code>重新格式化当前文档</code> | <code>reformatDocumentDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh data</code> | <code>刷新数据</code> | <code>refreshConnectionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh the list of objects in the environment</code> | <code>刷新环境中的对象列表</code> | <code>refreshEnvironmentDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh file listing</code> | <code>刷新文件列表</code> | <code>refreshFilesDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh Find in Files results</code> | <code>刷新“在文件中查找”的结果</code> | <code>refreshFindInFilesDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh topic</code> | <code>刷新主题</code> | <code>refreshHelpDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh the preview</code> | <code>刷新预览</code> | <code>refreshHtmlPreviewDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh Package listing</code> | <code>刷新程序包列表</code> | <code>refreshPackagesDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh current plot</code> | <code>刷新当前图形</code> | <code>refreshPlotDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh the presentation preview</code> | <code>刷新演示文稿预览</code> | <code>refreshPresentation2Desc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh the presentation</code> | <code>刷新演示文稿</code> | <code>refreshPresentationDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh Workspace</code> | <code>刷新工作区</code> | <code>refreshWorkspaceDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reindent the current line/selection</code> | <code>重新缩进当前行/选区</code> | <code>reindentDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reload the Plumber API</code> | <code>重新加载 Plumber API</code> | <code>reloadPlumberAPIDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reload the Shiny application</code> | <code>重新加载 Shiny 应用</code> | <code>reloadShinyAppDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Remove connection from the connection history</code> | <code>从连接历史中删除连接</code> | <code>removeConnectionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Close the second view of this document</code> | <code>关闭此文档的第二个视图</code> | <code>removeEditorSplitDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Remove the current plot</code> | <code>移除当前图形</code> | <code>removePlotDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Rename selected file or folder</code> | <code>重命名所选文件或文件夹</code> | <code>renameFileDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Rename symbol in current scope</code> | <code>重命名当前作用域内的符号</code> | <code>renameInScopeDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Rename current document</code> | <code>重命名当前文档</code> | <code>renameSourceDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Change terminal session name</code> | <code>更改终端会话的名称</code> | <code>renameTerminalDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Learn how to use renv</code> | <code>学会如何使用 renv</code> | <code>renvHelpDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restore your project library from renv.lock</code> | <code>根据 renv.lock 恢复项目库</code> | <code>renvRestoreDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Snapshot the state of your project library</code> | <code>记录项目库的当前状态</code> | <code>renvSnapshotDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Reopen the current file with a different encoding</code> | <code>用不同的编码重新打开当前文件</code> | <code>reopenSourceDocWithEncodingDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Replace and find next occurrence</code> | <code>替换并查找下一个匹配项</code> | <code>replaceAndFindDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restart R session and clear chunk output</code> | <code>重新启动 R 会话并清除代码块输出</code> | <code>restartRClearOutputDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restart R</code> | <code>重启 R</code> | <code>restartRDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Restart R session and run all chunks</code> | <code>重新启动 R 会话并运行所有代码块</code> | <code>restartRRunAllChunksDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Return to main window</code> | <code>返回主窗口</code> | <code>returnChatToMainDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Return to main window</code> | <code>返回主窗口</code> | <code>returnDocToMainDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Build package documentation</code> | <code>构建程序包文档</code> | <code>roxygenizePackageDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Configure the application</code> | <code>配置应用程序</code> | <code>rsconnectConfigureDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Publish the application or document</code> | <code>发布应用程序或文档</code> | <code>rsconnectDeployDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Connect or disconnect accounts</code> | <code>连接或断开账户</code> | <code>rsconnectManageAccountsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the interactive document</code> | <code>运行交互式文档</code> | <code>runDocumentFromServerDotRDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the selected code as a background job</code> | <code>将所选代码作为后台任务运行</code> | <code>runSelectionAsBackgroundJobDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the selected code as a Workbench job</code> | <code>将所选代码作为 Workbench 任务运行</code> | <code>runSelectionAsWorkbenchJobDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save all open documents</code> | <code>保存所有已打开的文档</code> | <code>saveAllSourceDocsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save history into a file</code> | <code>将历史记录保存到一个文件中</code> | <code>saveHistoryDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save the page to another location</code> | <code>将页面保存到其它位置</code> | <code>saveHtmlPreviewAsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Download the page to a local file</code> | <code>将页面下载到本地文件</code> | <code>saveHtmlPreviewAsLocalFileDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save the current plot as an image file</code> | <code>将当前图保存为图像文件</code> | <code>savePlotAsImageDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save the current plot as a PDF file</code> | <code>将当前图保存为 PDF 文件</code> | <code>savePlotAsPdfDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Saves current profile into a file</code> | <code>将当前性能分析结果保存到文件</code> | <code>saveProfileAsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save current file to a specific path</code> | <code>将当前文件保存到特定路径</code> | <code>saveSourceDocAsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save current document</code> | <code>保存当前文档</code> | <code>saveSourceDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save the current file with a different encoding</code> | <code>以不同的编码保存当前文件</code> | <code>saveSourceDocWithEncodingDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save workspace as</code> | <code>工作区另存为</code> | <code>saveWorkspaceDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy current terminal's buffer to a new editor buffer</code> | <code>将当前终端缓冲区复制到新的编辑器缓冲区</code> | <code>sendTerminalToEditorDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Send the current line or selection to terminal</code> | <code>将当前行或选区发送到终端</code> | <code>sendToTerminalDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run development server for Quarto site</code> | <code>为 Quarto 站点运行开发服务器</code> | <code>serveQuartoSiteDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Select and change to a new working directory</code> | <code>选择并更改为新工作目录</code> | <code>setWorkingDirDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Change working directory to path of active document</code> | <code>将工作目录更改为活动文档路径</code> | <code>setWorkingDirToActiveDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Change working directory to location of Files pane</code> | <code>将工作目录更改为文件窗格的位置</code> | <code>setWorkingDirToFilesPaneDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Change working directory to project root directory</code> | <code>将工作目录更改为项目根目录</code> | <code>setWorkingDirToProjectDirDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Share this project with others</code> | <code>与他人共享此项目</code> | <code>shareProjectDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Compare test results for Shiny application</code> | <code>比较 Shiny 应用的测试结果</code> | <code>shinyCompareTestDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Record test for Shiny application</code> | <code>为 Shiny 应用录制测试</code> | <code>shinyRecordTestDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run tests for Shiny application</code> | <code>运行 Shiny 应用的测试</code> | <code>shinyRunAllTestsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the Shiny application in the system's default Web browser</code> | <code>在系统默认 Web 浏览器中运行 Shiny 应用</code> | <code>shinyRunInBrowserDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the Shiny application in an RStudio pane</code> | <code>在 RStudio 窗格中运行 Shiny 应用</code> | <code>shinyRunInPaneDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the Shiny application in an RStudio viewer window</code> | <code>在 RStudio 查看器窗口中运行 Shiny 应用</code> | <code>shinyRunInViewerDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show diagnostics for the active document</code> | <code>显示活动文档的诊断</code> | <code>showDiagnosticsActiveDocumentDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show diagnostics for all source files in the current project</code> | <code>在当前项目中显示所有源文件的诊断</code> | <code>showDiagnosticsProjectDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show the compilation log for this document</code> | <code>显示此文档的编译日志</code> | <code>showHtmlPreviewLogDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show the manipulator for this plot</code> | <code>显示此图形的操控器</code> | <code>showManipulatorDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show in an external PDF viewer window</code> | <code>在外部显示 PDF 查看器窗口</code> | <code>showPdfExternalDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show internal request log</code> | <code>显示内部请求日志</code> | <code>showRequestLogDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show info on current terminal</code> | <code>显示当前终端的信息</code> | <code>showTerminalInfoDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Shrink selection</code> | <code>收缩选择</code> | <code>shrinkSelectionDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sign out from RStudio</code> | <code>退出 RStudio</code> | <code>signOutDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sort Workbench jobs by time submitted</code> | <code>按提交时间排序 Workbench 任务</code> | <code>sortWorkbenchJobsRecordedDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sort Workbench jobs by current state</code> | <code>按当前状态排序 Workbench 任务</code> | <code>sortWorkbenchJobsStateDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Source the contents of the active document</code> | <code>运行当前文档的内容</code> | <code>sourceActiveDocumentDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Source the contents of the active document (with echo)</code> | <code>执行当前文档的内容（显示命令）</code> | <code>sourceActiveDocumentWithEchoDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the current R script as a background job</code> | <code>将当前 R 脚本作为后台任务运行</code> | <code>sourceAsJobDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run the current R script on a cluster</code> | <code>在集群上运行当前 R 脚本</code> | <code>sourceAsWorkbenchJobDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Source the contents of an R file</code> | <code>执行 R 文件的内容</code> | <code>sourceFileDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go back to the previous source location</code> | <code>返回上一个源代码位置</code> | <code>sourceNavigateBackDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go forward to the next source location</code> | <code>前进到下一个源代码位置</code> | <code>sourceNavigateForwardDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Help on using Spark with RStudio</code> | <code>了解如何在 RStudio 中使用 Spark</code> | <code>sparkHelpDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View the log for the Spark connection</code> | <code>查看 Spark 连接的日志</code> | <code>sparkLogDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View the browser UI for the Spark connection</code> | <code>为 Spark 连接查看浏览器 UI</code> | <code>sparkUIDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show a second view of this document below the current one</code> | <code>在当前视图下方显示此文档的第二个视图</code> | <code>splitEditorDownDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show a second view of this document beside the current one</code> | <code>在当前视图右侧显示此文档的第二个视图</code> | <code>splitEditorRightDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new cursor on each line in current selection</code> | <code>在当前选中的每行创建新光标</code> | <code>splitIntoLinesDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run a background local job</code> | <code>运行一个后台本地任务</code> | <code>startJobDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Start profiling R code</code> | <code>开始剖析 R 代码</code> | <code>startProfilerDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run a job on a cluster</code> | <code>在集群上运行任务</code> | <code>startWorkbenchJobDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Stop the current build</code> | <code>停止当前构建</code> | <code>stopBuildDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Stop profiling R code</code> | <code>停止分析 R 代码性能</code> | <code>stopProfilerDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Switch chunk to Bash</code> | <code>将代码块切换为 Bash</code> | <code>switchToChunkBashDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Switch chunk to Python</code> | <code>将代码块切换为 Python</code> | <code>switchToChunkPythonDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Switch chunk to Rcpp</code> | <code>将代码块切换为 Rcpp</code> | <code>switchToChunkRCPPDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Switch chunk to R</code> | <code>切换到 R</code> | <code>switchToChunkRDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Switch chunk to SQL</code> | <code>将代码块切换为 SQL</code> | <code>switchToChunkSQLDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Switch chunk to Stan</code> | <code>将代码块切换为 Stan</code> | <code>switchToChunkStanDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Sync PDF view to editor location (Ctrl+Click)</code> | <code>同步 PDF 视图到编辑器位置( Ctrl+Click)</code> | <code>synctexSearchDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Forcibly terminate R session</code> | <code>强制终止 R 会话</code> | <code>terminateRDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run tests for package</code> | <code>运行程序包测试</code> | <code>testPackageDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run test using the shinytest2 package</code> | <code>使用 shinytest2 程序包运行测试</code> | <code>testShinytestFileDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Run tests using the testthat package</code> | <code>使用 testthat 程序包运行测试</code> | <code>testTestthatFileDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle the editor banner that warns when this file references R packages that are not installed</code> | <code>启用或停用编辑器横幅；当此文件引用未安装的 R 程序包时，该横幅会发出警告</code> | <code>toggleDetectMissingPackagesDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show document outline</code> | <code>显示文档大纲</code> | <code>toggleDocumentOutlineDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Toggle the second view of this document</code> | <code>切换此文档的第二个视图</code> | <code>toggleEditorSplitDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Switch markdown editing mode</code> | <code>切换 Markdown 编辑模式</code> | <code>toggleRmdVisualModeDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank C file in current directory</code> | <code>在当前目录中创建空白 C 文件</code> | <code>touchCDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank C++ file in current directory</code> | <code>在当前目录中创建空白的 C++ 文件</code> | <code>touchCppDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank CSS file in current directory</code> | <code>在当前目录中新建空白 CSS 文件</code> | <code>touchCssDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank D3 script in current directory</code> | <code>在当前目录中创建空白的 D3 脚本</code> | <code>touchD3DocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank header file in current directory</code> | <code>在当前目录中创建空白头文件</code> | <code>touchHeaderDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank HTML file in current directory</code> | <code>在当前目录中新建空白 HTML 文件</code> | <code>touchHtmlDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank JavaScript file in current directory</code> | <code>在当前目录中新建空白 JavaScript 文件</code> | <code>touchJavaScriptDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank Markdown document in current directory</code> | <code>在当前目录中新建空白 Markdown 文档</code> | <code>touchMarkdownDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank Python script in current directory</code> | <code>在当前目录中新建空白 Python 脚本</code> | <code>touchPythonDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank Quarto document in current directory</code> | <code>在当前目录中新建空白 Quarto 文档</code> | <code>touchQuartoDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank R HTML document in current directory</code> | <code>在当前目录中新建空白 R HTML 文档</code> | <code>touchRHTMLDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank R Markdown document in current directory</code> | <code>在当前目录中新建空白 R Markdown 文档</code> | <code>touchRMarkdownDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank shell script in current directory</code> | <code>在当前目录中创建空白 shell 脚本</code> | <code>touchShellDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank R script in current directory</code> | <code>在当前目录中创建空白的 R 脚本</code> | <code>touchSourceDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a new SQL script in current directory</code> | <code>在当前目录中新建 SQL 脚本</code> | <code>touchSqlDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank Stan program in current directory</code> | <code>在当前目录中创建空白 Stan 程序</code> | <code>touchStanDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank R Sweave document in current directory</code> | <code>在当前目录中新建空白 R Sweave 文档</code> | <code>touchSweaveDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Create a blank text file in current directory</code> | <code>在当前目录中创建空白文本文件</code> | <code>touchTextDocDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go back</code> | <code>后退</code> | <code>tutorialBackDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go forward</code> | <code>前进</code> | <code>tutorialForwardDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Return to home</code> | <code>返回主页</code> | <code>tutorialHomeDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show in new window</code> | <code>在新窗口中显示</code> | <code>tutorialPopoutDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh tutorial</code> | <code>刷新教程</code> | <code>tutorialRefreshDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Stop tutorial</code> | <code>停止教程</code> | <code>tutorialStopDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View a larger version in a new window</code> | <code>在新窗口中查看更大的版本</code> | <code>tutorialZoomDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Check for package updates</code> | <code>检查程序包更新</code> | <code>updatePackagesDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Upload files to server</code> | <code>上传文件到服务器</code> | <code>uploadFileDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Guide to using R Markdown</code> | <code>R Markdown 使用指南</code> | <code>usingRMarkdownHelpDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Add the selected files or folders</code> | <code>添加选中的文件或文件夹</code> | <code>vcsAddFilesDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Blame view for this file on Github</code> | <code>在 GitHub 上查看此文件的逐行归属</code> | <code>vcsBlameOnGitHubDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Recursively clean up the working copy (removing locks, etc)</code> | <code>递归清理工作副本（移除锁等）</code> | <code>vcsCleanupDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Commit pending changes</code> | <code>提交待处理的更改</code> | <code>vcsCommitDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Diff selected file(s)</code> | <code>比较所选文件的差异</code> | <code>vcsDiffDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show differences for the file</code> | <code>显示文件的差异</code> | <code>vcsFileDiffDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show log of changes to the file</code> | <code>显示文件更改的日志</code> | <code>vcsFileLogDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Revert changes to the file</code> | <code>还原对此文件的更改</code> | <code>vcsFileRevertDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Ignore the selected files or folders</code> | <code>忽略选中的文件或文件夹</code> | <code>vcsIgnoreDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Open selected file(s)</code> | <code>打开选中的文件</code> | <code>vcsOpenDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh listing</code> | <code>更新列表</code> | <code>vcsRefreshDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Delete the selected files or folders</code> | <code>删除选中的文件或文件夹</code> | <code>vcsRemoveFilesDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Resolve conflicts in the selected files or folders</code> | <code>解决选定文件或文件夹中的冲突</code> | <code>vcsResolveDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Revert selected changes</code> | <code>还原选中的更改</code> | <code>vcsRevertDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View history of previous commits</code> | <code>查看以前的提交历史</code> | <code>vcsShowHistoryDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View this file on Github</code> | <code>在 GitHub 上查看此文件</code> | <code>vcsViewOnGitHubDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Help on using version control with RStudio</code> | <code>了解如何在 RStudio 中使用版本控制</code> | <code>versionControlHelpDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Configure version control options</code> | <code>配置版本控制选项</code> | <code>versionControlOptionsDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Setup version control for the current project</code> | <code>为当前项目设置版本控制</code> | <code>versionControlProjectSetupDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show RSA public key</code> | <code>显示 RSA 公钥</code> | <code>versionControlShowRsaKeyDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go back</code> | <code>后退</code> | <code>viewerBackDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Clear all viewer items</code> | <code>清空全部查看器项目</code> | <code>viewerClearAllDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Remove current viewer item</code> | <code>移除当前查看器项目</code> | <code>viewerClearDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Copy to the system clipboard</code> | <code>复制到系统剪贴板</code> | <code>viewerCopyToClipboardDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Edit source file</code> | <code>编辑源文件</code> | <code>viewerEditSourceDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Go forward</code> | <code>前进</code> | <code>viewerForwardDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Show in new window</code> | <code>在新窗口中显示</code> | <code>viewerPopoutDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Refresh viewer</code> | <code>刷新查看器</code> | <code>viewerRefreshDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save source files and refresh viewer</code> | <code>保存源文件和刷新查看器</code> | <code>viewerSaveAllAndRefreshDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save as an image file</code> | <code>另存为图像文件</code> | <code>viewerSaveAsImageDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Save as a standalone web page</code> | <code>另存为独立的网页</code> | <code>viewerSaveAsWebPageDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Stop application</code> | <code>停止应用程序</code> | <code>viewerStopDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View a larger version in a new window</code> | <code>在新窗口中查看更大的版本</code> | <code>viewerZoomDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>Count words in selection or document</code> | <code>统计选区或文档的字数</code> | <code>wordCountDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |
| <code>View a larger version of the plot in a new window</code> | <code>在新窗口中查看较大图形</code> | <code>zoomPlotDesc</code> | [Keyboard Shortcuts / GWT R055][R055] |

## 15. Data Viewer / 数据查看器

本节 83 条。

列筛选“全部”、动态列数、底部记录范围、直方图、排序/筛选/固定列提示及摘要帮助均通过 Data Viewer locale 消费路径显示。`NA` 保留 R 技术含义；列名、真实数据值、`<dbl>` 等类型标识不在翻译表中。各动态片段按实际定义分列，不拼成固定数字示例。

### 表格、筛选、排序与统计

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>All</code> | <code>全部</code> | <code>gridAll</code> | [Data Viewer R017][R017] / Source patch |
| <code>{0} column</code> | <code>{0} 列</code> | <code>gridColumn</code> | [Data Viewer R017][R017] / Source patch |
| <code>{0} columns</code> | <code>{0} 列</code> | <code>gridColumns</code> | [Data Viewer R017][R017] / Source patch |
| <code>{0} of {1} columns</code> | <code>{0} / {1} 列</code> | <code>gridColumnSubset</code> | [Data Viewer R017][R017] / Source patch |
| <code>Count: {0} ({1}%)</code> | <code>数量：{0}（{1}%）</code> | <code>gridCount</code> | [Data Viewer R017][R017] / Source patch |
| <code>Edit filter for column {0}</code> | <code>编辑列 {0} 的筛选条件</code> | <code>gridEditColumnFilter</code> | [Data Viewer R017][R017] / Source patch |
| <code>End: {0}</code> | <code>结束：{0}</code> | <code>gridEnd</code> | [Data Viewer R017][R017] / Source patch |
| <code>Filtered</code> | <code>已筛选</code> | <code>gridFilterActive</code> | [Data Viewer R017][R017] / Source patch |
| <code>Filter column</code> | <code>筛选此列</code> | <code>gridFilterColumn</code> | [Data Viewer R017][R017] / Source patch |
| <code>Filter column {0}</code> | <code>筛选列 {0}</code> | <code>gridFilterColumnName</code> | [Data Viewer R017][R017] / Source patch |
| <code>Filtered: {0}</code> | <code>已筛选：{0}</code> | <code>gridFilterDescription</code> | [Data Viewer R017][R017] / Source patch |
| <code> (filtered from {0} total entries)</code> | <code>（筛选前共 {0} 条记录）</code> | <code>gridFiltered</code> | [Data Viewer R017][R017] / Source patch |
| <code>Factor and character columns with few distinct values draw one bar per value: factors in level order, characters most frequent first. Hover a bar for details.</code> | <code>不同值较少的因子列和字符列会为每个值绘制一根条形：因子按水平顺序排列，字符按频数从高到低排列。将鼠标悬停在条形上可查看详情。</code> | <code>gridHelpCategoryText</code> | [Data Viewer R017][R017] / Source patch |
| <code>Date and date-time columns draw a histogram over time.</code> | <code>日期和日期时间列以直方图显示随时间的分布。</code> | <code>gridHelpDateText</code> | [Data Viewer R017][R017] / Source patch |
| <code>Details</code> | <code>详细统计</code> | <code>gridHelpDetails</code> | [Data Viewer R017][R017] / Source patch |
| <code>The triangle expands a panel of detailed statistics, computed on demand; for date-time columns this includes the timezone.</code> | <code>点击三角形可展开详细统计面板，统计结果按需计算；日期时间列还会显示时区。</code> | <code>gridHelpDetailsText</code> | [Data Viewer R017][R017] / Source patch |
| <code>Filter</code> | <code>筛选</code> | <code>gridHelpFilter</code> | [Data Viewer R017][R017] / Source patch |
| <code>The funnel icon opens a filter for the column. Numeric and date/time columns brush a range on the histogram (or type one); factor, logical, and text columns pick or match a value. The grid updates as you adjust the filter. Use the checkmark to confirm and close, or the x to clear it; clicking away leaves the filter in place.</code> | <code>漏斗图标用于打开该列的筛选器。数值和日期/时间列可在直方图上拖选范围，也可手动输入；因子、逻辑值和文本列可选择或匹配某个值。调整筛选条件时，数据表会同步更新。点击勾号确认并关闭，点击叉号清除筛选；点击其他位置会保留当前筛选条件。</code> | <code>gridHelpFilterText</code> | [Data Viewer R017][R017] / Source patch |
| <code>Header</code> | <code>列标题</code> | <code>gridHelpHeader</code> | [Data Viewer R017][R017] / Source patch |
| <code>Each entry names a column and its type. Click an entry to scroll the grid to that column; the pin and sort icons work just like their counterparts in the grid header, and the funnel icon filters the column (see Filter below). For date and date-time columns, hover the type label to see the timezone.</code> | <code>每项显示列名及其类型。点击条目可将数据表滚动到该列；固定和排序图标的作用与表头中的相同，漏斗图标用于筛选该列（见下方“筛选”）。对于日期和日期时间列，将鼠标悬停在类型标签上可查看时区。</code> | <code>gridHelpHeaderText</code> | [Data Viewer R017][R017] / Source patch |
| <code>Numeric columns draw a histogram of their finite values.</code> | <code>数值列以直方图显示有限数值的分布。</code> | <code>gridHelpNumericText</code> | [Data Viewer R017][R017] / Source patch |
| <code>Mini-plot</code> | <code>迷你图</code> | <code>gridHelpPlot</code> | [Data Viewer R017][R017] / Source patch |
| <code>Summary line</code> | <code>摘要行</code> | <code>gridHelpSummaryLine</code> | [Data Viewer R017][R017] / Source patch |
| <code>The numeric or date/time data range as [min, max] (a date-time range within a single day shows the date once with a time range), or the number of factor levels / distinct values -- plus the most frequent value when there are too many to chart. Distinct values are not counted for very large character columns. The right-hand side shows the percentage of missing values.</code> | <code>以 [最小值, 最大值] 显示数值或日期/时间的数据范围（同一天内的日期时间范围仅显示一次日期，后接时间范围），或显示因子水平数、不同值的数量；值太多而无法绘图时，还会显示最高频值。对于非常大的字符列，不计算不同值的数量。右侧显示缺失值的百分比。</code> | <code>gridHelpSummaryText</code> | [Data Viewer R017][R017] / Source patch |
| <code>{0} levels</code> | <code>{0} 个水平</code> | <code>gridLevels</code> | [Data Viewer R017][R017] / Source patch |
| <code>{0} missing values</code> | <code>{0} 个缺失值</code> | <code>gridMissing</code> | [Data Viewer R017][R017] / Source patch |
| <code>{0}% NA</code> | <code>NA：{0}%</code> | <code>gridNa</code> | [Data Viewer R017][R017] / Source patch |
| <code>No missing values</code> | <code>无缺失值</code> | <code>gridNoMissing</code> | [Data Viewer R017][R017] / Source patch |
| <code>Pin column</code> | <code>固定列</code> | <code>gridPinColumn</code> | [Data Viewer R017][R017] / Source patch |
| <code>Pin column {0}</code> | <code>固定列 {0}</code> | <code>gridPinColumnName</code> | [Data Viewer R017][R017] / Source patch |
| <code>Range: {0} to {1}</code> | <code>范围：{0}–{1}</code> | <code>gridRange</code> | [Data Viewer R017][R017] / Source patch |
| <code>Remove sort on column {0}</code> | <code>取消列 {0} 的排序</code> | <code>gridRemoveColumnSort</code> | [Data Viewer R017][R017] / Source patch |
| <code>Scroll to column {0}</code> | <code>滚动至列 {0}</code> | <code>gridScrollToColumn</code> | [Data Viewer R017][R017] / Source patch |
| <code>Show column summary</code> | <code>显示列统计摘要</code> | <code>gridShowColumnSummary</code> | [Data Viewer R017][R017] / Source patch |
| <code>Showing {0} to {1} of {2} entries</code> | <code>显示第 {0} 至 {1} 条，共 {2} 条记录</code> | <code>gridShowing</code> | [Data Viewer R017][R017] / Source patch |
| <code>ascending</code> | <code>升序</code> | <code>gridSortAscending</code> | [Data Viewer R017][R017] / Source patch |
| <code>Sort column {0} ascending</code> | <code>按列 {0} 升序排序</code> | <code>gridSortColumnAscending</code> | [Data Viewer R017][R017] / Source patch |
| <code>Sort column {0} descending</code> | <code>按列 {0} 降序排序</code> | <code>gridSortColumnDescending</code> | [Data Viewer R017][R017] / Source patch |
| <code>descending</code> | <code>降序</code> | <code>gridSortDescending</code> | [Data Viewer R017][R017] / Source patch |
| <code>Sorted by: {0} ({1})</code> | <code>排序依据：{0}（{1}）</code> | <code>gridSortStatus</code> | [Data Viewer R017][R017] / Source patch |
| <code>Start: {0}</code> | <code>起始：{0}</code> | <code>gridStart</code> | [Data Viewer R017][R017] / Source patch |
| <code>Empty</code> | <code>空字符串数</code> | <code>gridStatEmpty</code> | [Data Viewer R017][R017] / Source patch |
| <code>Max</code> | <code>最大值</code> | <code>gridStatMax</code> | [Data Viewer R017][R017] / Source patch |
| <code>Max length</code> | <code>最大长度</code> | <code>gridStatMaxLength</code> | [Data Viewer R017][R017] / Source patch |
| <code>Mean</code> | <code>均值</code> | <code>gridStatMean</code> | [Data Viewer R017][R017] / Source patch |
| <code>Median</code> | <code>中位数</code> | <code>gridStatMedian</code> | [Data Viewer R017][R017] / Source patch |
| <code>Min</code> | <code>最小值</code> | <code>gridStatMin</code> | [Data Viewer R017][R017] / Source patch |
| <code>Min length</code> | <code>最小长度</code> | <code>gridStatMinLength</code> | [Data Viewer R017][R017] / Source patch |
| <code>SD</code> | <code>标准差</code> | <code>gridStatSd</code> | [Data Viewer R017][R017] / Source patch |
| <code>Timezone</code> | <code>时区</code> | <code>gridStatTimezone</code> | [Data Viewer R017][R017] / Source patch |
| <code>Unique</code> | <code>唯一值数</code> | <code>gridStatUnique</code> | [Data Viewer R017][R017] / Source patch |
| <code>Timezone: {0}</code> | <code>时区：{0}</code> | <code>gridTimezoneValue</code> | [Data Viewer R017][R017] / Source patch |
| <code>Toggle summary for column {0}</code> | <code>展开或收起列 {0} 的统计摘要</code> | <code>gridToggleColumnSummary</code> | [Data Viewer R017][R017] / Source patch |
| <code>Toggle column summary panel</code> | <code>展开或收起列摘要面板</code> | <code>gridToggleSummaryPanel</code> | [Data Viewer R017][R017] / Source patch |
| <code> · top: {0} ({1}%)</code> | <code> · 最高频：{0}（{1}%）</code> | <code>gridTop</code> | [Data Viewer R017][R017] / Source patch |
| <code>, {0} total column</code> | <code>，{0} 列</code> | <code>gridTotalColumn</code> | [Data Viewer R017][R017] / Source patch |
| <code>, {0} total columns</code> | <code>，{0} 列</code> | <code>gridTotalColumns</code> | [Data Viewer R017][R017] / Source patch |
| <code>{0} unique</code> | <code>{0} 个唯一值</code> | <code>gridUnique</code> | [Data Viewer R017][R017] / Source patch |
| <code>Unpin column</code> | <code>取消固定列</code> | <code>gridUnpinColumn</code> | [Data Viewer R017][R017] / Source patch |
| <code>Unpin column {0}</code> | <code>取消固定列 {0}</code> | <code>gridUnpinColumnName</code> | [Data Viewer R017][R017] / Source patch |
| <code>Value: {0}</code> | <code>值：{0}</code> | <code>gridValue</code> | [Data Viewer R017][R017] / Source patch |

### 数据查看器控件与说明

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Filter</code> | <code>筛选</code> | <code>filterButtonText</code> | [Data Viewer R017][R017] |
| <code>Go to column</code> | <code>跳转到列</code> | <code>goToColumnTitle</code> | [Data Viewer R017][R017] |
| <code>Settings</code> | <code>设置</code> | <code>optionsButtonLabel</code> | [Data Viewer R017][R017] |
| <code>Data viewer options</code> | <code>数据查看器选项</code> | <code>optionsButtonTitle</code> | [Data Viewer R017][R017] |
| <code>Reset View</code> | <code>重置视图</code> | <code>optionsResetView</code> | [Data Viewer R017][R017] |
| <code>Show Filter UI by default</code> | <code>默认显示筛选界面</code> | <code>optionsShowFiltersDefault</code> | [Data Viewer R017][R017] |
| <code>Show Summary panel by default</code> | <code>默认显示摘要面板</code> | <code>optionsShowSummaryDefault</code> | [Data Viewer R017][R017] |
| <code>Use overlay scrollbars</code> | <code>使用覆盖滚动条</code> | <code>optionsUseOverlayScrollbars</code> | [Data Viewer R017][R017] |
| <code>Refresh data viewer</code> | <code>刷新数据查看器</code> | <code>refreshButtonTitle</code> | [Data Viewer R017][R017] |
| <code>Search</code> | <code>搜索</code> | <code>searchPlaceholder</code> | [Data Viewer R017][R017] |
| <code>Search data table</code> | <code>搜索数据表</code> | <code>searchWidgetLabel</code> | [Data Viewer R017][R017] |
| <code>Summary</code> | <code>摘要</code> | <code>sidebarButtonText</code> | [Data Viewer R017][R017] |
| <code>(Displaying up to 1,000 records)</code> | <code>（最多显示 1,000 条记录）</code> | <code>toolbarLabel</code> | [Data Viewer R017][R017] |

### 摘要帮助

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>About column summaries</code> | <code>关于列摘要</code> | <code>gridSummaryAbout</code> | [Data Viewer R017][R017] / Source patch |
| <code>All values are missing.</code> | <code>所有值均为缺失值。</code> | <code>gridSummaryAllMissing</code> | [Data Viewer R017][R017] / Source patch |
| <code> (filtered)</code> | <code>（已筛选）</code> | <code>gridSummaryFiltered</code> | [Data Viewer R017][R017] / Source patch |
| <code>Summaries reflect the current filter and search</code> | <code>摘要反映当前筛选和搜索后的数据</code> | <code>gridSummaryFilteredHint</code> | [Data Viewer R017][R017] / Source patch |
| <code>Close</code> | <code>关闭</code> | <code>gridSummaryHelpClose</code> | [Data Viewer R017][R017] / Source patch |
| <code>Column summaries</code> | <code>列摘要</code> | <code>gridSummaryHelpTitle</code> | [Data Viewer R017][R017] / Source patch |
| <code>Error loading summary</code> | <code>加载摘要时出错</code> | <code>gridSummaryLoadError</code> | [Data Viewer R017][R017] / Source patch |
| <code>{0} to {1}</code> | <code>{0} 至 {1}</code> | <code>gridSummaryRange</code> | [Data Viewer R017][R017] / Source patch |
| <code>No summary available for this column.</code> | <code>此列暂无可用摘要。</code> | <code>gridSummaryUnavailable</code> | [Data Viewer R017][R017] / Source patch |

## 16. R Markdown / Quarto / Notebook

本节 143 条。

`RmdTemplateDisplayNames` 仅解析模板、格式、分类及选项的显示标签；`Document` / `Presentation` 的显示值可本地化，但内部模板身份、`html_document` / `word_document` / `pdf_document`、option_list 及 YAML 值不翻。下列 guidance、格式说明和动态标题沿用实际资源定义。

### 编辑、编译、预览与其他说明

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Author (optional):</code> | <code>作者（可选）：</code> | <code>authorLabel</code> | [R Markdown / GWT R019][R019] |
| <code>(Default)</code> | <code>（默认）</code> | <code>defaultTypeText</code> | [R Markdown / GWT R019][R019] / Source patch |
| <code>Create a standalone HTML report that contains the code and output from your R script.</code> | <code>创建包含 R 脚本代码和输出的独立 HTML 报告。</code> | <code>dialogInfoText</code> | [R Markdown / GWT R019][R019] |
| <code>Report type:</code> | <code>报告类型：</code> | <code>reportType</code> | [R Markdown / GWT R019][R019] |
| <code>Title (optional):</code> | <code>标题（可选）：</code> | <code>titleLabel</code> | [R Markdown / GWT R019][R019] / Source patch |
| <code>Compile Report from R Script</code> | <code>从 R 脚本编译报告</code> | <code>compileNotebookOptionsDialogCaption</code> | [R Markdown / GWT R020][R020] |
| <code>Help on report types</code> | <code>报告类型帮助</code> | <code>helpButtonTitle</code> | [R Markdown / GWT R020][R020] |
| <code>Compile</code> | <code>编译</code> | <code>okButtonCaption</code> | [R Markdown / GWT R020][R020] |
| <code>For more information on compiling reports, see the documentation at</code> | <code>有关编译报告的更多信息，请参阅以下文档：</code> | <code>compilingReports</code> | [R Markdown / GWT R021][R021] |
| <code>Create a standalone report that contains the code and output from your R script.</code> | <code>创建包含 R 脚本代码和输出的独立报告。</code> | <code>dialogLabel</code> | [R Markdown / GWT R021][R021] |
| <code>Report output format:</code> | <code>报告输出格式：</code> | <code>lblFormat</code> | [R Markdown / GWT R021][R021] |
| <code>Compiling Reports from R Scripts</code> | <code>从 R 脚本生成报告</code> | <code>reportsFromRScripts</code> | [R Markdown / GWT R021][R021] |
| <code>Caption</code> | <code>说明</code> | <code>compileCaption</code> | [R Markdown / GWT R022][R022] |
| <code>Compile Report from R Script</code> | <code>从 R 脚本编译报告</code> | <code>compileNotebookV2OptionsDialogCaption</code> | [R Markdown / GWT R022][R022] |
| <code>Compile</code> | <code>编译</code> | <code>okButtonCaption</code> | [R Markdown / GWT R022][R022] |
| <code>About the Quarto visual editor</code> | <code>关于 Quarto 可视化编辑器</code> | <code>aboutHelpButtonTitle</code> | [R Markdown / GWT R034][R034] |
| <code>PDF output requires a LaTeX installation (e.g. https://yihui.org/tinytex/)</code> | <code>输出 PDF 需要安装 LaTeX（例如 https://yihui.org/tinytex/）</code> | <code>beamerFormatDesc</code> | [R Markdown / GWT R034][R034] |
| <code>Create</code> | <code>创建</code> | <code>createDocButtonCaption</code> | [R Markdown / GWT R034][R034] |
| <code>Create Empty Document</code> | <code>创建空文档</code> | <code>createEmptyDocButtonTitle</code> | [R Markdown / GWT R034][R034] |
| <code>Document</code> | <code>文档</code> | <code>documentLabel</code> | [R Markdown / GWT R034][R034] |
| <code>Editor:</code> | <code>编辑器:</code> | <code>editorText</code> | [R Markdown / GWT R034][R034] / Source patch |
| <code>Engine:</code> | <code>引擎:</code> | <code>engineLabelCaption</code> | [R Markdown / GWT R034][R034] |
| <code>(None)</code> | <code>(无)</code> | <code>engineSelectNoneLabel</code> | [R Markdown / GWT R034][R034] |
| <code>Recommended format for authoring (you can switch to PDF or Word output anytime)</code> | <code>建议用于创作的格式（可随时切换为 PDF 或 Word 输出）</code> | <code>htmlFormatDesc</code> | [R Markdown / GWT R034][R034] |
| <code>Interactive</code> | <code>交互式</code> | <code>interactiveLabel</code> | [R Markdown / GWT R034][R034] |
| <code>HTML presentation viewable with any browser (you can also print to PDF with Chrome)</code> | <code>可在任意浏览器中查看的 HTML 演示文稿（也可使用 Chrome 打印为 PDF）</code> | <code>jsFormatDesc</code> | [R Markdown / GWT R034][R034] |
| <code>Kernel:</code> | <code>内核:</code> | <code>kernelLabelCaption</code> | [R Markdown / GWT R034][R034] |
| <code>Learn more about Quarto interactive documents</code> | <code>详细了解 Quarto 交互式文档</code> | <code>learnMoreInteractiveDocsLinkCaption</code> | [R Markdown / GWT R034][R034] |
| <code>Learn more about Quarto</code> | <code>详细了解 Quarto</code> | <code>learnMoreLinkCaption</code> | [R Markdown / GWT R034][R034] |
| <code>Learn more about Quarto presentations</code> | <code>详细了解 Quarto 演示文稿</code> | <code>learnMorePresentationsLinkCaption</code> | [R Markdown / GWT R034][R034] |
| <code>(optional)</code> | <code>(可选)</code> | <code>newDocAuthorPlaceholderText</code> | [R Markdown / GWT R034][R034] |
| <code>Author:</code> | <code>作者：</code> | <code>newDocumentAuthorLabel</code> | [R Markdown / GWT R034][R034] / Source patch |
| <code>Title:</code> | <code>标题：</code> | <code>newDocumentTitleLabel</code> | [R Markdown / GWT R034][R034] / Source patch |
| <code>New Quarto Document</code> | <code>新建 Quarto 文档</code> | <code>newQuartoDocumentCaption</code> | [R Markdown / GWT R034][R034] |
| <code>Create an interactive HTML document with Observable JS components</code> | <code>创建包含 Observable JS 组件的交互式 HTML 文档</code> | <code>observableJSFormatDesc</code> | [R Markdown / GWT R034][R034] |
| <code>PDF output via LaTeX (requires a LaTeX installation, e.g. https://yihui.org/tinytex/)</code> | <code>通过 LaTeX 输出 PDF（需要安装 LaTeX，例如 https://yihui.org/tinytex/）</code> | <code>pdfFormatDescLatex</code> | [R Markdown / GWT R034][R034] |
| <code>PDF output via Typst (bundled with Quarto; no additional software required)</code> | <code>通过 Typst 输出 PDF（Quarto 已内置，无需安装其他软件）</code> | <code>pdfFormatDescTypst</code> | [R Markdown / GWT R034][R034] |
| <code>PowerPoint previewing requires an installation of PowerPoint or OpenOffice</code> | <code>PowerPoint 预览需要安装 PowerPoint 或 OpenOffice</code> | <code>powerPointFormatDesc</code> | [R Markdown / GWT R034][R034] |
| <code>Presentation</code> | <code>演示</code> | <code>presentationLabel</code> | [R Markdown / GWT R034][R034] |
| <code>Create an interactive HTML document with Shiny components.</code> | <code>创建包含 Shiny 组件的交互式 HTML 文档。</code> | <code>shinyFormatDesc</code> | [R Markdown / GWT R034][R034] |
| <code>Templates</code> | <code>模板</code> | <code>templateAriaLabelValue</code> | [R Markdown / GWT R034][R034] |
| <code>Title Required</code> | <code>必须填写标题</code> | <code>titleRequiredErrorCaption</code> | [R Markdown / GWT R034][R034] |
| <code>You must provide a title for the document</code> | <code>您必须提供文档的标题</code> | <code>titleRequiredErrorMessage</code> | [R Markdown / GWT R034][R034] |
| <code>Untitled</code> | <code>未命名</code> | <code>untitledDocumentTitle</code> | [R Markdown / GWT R034][R034] / Source patch |
| <code>Previewing Word documents requires an installation of MS Word (or Libre/Open Office on Linux)</code> | <code>预览 Word 文档需要安装 Microsoft Word（Linux 上可使用 LibreOffice 或 OpenOffice）</code> | <code>wordFormatDesc</code> | [R Markdown / GWT R034][R034] |
| <code>Run Custom Render Command?</code> | <code>运行自定义渲染命令？</code> | <code>customRenderConfirmCaption</code> | [R Markdown / GWT R036][R036] |
| <code>This document specifies a custom render command in its YAML header:\n\n    {0}\n\nRendering will run this command, which can execute arbitrary code. Only continue if you trust this document. Run the command?</code> | <code>此文档在 YAML 标头中指定了自定义渲染命令：\n\n    {0}\n\n渲染时将运行此命令，而该命令可以执行任意代码。仅当您信任此文档时才应继续。是否运行该命令？</code> | <code>customRenderConfirmMessage</code> | [R Markdown / GWT R036][R036] |
| <code>RStudio could not determine how this document will be rendered. If the document specifies a custom render command in its YAML header, rendering will run that command, which can execute arbitrary code. Only continue if you trust this document. Render the document?</code> | <code>RStudio 无法确定此文档将如何渲染。如果文档在 YAML 标头中指定了自定义渲染命令，渲染时将运行该命令，而该命令可以执行任意代码。仅当您信任此文档时才应继续。是否渲染该文档？</code> | <code>customRenderConfirmMessageUnknown</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Edit {0} {1} Options</code> | <code>编辑 {0} {1} 选项</code> | <code>editTemplateOptionsCaption</code> | [R Markdown / GWT R036][R036] |
| <code>Find in Page</code> | <code>在页面中查找</code> | <code>findInPageCaption</code> | [R Markdown / GWT R036][R036] |
| <code>Find</code> | <code>查找</code> | <code>findTextBoxCueText</code> | [R Markdown / GWT R036][R036] |
| <code>Template:</code> | <code>模板 :</code> | <code>helpCaptionTemplateText</code> | [R Markdown / GWT R036][R036] |
| <code>Using R Markdown Templates</code> | <code>使用 R Markdown 模板</code> | <code>helpCationTemplateMsg</code> | [R Markdown / GWT R036][R036] |
| <code>Location:</code> | <code>位置：</code> | <code>locationLabel</code> | [R Markdown / GWT R036][R036] |
| <code>No</code> | <code>否</code> | <code>noButtonText</code> | [R Markdown / GWT R036][R036] |
| <code>OK</code> | <code>确定</code> | <code>noLabel</code> | [R Markdown / GWT R036][R036] |
| <code>No occurrences found</code> | <code>未找到匹配项</code> | <code>noOccurrencesFoundMsg</code> | [R Markdown / GWT R036][R036] |
| <code>Open in Browser</code> | <code>在浏览器中打开</code> | <code>openInBrowserButtonText</code> | [R Markdown / GWT R036][R036] |
| <code>Render Completed</code> | <code>渲染完成</code> | <code>renderCompletedCaption</code> | [R Markdown / GWT R036][R036] |
| <code>RStudio has finished rendering {0} to {1}.</code> | <code>RStudio 已将 {0} 渲染为 {1}。</code> | <code>renderCompletedMsg</code> | [R Markdown / GWT R036][R036] |
| <code>R Markdown Options</code> | <code>R Markdown 选项</code> | <code>rMarkdownOptionstabListLabel</code> | [R Markdown / GWT R036][R036] |
| <code>Rmd Output Panel</code> | <code>Rmd 输出面板</code> | <code>rmdOutputPanelTitle</code> | [R Markdown / GWT R036][R036] |
| <code>Shiny Terminate Failed</code> | <code>Shiny 终止失败</code> | <code>shinyTerminalErrorCaption</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>The Shiny document {0} needs to be stopped before the document can be rendered.</code> | <code>必须先停止 Shiny 文档 {0}，才能渲染该文档。</code> | <code>shinyTerminalErrorMsg</code> | [R Markdown / GWT R036][R036] |
| <code>R Markdown Templates Not Found</code> | <code>未找到 R Markdown 模板</code> | <code>templatesNotFoundErrorCaption</code> | [R Markdown / GWT R036][R036] |
| <code>An error occurred while looking for R Markdown templates. {0}</code> | <code>查找 R Markdown 模板时发生错误。{0}</code> | <code>templatesNotFoundErrorMsg</code> | [R Markdown / GWT R036][R036] |
| <code>Shiny Content</code> | <code>Shiny 内容</code> | <code>warningDialogText</code> | [R Markdown / GWT R036][R036] |
| <code>Yes, Always</code> | <code>是，始终允许</code> | <code>yesAlwaysButtonText</code> | [R Markdown / GWT R036][R036] |
| <code>Download File</code> | <code>下载文件</code> | <code>yesLabel</code> | [R Markdown / GWT R036][R036] |
| <code>Yes, Once</code> | <code>是，仅此一次</code> | <code>yesOnceButtonText</code> | [R Markdown / GWT R036][R036] |
| <code>Name:</code> | <code>名称 :</code> | <code>labelText</code> | [R Markdown / GWT R037][R037] |
| <code>(No templates found)</code> | <code>（未找到模板）</code> | <code>noTemplateFound</code> | [R Markdown / GWT R037][R037] |
| <code>This template contains multiple files. Create a new directory for these files:</code> | <code>此模板包含多个文件。为这些文件创建一个新目录：</code> | <code>templateOptionsPanel</code> | [R Markdown / GWT R037][R037] / Source patch |
| <code>Untitled</code> | <code>未命名</code> | <code>untitledTemplateName</code> | [R Markdown / GWT R037][R037] / Source patch |
| <code>Output Format:</code> | <code>输出格式 :</code> | <code>outputFormatText</code> | [R Markdown / GWT R038][R038] |
| <code>This R Markdown document contains Shiny content, but was rendered to a static file. Shiny content in the document may not appear, and will not be interactive.&lt;br&gt; &lt;br&gt;</code> | <code>此 R Markdown 文档包含 Shiny 内容，但已渲染为静态文件。文档中的 Shiny 内容可能不会显示，也无法进行交互。&lt;br&gt; &lt;br&gt;</code> | <code>dialogMessage</code> | [R Markdown / GWT R039][R039] |
| <code>Shiny Documents</code> | <code>Shiny 文档</code> | <code>shinyDocumentsCaption</code> | [R Markdown / GWT R039][R039] |
| <code>Clearing Knitr Cache...</code> | <code>正在清除 Knitr 缓存…</code> | <code>clearingKnitrCaption</code> | [R Markdown / GWT R092][R092] |
| <code>Clear Knitr Cache</code> | <code>清除 Knitr 缓存</code> | <code>clearKnitrCacheCaption</code> | [R Markdown / GWT R092][R092] |
| <code>Clearing the Knitr cache will discard previously cached output and re-run all of the R code chunks within the presentation.\n\nAre you sure you want to clear the cache now?</code> | <code>清除 Knitr 缓存将丢弃先前缓存的输出，并重新运行演示文稿中的所有 R 代码块。\n\n确定要立即清除缓存吗？</code> | <code>clearKnitrCacheMessage</code> | [R Markdown / GWT R092][R092] |
| <code>Closing Presentation...</code> | <code>正在关闭演示文稿…</code> | <code>closingPresentationProgressMessage</code> | [R Markdown / GWT R092][R092] |
| <code>Error Clearing Cache</code> | <code>清除缓存出错</code> | <code>errorClearingCache</code> | [R Markdown / GWT R092][R092] |
| <code>Error Saving Presentation</code> | <code>保存演示文稿时出错</code> | <code>errorSavingPresentationCaption</code> | [R Markdown / GWT R092][R092] |
| <code>More presentation commands</code> | <code>更多演示文稿命令</code> | <code>morePresentationCommandsTitle</code> | [R Markdown / GWT R092][R092] |
| <code>More</code> | <code>更多</code> | <code>moreText</code> | [R Markdown / GWT R092][R092] |
| <code>Opening Presentation...</code> | <code>正在打开演示文稿…</code> | <code>openingPresentationProgressMessage</code> | [R Markdown / GWT R092][R092] |
| <code>Presentation Frame</code> | <code>演示文稿框架</code> | <code>presentationFrameTitle</code> | [R Markdown / GWT R092][R092] |
| <code>Presentation:\n{0}</code> | <code>演示文稿:\n{0}</code> | <code>presentationLabel</code> | [R Markdown / GWT R092][R092] |
| <code>Presentation Tab</code> | <code>演示文稿标签页</code> | <code>presentationTabLabel</code> | [R Markdown / GWT R092][R092] |
| <code>Presentation</code> | <code>演示</code> | <code>presentationTitle</code> | [R Markdown / GWT R092][R092] |
| <code>Save Presentation As</code> | <code>演示文稿另存为</code> | <code>savePresentationAsCaption</code> | [R Markdown / GWT R092][R092] |
| <code>Saving Presentation...</code> | <code>正在保存演示文稿…</code> | <code>savingPresentationProgressMessage</code> | [R Markdown / GWT R092][R092] |
| <code>Unknown Console Directive</code> | <code>未知的控制台指令</code> | <code>unknownConsoleDirectiveCaption</code> | [R Markdown / GWT R092][R092] |
| <code>Unknown Presentation Command</code> | <code>未知的演示文稿命令</code> | <code>unknownPresentationCommandCaption</code> | [R Markdown / GWT R092][R092] |
| <code>Presentation Preview</code> | <code>演示文稿预览</code> | <code>presentationPreviewTitle</code> | [R Markdown / GWT R093][R093] |
| <code>Presentation Slides Toolbar</code> | <code>演示幻灯片工具栏</code> | <code>presentationSlidesToolbarLabel</code> | [R Markdown / GWT R093][R093] |
| <code>Presentation</code> | <code>演示</code> | <code>presentationTitle</code> | [R Markdown / GWT R093][R093] |
| <code>Presentation Toolbar</code> | <code>演示文稿工具栏</code> | <code>presentationToolbarLabel</code> | [R Markdown / GWT R093][R093] |
| <code>Present</code> | <code>演示</code> | <code>presentTitle</code> | [R Markdown / GWT R093][R093] |
| <code>Change Chunk Type</code> | <code>更改代码块类型</code> | <code>changeChunkTypeTitle</code> | [R Markdown / GWT R096][R096] / Source patch |
| <code>Modify Chunk Options</code> | <code>修改代码块选项</code> | <code>modifyChunkTitle</code> | [R Markdown / GWT R096][R096] / Source patch |
| <code>Default Output Format:</code> | <code>默认输出格式 :</code> | <code>defaultOutputFormat</code> | [R Markdown / GWT R098][R098] / Source patch |
| <code>Author:</code> | <code>作者：</code> | <code>newDocumentAuthorLabel</code> | [R Markdown / GWT R098][R098] / Source patch |
| <code>Date:</code> | <code>日期：</code> | <code>newDocumentDateLabel</code> | [R Markdown / GWT R098][R098] / Source patch |
| <code>Title:</code> | <code>标题：</code> | <code>newDocumentTitleLabel</code> | [R Markdown / GWT R098][R098] / Source patch |

### 格式显示名称

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Notebook</code> | <code>笔记本</code> | <code>rmdFormatHtmlNotebookLabel</code> | [R Markdown / GWT R036][R036] / Source patch |

### 格式要求与 guidance

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Recommended format for authoring (you can switch to PDF or Word output anytime).</code> | <code>推荐用于编写文档的格式（可随时切换为 PDF 或 Word 输出）。</code> | <code>rmdHtmlAuthoringGuidance</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>PDF output requires TeX (MiKTeX on Windows, MacTeX 2013+ on OS X, TeX Live 2013+ on Linux).</code> | <code>输出 PDF 需要安装 TeX（Windows 上使用 MiKTeX，OS X 上使用 MacTeX 2013+，Linux 上使用 TeX Live 2013+）。</code> | <code>rmdPdfTexGuidance</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Previewing Word documents requires an installation of MS Word (or Libre/Open Office on Linux).</code> | <code>预览 Word 文档需要安装 MS Word（Linux 上使用 Libre/Open Office）。</code> | <code>rmdWordPreviewGuidance</code> | [R Markdown / GWT R036][R036] / Source patch |

### 模板显示名称

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Document</code> | <code>文档</code> | <code>rmdTemplateDocumentLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Presentation</code> | <code>演示文稿</code> | <code>rmdTemplatePresentationLabel</code> | [R Markdown / GWT R036][R036] / Source patch |

### 选项分类

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Advanced</code> | <code>高级</code> | <code>rmdCategoryAdvancedLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Figures</code> | <code>图形</code> | <code>rmdCategoryFiguresLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>General</code> | <code>常规</code> | <code>rmdCategoryGeneralLabel</code> | [R Markdown / GWT R036][R036] / Source patch |

### 选项显示标签

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Color theme</code> | <code>颜色主题</code> | <code>rmdOptionBeamerColorThemeLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Font theme</code> | <code>字体主题</code> | <code>rmdOptionBeamerFontThemeLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Fold R code chunks</code> | <code>折叠 R 代码块</code> | <code>rmdOptionCodeFoldingLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Crop figures with pdfcrop (if available)</code> | <code>使用 pdfcrop 裁剪图形（如可用）</code> | <code>rmdOptionCropFiguresLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Apply CSS file</code> | <code>应用 CSS 文件</code> | <code>rmdOptionCssFileLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Print dataframes as</code> | <code>数据框打印为</code> | <code>rmdOptionDataFramePrintLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Render figures with captions</code> | <code>为图形添加图注</code> | <code>rmdOptionFigureCaptionsLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Default figure height in inches</code> | <code>默认图形高度（英寸）</code> | <code>rmdOptionFigureHeightLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Figure scaling for Retina displays</code> | <code>Retina 显示屏图形缩放比例</code> | <code>rmdOptionFigureRetinaLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Default figure width in inches</code> | <code>默认图形宽度（英寸）</code> | <code>rmdOptionFigureWidthLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Create a standalone HTML document</code> | <code>创建独立的 HTML 文档</code> | <code>rmdOptionHtmlDocumentSelfContainedLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Apply theme</code> | <code>应用主题</code> | <code>rmdOptionHtmlDocumentThemeLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Create a standalone HTML presentation</code> | <code>创建独立的 HTML 演示文稿</code> | <code>rmdOptionHtmlPresentationSelfContainedLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Slide transition speed</code> | <code>幻灯片切换速度</code> | <code>rmdOptionIoslidesTransitionSpeedLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Keep markdown source file</code> | <code>保留 Markdown 源文件</code> | <code>rmdOptionKeepMarkdownLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Keep tex source file used to produce PDF</code> | <code>保留用于生成 PDF 的 TeX 源文件</code> | <code>rmdOptionKeepTexLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>LaTeX Engine</code> | <code>LaTeX 引擎</code> | <code>rmdOptionLatexEngineLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Number section headings</code> | <code>为章节标题编号</code> | <code>rmdOptionNumberSectionsLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Theme</code> | <code>主题</code> | <code>rmdOptionPresentationThemeLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Render slide bullets incrementally</code> | <code>逐项显示幻灯片项目符号</code> | <code>rmdOptionSlideIncrementalLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Show logo (square, at least 128x128)</code> | <code>显示徽标（正方形，至少 128×128）</code> | <code>rmdOptionSlideLogoLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Slide transition</code> | <code>幻灯片切换方式</code> | <code>rmdOptionSlideTransitionLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Vertically center content on slides</code> | <code>在幻灯片中垂直居中内容</code> | <code>rmdOptionSlideVerticalCenterLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Use smaller text on all slides</code> | <code>在所有幻灯片中使用较小字号</code> | <code>rmdOptionSmallerTextLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Use smart punctuation</code> | <code>使用智能标点</code> | <code>rmdOptionSmartPunctuationLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Syntax highlighting</code> | <code>语法高亮</code> | <code>rmdOptionSyntaxHighlightingLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Depth of headers for table of contents</code> | <code>目录的标题层级</code> | <code>rmdOptionTableOfContentsDepthLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Include table of contents</code> | <code>包含目录</code> | <code>rmdOptionTableOfContentsLabel</code> | [R Markdown / GWT R036][R036] / Source patch |
| <code>Use widescreen dimensions</code> | <code>使用宽屏尺寸</code> | <code>rmdOptionWidescreenLabel</code> | [R Markdown / GWT R036][R036] / Source patch |

## 17. Visual Editor / Panmirror

本节 382 条。

涵盖 GWT 编辑器菜单/对话框及 `translateText` 显示适配。部分命令仍保留英文搜索关键词，以保持搜索兼容性；`displayName`、tooltip 和对话框文字本地化不等于更改搜索 identity。Panmirror 行为性补丁（例如 table ID 保留）不计作翻译。

消费路径空白差异：`translateText` 接收的 ` type to search...` 带一个前导空格，映射到 `visualEditorTypeToSearchPlaceholder`；该资源英文定义为 `type to search...`，中文为 `输入以搜索…`。下表保留资源定义，此处补充调用方原文，不重复计数。

### 编辑命令、菜单与对话框

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Markdown format changes require a reload of the visual editor.</code> | <code>Markdown 格式发生更改，需要重新加载可视化编辑器。</code> | <code>showPanmirrorText</code> | [Panmirror / GWT R001][R001] |
| <code>Auto Generate</code> | <code>自动生成</code> | <code>autoGenerateText</code> | [Panmirror / GWT R026][R026] |
| <code>Classes</code> | <code>类</code> | <code>classesText</code> | [Panmirror / GWT R026][R026] |
| <code>(e.g. color: gray;)</code> | <code>（例如 color: gray;）</code> | <code>colorText</code> | [Panmirror / GWT R026][R026] |
| <code>CSS styles</code> | <code>CSS 样式</code> | <code>cssStyles</code> | [Panmirror / GWT R026][R026] |
| <code>(e.g. .illustration)</code> | <code>（例如 .illustration）</code> | <code>illustrationText</code> | [Panmirror / GWT R026][R026] |
| <code>Other</code> | <code>其他</code> | <code>otherText</code> | [Panmirror / GWT R026][R026] |
| <code>(e.g. #overview)</code> | <code>（例如 #overview）</code> | <code>overviewText</code> | [Panmirror / GWT R026][R026] |
| <code>(key=value, one per line)</code> | <code>（key=value，每行一个）</code> | <code>valueText</code> | [Panmirror / GWT R026][R026] |
| <code>Item display:</code> | <code>列表项显示：</code> | <code>itemDisplay</code> | [Panmirror / GWT R027][R027] |
| <code>List type:</code> | <code>列表类型：</code> | <code>listType</code> | [Panmirror / GWT R027][R027] |
| <code>Number delimiter:</code> | <code>编号分隔符：</code> | <code>numberDelimiter</code> | [Panmirror / GWT R027][R027] |
| <code>Number style:</code> | <code>编号样式：</code> | <code>numberStyle</code> | [Panmirror / GWT R027][R027] |
| <code>Pandoc HTML output does not support custom number delimiters, so the editor will always display the Period style</code> | <code>Pandoc HTML 输出不支持自定义编号分隔符，因此编辑器将始终显示句点样式</code> | <code>pandocHTMLText</code> | [Panmirror / GWT R027][R027] |
| <code>Starting number:</code> | <code>起始编号：</code> | <code>startingNumber</code> | [Panmirror / GWT R027][R027] |
| <code>Tight layout (less vertical space between list items)</code> | <code>紧凑布局（减小列表项之间的垂直间距）</code> | <code>tightLayout</code> | [Panmirror / GWT R027][R027] |
| <code>Content:</code> | <code>内容 :</code> | <code>contentText</code> | [Panmirror / GWT R028][R028] |
| <code>(Tab {0}{1})</code> | <code>（标签页 {0}{1}）</code> | <code>addTabCaptionInput</code> | [Panmirror / GWT R025][R025] / Source patch |
| <code>Advanced</code> | <code>高级</code> | <code>advancedLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Alternative text:</code> | <code>替代文本：</code> | <code>alternativeTextLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Any...</code> | <code>任意...</code> | <code>anyMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Appearance: </code> | <code>外观 :</code> | <code>appearanceLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Attributes</code> | <code>属性</code> | <code>attributesText</code> | [Panmirror / GWT R025][R025] |
| <code>(Auto)</code> | <code>(自动)</code> | <code>autoText</code> | [Panmirror / GWT R025][R025] |
| <code>Blockquote</code> | <code>块引用</code> | <code>blockquoteMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Block</code> | <code>块</code> | <code>blockText</code> | [Panmirror / GWT R025][R025] |
| <code>Bold</code> | <code>粗体</code> | <code>boldMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Browse...</code> | <code>浏览...</code> | <code>browseLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Bulleted List</code> | <code>项目符号列表</code> | <code>bulletedListMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Callout</code> | <code>标注框</code> | <code>calloutCaption</code> | [Panmirror / GWT R025][R025] |
| <code>Callout</code> | <code>标注框</code> | <code>calloutText</code> | [Panmirror / GWT R025][R025] |
| <code>Caption:</code> | <code>说明 :</code> | <code>captionLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Center</code> | <code>居中</code> | <code>centerLabel</code> | [Panmirror / GWT R025][R025] |
| <code>(Choose Format)</code> | <code>(选择格式)</code> | <code>chooseFormatLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Choose Image</code> | <code>选择图像</code> | <code>chooseImageCaption</code> | [Panmirror / GWT R025][R025] |
| <code>(chunk {0})</code> | <code>（代码块 {0}）</code> | <code>chunkText</code> | [Panmirror / GWT R025][R025] |
| <code>Clear Formatting</code> | <code>清除格式</code> | <code>clearFormattingMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Code Block...</code> | <code>代码块...</code> | <code>codeBlockFormatMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Code</code> | <code>代码</code> | <code>codeBlockMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Code Block</code> | <code>代码块</code> | <code>codeBlockText</code> | [Panmirror / GWT R025][R025] |
| <code>Code</code> | <code>代码</code> | <code>codeMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Collapse All Chunks</code> | <code>折叠所有代码块</code> | <code>collapseAllChunksMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Collapse Chunk</code> | <code>折叠代码块</code> | <code>collapseChunkMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Comment</code> | <code>注释</code> | <code>commentMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Decimal</code> | <code>小数</code> | <code>decimalChoice</code> | [Panmirror / GWT R025][R025] |
| <code>Default</code> | <code>默认</code> | <code>defaultAlignLabel</code> | [Panmirror / GWT R025][R025] |
| <code>(Default for presentation)</code> | <code>(演示文稿默认设置)</code> | <code>defaultChoiceList</code> | [Panmirror / GWT R025][R025] |
| <code>Definition List</code> | <code>定义列表</code> | <code>definitionListMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Description</code> | <code>说明</code> | <code>descriptionMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Display Math</code> | <code>独立公式</code> | <code>displayMathMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Div Attributes</code> | <code>Div 元素属性</code> | <code>divAttributesCaption</code> | [Panmirror / GWT R025][R025] |
| <code>Document Outline</code> | <code>文档大纲</code> | <code>documentOutlineAriaLabel</code> | [Panmirror / GWT R025][R025] / Source patch |
| <code>Edit Attributes</code> | <code>编辑属性</code> | <code>editAttributesCaption</code> | [Panmirror / GWT R025][R025] |
| <code>Edit Attributes...</code> | <code>编辑属性...</code> | <code>editAttributesMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Edit Equation ID</code> | <code>编辑公式 ID</code> | <code>editEquationCaption</code> | [Panmirror / GWT R025][R025] |
| <code>Error</code> | <code>错误</code> | <code>errorCaption</code> | [Panmirror / GWT R025][R025] |
| <code>You must provide a value for image width.</code> | <code>您必须提供图像宽度的值。</code> | <code>errorMessage</code> | [Panmirror / GWT R025][R025] |
| <code>You must provide a value for the citation id.</code> | <code>您必须为引用 ID 提供值。</code> | <code>errorValidateMessage</code> | [Panmirror / GWT R025][R025] |
| <code>Example</code> | <code>示例</code> | <code>exampleChoice</code> | [Panmirror / GWT R025][R025] |
| <code>Expand All Chunks</code> | <code>展开所有代码块</code> | <code>expandAllChunksMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Expand Chunk</code> | <code>展开代码块</code> | <code>expandChunkMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Figure / Image...</code> | <code>图 / 图像...</code> | <code>figureImageMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Figure</code> | <code>图</code> | <code>figureLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Find/Replace</code> | <code>查找/替换</code> | <code>findReplaceTitle</code> | [Panmirror / GWT R025][R025] |
| <code>Footnote</code> | <code>脚注</code> | <code>footnoteMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Format:</code> | <code>格式 :</code> | <code>formatLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Format</code> | <code>格式</code> | <code>formatText</code> | [Panmirror / GWT R025][R025] |
| <code>Format</code> | <code>格式</code> | <code>formatTitle</code> | [Panmirror / GWT R025][R025] |
| <code>Go to Next Chunk</code> | <code>转到下一个代码块</code> | <code>goToNextChunkMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Go to Next Section</code> | <code>转到下一节</code> | <code>goToNextSectionMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Go to Previous Section</code> | <code>转到上一节</code> | <code>goToPreviousSectionMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Header 1</code> | <code>标题 1</code> | <code>heading1MenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Header 2</code> | <code>标题 2</code> | <code>heading2MenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Header 3</code> | <code>标题 3</code> | <code>heading3MenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Header 4</code> | <code>标题 4</code> | <code>heading4MenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Header 5</code> | <code>标题 5</code> | <code>heading5MenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Header 6</code> | <code>标题 6</code> | <code>heading6MenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Heading</code> | <code>标题</code> | <code>headingAriaLabel</code> | [Panmirror / GWT R025][R025] / Source patch |
| <code>Heading</code> | <code>标题</code> | <code>headingLinkTypeLabel</code> | [Panmirror / GWT R025][R025] / Source patch |
| <code>Height:</code> | <code>高度 :</code> | <code>heightLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Horizontal Rule</code> | <code>水平分隔线</code> | <code>horizontalRuleMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>HRef</code> | <code>链接目标</code> | <code>hrefAriaLabel</code> | [Panmirror / GWT R025][R025] / Source patch |
| <code>HTML Block</code> | <code>HTML 块</code> | <code>htmlBlockMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>HTML Inline...</code> | <code>行内 HTML...</code> | <code>htmlInlineMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Image (File or URL):</code> | <code>图像( 文件或 URL ) :</code> | <code>imageChooserLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Image</code> | <code>图像</code> | <code>imageLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Image</code> | <code>图像</code> | <code>imageTabListLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Incremental (one item at a time)</code> | <code>递增显示（每次一项）</code> | <code>incrementalChoiceList</code> | [Panmirror / GWT R025][R025] |
| <code>Inline Math</code> | <code>行内公式</code> | <code>inlineMathMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Inline</code> | <code>行内</code> | <code>inlineText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert:::Callout...</code> | <code>插入:::标注框...</code> | <code>insertCalloutMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert:::Em Dash (—)</code> | <code>插入:::长破折号（—）</code> | <code>insertEmDashMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert:::En Dash (–)</code> | <code>插入:::短破折号（–）</code> | <code>insertEnDashMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert:::Hard Line Break</code> | <code>插入:::强制换行</code> | <code>insertHardLinkBreakMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert:::Non-Breaking Space</code> | <code>插入:::不换行空格</code> | <code>insertNonBreakingSpaceMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert:::Slide Columns</code> | <code>插入:::幻灯片分栏</code> | <code>insertSlideColumnsMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert:::Slide Notes</code> | <code>插入:::幻灯片备注</code> | <code>insertSlideNotesMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert:::Slide Pause</code> | <code>插入:::幻灯片暂停</code> | <code>insertSlidePauseMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert Tabset</code> | <code>插入标签集</code> | <code>insertTabsetCaption</code> | [Panmirror / GWT R025][R025] |
| <code>Insert:::Tabset...</code> | <code>插入:::标签页组...</code> | <code>insertTabsetMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert</code> | <code>插入</code> | <code>insertText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert</code> | <code>插入</code> | <code>insertTitle</code> | [Panmirror / GWT R025][R025] |
| <code>Invalid ID</code> | <code>无效的 ID</code> | <code>invalidIDCaption</code> | [Panmirror / GWT R025][R025] |
| <code>Equation IDs must start with eq-</code> | <code>公式 ID 必须以 eq- 开头</code> | <code>invalidIDMessage</code> | [Panmirror / GWT R025][R025] |
| <code>Italic</code> | <code>斜体</code> | <code>italicMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Item Checkbox</code> | <code>列表项复选框</code> | <code>itemCheckboxMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Item Checked</code> | <code>列表项已选中</code> | <code>itemCheckedMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Citation data for this DOI couldn''t be found.</code> | <code>找不到此 DOI 的引用数据。</code> | <code>kNoDataError</code> | [Panmirror / GWT R025][R025] |
| <code>Unable to reach server to load citation data for this DOI.</code> | <code>无法连接服务器以加载此 DOI 的引用数据。</code> | <code>kServerError</code> | [Panmirror / GWT R025][R025] |
| <code>An error occurred while loading citation data for this DOI.</code> | <code>加载此 DOI 的引用数据时出错。</code> | <code>kUnknownError</code> | [Panmirror / GWT R025][R025] |
| <code>Language</code> | <code>语言</code> | <code>languageFormLabel</code> | [Panmirror / GWT R025][R025] |
| <code>LaTeX environment:</code> | <code>LaTeX 环境:</code> | <code>latexEnvironmentLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Left</code> | <code>左对齐</code> | <code>leftLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Alignment</code> | <code>对齐</code> | <code>legendText</code> | [Panmirror / GWT R025][R025] |
| <code>Lift Item</code> | <code>减少列表项缩进</code> | <code>liftItemMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Line Block</code> | <code>行块</code> | <code>linkBlockMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Link</code> | <code>链接</code> | <code>linkLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Link...</code> | <code>链接...</code> | <code>linkMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Link to:</code> | <code>链接到 :</code> | <code>linkToLabel</code> | [Panmirror / GWT R025][R025] |
| <code>List Attributes...</code> | <code>列表属性...</code> | <code>listAttributesMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>List</code> | <code>列表</code> | <code>listLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Loading Collections...</code> | <code>正在加载收藏...</code> | <code>loadingCollectionsProgressText</code> | [Panmirror / GWT R025][R025] |
| <code>Lock ratio</code> | <code>锁定比率</code> | <code>lockRatioText</code> | [Panmirror / GWT R025][R025] |
| <code>Raw {0}</code> | <code>原始内容 {0}</code> | <code>modelDialogCaption</code> | [Panmirror / GWT R025][R025] |
| <code>Non-Incremental (all items at once)</code> | <code>一次显示（所有项同时）</code> | <code>nonIncrementalChoiceList</code> | [Panmirror / GWT R025][R025] |
| <code>Normal</code> | <code>常规</code> | <code>normalMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Numbered List</code> | <code>编号列表</code> | <code>numberedListMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Looking Up DOI..</code> | <code>正在查找 DOI...</code> | <code>onProgressMessage</code> | [Panmirror / GWT R025][R025] |
| <code>(optional)</code> | <code>(可选)</code> | <code>optionalFormLabel</code> | [Panmirror / GWT R025][R025] |
| <code>(Optional)</code> | <code>(可选)</code> | <code>optionalPlaceholder</code> | [Panmirror / GWT R025][R025] |
| <code>- Optional</code> | <code>- 可选</code> | <code>optionalText</code> | [Panmirror / GWT R025][R025] |
| <code>Normal</code> | <code>常规</code> | <code>panmirrorBlockMenuDefaultText</code> | [Panmirror / GWT R025][R025] |
| <code>Block Format</code> | <code>区块格式</code> | <code>panMirrorBlockMenuTitle</code> | [Panmirror / GWT R025][R025] |
| <code>Paragraph</code> | <code>段落</code> | <code>paragraphMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Raw Block...</code> | <code>原始块...</code> | <code>rawBlockMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Raw Inline...</code> | <code>原始行内内容...</code> | <code>rawInlineMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Reading Collections...</code> | <code>正在读取收藏...</code> | <code>readingCollectionsProgressText</code> | [Panmirror / GWT R025][R025] |
| <code>Redo</code> | <code>重做</code> | <code>redoMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Remove Format</code> | <code>删除格式</code> | <code>removeFormatText</code> | [Panmirror / GWT R025][R025] |
| <code>Remove Link</code> | <code>删除链接</code> | <code>removeLinkMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Remove Link</code> | <code>删除链接</code> | <code>removeLinkTitle</code> | [Panmirror / GWT R025][R025] |
| <code>Right</code> | <code>右对齐</code> | <code>rightLabel</code> | [Panmirror / GWT R025][R025] |
| <code>{0} occurrences replaced.</code> | <code>已替换 {0} 个匹配项。</code> | <code>rStudioGinjectorErrorMessage</code> | [Panmirror / GWT R025][R025] |
| <code>Select All</code> | <code>全选</code> | <code>selectAllMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Shortcode</code> | <code>短码</code> | <code>shortcodeMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Show icon</code> | <code>显示图标</code> | <code>showIconLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Sink Item</code> | <code>增加列表项缩进</code> | <code>sinkItemMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Small Caps</code> | <code>小型大写字母</code> | <code>smallCapsMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Span Attributes</code> | <code>Span 元素属性</code> | <code>spanAttributesCaption</code> | [Panmirror / GWT R025][R025] |
| <code>Strikeout</code> | <code>删除线</code> | <code>strikeoutMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Subscript</code> | <code>下标</code> | <code>subscriptMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Superscript</code> | <code>上标</code> | <code>superscriptMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Tab names:</code> | <code>标签名称 :</code> | <code>tabNamesFormLabel</code> | [Panmirror / GWT R025][R025] |
| <code>You must specify at least two tab names</code> | <code>您必须指定至少两个标签名</code> | <code>tabSetErrorMessage</code> | [Panmirror / GWT R025][R025] |
| <code>Tabs</code> | <code>标签页</code> | <code>tabsText</code> | [Panmirror / GWT R025][R025] |
| <code>Term</code> | <code>术语</code> | <code>termMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>TeX Block</code> | <code>TeX 块</code> | <code>texBlockMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>TeX Inline</code> | <code>行内 TeX</code> | <code>texInlineMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Text:</code> | <code>文本 :</code> | <code>textFormLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Tight List</code> | <code>紧凑列表</code> | <code>tightListMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Title attribute:</code> | <code>标题属性 :</code> | <code>titleAttributeLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Title/Tooltip:</code> | <code>标题/工具提示：</code> | <code>titleToolTipLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Type: </code> | <code>类型 :</code> | <code>typeLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Underline</code> | <code>下划线</code> | <code>underlineMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Undo</code> | <code>撤销</code> | <code>undoMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Units</code> | <code>单位</code> | <code>unitsLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Unwrap Div</code> | <code>取消 Div 包裹</code> | <code>unwrapDivTitle</code> | [Panmirror / GWT R025][R025] |
| <code>Unwrap Span</code> | <code>取消 Span 包裹</code> | <code>unwrapSpanRemoveButtonCaption</code> | [Panmirror / GWT R025][R025] |
| <code>No Content Specified</code> | <code>未指定内容</code> | <code>validateCaption</code> | [Panmirror / GWT R025][R025] |
| <code>You must provide a value for the link target.</code> | <code>您必须为链接目标提供值。</code> | <code>validateErrorMessage</code> | [Panmirror / GWT R025][R025] |
| <code>You must provide content to apply the raw format to.</code> | <code>您必须提供内容来应用原始格式。</code> | <code>validateMessage</code> | [Panmirror / GWT R025][R025] |
| <code>visual editor {0}</code> | <code>可视化编辑器 {0}</code> | <code>visualEditorLabel</code> | [Panmirror / GWT R025][R025] |
| <code>Visual Editor</code> | <code>可视化编辑器</code> | <code>visualEditorText</code> | [Panmirror / GWT R025][R025] |
| <code>Width:</code> | <code>宽度 :</code> | <code>widthLabel</code> | [Panmirror / GWT R025][R025] |
| <code>YAML Block</code> | <code>YAML 块</code> | <code>yamlBlockMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Use visual markdown editor</code> | <code>使用可视化 Markdown 编辑器</code> | <code>chkVisualEditorLabel</code> | [Panmirror / GWT R034][R034] |
| <code>Show margin column indicator in code blocks</code> | <code>在代码块中显示边距列指示线</code> | <code>visualEditorShowMarginLabel</code> | [Panmirror / GWT R059][R059] |
| <code>Show document outline by default</code> | <code>默认显示文档大纲</code> | <code>visualEditorShowOutlineLabel</code> | [Panmirror / GWT R059][R059] |
| <code>Use visual editor by default for new documents</code> | <code>新文档默认使用可视化编辑器</code> | <code>visualModeUseVisualEditorLabel</code> | [Panmirror / GWT R059][R059] |
| <code>Use Visual Editor</code> | <code>使用可视化编辑器</code> | <code>useVisualEditor</code> | [Panmirror / GWT R095][R095] |
| <code>You are activating R Markdown visual editing mode. This mode enables you to compose markdown using a familiar word processor style interface.</code> | <code>您正在启用 R Markdown 可视化编辑模式。此模式允许您使用熟悉的文字处理器式界面编写 Markdown。</code> | <code>activateRMarkdown</code> | [Panmirror / GWT R100][R100] |
| <code>Learn more about R Markdown visual editing mode</code> | <code>详细了解 R Markdown 可视化编辑模式</code> | <code>learnRMarkdownMode</code> | [Panmirror / GWT R100][R100] |
| <code>You can switch between visual and source mode at any time (editing location and undo/redo state will be preserved when you switch).</code> | <code>您可以随时在可视化模式和源代码模式之间切换（切换时会保留编辑位置和撤销/重做状态）。</code> | <code>switchModeText</code> | [Panmirror / GWT R100][R100] |
| <code>Visual mode will re-write your markdown source code using Pandoc''s default markdown writer. Click here to learn more about &lt;a href=''https://www.rstudio.org/links/visual_markdown_editing-markdown-output'' target=''_blank''&gt; markdown output&lt;/a&gt; from visual mode.</code> | <code>可视化模式将使用 Pandoc 的默认 Markdown 写入器重写 Markdown 源代码。单击此处了解可视化模式的 &lt;a href=''https://www.rstudio.org/links/visual_markdown_editing-markdown-output'' target=''_blank''&gt;Markdown 输出&lt;/a&gt;。</code> | <code>visualMode</code> | [Panmirror / GWT R100][R100] |
| <code>Activities</code> | <code>活动</code> | <code>visualEditorActivitiesLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Align Column</code> | <code>列对齐</code> | <code>visualEditorAlignColumnMenuLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Block containing other content</code> | <code>包含其他内容的区块</code> | <code>visualEditorBlockContainingContentDescription</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code> type / to insert a block (code, math, figure, div, etc.)</code> | <code> 输入 / 可插入内容块（代码、公式、图形、Div 等）</code> | <code>visualEditorBlockInsertionHint</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Bullet List</code> | <code>项目符号列表（Bullet List）</code> | <code>visualEditorBulletListLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Bullets &amp; Numbering</code> | <code>项目符号与编号</code> | <code>visualEditorBulletsNumberingMenuLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Capitalize</code> | <code>首字母大写</code> | <code>visualEditorCapitalizeLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Create:</code> | <code>创建：</code> | <code>visualEditorCreateLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Custom</code> | <code>自定义</code> | <code>visualEditorCustomLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Default</code> | <code>默认</code> | <code>visualEditorDefaultLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Definition</code> | <code>定义列表</code> | <code>visualEditorDefinitionListMenuLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>{0} Code Cell</code> | <code>{0} 代码单元格</code> | <code>visualEditorDynamicCodeCell</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>{0} Code Chunk</code> | <code>{0} 代码块</code> | <code>visualEditorDynamicCodeChunk</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Flags</code> | <code>旗帜</code> | <code>visualEditorFlagsLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Format:</code> | <code>格式：</code> | <code>visualEditorFormatLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Heading</code> | <code>标题</code> | <code>visualEditorHeadingPrefixLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Insert</code> | <code>插入</code> | <code>visualEditorInsertLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>In-text</code> | <code>文中引用</code> | <code>visualEditorInTextLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>LaTeX Math</code> | <code>LaTeX 数学公式</code> | <code>visualEditorLatexMathMenuLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>List using bullets for items</code> | <code>使用项目符号的列表</code> | <code>visualEditorListUsingBulletsDescription</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>List using numbers for items</code> | <code>使用编号的列表</code> | <code>visualEditorListUsingNumbersDescription</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>My Sources</code> | <code>我的来源</code> | <code>visualEditorMySourcesLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>No items</code> | <code>暂无项目</code> | <code>visualEditorNoItemsLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>No matching symbols</code> | <code>未找到匹配的符号</code> | <code>visualEditorNoMatchingSymbols</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>(None)</code> | <code>（无）</code> | <code>visualEditorNoneLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Numbered List</code> | <code>编号列表（Numbered List）</code> | <code>visualEditorNumberedListLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Objects</code> | <code>物品</code> | <code>visualEditorObjectsLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Part heading</code> | <code>篇标题</code> | <code>visualEditorPartHeadingDescription</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Prefix</code> | <code>前缀</code> | <code>visualEditorPrefixLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>R Package</code> | <code>R 包</code> | <code>visualEditorRPackageLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Special Characters</code> | <code>特殊字符</code> | <code>visualEditorSpecialCharactersMenuLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Symbols</code> | <code>符号</code> | <code>visualEditorSymbolsLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Text</code> | <code>文本</code> | <code>visualEditorTextMenuLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>type to search...</code> | <code>输入以搜索…</code> | <code>visualEditorTypeToSearchPlaceholder</code> | [Panmirror / GWT R094][R094] / Source patch |

### 表格与交叉引用

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Caption:</code> | <code>标题：</code> | <code>captionText</code> | [Panmirror / GWT R030][R030] |
| <code>Columns:</code> | <code>列数:</code> | <code>columnsLabel</code> | [Panmirror / GWT R030][R030] / Source patch |
| <code>Include table header</code> | <code>包含表头</code> | <code>includeTableHeader</code> | [Panmirror / GWT R030][R030] / Source patch |
| <code>(Optional)</code> | <code>（可选）</code> | <code>optionalCueText</code> | [Panmirror / GWT R030][R030] / Source patch |
| <code>Rows:</code> | <code>行数:</code> | <code>rowsLabel</code> | [Panmirror / GWT R030][R030] / Source patch |
| <code>Cross Reference</code> | <code>交叉引用</code> | <code>crossReferenceMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Delete Table</code> | <code>删除表格</code> | <code>deleteTableMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert Table</code> | <code>插入表格</code> | <code>insertTableCaption</code> | [Panmirror / GWT R025][R025] |
| <code>Insert Table...</code> | <code>插入表格...</code> | <code>insertTableMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table Align Column:::Center</code> | <code>表格列对齐:::居中</code> | <code>tableAlignColumnCenterMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table Align Column:::Default</code> | <code>表格列对齐:::默认</code> | <code>tableAlignColumnDefaultMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table Align Column:::Left</code> | <code>表格列对齐:::左对齐</code> | <code>tableAlignColumnLeftMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table Align Column:::Right</code> | <code>表格列对齐:::右对齐</code> | <code>tableAlignColumnRightMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table Caption</code> | <code>表格说明</code> | <code>tableCaptionMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table:::Delete Column</code> | <code>表格:::删除列</code> | <code>tableDeleteColumnMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table:::Delete %d Columns</code> | <code>表格:::删除 %d 列</code> | <code>tableDeleteColumnPluralMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table:::Delete Row</code> | <code>表格:::删除行</code> | <code>tableDeleteRowMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Delete %d Rows</code> | <code>删除 %d 行</code> | <code>tableDeleteRowPluralMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table Header</code> | <code>表头</code> | <code>tableHeaderMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table:::Insert Column Left</code> | <code>表格:::在左侧插入列</code> | <code>tableInsertColumnLeftMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert %d Columns Left</code> | <code>在左侧插入 %d 列</code> | <code>tableInsertColumnLeftPluralMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table:::Insert Column Right</code> | <code>表格:::在右侧插入列</code> | <code>tableInsertColumnRightMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert %d Columns Right</code> | <code>在右侧插入 %d 列</code> | <code>tableInsertColumnRightPluralMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table:::Insert Row Above</code> | <code>表格:::在上方插入行</code> | <code>tableInsertRowAboveMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table:::Insert %d Rows Above</code> | <code>表格:::在上方插入 %d 行</code> | <code>tableInsertRowAbovePluralMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table:::Insert Row Below</code> | <code>表格:::在下方插入行</code> | <code>tableInsertRowBelowMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table:::Insert %d Rows Below</code> | <code>表格:::在下方插入 %d 行</code> | <code>tableInsertRowBelowPluralMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table...</code> | <code>表格...</code> | <code>tableMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table:::Next Cell</code> | <code>表格:::下一个单元格</code> | <code>tableNextCellMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table:::Previous Cell</code> | <code>表格:::上一个单元格</code> | <code>tablePreviousCellMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Table</code> | <code>表格</code> | <code>tableText</code> | [Panmirror / GWT R025][R025] |
| <code>Table</code> | <code>表格</code> | <code>tableTitle</code> | [Panmirror / GWT R025][R025] |
| <code>Executable {0} cell</code> | <code>可执行 {0} 代码单元格</code> | <code>visualEditorDynamicExecutableCell</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Executable {0} chunk</code> | <code>可执行 {0} 代码块</code> | <code>visualEditorDynamicExecutableChunk</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Executable Cell</code> | <code>可执行单元格</code> | <code>visualEditorExecutableCellMenuLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Insert Cross Reference</code> | <code>插入交叉引用</code> | <code>visualEditorInsertCrossReferenceLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>No Matching Cross References Found.</code> | <code>未找到匹配的交叉引用。</code> | <code>visualEditorNoMatchingCrossReferencesLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Search for Cross Reference</code> | <code>搜索交叉引用</code> | <code>visualEditorSearchCrossReferencePlaceholder</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>All Types</code> | <code>所有类型</code> | <code>visualEditorXrefAllTypes</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Equations</code> | <code>公式</code> | <code>visualEditorXrefEquations</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Figures</code> | <code>图形</code> | <code>visualEditorXrefFigures</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Listings</code> | <code>代码清单</code> | <code>visualEditorXrefListings</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Loading Cross References</code> | <code>正在加载交叉引用</code> | <code>visualEditorXrefLoading</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Sections</code> | <code>章节</code> | <code>visualEditorXrefSections</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Tables</code> | <code>表格</code> | <code>visualEditorXrefTables</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Theorems</code> | <code>定理</code> | <code>visualEditorXrefTheorems</code> | [Panmirror / GWT R094][R094] / Source patch |

### 插入组件及组件说明

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Add to:</code> | <code>添加到：</code> | <code>visualEditorComponentAddTo</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>An error occurred.</code> | <code>发生错误。</code> | <code>visualEditorComponentAnErrorOccurred</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>An error occurred while searching DataCite.</code> | <code>查询 DataCite 时发生错误。</code> | <code>visualEditorComponentAnErrorOccurredWhileSearchingDataCite</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>An error occurred while searching for this DOI.</code> | <code>查询此 DOI 时发生错误。</code> | <code>visualEditorComponentAnErrorOccurredWhileSearchingForThisDOI</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>An error occurred while searching PubMed.</code> | <code>查询 PubMed 时发生错误。</code> | <code>visualEditorComponentAnErrorOccurredWhileSearchingPubMed</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>An unknown error occurred. Please try again.</code> | <code>发生未知错误。请重试。</code> | <code>visualEditorComponentAnUnknownErrorOccurredPleaseTryAgain</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Bibligraphy file name</code> | <code>参考文献文件名</code> | <code>visualEditorComponentBibligraphyFileName</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Blockquote</code> | <code>块引用（Blockquote）</code> | <code>visualEditorComponentBlockquote</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Callout</code> | <code>标注框（Callout）</code> | <code>visualEditorComponentCallout</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Citation...</code> | <code>引用（Citation...）</code> | <code>visualEditorComponentCitation</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Code Block...</code> | <code>代码块（Code Block...）</code> | <code>visualEditorComponentCodeBlock</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Comment</code> | <code>批注（Comment）</code> | <code>visualEditorComponentComment</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Content divided into tabs</code> | <code>分置于多个选项卡中的内容</code> | <code>visualEditorComponentContentDividedIntoTabs</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Content framed for special emphasis</code> | <code>以边框突出显示的内容</code> | <code>visualEditorComponentContentFramedForSpecialEmphasis</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Content in rows and columns</code> | <code>按行和列排列的内容</code> | <code>visualEditorComponentContentInRowsAndColumns</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Creating bibliography entries...</code> | <code>正在创建参考文献条目…</code> | <code>visualEditorComponentCreatingBibliographyEntries</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Creating bibliography entry...</code> | <code>正在创建参考文献条目…</code> | <code>visualEditorComponentCreatingBibliographyEntry</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Cross Reference</code> | <code>交叉引用（Cross Reference）</code> | <code>visualEditorComponentCrossReference</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Definition List</code> | <code>定义列表（Definition List）</code> | <code>visualEditorComponentDefinitionList</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Display Math</code> | <code>行间公式（Display Math）</code> | <code>visualEditorComponentDisplayMath</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Editing comment</code> | <code>编辑批注</code> | <code>visualEditorComponentEditingComment</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Enter a PubMed query to search for citations.</code> | <code>输入 PubMed 查询以搜索引用。</code> | <code>visualEditorComponentEnterAPubMedQueryToSearchForCitations</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Enter search terms to search Crossref</code> | <code>输入关键词以搜索 Crossref</code> | <code>visualEditorComponentEnterSearchTermsToSearchCrossref</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Enter search terms to search DataCite</code> | <code>输入关键词以搜索 DataCite</code> | <code>visualEditorComponentEnterSearchTermsToSearchDataCite</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Figure / Image...</code> | <code>图形／图像（Figure / Image...）</code> | <code>visualEditorComponentFigureImage</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Figure or inline image</code> | <code>图形或行内图像</code> | <code>visualEditorComponentFigureOrInlineImage</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Footnote</code> | <code>脚注（Footnote）</code> | <code>visualEditorComponentFootnote</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Horizontal Line</code> | <code>水平线（Horizontal Line）</code> | <code>visualEditorComponentHorizontalLine</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>HTML Block</code> | <code>HTML 块（HTML Block）</code> | <code>visualEditorComponentHTMLBlock</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Image expressing idea, emotion, etc.</code> | <code>表达想法、情感等的图像</code> | <code>visualEditorComponentImageExpressingIdeaEmotionEtc</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Inline Math</code> | <code>行内公式（Inline Math）</code> | <code>visualEditorComponentInlineMath</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Inline R Code</code> | <code>行内 R 代码（Inline R Code）</code> | <code>visualEditorComponentInlineRCode</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Line Block</code> | <code>行块（Line Block）</code> | <code>visualEditorComponentLineBlock</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Line that spans across the page</code> | <code>横跨页面的水平线</code> | <code>visualEditorComponentLineThatSpansAcrossThePage</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Link...</code> | <code>链接（Link...）</code> | <code>visualEditorComponentLink</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Link to another location</code> | <code>指向其他位置的链接</code> | <code>visualEditorComponentLinkToAnotherLocation</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>List with a definition for each item</code> | <code>每个条目都带有定义的列表</code> | <code>visualEditorComponentListWithADefinitionForEachItem</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Looking up DOI....</code> | <code>正在查询 DOI…</code> | <code>visualEditorComponentLookingUpDOI</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Math set apart from the main text</code> | <code>与正文分开显示的数学公式</code> | <code>visualEditorComponentMathSetApartFromTheMainText</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Math within a line or paragraph</code> | <code>行或段落中的数学公式</code> | <code>visualEditorComponentMathWithinALineOrParagraph</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>No data for this DOI could be found.</code> | <code>未找到此 DOI 对应的数据。</code> | <code>visualEditorComponentNoDataForThisDOICouldBeFound</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>No matching packages</code> | <code>未找到匹配的 R 包</code> | <code>visualEditorComponentNoMatchingPackages</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>No results matching these search terms.</code> | <code>未找到与这些关键词匹配的结果。</code> | <code>visualEditorComponentNoResultsMatchingTheseSearchTerms</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Note placed at the bottom of the page</code> | <code>位于页面底部的注释</code> | <code>visualEditorComponentNotePlacedAtTheBottomOfThePage</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Paste a DOI to search</code> | <code>粘贴 DOI 进行搜索</code> | <code>visualEditorComponentPasteADOIToSearch</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Paste or enter a DOI to find citation data.</code> | <code>粘贴或输入 DOI 以查找引用数据。</code> | <code>visualEditorComponentPasteOrEnterADOIToFindCitationData</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Pause after content</code> | <code>显示内容后暂停</code> | <code>visualEditorComponentPauseAfterContent</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Preserve leading spaces and line breaks</code> | <code>保留行首空格和换行</code> | <code>visualEditorComponentPreserveLeadingSpacesAndLineBreaks</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Raw Block...</code> | <code>原始块（Raw Block...）</code> | <code>visualEditorComponentRawBlock</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Raw content block</code> | <code>原始内容块</code> | <code>visualEditorComponentRawContentBlock</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Raw HTML content</code> | <code>原始 HTML 内容</code> | <code>visualEditorComponentRawHTMLContent</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Raw Inline...</code> | <code>原始行内内容（Raw Inline...）</code> | <code>visualEditorComponentRawInline</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Raw inline content</code> | <code>原始行内内容</code> | <code>visualEditorComponentRawInlineContent</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Raw TeX content</code> | <code>原始 TeX 内容</code> | <code>visualEditorComponentRawTeXContent</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>R code within a line or paragraph</code> | <code>行或段落中的 R 代码</code> | <code>visualEditorComponentRCodeWithinALineOrParagraph</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Reference to a source</code> | <code>对来源的引用</code> | <code>visualEditorComponentReferenceToASource</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Reference to related content</code> | <code>对相关内容的引用</code> | <code>visualEditorComponentReferenceToRelatedContent</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Search</code> | <code>搜索</code> | <code>visualEditorComponentSearch</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Search Crossref for Citations</code> | <code>在 Crossref 中搜索引用</code> | <code>visualEditorComponentSearchCrossrefForCitations</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Search DataCite for Citations</code> | <code>在 DataCite 中搜索引用</code> | <code>visualEditorComponentSearchDataCiteForCitations</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Searching Crossref....</code> | <code>正在搜索 Crossref…</code> | <code>visualEditorComponentSearchingCrossref</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Searching DataCite....</code> | <code>正在搜索 DataCite…</code> | <code>visualEditorComponentSearchingDataCite</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Searching PubMed....</code> | <code>正在搜索 PubMed…</code> | <code>visualEditorComponentSearchingPubMed</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Search PubMed for Citations</code> | <code>在 PubMed 中搜索引用</code> | <code>visualEditorComponentSearchPubMedForCitations</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Section heading</code> | <code>章节标题</code> | <code>visualEditorComponentSectionHeading</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Section quoted from another source</code> | <code>引用其他来源的段落</code> | <code>visualEditorComponentSectionQuotedFromAnotherSource</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Shortcode</code> | <code>短代码（Shortcode）</code> | <code>visualEditorComponentShortcode</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Shortcode command</code> | <code>短代码命令</code> | <code>visualEditorComponentShortcodeCommand</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Slide Columns</code> | <code>幻灯片分列（Slide Columns）</code> | <code>visualEditorComponentSlideColumns</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Slide Notes</code> | <code>幻灯片备注（Slide Notes）</code> | <code>visualEditorComponentSlideNotes</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Slide Pause</code> | <code>幻灯片暂停（Slide Pause）</code> | <code>visualEditorComponentSlidePause</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Slide speaker notes</code> | <code>幻灯片演讲者备注</code> | <code>visualEditorComponentSlideSpeakerNotes</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Small heading</code> | <code>小标题</code> | <code>visualEditorComponentSmallHeading</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Source code display</code> | <code>显示源代码</code> | <code>visualEditorComponentSourceCodeDisplay</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Sub-section heading</code> | <code>小节标题</code> | <code>visualEditorComponentSubSectionHeading</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Symbol...</code> | <code>符号（Symbol...）</code> | <code>visualEditorComponentSymbol</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Table</code> | <code>表格（Table）</code> | <code>visualEditorComponentTable</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Tabset</code> | <code>选项卡组（Tabset）</code> | <code>visualEditorComponentTabset</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>TeX Block</code> | <code>TeX 块（TeX Block）</code> | <code>visualEditorComponentTeXBlock</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>The citekey includes invalid characters such as a space or a special character.</code> | <code>引用键包含空格或特殊字符等无效字符。</code> | <code>visualEditorComponentTheCitekeyIncludesInvalidCharactersSuchAsASpaceOrASpecialCharacter</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Two column layout</code> | <code>双列布局</code> | <code>visualEditorComponentTwoColumnLayout</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Unable to search DataCite. Please check your network connection and try again.</code> | <code>无法查询 DataCite。请检查网络连接后重试。</code> | <code>visualEditorComponentUnableToSearchDataCitePleaseCheckYourNetworkConnectionAndTryAgain</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Unable to search for this DOI. Please check your network connection and try again.</code> | <code>无法查询此 DOI。请检查网络连接后重试。</code> | <code>visualEditorComponentUnableToSearchForThisDOIPleaseCheckYourNetworkConnectionAndTryAgain</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Unable to search PubMed. Please check your network connection and try again.</code> | <code>无法查询 PubMed。请检查网络连接后重试。</code> | <code>visualEditorComponentUnableToSearchPubMedPleaseCheckYourNetworkConnectionAndTryAgain</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Unicode symbol / special character</code> | <code>Unicode 符号或特殊字符</code> | <code>visualEditorComponentUnicodeSymbolSpecialCharacter</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>YAML metadata block</code> | <code>YAML 元数据块</code> | <code>visualEditorComponentYAMLMetadataBlock</code> | [Panmirror / GWT R094][R094] / Source patch |

### 引文与文献

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Add to bibliography:</code> | <code>添加到参考文献：</code> | <code>addBibliography</code> | [Panmirror / GWT R029][R029] |
| <code>Citation Id:</code> | <code>引用 ID：</code> | <code>citationId</code> | [Panmirror / GWT R029][R029] |
| <code>Citation:</code> | <code>引用：</code> | <code>citationText</code> | [Panmirror / GWT R029][R029] |
| <code>Create bibliography file:</code> | <code>创建参考文献文件：</code> | <code>createBibFile</code> | [Panmirror / GWT R029][R029] |
| <code>Format:</code> | <code>格式：</code> | <code>formatText</code> | [Panmirror / GWT R029][R029] |
| <code>You must select a bibliography.</code> | <code>您必须选择参考书目。</code> | <code>bibliographyErrorMessage</code> | [Panmirror / GWT R025][R025] |
| <code>You must provide a bibliography file name.</code> | <code>您必须提供参考文献文件名。</code> | <code>bibliographyFileNameErrorMessage</code> | [Panmirror / GWT R025][R025] |
| <code>Citation from DOI</code> | <code>来自 DOI 的引用</code> | <code>citationDOITitle</code> | [Panmirror / GWT R025][R025] |
| <code>Please provide a validation citation Id.</code> | <code>请提供有效的引用 ID。</code> | <code>citationErrorMessage</code> | [Panmirror / GWT R025][R025] |
| <code>Citation from </code> | <code>引用来源：</code> | <code>citationFromText</code> | [Panmirror / GWT R025][R025] |
| <code>Citation...</code> | <code>引用...</code> | <code>citationMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>DOI Unavailable</code> | <code>DOI 无法获取</code> | <code>doiUnavailableCaption</code> | [Panmirror / GWT R025][R025] |
| <code>Looking up DOI...</code> | <code>正在查找 DOI...</code> | <code>lookingUpDOIProgress</code> | [Panmirror / GWT R025][R025] |
| <code>Reading bibliography...</code> | <code>正在读取文献...</code> | <code>readingBibliographyProgressText</code> | [Panmirror / GWT R025][R025] |
| <code>Saving bibliography...</code> | <code>正在保存参考文献...</code> | <code>savingBibliographyProgressText</code> | [Panmirror / GWT R025][R025] |
| <code>Please select a unique citation Id.</code> | <code>请选择唯一的引用 ID。</code> | <code>uniqueCitationErrorMessage</code> | [Panmirror / GWT R025][R025] |
| <code>Bibliography</code> | <code>参考文献</code> | <code>visualEditorBibliographyLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>From DOI</code> | <code>通过 DOI</code> | <code>visualEditorFromDoiLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Insert Citation</code> | <code>插入引用</code> | <code>visualEditorInsertCitationLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Search for citation</code> | <code>搜索引用</code> | <code>visualEditorSearchCitationPlaceholder</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Selected Citation Keys</code> | <code>已选引用键</code> | <code>visualEditorSelectedCitationKeysPlaceholder</code> | [Panmirror / GWT R094][R094] / Source patch |

### Emoji 与特殊字符

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Insert Emoji...</code> | <code>插入 Emoji...</code> | <code>insertEmojiMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Insert Unicode...</code> | <code>插入 Unicode...</code> | <code>insertUnicodeMenuText</code> | [Panmirror / GWT R025][R025] |
| <code>Animals &amp; Nature</code> | <code>动物与自然</code> | <code>visualEditorAnimalsNatureLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>emoji name</code> | <code>搜索 Emoji</code> | <code>visualEditorEmojiSearchPlaceholder</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Food &amp; Drink</code> | <code>食物与饮品</code> | <code>visualEditorFoodDrinkLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>People &amp; Body</code> | <code>人物与身体</code> | <code>visualEditorPeopleBodyLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Preferred skin tone</code> | <code>首选肤色</code> | <code>visualEditorPreferredSkinToneLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Skin tone</code> | <code>肤色</code> | <code>visualEditorSkinToneLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Smileys &amp; Emotion</code> | <code>笑脸与情感</code> | <code>visualEditorSmileysEmotionLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>Travel &amp; Places</code> | <code>旅行与地点</code> | <code>visualEditorTravelPlacesLabel</code> | [Panmirror / GWT R094][R094] / Source patch |
| <code>keyword or codepoint</code> | <code>关键词或码位</code> | <code>visualEditorUnicodeSearchPlaceholder</code> | [Panmirror / GWT R094][R094] / Source patch |

## 18. Electron / Desktop 外壳

本节 107 条。

### applicationTs

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>conf:</code> | <code>配置：</code> | <code>applicationTs.confColon</code> | [Electron R109][R109] |
| <code>Dev Mode Config</code> | <code>开发模式配置</code> | <code>applicationTs.devModeConfig</code> | [Electron R109][R109] |
| <code>R Not Installed</code> | <code>未安装 R</code> | <code>applicationTs.errorFindingR</code> | [Electron R109][R109] |
| <code>New RStudio Window</code> | <code>新建 RStudio 窗口</code> | <code>applicationTs.newRstudioWindow</code> | [Electron R109][R109] |
| <code>not found.</code> | <code>未找到。</code> | <code>applicationTs.notFoundDotLowercase</code> | [Electron R109][R109] |
| <code>R does not appear to be installed. Please install R before using RStudio.\n\nYou can download R from the official R Project website.\nWould you like to go there now?</code> | <code>系统中似乎没有安装 R。请先安装 R，再使用 RStudio。\n\n可从 R Project 官方网站下载 R。\n是否立即前往？</code> | <code>applicationTs.rstudioFailedToFindRInstalationsOnTheSystem</code> | [Electron R109][R109] |
| <code>RStudio requires write access to the following folders, but writing to them failed:</code> | <code>RStudio 需要对以下文件夹拥有写入权限，但写入失败：</code> | <code>applicationTs.stateFolderErrorPrefix</code> | [Electron R109][R109] |
| <code>RStudio may fail to start or may not work correctly until this is resolved. Please check that these folders have the expected ownership and permissions.</code> | <code>在问题解决前，RStudio 可能无法启动或不能正常工作。请检查这些文件夹的所有者和权限。</code> | <code>applicationTs.stateFolderErrorSuffix</code> | [Electron R109][R109] |
| <code>RStudio cannot write to required folders</code> | <code>RStudio 无法写入所需文件夹</code> | <code>applicationTs.stateFolderErrorTitle</code> | [Electron R109][R109] |

### chooseRDialog

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>You can also customize the rendering engine used by RStudio.</code> | <code>还可以自定义 RStudio 使用的渲染引擎。</code> | <code>chooseRDialog.customizeRenderingEngine</code> | [Electron R109][R109] |
| <code>Choose R Installation</code> | <code>选择 R 安装目录</code> | <code>chooseRDialog.documentTitle</code> | [Electron R109][R109] |
| <code>The rendering engine has been changed.\nPlease restart RStudio for these changes to take effect.</code> | <code>渲染引擎已更改。\n请重启 RStudio 以使更改生效。</code> | <code>chooseRDialog.renderingEngineChangedMessage</code> | [Electron R109][R109] |
| <code>Rendering Engine Changed</code> | <code>渲染引擎已更改</code> | <code>chooseRDialog.renderingEngineChangedTitle</code> | [Electron R109][R109] |
| <code>Rendering Engine:</code> | <code>渲染引擎：</code> | <code>chooseRDialog.renderingEngineLabel</code> | [Electron R109][R109] |
| <code>Auto-detect (recommended)</code> | <code>自动检测（推荐）</code> | <code>chooseRDialog.renderingEngineOptionAuto</code> | [Electron R109][R109] |
| <code>Desktop</code> | <code>桌面</code> | <code>chooseRDialog.renderingEngineOptionDesktop</code> | [Electron R109][R109] |
| <code>Software</code> | <code>软件</code> | <code>chooseRDialog.renderingEngineOptionSoftware</code> | [Electron R109][R109] |
| <code>An error occurred while attempting to load the selected version of R. Please select a different R installation.</code> | <code>加载所选 R 版本时出错。请选择其他 R 安装目录。</code> | <code>chooseRDialog.rLaunchFailedMessage</code> | [Electron R109][R109] |
| <code>Error Loading R</code> | <code>加载 R 时出错</code> | <code>chooseRDialog.rLaunchFailedTitle</code> | [Electron R109][R109] |
| <code>Please select the version of R to use.</code> | <code>请选择要使用的 R 版本。</code> | <code>chooseRDialog.subtitle</code> | [Electron R109][R109] |
| <code>RStudio requires an existing installation of R.</code> | <code>RStudio 需要已安装的 R。</code> | <code>chooseRDialog.title</code> | [Electron R109][R109] |
| <code>Use your machine's default 32-bit version of R</code> | <code>使用本机默认的 32 位 R</code> | <code>chooseRDialog.use32BitR</code> | [Electron R109][R109] |
| <code>Use your machine's default 64-bit version of R</code> | <code>使用本机默认的 64 位 R</code> | <code>chooseRDialog.use64BitR</code> | [Electron R109][R109] |
| <code>Choose a specific version of R:</code> | <code>选择指定的 R 版本：</code> | <code>chooseRDialog.useCustom</code> | [Electron R109][R109] |

### common

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>All Files</code> | <code>所有文件</code> | <code>common.allFiles</code> | [Electron R109][R109] |
| <code>Browse...</code> | <code>浏览...</code> | <code>common.buttonBrowse</code> | [Electron R109][R109] |
| <code>Cancel</code> | <code>取消</code> | <code>common.buttonCancel</code> | [Electron R109][R109] |
| <code>Download R...</code> | <code>下载 R...</code> | <code>common.buttonDownloadR</code> | [Electron R109][R109] |
| <code>No</code> | <code>否</code> | <code>common.buttonNo</code> | [Electron R109][R109] |
| <code>OK</code> | <code>确定</code> | <code>common.buttonOk</code> | [Electron R109][R109] |
| <code>Quit</code> | <code>退出</code> | <code>common.buttonQuit</code> | [Electron R109][R109] |
| <code>Yes</code> | <code>是</code> | <code>common.buttonYes</code> | [Electron R109][R109] |
| <code>No file selected</code> | <code>未选择文件</code> | <code>common.noFileSelected</code> | [Electron R109][R109] |
| <code>An unknown error occurred.</code> | <code>发生未知错误。</code> | <code>common.unknownErrorOccurred</code> | [Electron R109][R109] |
| <code>Working on it...</code> | <code>正在处理...</code> | <code>common.workingOnIt</code> | [Electron R109][R109] |

### contextMenu

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Copy</code> | <code>复制</code> | <code>contextMenu.copy</code> | [Electron R109][R109] |
| <code>Copy Image</code> | <code>复制图像</code> | <code>contextMenu.copyImage</code> | [Electron R109][R109] |
| <code>Copy Image Address</code> | <code>复制图像地址</code> | <code>contextMenu.copyImageAddress</code> | [Electron R109][R109] |
| <code>Cut</code> | <code>剪切</code> | <code>contextMenu.cut</code> | [Electron R109][R109] |
| <code>The download was cancelled.</code> | <code>下载已取消。</code> | <code>contextMenu.downloadCancelledMessage</code> | [Electron R109][R109] |
| <code>The download was interrupted.</code> | <code>下载已中断。</code> | <code>contextMenu.downloadInterruptedMessage</code> | [Electron R109][R109] |
| <code>Error downloading image</code> | <code>下载图像时出错</code> | <code>contextMenu.errorDownloadingImage</code> | [Electron R109][R109] |
| <code>Inspect Element</code> | <code>检查元素</code> | <code>contextMenu.inspectElement</code> | [Electron R109][R109] |
| <code>Paste</code> | <code>粘贴</code> | <code>contextMenu.paste</code> | [Electron R109][R109] |
| <code>Reload</code> | <code>重新加载</code> | <code>contextMenu.reload</code> | [Electron R109][R109] |
| <code>Save</code> | <code>保存</code> | <code>contextMenu.save</code> | [Electron R109][R109] |
| <code>Save image as</code> | <code>图像另存为</code> | <code>contextMenu.saveImageAs</code> | [Electron R109][R109] |
| <code>Save image as...</code> | <code>图像另存为...</code> | <code>contextMenu.saveImageAsDots</code> | [Electron R109][R109] |
| <code>Select All</code> | <code>全选</code> | <code>contextMenu.selectAll</code> | [Electron R109][R109] |

### desktopBrowserWindowTs

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Leave</code> | <code>离开</code> | <code>desktopBrowserWindowTs.leavePageLeaveButton</code> | [Electron R109][R109] |
| <code>This page is asking you to confirm that you want to leave. Information you've entered, or state in a running application, may not be saved.</code> | <code>此页面要求确认是否离开。已输入的信息或正在运行的应用状态可能不会保存。</code> | <code>desktopBrowserWindowTs.leavePageMessage</code> | [Electron R109][R109] |
| <code>Stay</code> | <code>留在此页</code> | <code>desktopBrowserWindowTs.leavePageStayButton</code> | [Electron R109][R109] |
| <code>Leave page?</code> | <code>要离开页面吗？</code> | <code>desktopBrowserWindowTs.leavePageTitle</code> | [Electron R109][R109] |

### detectRTs

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Could not locate an R installation on the system.</code> | <code>无法在系统中找到 R 安装目录。</code> | <code>detectRTs.couldNotLocateAnRInstallationOnTheSystem</code> | [Electron R109][R109] |
| <code>R not found</code> | <code>未找到 R</code> | <code>detectRTs.rNotFound</code> | [Electron R109][R109] |

### gwtCallbackTs

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>{{ipcName}} callback NYI</code> | <code>{{ipcName}} 回调尚未实现</code> | <code>gwtCallbackTs.callbackNyiLowercase</code> | [Electron R109][R109] |
| <code>Unimplemented</code> | <code>尚未实现</code> | <code>gwtCallbackTs.unimplemented</code> | [Electron R109][R109] |

### i18nManager

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Error localizing document:</code> | <code>本地化文档时出错：</code> | <code>i18nManager.errorLocalizingDocument</code> | [Electron R109][R109] |

### imgAlt

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Error Icon</code> | <code>错误图标</code> | <code>imgAlt.dialogError</code> | [Electron R109][R109] |
| <code>Information Icon</code> | <code>信息图标</code> | <code>imgAlt.dialogInfo</code> | [Electron R109][R109] |
| <code>Question Mark Icon</code> | <code>问号图标</code> | <code>imgAlt.dialogQuestion</code> | [Electron R109][R109] |
| <code>Warning Icon</code> | <code>警告图标</code> | <code>imgAlt.dialogWarning</code> | [Electron R109][R109] |

### mainTs

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Unhandled Exception</code> | <code>未处理的异常</code> | <code>mainTs.unhandledException</code> | [Electron R109][R109] |

### mainWindowTs

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>The R session failed to start.</code> | <code>R 会话启动失败。</code> | <code>mainWindowTs.rSessionFailedToStart</code> | [Electron R109][R109] |

### sessionLauncherTs

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>This error was very likely caused by R attempting to load packages from a different incompatible version of R on your system. Please remove other versions of R and/or remove environment variables that reference libraries from other versions of R before proceeding.</code> | <code>此错误很可能是 R 尝试加载由其他不兼容 R 版本安装的程序包造成的。继续前，请移除其他 R 版本，或清除引用其他版本程序包库的环境变量。</code> | <code>sessionLauncherTs.errorWasCausedByRAttemptingToLoadPackagesFromADifferentIncompatibleRVersion</code> | [Electron R109][R109] |
| <code>The R session had a fatal error.</code> | <code>R 会话发生致命错误。</code> | <code>sessionLauncherTs.rSessionFatalError</code> | [Electron R109][R109] |

### uiFolder

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Browse...</code> | <code>浏览...</code> | <code>uiFolder.browseDots</code> | [Electron R109][R109] |
| <code>Cancel</code> | <code>取消</code> | <code>uiFolder.cancel</code> | [Electron R109][R109] |
| <code>Cannot Connect to R</code> | <code>无法连接到 R</code> | <code>uiFolder.cannotConnectToR</code> | [Electron R109][R109] |
| <code>Choose R Executable</code> | <code>选择 R 可执行文件</code> | <code>uiFolder.chooseRExecutable</code> | [Electron R109][R109] |
| <code>Copy Problem Report</code> | <code>复制问题报告</code> | <code>uiFolder.copyProblemReport</code> | [Electron R109][R109] |
| <code>Could not copy problem report to clipboard.</code> | <code>无法将问题报告复制到剪贴板。</code> | <code>uiFolder.couldNotCopyProblemReportToClipboard</code> | [Electron R109][R109] |
| <code>Error Message</code> | <code>错误消息</code> | <code>uiFolder.errorMessage</code> | [Electron R109][R109] |
| <code>Errors</code> | <code>错误</code> | <code>uiFolder.errors</code> | [Electron R109][R109] |
| <code>Error Starting R</code> | <code>启动 R 时出错</code> | <code>uiFolder.errorStartingR</code> | [Electron R109][R109] |
| <code>Fully uninstall all versions of R from your machine, and reinstall the version you wish to use with RStudio.</code> | <code>完整卸载计算机上的所有 R 版本，然后重新安装要与 RStudio 配合使用的版本。</code> | <code>uiFolder.fullyUninstallAllVersionsOfRFromYourMachine</code> | [Electron R109][R109] |
| <code>Further troubleshooting help can be found on our website:</code> | <code>可在我们的网站上找到更多故障排除帮助：</code> | <code>uiFolder.furtherTroubleshootingHelpCanBeFound</code> | [Electron R109][R109] |
| <code>If posting this report online, use the Copy Problem Report button below to generate a textual version of this diagnostic.</code> | <code>如果要在线发布此报告，请使用下方的“复制问题报告”按钮生成文本诊断信息。</code> | <code>uiFolder.ifPostingThisReportOnlineUseTheCopyProblemReport</code> | [Electron R109][R109] |
| <code>If you are using a firewall or antivirus software which guards access to local network ports, add an exclusion for the RStudio and rsession executables.</code> | <code>如果防火墙或杀毒软件会限制本地网络端口，请为 RStudio 和 rsession 可执行文件添加排除项。</code> | <code>uiFolder.ifYouAreUsingAFirewallOrAntivirus</code> | [Electron R109][R109] |
| <code>If you've customized R session creation by creating an R profile (e.g. located at {{- rProfileFileExtension}} consider temporarily removing it.</code> | <code>如果通过 R 配置文件（例如 {{- rProfileFileExtension}}）自定义了 R 会话创建，请暂时移除该文件。</code> | <code>uiFolder.ifYouveCustomizedRSessionCreation</code> | [Electron R109][R109] |
| <code>Initializing R</code> | <code>正在初始化 R</code> | <code>uiFolder.initializingR</code> | [Electron R109][R109] |
| <code>Investigate any errors above.</code> | <code>检查上方的错误信息。</code> | <code>uiFolder.investigateAnyErrorsAbove</code> | [Electron R109][R109] |
| <code>Make sure that R starts up correctly outside RStudio (using RGui, R.app, or R in a terminal).</code> | <code>确认 R 可在 RStudio 外正常启动（使用 RGui、R.app 或终端中的 R）。</code> | <code>uiFolder.makeSureThatRStartsUpCorrectly</code> | [Electron R109][R109] |
| <code>Next Steps</code> | <code>后续步骤</code> | <code>uiFolder.nextSteps</code> | [Electron R109][R109] |
| <code>OK</code> | <code>确定</code> | <code>uiFolder.okCaps</code> | [Electron R109][R109] |
| <code>Output</code> | <code>输出</code> | <code>uiFolder.output</code> | [Electron R109][R109] |
| <code>Please try the following:</code> | <code>请尝试以下方法：</code> | <code>uiFolder.pleaseTryTheFollowing</code> | [Electron R109][R109] |
| <code>Problem report copied to clipboard.</code> | <code>问题报告已复制到剪贴板。</code> | <code>uiFolder.problemReportCopiedToClipboard</code> | [Electron R109][R109] |
| <code>Process Output</code> | <code>进程输出</code> | <code>uiFolder.processOutput</code> | [Electron R109][R109] |
| <code>R can fail to start up for many reasons. The following may help you resolve the problem:</code> | <code>R 可能因多种原因无法启动。以下方法可能有助于解决问题：</code> | <code>uiFolder.rCanFailToStartupForManyReasons</code> | [Electron R109][R109] |
| <code>Recent Log</code> | <code>最近日志</code> | <code>uiFolder.recentLog</code> | [Electron R109][R109] |
| <code>Remove startup customizations such as an {{- rProfileFileExtension}} file, if present.</code> | <code>暂时移除启动自定义项，例如 {{- rProfileFileExtension}} 文件。</code> | <code>uiFolder.removeStartupCustomizationsSuchAs</code> | [Electron R109][R109] |
| <code>Retry</code> | <code>重试</code> | <code>uiFolder.retry</code> | [Electron R109][R109] |
| <code>R Executable</code> | <code>R 可执行文件</code> | <code>uiFolder.rExecutable</code> | [Electron R109][R109] |
| <code>R Logo</code> | <code>R 标志</code> | <code>uiFolder.rLogo</code> | [Electron R109][R109] |
| <code>The R session process exited with code {{- exitCode}}.</code> | <code>R 会话进程已退出，退出代码为 {{- exitCode}}。</code> | <code>uiFolder.rSessionExitedWithCode</code> | [Electron R109][R109] |
| <code>The R session failed to start.</code> | <code>R 会话启动失败。</code> | <code>uiFolder.rSessionFailedToStart</code> | [Electron R109][R109] |
| <code>RStudio can't establish a connection to R. This usually indicates one of the following:</code> | <code>RStudio 无法与 R 建立连接。这通常表示存在以下情况之一：</code> | <code>uiFolder.rstudioCantEstablishAConnectionToR</code> | [Electron R109][R109] |
| <code>RStudio is unable to communicate with R over a local network port, possibly because of firewall restrictions or anti-virus software.</code> | <code>RStudio 无法通过本地网络端口与 R 通信，可能受到防火墙或杀毒软件限制。</code> | <code>uiFolder.rstudioIsUnableToCommunicateWithR</code> | [Electron R109][R109] |
| <code>RStudio Version</code> | <code>RStudio 版本</code> | <code>uiFolder.rstudioVersion</code> | [Electron R109][R109] |
| <code>Run RGui, R.app, or R in a terminal to ensure that R itself starts up correctly.</code> | <code>运行 RGui、R.app 或终端中的 R，确认 R 本身可正常启动。</code> | <code>uiFolder.runRguiRAppOrRInATerminalToEnsure</code> | [Electron R109][R109] |
| <code>Session Path</code> | <code>会话路径</code> | <code>uiFolder.sessionPath</code> | [Electron R109][R109] |
| <code>The R session is initializing {{- mdash}} please wait a moment...</code> | <code>R 会话正在初始化 {{- mdash}} 请稍候...</code> | <code>uiFolder.theRsessionIsInitializing</code> | [Electron R109][R109] |
| <code>The R session is taking an unusually long time to start, perhaps because of slow operations in startup scripts or slow network drive access.</code> | <code>R 会话启动时间异常，可能是启动脚本操作缓慢或网络驱动器访问缓慢造成的。</code> | <code>uiFolder.theRSessionIsTakingAnUnusuallyLongTimeToStart</code> | [Electron R109][R109] |
| <code>Troubleshooting RStudio Startup</code> | <code>排查 RStudio 启动问题</code> | <code>uiFolder.troubleshootingRstudioStartup</code> | [Electron R109][R109] |
| <code>Warning</code> | <code>警告</code> | <code>uiFolder.warning</code> | [Electron R109][R109] |

### utilsTs

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Could not find rsession executable. Try setting the "RSTUDIO_CPP_BUILD_OUTPUT" environment variable to the location where src/cpp was built.\n( Working directory: {{workingDirectory}} )</code> | <code>找不到 rsession 可执行文件。请尝试将 RSTUDIO_CPP_BUILD_OUTPUT 环境变量设置为 src/cpp 的构建位置。\n（工作目录：{{workingDirectory}}）</code> | <code>utilsTs.rsessionNotFoundError</code> | [Electron R109][R109] |

## 19. 其他

本节 218 条。

此处收录来源属于共享模型、预览、服务器提示、教程、Assistant 等而不能可靠归入上述功能的文本；不因分类不明确而丢弃。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Close</code> | <code>关闭</code> | <code>closeText</code> | [GWT R018][R018] |
| <code>Download to Local File</code> | <code>下载到本地文件</code> | <code>downloadToLocalFileCaption</code> | [GWT R018][R018] |
| <code>web page</code> | <code>网页</code> | <code>downloadToLocalFileDescription</code> | [GWT R018][R018] |
| <code>Find in Page</code> | <code>在页面中查找</code> | <code>findInPageText</code> | [GWT R018][R018] |
| <code>Find</code> | <code>查找</code> | <code>findTextBoxCueText</code> | [GWT R018][R018] |
| <code>HTML Preview Panel</code> | <code>HTML 预览面板</code> | <code>htmlPreviewPanelTitle</code> | [GWT R018][R018] |
| <code>No occurrences found</code> | <code>未找到匹配项</code> | <code>noOccurrencesFoundText</code> | [GWT R018][R018] |
| <code>Preview Tab</code> | <code>预览标签页</code> | <code>previewTabToolbarLabel</code> | [GWT R018][R018] |
| <code>Preview: </code> | <code>预览 :</code> | <code>previewToolbarLabelText</code> | [GWT R018][R018] |
| <code>Preview failed</code> | <code>预览失败</code> | <code>progressPreviewFailedCaption</code> | [GWT R018][R018] |
| <code>Knitting...</code> | <code>编织...</code> | <code>progressPreviewStartedCaption</code> | [GWT R018][R018] |
| <code>Save As</code> | <code>另存为</code> | <code>saveAsToolbarMenuButtonText</code> | [GWT R018][R018] |
| <code>Save File As</code> | <code>文件另存为</code> | <code>saveFileAsCaption</code> | [GWT R018][R018] |
| <code>Saving File...</code> | <code>正在保存文件...</code> | <code>savingFileCaption</code> | [GWT R018][R018] |
| <code>Log</code> | <code>日志</code> | <code>showLogDialogCaption</code> | [GWT R018][R018] |
| <code>Error parsing results: {0}</code> | <code>解析结果时出错：{0}</code> | <code>errorParsingResults</code> | [GWT R048][R048] |
| <code>Error Executing Addin</code> | <code>执行插件时出错</code> | <code>executingAddinError</code> | [GWT R052][R052] |
| <code>Unable to execute {0} addin\n(R session is currently busy)</code> | <code>无法执行 {0} 插件\n（R 会话当前正忙）</code> | <code>isServerBusyMessage</code> | [GWT R052][R052] |
| <code>You are already signed in as ''{0}''.\n\nIf you''d like to sign in as a different user, please sign out from this account first.</code> | <code>您已经以“{0}”的身份登录。\n\n如果要以其他用户身份登录，请先退出当前账户。</code> | <code>assistantAlreadySignedIn</code> | [GWT R053][R053] |
| <code>Authenticating...</code> | <code>正在验证身份…</code> | <code>assistantAuthenticating</code> | [GWT R053][R053] |
| <code>Checking status...</code> | <code>正在检查状态…</code> | <code>assistantCheckingStatus</code> | [GWT R053][R053] |
| <code>{0}: Check Status</code> | <code>{0}: 检查状态</code> | <code>assistantCheckStatusDialogTitle</code> | [GWT R053][R053] |
| <code>You are currently signed in as: {0}</code> | <code>当前登录身份：{0}</code> | <code>assistantCurrentlySignedIn</code> | [GWT R053][R053] |
| <code>{0}: Diagnostic Report</code> | <code>{0}: 诊断报告</code> | <code>assistantDiagnosticsTitle</code> | [GWT R053][R053] |
| <code>{0} has been disabled by the system administrator.</code> | <code>{0} 已被系统管理员禁用。</code> | <code>assistantDisabledByAdministratorError</code> | [GWT R053][R053] |
| <code>{0} has been disabled via global options.</code> | <code>已在全局选项中禁用 {0}。</code> | <code>assistantDisabledViaGlobalOptionsError</code> | [GWT R053][R053] |
| <code>{0} has been disabled via project preferences.</code> | <code>{0} 已在项目首选项中禁用。</code> | <code>assistantDisabledViaProjectPreferencesError</code> | [GWT R053][R053] |
| <code>RStudio received an unexpected empty response from the {0} agent.</code> | <code>RStudio 从 {0} 代理收到了意外的空响应。</code> | <code>assistantEmptyResponse</code> | [GWT R053][R053] |
| <code>Error {0}: {1}</code> | <code>错误 {0}: {1}</code> | <code>assistantError</code> | [GWT R053][R053] |
| <code>An error occurred while starting the {0} agent.\n\nError: {1}\n\nOutput: {2}</code> | <code>启动 {0} 代理时发生错误。\n\n错误：{1}\n\n输出：{2}</code> | <code>assistantErrorStartingAgent</code> | [GWT R053][R053] |
| <code>An error occurred while attempting to launch {0}.</code> | <code>尝试启动 {0} 时发生错误。</code> | <code>assistantLaunchError</code> | [GWT R053][R053] |
| <code>(no output available)</code> | <code>（无可用输出）</code> | <code>assistantNoOutput</code> | [GWT R053][R053] |
| <code>{0} is not installed.</code> | <code>{0} 未安装。</code> | <code>assistantNotInstalledError</code> | [GWT R053][R053] |
| <code>The {0} agent is running, but you have not yet signed in.</code> | <code>{0} 代理正在运行，但您尚未登录。</code> | <code>assistantNotSignedIn</code> | [GWT R053][R053] |
| <code>Not signed in.</code> | <code>未登录。</code> | <code>assistantNotSignedInShort</code> | [GWT R053][R053] |
| <code>You are now signed in as ''{0}''.</code> | <code>您现在已以“{0}”的身份登录。</code> | <code>assistantSignedIn</code> | [GWT R053][R053] |
| <code>You have successfully signed out from {0}.</code> | <code>您已成功退出 {0}。</code> | <code>assistantSignedOut</code> | [GWT R053][R053] |
| <code>{0}: Sign in</code> | <code>{0}: 登录</code> | <code>assistantSignInDialogTitle</code> | [GWT R053][R053] |
| <code>Signing in...</code> | <code>正在登录…</code> | <code>assistantSigningIn</code> | [GWT R053][R053] |
| <code>Signing out...</code> | <code>正在退出登录…</code> | <code>assistantSigningOut</code> | [GWT R053][R053] |
| <code>{0}: Sign out</code> | <code>{0}: 退出登录</code> | <code>assistantSignOutDialogTitle</code> | [GWT R053][R053] |
| <code>{0}: Status</code> | <code>{0}: 状态</code> | <code>assistantStatusDialogTitle</code> | [GWT R053][R053] |
| <code>An unknown error occurred.</code> | <code>发生了未知错误。</code> | <code>assistantUnknownError</code> | [GWT R053][R053] |
| <code>&lt;unknown&gt;</code> | <code>&lt;未知&gt;</code> | <code>assistantUnknownErrorShort</code> | [GWT R053][R053] |
| <code>The installed version of {0} is no longer supported. Please update RStudio.</code> | <code>已安装的 {0} 版本不再受支持，请更新 RStudio。</code> | <code>assistantUnsupportedError</code> | [GWT R053][R053] |
| <code>Verifying {0} installation...</code> | <code>正在验证 {0} 的安装…</code> | <code>assistantVerifyingInstallation</code> | [GWT R053][R053] |
| <code>Create Session</code> | <code>创建会话</code> | <code>createSessionCaption</code> | [GWT R058][R058] |
| <code>Could not allocate a new session.</code> | <code>无法分配新会话。</code> | <code>createSessionMessage</code> | [GWT R058][R058] |
| <code>Presentation</code> | <code>演示</code> | <code>presentationCaption</code> | [GWT R058][R058] |
| <code>Select a chat provider in Tools -&gt; Global Options... -&gt; Assistant.</code> | <code>请在“工具 → 全局选项... → 助手”中选择聊天服务提供方。</code> | <code>chatAssistantNotEnabledMessage</code> | [GWT R065][R065] |
| <code>Posit Assistant Not Enabled</code> | <code>未启用 Posit Assistant</code> | <code>chatAssistantNotEnabledTitle</code> | [GWT R065][R065] |
| <code>Posit Assistant is incompatible with your RStudio version. Please update Posit Assistant to the latest version.</code> | <code>当前 Posit Assistant 版本与 RStudio 不兼容。请将 Posit Assistant 更新到最新版本。</code> | <code>chatAssistantTooOldMessage</code> | [GWT R065][R065] |
| <code>Failed to start backend: {0}</code> | <code>无法启动后端：{0}</code> | <code>chatBackendStartError</code> | [GWT R065][R065] |
| <code>Failed to start Chat backend: {0}</code> | <code>无法启动聊天后端：{0}</code> | <code>chatBackendStartFailed</code> | [GWT R065][R065] |
| <code>Timeout waiting for backend to start</code> | <code>等待后端启动的超时</code> | <code>chatBackendStartTimeout</code> | [GWT R065][R065] |
| <code>Failed to check backend status: {0}</code> | <code>无法检查后端状态：{0}</code> | <code>chatBackendStatusCheckFailed</code> | [GWT R065][R065] |
| <code>Bring to Front</code> | <code>置于前台</code> | <code>chatBringToFrontButton</code> | [GWT R065][R065] |
| <code>Cancel</code> | <code>取消</code> | <code>chatCancelButton</code> | [GWT R065][R065] |
| <code>Unable to check for Posit Assistant updates. Please check your network connection and try again.</code> | <code>无法检查 Posit Assistant 更新。请检查网络连接后重试。</code> | <code>chatCheckFailedMessage</code> | [GWT R065][R065] |
| <code>Check for Posit Assistant Updates</code> | <code>检查 Posit Assistant 更新</code> | <code>chatCheckForUpdatesCaption</code> | [GWT R065][R065] |
| <code>Checking for Posit Assistant updates...</code> | <code>正在检查 Posit Assistant 更新...</code> | <code>chatCheckingForUpdates</code> | [GWT R065][R065] |
| <code>Copied!</code> | <code>已复制！</code> | <code>chatCopiedError</code> | [GWT R065][R065] |
| <code>Copy Error Message</code> | <code>复制错误信息</code> | <code>chatCopyError</code> | [GWT R065][R065] |
| <code>Copy failed</code> | <code>复制失败</code> | <code>chatCopyFailed</code> | [GWT R065][R065] |
| <code>Dismiss</code> | <code>关闭</code> | <code>chatDismiss</code> | [GWT R065][R065] |
| <code>You have version {0} installed, but version {1} is currently recommended.</code> | <code>当前已安装版本 {0}，但目前建议使用版本 {1}。</code> | <code>chatDowngradeAvailableMessage</code> | [GWT R065][R065] |
| <code>Older Posit Assistant Version Recommended</code> | <code>建议使用较旧版本的 Posit Assistant</code> | <code>chatDowngradeAvailableTitle</code> | [GWT R065][R065] |
| <code>Error: {0}</code> | <code>错误：{0}</code> | <code>chatErrorPrefix</code> | [GWT R065][R065] |
| <code>Global Options...</code> | <code>全局选项...</code> | <code>chatGlobalOptionsButton</code> | [GWT R065][R065] |
| <code>Ignore</code> | <code>忽略</code> | <code>chatIgnore</code> | [GWT R065][R065] |
| <code>❌ No version of Posit Assistant is available for this version of RStudio.</code> | <code>❌ 此版本的 RStudio 没有可用的 Posit Assistant 版本。</code> | <code>chatIncompatibleVersion</code> | [GWT R065][R065] |
| <code>Posit Assistant is managed by your administrator. Installs, updates, and uninstalls are not available.</code> | <code>Posit Assistant 由管理员管理，无法自行安装、更新或卸载。</code> | <code>chatInstallationManagedMessage</code> | [GWT R065][R065] |
| <code>Posit Assistant is managed by your administrator and is not currently installed.</code> | <code>Posit Assistant 由管理员管理，目前尚未安装。</code> | <code>chatInstallationManagedNotInstalledMessage</code> | [GWT R065][R065] |
| <code>Posit Assistant version {0} is available to install. Do you want to install it now?</code> | <code>可以安装 Posit Assistant {0}。是否立即安装？</code> | <code>chatInstallAvailableConfirmMessage</code> | [GWT R065][R065] |
| <code>Install Posit Assistant</code> | <code>安装 Posit Assistant</code> | <code>chatInstallButton</code> | [GWT R065][R065] |
| <code>By installing this software, you agree to the &lt;a href=''https://www.rstudio.org/links/posit-assistant-client-terms-of-use'' target=''_blank'' rel=''noopener noreferrer'' style=''white-space: nowrap;''&gt;terms of use&lt;/a&gt;.</code> | <code>安装此软件即表示您同意&lt;a href=''https://www.rstudio.org/links/posit-assistant-client-terms-of-use'' target=''_blank'' rel=''noopener noreferrer'' style=''white-space: nowrap;''&gt;使用条款&lt;/a&gt;。</code> | <code>chatInstallTermsOfUse</code> | [GWT R065][R065] |
| <code>Install Version {0}</code> | <code>安装版本 {0}</code> | <code>chatInstallVersionButton</code> | [GWT R065][R065] |
| <code>Learn More</code> | <code>了解更多</code> | <code>chatLearnMore</code> | [GWT R065][R065] |
| <code>Unable to verify Posit Assistant compatibility. Please check your network connection or try again.</code> | <code>无法验证 Posit Assistant 的兼容性。请检查网络连接或重试。</code> | <code>chatManifestUnavailableMessage</code> | [GWT R065][R065] |
| <code>Connection Error</code> | <code>连接错误</code> | <code>chatManifestUnavailableTitle</code> | [GWT R065][R065] |
| <code>Direct API access to other providers (Anthropic, OpenAI, Amazon Bedrock, and others) is also supported.</code> | <code>还支持通过 API 直接访问其他提供方（Anthropic、OpenAI、Amazon Bedrock 等）。</code> | <code>chatNotInstalledAdditionalProviders</code> | [GWT R065][R065] |
| <code>Posit Assistant is a data analysis assistant that works across multiple environments — Positron and RStudio. It connects to your live R and Python sessions, sees your data, and helps you explore, visualize, build, and debug.</code> | <code>Posit Assistant 是一款可在 Positron 和 RStudio 等多种环境中工作的数据分析助手。它能够连接当前的 R 和 Python 会话、查看数据，并协助您探索、可视化、构建和调试。</code> | <code>chatNotInstalledDescription</code> | [GWT R065][R065] |
| <code>Posit Assistant needs a model provider to power its responses. Try Assistant for free with Posit AI Pass — a managed service from Posit that gives you access to frontier LLMs through a single account. Just sign in and start chatting.</code> | <code>Posit Assistant 需要模型服务提供方来生成回复。您可以免费试用 Posit AI Pass；这是由 Posit 管理的服务，通过一个账户即可使用前沿大语言模型。登录后便可开始聊天。</code> | <code>chatNotInstalledDescription2</code> | [GWT R065][R065] |
| <code>Posit Assistant is a collaborative chat agent powered by your organization''s model provider.</code> | <code>Posit Assistant 是由您所在组织的模型服务提供方支持的协作式聊天代理。</code> | <code>chatNotInstalledDescriptionWorkbench</code> | [GWT R065][R065] |
| <code>Posit Assistant feature not installed.</code> | <code>尚未安装 Posit Assistant 功能。</code> | <code>chatNotInstalledMessage</code> | [GWT R065][R065] |
| <code>Posit Assistant Not Installed</code> | <code>尚未安装 Posit Assistant</code> | <code>chatNotInstalledTitle</code> | [GWT R065][R065] |
| <code>Posit Assistant ({0}) is available to install.</code> | <code>可以安装 Posit Assistant（{0}）。</code> | <code>chatNotInstalledWithVersionMessage</code> | [GWT R065][R065] |
| <code>You have the latest version of Posit Assistant.</code> | <code>您使用的已经是最新版本的 Posit Assistant。</code> | <code>chatNoUpdateAvailableMessage</code> | [GWT R065][R065] |
| <code>Posit Assistant is open in a separate window.</code> | <code>Posit Assistant 已在单独的窗口中打开。</code> | <code>chatPoppedOutMessage</code> | [GWT R065][R065] |
| <code>The Posit Assistant process has exited unexpectedly.</code> | <code>Posit Assistant 进程意外退出。</code> | <code>chatProcessExitedMessage</code> | [GWT R065][R065] |
| <code>Process Exited</code> | <code>进程已退出</code> | <code>chatProcessExitedTitle</code> | [GWT R065][R065] |
| <code>R is waiting for input in the Console.</code> | <code>R 正在等待控制台输入。</code> | <code>chatReadlineWaiting</code> | [GWT R065][R065] |
| <code>Restart Posit Assistant</code> | <code>重新启动 Posit Assistant</code> | <code>chatRestartButton</code> | [GWT R065][R065] |
| <code>Failed to restart: {0}</code> | <code>重新启动失败：{0}</code> | <code>chatRestartFailed</code> | [GWT R065][R065] |
| <code>Retry</code> | <code>重试</code> | <code>chatRetry</code> | [GWT R065][R065] |
| <code>Return Here</code> | <code>返回此处</code> | <code>chatReturnHereButton</code> | [GWT R065][R065] |
| <code>Return to Main Window</code> | <code>返回主窗口</code> | <code>chatReturnToMainButton</code> | [GWT R065][R065] |
| <code>Your RStudio version is incompatible with Posit Assistant. Please update RStudio to the latest version.</code> | <code>当前 RStudio 版本与 Posit Assistant 不兼容。请将 RStudio 更新到最新版本。</code> | <code>chatRStudioTooOldMessage</code> | [GWT R065][R065] |
| <code>Posit Assistant Tab</code> | <code>Posit Assistant 标签页</code> | <code>chatTabLabel</code> | [GWT R065][R065] |
| <code>This version of RStudio is no longer supported by Posit Assistant. Please update RStudio to the latest version.</code> | <code>Posit Assistant 不再支持此版本的 RStudio。请将 RStudio 更新到最新版本。</code> | <code>chatUnsupportedProtocolMessage</code> | [GWT R065][R065] |
| <code>Your installed version of Posit Assistant ({0}) is no longer supported. The recommended version ({1}) is older than the version you have installed. Do you want to install it now?</code> | <code>不再支持已安装的 Posit Assistant（{0}）。建议版本 {1} 比当前安装版本更旧。是否立即安装建议版本？</code> | <code>chatUnsupportedVersionDowngradeConfirmMessage</code> | [GWT R065][R065] |
| <code>Your installed version of Posit Assistant ({0}) is no longer supported. Please update to version {1} to continue.</code> | <code>不再支持已安装的 Posit Assistant（{0}）。请更新到版本 {1} 后继续使用。</code> | <code>chatUnsupportedVersionMessage</code> | [GWT R065][R065] |
| <code>Your installed version of Posit Assistant ({0}) is no longer supported and no update is available. Please update RStudio to the latest version.</code> | <code>不再支持已安装的 Posit Assistant（{0}），且目前没有可用更新。请将 RStudio 更新到最新版本。</code> | <code>chatUnsupportedVersionNoUpdateMessage</code> | [GWT R065][R065] |
| <code>Your installed version of Posit Assistant ({0}) is no longer supported. Do you want to update to version {1} now?</code> | <code>不再支持已安装的 Posit Assistant（{0}）。是否立即更新到版本 {1}？</code> | <code>chatUnsupportedVersionUpdateConfirmMessage</code> | [GWT R065][R065] |
| <code>You have Posit Assistant version {0} installed. Version {1} is available. Do you want to update now?</code> | <code>已安装 Posit Assistant {0}，现有版本 {1} 可用。是否立即更新？</code> | <code>chatUpdateAvailableConfirmMessage</code> | [GWT R065][R065] |
| <code>Posit Assistant Update Available</code> | <code>Posit Assistant 有可用更新</code> | <code>chatUpdateAvailableTitle</code> | [GWT R065][R065] |
| <code>You have Posit Assistant version {0} installed. Version {1} is available.</code> | <code>已安装 Posit Assistant {0}，现有版本 {1} 可用。</code> | <code>chatUpdateAvailableWithVersionsMessage</code> | [GWT R065][R065] |
| <code>Update Posit Assistant</code> | <code>更新 Posit Assistant</code> | <code>chatUpdateButton</code> | [GWT R065][R065] |
| <code>Unable to download update information, continuing with currently installed version</code> | <code>无法下载更新信息，将继续使用当前安装的版本</code> | <code>chatUpdateCheckFailed</code> | [GWT R065][R065] |
| <code>Update complete. Reloading...</code> | <code>更新完成，正在重新加载...</code> | <code>chatUpdateComplete</code> | [GWT R065][R065] |
| <code>Update failed: {0}</code> | <code>更新失败：{0}</code> | <code>chatUpdateFailed</code> | [GWT R065][R065] |
| <code>Update process did not start. Please try again.</code> | <code>更新进程未启动，请重试。</code> | <code>chatUpdateNotStarted</code> | [GWT R065][R065] |
| <code>Update Required</code> | <code>需要更新</code> | <code>chatUpdateRequiredTitle</code> | [GWT R065][R065] |
| <code>Failed to check update status: {0}</code> | <code>无法检查更新状态：{0}</code> | <code>chatUpdateStatusCheckFailed</code> | [GWT R065][R065] |
| <code>Unknown update status: {0}</code> | <code>未知的更新状态：{0}</code> | <code>chatUpdateStatusUnknown</code> | [GWT R065][R065] |
| <code>Update timeout - the update process took too long. Please try again or check your network connection.</code> | <code>更新超时——更新过程耗时过长。请重试或检查网络连接。</code> | <code>chatUpdateTimeout</code> | [GWT R065][R065] |
| <code>Updating Posit Assistant...</code> | <code>正在更新 Posit Assistant...</code> | <code>chatUpdating</code> | [GWT R065][R065] |
| <code>Use Current Version</code> | <code>使用当前版本</code> | <code>chatUseCurrentVersionButton</code> | [GWT R065][R065] |
| <code>Checking for Posit Assistant installation...</code> | <code>正在检查 Posit Assistant 是否已安装...</code> | <code>checkingInstallationMessage</code> | [GWT R065][R065] |
| <code>Restarting Posit Assistant...</code> | <code>正在重新启动 Posit Assistant...</code> | <code>restartingChatMessage</code> | [GWT R065][R065] |
| <code>Starting Posit Assistant...</code> | <code>正在启动 Posit Assistant...</code> | <code>startingChatMessage</code> | [GWT R065][R065] |
| <code>Uninstall Posit Assistant</code> | <code>卸载 Posit Assistant</code> | <code>uninstallPositAssistantCaption</code> | [GWT R065][R065] |
| <code>This will remove Posit Assistant and restart RStudio. Do you want to continue?</code> | <code>此操作将移除 Posit Assistant 并重新启动 RStudio。是否继续？</code> | <code>uninstallPositAssistantMessage</code> | [GWT R065][R065] |
| <code>Cancel</code> | <code>取消</code> | <code>cancelLabel</code> | [GWT R088][R088] |
| <code>and cannot be undone.</code> | <code>且无法撤销。</code> | <code>cannotBeUndoneText</code> | [GWT R088][R088] |
| <code>Clear markers</code> | <code>清除标记</code> | <code>clearMarkersTitle</code> | [GWT R088][R088] |
| <code>close the Compile PDF tab</code> | <code>关闭“编译 PDF”标签页</code> | <code>closeCompilePDF</code> | [GWT R088][R088] |
| <code>Closing Compile PDF...</code> | <code>正在关闭“编译 PDF”...</code> | <code>closingCompilePDFProgressMessage</code> | [GWT R088][R088] |
| <code>Compile PDF</code> | <code>编译 PDF</code> | <code>compilePDFCaption</code> | [GWT R088][R088] |
| <code>Compile PDF</code> | <code>编译 PDF</code> | <code>compilePDFTaskName</code> | [GWT R088][R088] |
| <code>Compiling PDF...</code> | <code>正在编译 PDF...</code> | <code>compilingPDFProgressMessage</code> | [GWT R088][R088] |
| <code>C++ Tab</code> | <code>C++ 标签页</code> | <code>cPlusPlusTabTitle</code> | [GWT R088][R088] |
| <code>Custom Filter Pattern</code> | <code>自定义筛选模式</code> | <code>customFilterPatterValue</code> | [GWT R088][R088] |
| <code>Data Output Pane</code> | <code>数据输出窗格</code> | <code>dataOutputPaneTitle</code> | [GWT R088][R088] |
| <code>Data Output Tab</code> | <code>数据输出标签页</code> | <code>dataOutputTabLabel</code> | [GWT R088][R088] |
| <code>Data Output</code> | <code>数据输出</code> | <code>dataOutputTitle</code> | [GWT R088][R088] |
| <code>Deploy</code> | <code>部署</code> | <code>deployTitle</code> | [GWT R088][R088] |
| <code>Diagnostics</code> | <code>诊断</code> | <code>diagnosticsLabel</code> | [GWT R088][R088] |
| <code>Error</code> | <code>错误</code> | <code>errorCaption</code> | [GWT R088][R088] |
| <code>You must specify a directory to search.</code> | <code>您必须指定要搜索的目录。</code> | <code>errorMessage</code> | [GWT R088][R088] |
| <code>Error Terminating Tests</code> | <code>终止测试出错</code> | <code>errorTerminatingTestsCaption</code> | [GWT R088][R088] |
| <code>Unable to terminate tests. Please try again.</code> | <code>无法终止测试，请重试。</code> | <code>errorTerminatingTestsMessage</code> | [GWT R088][R088] |
| <code>Find</code> | <code>查找</code> | <code>findButtonCaption</code> | [GWT R088][R088] |
| <code>Find in Files</code> | <code>在文件中查找</code> | <code>findInFilesCaption</code> | [GWT R088][R088] |
| <code>Find in Files Results</code> | <code>文件查找结果</code> | <code>findInFilesResultsTitle</code> | [GWT R088][R088] |
| <code>Find</code> | <code>查找</code> | <code>findLabel</code> | [GWT R088][R088] |
| <code>Find Output Tab</code> | <code>查找输出标签页</code> | <code>findOutputTabLabel</code> | [GWT R088][R088] |
| <code>Find Results</code> | <code>查找结果</code> | <code>findResultsTitle</code> | [GWT R088][R088] |
| <code>in </code> | <code>，位置：</code> | <code>inText</code> | [GWT R088][R088] |
| <code>Knit Terminate Failed</code> | <code>Knit 终止失败</code> | <code>knitTerminateFailedMessage</code> | [GWT R088][R088] |
| <code>Markers Tab</code> | <code>标记标签页</code> | <code>markersTabLabel</code> | [GWT R088][R088] |
| <code>Markers</code> | <code>标记</code> | <code>markersTitle</code> | [GWT R088][R088] |
| <code>(No markers)</code> | <code>(无标记)</code> | <code>noMarkersText</code> | [GWT R088][R088] |
| <code>(No results found)</code> | <code>(无结果)</code> | <code>noResultsFoundText</code> | [GWT R088][R088] |
| <code>More than 1000 matching lines were found. Only the first 1000 lines are shown.</code> | <code>找到超过 1,000 个匹配行，仅显示前 1,000 行。</code> | <code>overFlowMessage</code> | [GWT R088][R088] |
| <code>remove </code> | <code>删除</code> | <code>removeText</code> | [GWT R088][R088] |
| <code>Render</code> | <code>渲染</code> | <code>renderTitle</code> | [GWT R088][R088] |
| <code>Are you sure you wish to permanently replace all? This will </code> | <code>确定要永久全部替换吗？此操作将</code> | <code>replaceAllQuestion</code> | [GWT R088][R088] |
| <code>Replace All</code> | <code>全部替换</code> | <code>replaceAllText</code> | [GWT R088][R088] |
| <code>with ''{0}'' and cannot be undone.</code> | <code>替换为“{0}”，且无法撤销。</code> | <code>replaceCannotBeUndoneText</code> | [GWT R088][R088] |
| <code>Replace</code> | <code>替换</code> | <code>replaceLabel</code> | [GWT R088][R088] |
| <code>{0} occurrences of ''{1}''</code> | <code>“{1}”共 {0} 处</code> | <code>replaceMessage</code> | [GWT R088][R088] |
| <code>Replace results for </code> | <code>替换结果：</code> | <code>replaceResultsForText</code> | [GWT R088][R088] |
| <code>Replace results for whole word </code> | <code>完整单词的替换结果：</code> | <code>replaceResultsWholeWordText</code> | [GWT R088][R088] |
| <code>replace </code> | <code>替换</code> | <code>replaceText</code> | [GWT R088][R088] |
| <code>Replace with: </code> | <code>替换为:</code> | <code>replaceWithLabel</code> | [GWT R088][R088] |
| <code>Results for </code> | <code>查找结果：</code> | <code>resultsForText</code> | [GWT R088][R088] |
| <code>Results for whole word </code> | <code>完整单词的结果：</code> | <code>resultsForWholeWordText</code> | [GWT R088][R088] |
| <code>Search in:</code> | <code>搜索范围 :</code> | <code>searchInLabel</code> | [GWT R088][R088] |
| <code>Source Cpp</code> | <code>编译 C++</code> | <code>sourceCppTitle</code> | [GWT R088][R088] |
| <code>SQL Results</code> | <code>SQL 结果</code> | <code>sqlResultsTitle</code> | [GWT R088][R088] |
| <code>Stop find in files</code> | <code>停止在文件中查找</code> | <code>stopFindInFilesTitle</code> | [GWT R088][R088] |
| <code>Stop</code> | <code>停止</code> | <code>stopLabel</code> | [GWT R088][R088] |
| <code>There is a PDF compilation currently running. If you {0} it will be terminated. Are you sure you want to stop the running PDF compilation?</code> | <code>当前有 PDF 编译任务正在运行。如果{0}，该任务将被终止。确定要停止正在运行的 PDF 编译吗？</code> | <code>stopPDFCompilationRunningMessage</code> | [GWT R088][R088] |
| <code>Are you sure you want to cancel the replace? Changes already made will not be reverted.</code> | <code>确定要取消替换吗？已完成的更改不会还原。</code> | <code>stopReplaceMessage</code> | [GWT R088][R088] |
| <code>Stop replace</code> | <code>停止替换</code> | <code>stopReplaceTitle</code> | [GWT R088][R088] |
| <code>Stop R Markdown Rendering</code> | <code>停止 R Markdown 渲染</code> | <code>stopRMarkdownRenderingCaption</code> | [GWT R088][R088] |
| <code>The rendering of ''{0}'' is in progress. Do you want to terminate and close the tab?</code> | <code>正在渲染“{0}”。是否终止渲染并关闭标签页？</code> | <code>stopRMarkdownRenderingMessage</code> | [GWT R088][R088] |
| <code>Stop Running Compiles</code> | <code>停止运行编译</code> | <code>stopRunningCompilesCaption</code> | [GWT R088][R088] |
| <code>: {0} successful, {1} failed</code> | <code>：{0} 个成功，{1} 个失败</code> | <code>summaryLabel</code> | [GWT R088][R088] |
| <code>Switch active marker list</code> | <code>切换活动标记列表</code> | <code>switchActiveMarkerListTitle</code> | [GWT R088][R088] |
| <code>Terminating PDF compilation...</code> | <code>正在终止 PDF 编译...</code> | <code>terminatingPDFCompilationCaption</code> | [GWT R088][R088] |
| <code>Terminating Tests...</code> | <code>正在终止测试...</code> | <code>terminatingTestsProgressMessage</code> | [GWT R088][R088] |
| <code>Tests</code> | <code>测试</code> | <code>testsTaskName</code> | [GWT R088][R088] |
| <code>{0} Tab</code> | <code>{0} 标签页</code> | <code>toolBarTitle</code> | [GWT R088][R088] |
| <code>Unable to terminate PDF compilation. Please try again.</code> | <code>无法终止 PDF 编译，请重试。</code> | <code>unableToTerminatePDFCompilationMessage</code> | [GWT R088][R088] |
| <code>View Log</code> | <code>查看日志</code> | <code>viewLogText</code> | [GWT R088][R088] |
| <code>View the LaTeX compilation log</code> | <code>查看 LaTeX 编译日志</code> | <code>viewLogTitle</code> | [GWT R088][R088] |
| <code>View the R Markdown render log</code> | <code>查看 R Markdown 渲染日志</code> | <code>viewRMarkdownTitle</code> | [GWT R088][R088] |
| <code>View test results</code> | <code>查看测试结果</code> | <code>viewTestResultsTitle</code> | [GWT R088][R088] |
| <code>with </code> | <code>，替换为：</code> | <code>withText</code> | [GWT R088][R088] |
| <code>Error installing learnr</code> | <code>安装 learnr 出错</code> | <code>errorInstallingLearnr</code> | [GWT R102][R102] |
| <code>RStudio was unable to install the learnr package.</code> | <code>RStudio 无法安装 learnr 程序包。</code> | <code>errorInstallingLearnrMessage</code> | [GWT R102][R102] |
| <code>Error installing shiny</code> | <code>安装 shiny 出错</code> | <code>errorInstallingShiny</code> | [GWT R102][R102] |
| <code>RStudio was unable to install the shiny package.</code> | <code>RStudio 无法安装 shiny 程序包。</code> | <code>errorInstallingShinyMessage</code> | [GWT R102][R102] |
| <code>Error Loading Tutorial</code> | <code>加载教程时出错</code> | <code>errorLoadingTutorialCaption</code> | [GWT R102][R102] |
| <code>Installing learnr...</code> | <code>正在安装 learnr...</code> | <code>installingLearnrCaption</code> | [GWT R102][R102] |
| <code>Installing shiny...</code> | <code>正在安装 shiny...</code> | <code>installingShinyCaption</code> | [GWT R102][R102] |
| <code>Loading tutorial...</code> | <code>正在加载教程...</code> | <code>loadingTutorialProgressMessage</code> | [GWT R102][R102] |
| <code>Tutorial Pane</code> | <code>教程窗格</code> | <code>tutorialPaneTitle</code> | [GWT R102][R102] |
| <code>Tutorial Tab</code> | <code>教程标签页</code> | <code>tutorialTabLabel</code> | [GWT R102][R102] |
| <code>Tutorial</code> | <code>教程</code> | <code>tutorialTitle</code> | [GWT R102][R102] |
| <code>Clearing viewer...</code> | <code>正在清除查看器…</code> | <code>clearingViewerMessage</code> | [GWT R108][R108] |
| <code>Clear Viewer</code> | <code>清除查看器</code> | <code>clearViewerCaption</code> | [GWT R108][R108] |
| <code>Are you sure you want to clear all of the items in the history?</code> | <code>确定要清除历史记录中的所有项目吗？</code> | <code>clearViewerMessage</code> | [GWT R108][R108] |
| <code>Could Not Publish</code> | <code>无法发布</code> | <code>couldNotPublishCaption</code> | [GWT R108][R108] |
| <code>Error</code> | <code>错误</code> | <code>errorCaption</code> | [GWT R108][R108] |
| <code>Export</code> | <code>导出</code> | <code>exportText</code> | [GWT R108][R108] |
| <code>Preparing to export plot...</code> | <code>正在准备导出图形…</code> | <code>preparingToExportPlotMessage</code> | [GWT R108][R108] |
| <code>Save As Web Page</code> | <code>另存为网页</code> | <code>saveAsWebPageCaption</code> | [GWT R108][R108] |
| <code>Saving as web page...</code> | <code>正在保存为网页…</code> | <code>savingAsWebPageMessage</code> | [GWT R108][R108] |
| <code>Saving standalone web pages</code> | <code>正在保存独立网页</code> | <code>savingStandaloneWebPagesMessage</code> | [GWT R108][R108] |
| <code>Sync Editor</code> | <code>同步编辑器</code> | <code>syncEditorLabel</code> | [GWT R108][R108] |
| <code>Viewer Content</code> | <code>查看器内容</code> | <code>viewerContentTitle</code> | [GWT R108][R108] |
| <code>Viewer Pane Preview</code> | <code>查看器窗格预览</code> | <code>viewerPanePreviewTitle</code> | [GWT R108][R108] |
| <code>Viewer Pane</code> | <code>查看器窗格</code> | <code>viewerPaneTitle</code> | [GWT R108][R108] |
| <code>Viewer Tab</code> | <code>查看器标签页</code> | <code>viewerTabLabel</code> | [GWT R108][R108] |
| <code>Viewer</code> | <code>查看器</code> | <code>viewerTitle</code> | [GWT R108][R108] |

## 20. 发布 / Shiny / Plumber

本节 215 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Plumber API Launch Failed</code> | <code>Plumber API 启动失败</code> | <code>apiLaunchFailedCaption</code> | [GWT R031][R031] |
| <code>Open in Browser</code> | <code>在浏览器中打开</code> | <code>openInBrowserButtonText</code> | [GWT R031][R031] |
| <code>Plumber API Panel</code> | <code>Plumber API 面板</code> | <code>plumberApiPanelTitle</code> | [GWT R031][R031] |
| <code>Running Plumber API</code> | <code>运行 Plumber API</code> | <code>runningPlumberApiUserAction</code> | [GWT R031][R031] |
| <code>Account Connect Failed</code> | <code>账户连接失败</code> | <code>accountConnectFailed</code> | [GWT R040][R040] |
| <code>Your account was authenticated successfully, but could not be connected to RStudio. Make sure your installation of the ''rsconnect'' package is correct for the server you''re connecting to.\n\n{0}\n{1}</code> | <code>您的账户已成功通过身份验证，但无法连接到 RStudio。请确保安装的“rsconnect”程序包适用于要连接的服务器。\n\n{0}\n{1}</code> | <code>accountConnectFailedMessage</code> | [GWT R040][R040] |
| <code>Account Not Connected</code> | <code>未连接账户</code> | <code>accountNotConnected</code> | [GWT R040][R040] |
| <code>Authentication failed. If you did not cancel authentication, try again, or contact your server administrator for assistance.</code> | <code>身份验证失败。如果您没有取消身份验证，请重试或联系服务器管理员寻求帮助。</code> | <code>accountNotConnectedMessage</code> | [GWT R040][R040] |
| <code>Account Validation Failed</code> | <code>账户验证失败</code> | <code>accountValidationFailed</code> | [GWT R040][R040] |
| <code>RStudio failed to determine whether the account was valid. Try again; if the error persists, contact your server administrator.\n\n{0}\n{1}</code> | <code>RStudio 无法确定账户是否有效。请重试；如果错误仍然存在，请联系服务器管理员。\n\n{0}\n{1}</code> | <code>accountValidationFailedMessage</code> | [GWT R040][R040] |
| <code>Adding account...</code> | <code>正在添加账户...</code> | <code>addingAccount</code> | [GWT R040][R040] |
| <code>API Not Publishable</code> | <code>API 不可发布</code> | <code>apiNotPublishable</code> | [GWT R040][R040] |
| <code>Publishing to Posit Connect is disabled in the Publishing options.</code> | <code>“发布”选项中已禁用发布到 Posit Connect。</code> | <code>apiNotPublishableMessage</code> | [GWT R040][R040] |
| <code>Application</code> | <code>应用程序</code> | <code>application</code> | [GWT R040][R040] |
| <code>Cancel</code> | <code>取消</code> | <code>cancel</code> | [GWT R040][R040] |
| <code>Cannot Add File</code> | <code>无法添加文件</code> | <code>cannotAddFile</code> | [GWT R040][R040] |
| <code>Can''t Find Servers</code> | <code>找不到服务器</code> | <code>cantFindServers</code> | [GWT R040][R040] |
| <code>Can''t publish {0}</code> | <code>无法发布 {0}</code> | <code>cantPublishContent</code> | [GWT R040][R040] |
| <code>Check All</code> | <code>全部选中</code> | <code>checkAll</code> | [GWT R040][R040] |
| <code>You''ve already published an application named ''{0}'' to {1} ({2}). Do you want to replace the existing application with this content?</code> | <code>您已将名为“{0}”的应用发布到 {1}（{2}）。是否要用此内容替换现有应用？</code> | <code>checkForExistingAppMessage</code> | [GWT R040][R040] |
| <code>Checking server connection...</code> | <code>正在检查服务器连接...</code> | <code>checkingServerConnection</code> | [GWT R040][R040] |
| <code>Choose Account Type</code> | <code>选择账户类型</code> | <code>chooseAccountType</code> | [GWT R040][R040] |
| <code>Clear List</code> | <code>清除列表</code> | <code>clearList</code> | [GWT R040][R040] |
| <code>Local deployment history for {0} successfully removed.</code> | <code>已成功移除 {0} 的本地部署历史记录。</code> | <code>clearListMessage</code> | [GWT R040][R040] |
| <code>Close</code> | <code>关闭</code> | <code>close</code> | [GWT R040][R040] |
| <code>Collecting files...</code> | <code>正在收集文件...</code> | <code>collectingFiles</code> | [GWT R040][R040] |
| <code>Confirm account on {0}</code> | <code>确认账户 {0}</code> | <code>confirmAccountOn</code> | [GWT R040][R040] |
| <code>Connect Account</code> | <code>连接账户</code> | <code>connectAccount</code> | [GWT R040][R040] |
| <code>Connecting account...</code> | <code>正在连接账户...</code> | <code>connectingAccount</code> | [GWT R040][R040] |
| <code>Connecting your Posit Connect Cloud account...</code> | <code>正在连接您的 Posit Connect Cloud 账户...</code> | <code>connectingConnectCloudAccount</code> | [GWT R040][R040] |
| <code>Connecting your ShinyApps Account</code> | <code>正在连接您的 ShinyApps 账户</code> | <code>connectingShinyAppsAccount</code> | [GWT R040][R040] |
| <code>Connect Publishing Account</code> | <code>连接发布账户</code> | <code>connectPublishingAccount</code> | [GWT R040][R040] |
| <code>Content</code> | <code>内容</code> | <code>content</code> | [GWT R040][R040] |
| <code>Content Not Publishable</code> | <code>内容无法发布</code> | <code>contentNotPublishable</code> | [GWT R040][R040] |
| <code>Only self-contained documents can currently be published to RPubs.</code> | <code>目前只有自包含文档才能发布到 RPubs。</code> | <code>contentNotPublishableMessage</code> | [GWT R040][R040] |
| <code>The content type ''{0}'' is not currently supported for publishing.</code> | <code>目前不支持发布内容类型“{0}”。</code> | <code>contentNotSupportedForPublishing</code> | [GWT R040][R040] |
| <code>Content Publish Failed</code> | <code>内容发布失败</code> | <code>contentPublishFailed</code> | [GWT R040][R040] |
| <code>Unable to determine file to be published. Click Knit or Preview to render it again, then click the Publish button above the rendered document.</code> | <code>无法确定要发布的文件。请单击“编织”或“预览”重新渲染，然后单击已渲染文档上方的“发布”按钮。</code> | <code>contentPublishFailedMessage</code> | [GWT R040][R040] |
| <code>Could not cancel deployment</code> | <code>无法取消部署</code> | <code>couldNotCancelDeployment</code> | [GWT R040][R040] |
| <code>Could not deploy application ''{0}'': {1}</code> | <code>无法部署应用程序 ''{0}'': {1}</code> | <code>couldNotDeployApplication</code> | [GWT R040][R040] |
| <code>Could not determine application deployments for ''{0}'':{1}</code> | <code>无法确定“{0}”的应用部署：{1}</code> | <code>couldNotDetermineAppDeployments</code> | [GWT R040][R040] |
| <code>Could not determine the list of files to deploy.</code> | <code>无法确定要部署的文件列表。</code> | <code>couldNotDetermineListToDeploy</code> | [GWT R040][R040] |
| <code>Could not determine the list of files to deploy. Try re-rendering and ensuring that you''re publishing to a server which supports this kind of content.</code> | <code>无法确定要部署的文件列表。请尝试重新渲染，并确保发布到支持此类内容的服务器。</code> | <code>couldNotDetermineListToDeployReRender</code> | [GWT R040][R040] |
| <code>Could not find files to deploy: \n\n{0}</code> | <code>找不到要部署的文件 : \n\n{0}</code> | <code>couldNotFindFilesToDeploy</code> | [GWT R040][R040] |
| <code>Could Not Publish</code> | <code>无法发布</code> | <code>couldNotPublish</code> | [GWT R040][R040] |
| <code>Create New Content</code> | <code>创建新内容</code> | <code>createNewAccount</code> | [GWT R040][R040] |
| <code>To publish this content to a new location, click the Publish drop-down menu and choose Other Destination.</code> | <code>要将此内容发布到新位置，请单击“发布”下拉菜单并选择“其他目标”。</code> | <code>createNewAccountMessage</code> | [GWT R040][R040] |
| <code>Current Plot</code> | <code>当前图形</code> | <code>currentPlot</code> | [GWT R040][R040] |
| <code>Deploying...</code> | <code>正在部署...</code> | <code>deploying</code> | [GWT R040][R040] |
| <code>Deployment In Progress</code> | <code>正在部署</code> | <code>deploymentInProgress</code> | [GWT R040][R040] |
| <code>The deployment could not be cancelled; it is not running, or termination failed.</code> | <code>无法取消部署；部署可能未在运行，或终止操作失败。</code> | <code>deploymentNotCancelledMessage</code> | [GWT R040][R040] |
| <code>Deployment Started</code> | <code>开始部署</code> | <code>deploymentStarted</code> | [GWT R040][R040] |
| <code>{0} [Deprecated]</code> | <code>{0} [已弃用]</code> | <code>deprecatedServiceLabel</code> | [GWT R040][R040] |
| <code>Document</code> | <code>文档</code> | <code>document</code> | [GWT R040][R040] |
| <code>document</code> | <code>文档</code> | <code>documentLowercase</code> | [GWT R040][R040] |
| <code>documents</code> | <code>文档</code> | <code>documentsLowercasePlural</code> | [GWT R040][R040] |
| <code>Environment variables</code> | <code>环境变量</code> | <code>environmentVariablesDialogTitle</code> | [GWT R040][R040] |
| <code>Environment Variables</code> | <code>环境变量</code> | <code>environmentVariablesHelpLinkLabel</code> | [GWT R040][R040] |
| <code>{0,number} environment variables will be published with this {1}.</code> | <code>将随此 {1} 发布 {0,number} 个环境变量。</code> | <code>envVarsPublishMessage</code> | [GWT R040][R040] |
| <code>1 environment variable will be published with this {1}.</code> | <code>将随此 {1} 发布 1 个环境变量。</code> | <code>envVarsPublishMessage[one]</code> | [GWT R040][R040] |
| <code>Select one or more environment variables to publish with this {0}.</code> | <code>选择一个或多个要随此 {0} 发布的环境变量。</code> | <code>envVarsSelectMessage</code> | [GWT R040][R040] |
| <code>Error</code> | <code>错误</code> | <code>error</code> | [GWT R040][R040] |
| <code>The command ''{0}'' failed. You can set up an account manually by using rsconnect::setAccountInfo; type ?rsconnect::setAccountInfo at the R console for more information.</code> | <code>命令“{0}”失败。您可以使用 rsconnect::setAccountInfo 手动设置账户；请在 R 控制台中输入 ?rsconnect::setAccountInfo 获取更多信息。</code> | <code>errorAccountMessage</code> | [GWT R040][R040] |
| <code>The pasted command should start with rsconnect::setAccountInfo. If you''re having trouble, try connecting your account manually; type ?rsconnect::setAccountInfo at the R console for help.</code> | <code>粘贴的命令应以 rsconnect::setAccountInfo 开头。如果仍有问题，请尝试手动连接账户；在 R 控制台中输入 ?rsconnect::setAccountInfo 获取帮助。</code> | <code>errorAccountMessageSetInfo</code> | [GWT R040][R040] |
| <code>Error Configuring Application</code> | <code>配置应用程序出错</code> | <code>errorConfiguringApplication</code> | [GWT R040][R040] |
| <code>Error Connecting Account</code> | <code>连接账户出错</code> | <code>errorConnectingAccount</code> | [GWT R040][R040] |
| <code>The server appears to be valid, but rejected the request to authorize an account.\n\n{0}\n{1}</code> | <code>服务器似乎有效，但拒绝了账户授权请求。\n\n{0}\n{1}</code> | <code>errorConnectingAccountMessage</code> | [GWT R040][R040] |
| <code>Error Deploying Application</code> | <code>部署应用程序出错</code> | <code>errorDeployingApplication</code> | [GWT R040][R040] |
| <code>Error Listing Applications</code> | <code>列出应用程序出错</code> | <code>errorListingApplications</code> | [GWT R040][R040] |
| <code>Error retrieving accounts</code> | <code>获取账户出错</code> | <code>errorRetrievingAccounts</code> | [GWT R040][R040] |
| <code>Error retrieving accounts:\n\n{0}</code> | <code>获取账户出错 :\n\n{0}</code> | <code>errorRetrievingAccountsWithMessage</code> | [GWT R040][R040] |
| <code>Error retrieving application {0}.</code> | <code>获取应用程序出错 {0}.</code> | <code>errorRetrievingApplicationAppId</code> | [GWT R040][R040] |
| <code>Error Stopping Deployment</code> | <code>停止部署出错</code> | <code>errorStoppingDeployment</code> | [GWT R040][R040] |
| <code>Finished Document Not Found</code> | <code>未找到已完成的文档</code> | <code>finishedDocumentNotFound</code> | [GWT R040][R040] |
| <code>To publish finished document to Posit Connect, you must first render it. Dismiss this message, click Knit to render the document, then try publishing again.</code> | <code>要将完成的文档发布到 Posit Connect，必须先渲染文档。关闭此消息，单击“编织”渲染文档，然后再次尝试发布。</code> | <code>finishedDocumentNotFoundMessage</code> | [GWT R040][R040] |
| <code>{0} Not Registered</code> | <code>{0} 未登记</code> | <code>hostNotRegistered</code> | [GWT R040][R040] |
| <code>This copy of the content has been published to the server ''{0}'', but you currently do not have any accounts registered on that server. \n\nConnect an account on the server ''{0}'' to update the application, or publish the content to a different server.</code> | <code>此内容副本已发布到服务器“{0}”，但您目前没有在该服务器上注册任何账户。\n\n请连接服务器“{0}”上的账户以更新应用，或将内容发布到其他服务器。</code> | <code>hostNotRegisteredMessage</code> | [GWT R040][R040] |
| <code>index</code> | <code>索引</code> | <code>index</code> | [GWT R040][R040] |
| <code>The item to be deployed ({0}) exceeds the maximum deployment size, which is {1}. Consider creating a new directory containing only the content you wish to deploy.</code> | <code>要部署的项目（{0}）超过最大部署大小 {1}。请考虑新建一个只包含待部署内容的目录。</code> | <code>itemExceedsDeploymentSize</code> | [GWT R040][R040] |
| <code>Launch browser</code> | <code>启动浏览器</code> | <code>launchBrowser</code> | [GWT R040][R040] |
| <code>Lint Failed</code> | <code>Lint 失败</code> | <code>lintFailed</code> | [GWT R040][R040] |
| <code>The content you tried to publish could not be checked for errors. Do you want to proceed? \n\n{0}</code> | <code>无法检查您要发布的内容是否存在错误。是否继续？\n\n{0}</code> | <code>lintFailedMessage</code> | [GWT R040][R040] |
| <code>Connect ShinyApps.io Account</code> | <code>连接 ShinyApps.io 账户</code> | <code>newRSConnectCloudPageCaption</code> | [GWT R040][R040] |
| <code>A cloud service run by RStudio. Publish Shiny applications and interactive documents to the Internet.</code> | <code>由 RStudio 运营的云服务，可将 Shiny 应用和交互式文档发布到互联网。</code> | <code>newRSConnectCloudPageSubTitle</code> | [GWT R040][R040] |
| <code>No accounts connected.</code> | <code>未连接任何账户。</code> | <code>noAccountsConnected</code> | [GWT R040][R040] |
| <code>No application deployments were found for ''{0}''</code> | <code>未发现应用程序部署 ''{0}''</code> | <code>noApplicationDeploymentsFound</code> | [GWT R040][R040] |
| <code>No applications deployed from ''{0}'' appear to be running.</code> | <code>从“{0}”部署的应用似乎都未在运行。</code> | <code>noApplicationDeploymentsFrom</code> | [GWT R040][R040] |
| <code>No Deployments Found</code> | <code>未找到部署</code> | <code>noDeploymentsFound</code> | [GWT R040][R040] |
| <code>No environment variables are currently available.</code> | <code>目前没有环境变量。</code> | <code>noEnvVarsAvailable</code> | [GWT R040][R040] |
| <code>No HTML could be generated for the content.</code> | <code>无法为此内容生成 HTML。</code> | <code>noHTMLGenerated</code> | [GWT R040][R040] |
| <code>No Running Deployments Found</code> | <code>未找到运行中的部署</code> | <code>noRunningDeploymentsFound</code> | [GWT R040][R040] |
| <code>OK</code> | <code>确定</code> | <code>okCapitalized</code> | [GWT R040][R040] |
| <code>Only files in the same folder as the document ({0}) or one of its sub-folders may be added.</code> | <code>只能添加与文档（{0}）位于同一文件夹或其子文件夹中的文件。</code> | <code>onAddFileClickMessage</code> | [GWT R040][R040] |
| <code>Another deployment is currently in progress; only one deployment can be performed at a time.</code> | <code>另一项部署正在进行；每次只能执行一项部署。</code> | <code>onlyOneDeploymentAtATime</code> | [GWT R040][R040] |
| <code>Do you want to stop the deployment process? If the server has already received the content, it will still be published.</code> | <code>是否要停止部署过程？如果服务器已经收到内容，内容仍会被发布。</code> | <code>onRSConnectDeploymentCancelledMessage</code> | [GWT R040][R040] |
| <code>Your content could not be published because of a problem on the server.</code> | <code>您的内容由于服务器上的问题而无法发布。</code> | <code>onRSConnectDeploymentFailedHtmlP1</code> | [GWT R040][R040] |
| <code>More information may be available on the server''s home page:</code> | <code>服务器主页上可能提供了更多信息：</code> | <code>onRSConnectDeploymentFailedHtmlP2</code> | [GWT R040][R040] |
| <code>If the error persists, contact the server''s administrator.</code> | <code>如果错误持续存在，请联系服务器管理员。</code> | <code>onRSConnectDeploymentFailedHtmlP3</code> | [GWT R040][R040] |
| <code>Error code:</code> | <code>错误代码：</code> | <code>onRSConnectDeploymentFailedHtmlP4</code> | [GWT R040][R040] |
| <code>Other Destination...</code> | <code>其他目标...</code> | <code>otherDestination</code> | [GWT R040][R040] |
| <code>Overwrite {0}?</code> | <code>覆盖 {0}?</code> | <code>overwriteAppName</code> | [GWT R040][R040] |
| <code>Pick an account</code> | <code>选择账户</code> | <code>pickAnAccount</code> | [GWT R040][R040] |
| <code>Plot</code> | <code>图形</code> | <code>plot</code> | [GWT R040][R040] |
| <code>Connect Posit Connect Cloud Account</code> | <code>连接 Posit Connect Cloud 账户</code> | <code>positConnectCloudCaption</code> | [GWT R040][R040] |
| <code>Deploy data applications and documents online. Free plan available.</code> | <code>在线部署数据应用和文档。提供免费方案。</code> | <code>positConnectCloudSubTitle</code> | [GWT R040][R040] |
| <code>Preparing for Publish...</code> | <code>准备发布...</code> | <code>preparingForPublish</code> | [GWT R040][R040] |
| <code>Presentation</code> | <code>演示</code> | <code>presentation</code> | [GWT R040][R040] |
| <code>Publish</code> | <code>发布</code> | <code>publish</code> | [GWT R040][R040] |
| <code>Publish Anyway</code> | <code>仍然发布</code> | <code>publishAnyway</code> | [GWT R040][R040] |
| <code>Publish {0}...</code> | <code>发布 {0}...</code> | <code>publishContent</code> | [GWT R040][R040] |
| <code>Publish Content Issues Found</code> | <code>发现发布内容问题</code> | <code>publishContentIssuesFound</code> | [GWT R040][R040] |
| <code>Some issues were found in your content, which may prevent it from working correctly after publishing. Do you want to review these issues or publish anyway?</code> | <code>内容中发现了一些问题，发布后可能无法正常工作。要查看这些问题，还是仍然发布？</code> | <code>publishContentIssuesMessage</code> | [GWT R040][R040] |
| <code>Publish Document</code> | <code>发布文档</code> | <code>publishDocument</code> | [GWT R040][R040] |
| <code>Publish Failed</code> | <code>发布失败</code> | <code>publishFailed</code> | [GWT R040][R040] |
| <code>Publish {0} with source code</code> | <code>发布 {0} 及其源代码</code> | <code>publishFilesPageTitle</code> | [GWT R040][R040] |
| <code>Publish from Account</code> | <code>从账户发布</code> | <code>publishFromAccount</code> | [GWT R040][R040] |
| <code>Publishing content</code> | <code>正在发布内容</code> | <code>publishingContentLabel</code> | [GWT R040][R040] |
| <code>What do you want to publish?</code> | <code>您要发布什么？</code> | <code>publishMultiplePageCaption</code> | [GWT R040][R040] |
| <code>All of the documents in the directory {0} will be published.</code> | <code>将发布目录 {0} 中的所有文档。</code> | <code>publishMultiplePageSubtitle</code> | [GWT R040][R040] |
| <code>Publish all documents in the directory</code> | <code>在目录中发布全部文档</code> | <code>publishMultiplePageTitle</code> | [GWT R040][R040] |
| <code>Only the document {0} will be published.</code> | <code>将仅发布文档 {0}。</code> | <code>publishMultiplePagSingleSubtitle</code> | [GWT R040][R040] |
| <code>Publish just this document</code> | <code>只发布此文档</code> | <code>publishMultiplePagSingleTitle</code> | [GWT R040][R040] |
| <code>Publish options</code> | <code>发布选项</code> | <code>publishOptions</code> | [GWT R040][R040] |
| <code>Choose this option if you want to be able to rebuild your {0} on the server.</code> | <code>如果希望能够在服务器上重新构建 {0}，请选择此选项。</code> | <code>publishReportNoScheduledSourcePageSubtitle</code> | [GWT R040][R040] |
| <code>Choose this option to publish the content as it appears in RStudio.</code> | <code>选择此选项可按内容在 RStudio 中显示的样子发布。</code> | <code>publishReportSourcePageStaticSubtitle</code> | [GWT R040][R040] |
| <code>Publish finished {0} only</code> | <code>仅发布已完成的 {0}</code> | <code>publishReportSourcePageStaticTitle</code> | [GWT R040][R040] |
| <code>Choose this option if you want to create {0} or rebuild your {1} on the server.</code> | <code>如果希望在服务器上创建 {0} 或重新构建 {1}，请选择此选项。</code> | <code>publishReportSourcePageSubTitle</code> | [GWT R040][R040] |
| <code>Publish {0}</code> | <code>发布 {0}</code> | <code>publishRpubTitle</code> | [GWT R040][R040] |
| <code>Publish To</code> | <code>发布到</code> | <code>publishTo</code> | [GWT R040][R040] |
| <code>Publish to RPubs</code> | <code>发布到 RPubs</code> | <code>publishToRpubs</code> | [GWT R040][R040] |
| <code>Publish to Posit Connect</code> | <code>发布到 Posit Connect</code> | <code>publishToRstudioConnect</code> | [GWT R040][R040] |
| <code>Publish to Server</code> | <code>发布到服务器</code> | <code>publishToServer</code> | [GWT R040][R040] |
| <code>Publish Wizard</code> | <code>发布向导</code> | <code>publishWizardLabel</code> | [GWT R040][R040] |
| <code>Quarto Website</code> | <code>Quarto 网站</code> | <code>quartoWebsite</code> | [GWT R040][R040] |
| <code>Reconnect Account</code> | <code>重新连接账户</code> | <code>reconnectAccount</code> | [GWT R040][R040] |
| <code>Are you sure you want to remove all local deployment history for {0}?</code> | <code>确定要移除 {0} 的所有本地部署历史记录吗？</code> | <code>removeLocalDeploymentMessage</code> | [GWT R040][R040] |
| <code>Replace</code> | <code>替换</code> | <code>replace</code> | [GWT R040][R040] |
| <code>Republish</code> | <code>重新发布</code> | <code>republish</code> | [GWT R040][R040] |
| <code>Republish Document</code> | <code>重新发布文档</code> | <code>republishDocument</code> | [GWT R040][R040] |
| <code>Only rendered documents can be republished to RPubs. To republish this document, click Knit or Preview to render it to HTML, then click the Republish button above the rendered document.</code> | <code>只有已渲染的文档才能重新发布到 RPubs。要重新发布此文档，请单击“编织”或“预览”将其渲染为 HTML，然后单击已渲染文档上方的“重新发布”按钮。</code> | <code>republishDocumentMessage</code> | [GWT R040][R040] |
| <code>Review Issues</code> | <code>查看问题</code> | <code>reviewIssues</code> | [GWT R040][R040] |
| <code>RPubs is a free service from Posit for sharing documents on the web.</code> | <code>RPubs 是 Posit 提供的免费服务，用于在 Web 上共享文档。</code> | <code>rPubsSubtitle</code> | [GWT R040][R040] |
| <code>Server: {0} ({1})\nVersion: {2}\nAbout: {3}\n</code> | <code>服务器：{0}（{1}）\n版本：{2}\n关于：{3}\n</code> | <code>rsConnectServerInfoString</code> | [GWT R040][R040] |
| <code>Posit Connect Account</code> | <code>Posit Connect 账户</code> | <code>rstudioConnectAccount</code> | [GWT R040][R040] |
| <code>Posit Connect is a server product from Posit for secure sharing of applications, reports, plots, and APIs.</code> | <code>Posit Connect 是 Posit 提供的服务器产品，用于安全共享应用、报告、图形和 API。</code> | <code>rStudioConnectServiceDescription</code> | [GWT R040][R040] |
| <code>RStudio could not retrieve server information for the selected account.</code> | <code>RStudio 无法获取选中账户的服务器信息。</code> | <code>rStudioCouldNotRetrieveForAccount</code> | [GWT R040][R040] |
| <code>RStudio could not retrieve server information.</code> | <code>RStudio 无法获取服务器信息。</code> | <code>rStudioCouldNotRetrieveServerInfo</code> | [GWT R040][R040] |
| <code>RStudio is deploying {0}. Check the Deploy console tab in the main window for status updates.</code> | <code>RStudio 正在部署 {0}。请在主窗口的“部署”控制台标签页中查看状态更新。</code> | <code>rstudioDeployingApp</code> | [GWT R040][R040] |
| <code>scheduled reports</code> | <code>排定的报告</code> | <code>scheduledReportsPlural</code> | [GWT R040][R040] |
| <code>a scheduled report</code> | <code>排定的报告</code> | <code>scheduledReportsSingular</code> | [GWT R040][R040] |
| <code>Select File</code> | <code>选择文件</code> | <code>selectFile</code> | [GWT R040][R040] |
| <code>The server couldn''t be validated. {0}</code> | <code>无法验证服务器。{0}</code> | <code>serverCouldntBeValidated</code> | [GWT R040][R040] |
| <code>Server Information Not Found</code> | <code>服务器信息未找到</code> | <code>serverInformationNotFound</code> | [GWT R040][R040] |
| <code>Server Validation Failed</code> | <code>服务器验证失败</code> | <code>serverValidationFailed</code> | [GWT R040][R040] |
| <code>The URL ''{0}'' does not appear to belong to a valid server. Please double check the URL, and contact your administrator if the problem persists.\n\n{1}</code> | <code>URL“{0}”似乎不属于有效的服务器。请再次检查该 URL；如果问题仍然存在，请联系管理员。\n\n{1}</code> | <code>serverValidationFailedMessage</code> | [GWT R040][R040] |
| <code>Setting up an account...</code> | <code>正在设置账户...</code> | <code>settingUpAccount</code> | [GWT R040][R040] |
| <code>Only documents rendered to HTML can be published to RPubs. To publish this document, click Knit or Preview to render it to HTML, then click the Publish button above the rendered document.</code> | <code>只有渲染为 HTML 的文档才能发布到 RPubs。要发布此文档，请单击“编织”或“预览”将其渲染为 HTML，然后单击已渲染文档上方的“发布”按钮。</code> | <code>showUnsupportedRPubsFormatMessageError</code> | [GWT R040][R040] |
| <code>Stop deployment</code> | <code>停止部署</code> | <code>stopDeployment</code> | [GWT R040][R040] |
| <code>Stop deployment?</code> | <code>停止部署？</code> | <code>stopDeploymentQuestion</code> | [GWT R040][R040] |
| <code>this application</code> | <code>此应用程序</code> | <code>thisApplication</code> | [GWT R040][R040] |
| <code>The title must contain 4 - 64 alphanumeric characters.</code> | <code>标题必须包含 4–64 个字母或数字字符。</code> | <code>titleContainAlphanumeric</code> | [GWT R040][R040] |
| <code>The title must contain at least 3 characters.</code> | <code>标题必须至少包含 3 个字符。</code> | <code>titleMinimumCharacter</code> | [GWT R040][R040] |
| <code>Uncheck All</code> | <code>全部取消选中</code> | <code>uncheckAll</code> | [GWT R040][R040] |
| <code>Unsaved Document</code> | <code>未保存的文档</code> | <code>unsavedDocument</code> | [GWT R040][R040] |
| <code>Unsaved documents cannot be published. Save the document before publishing it.</code> | <code>无法发布未保存的文档。请先保存文档再发布。</code> | <code>unsavedDocumentPublishMessage</code> | [GWT R040][R040] |
| <code>Unsupported Document Format</code> | <code>不支持的文档格式</code> | <code>unsupportedDocumentFormat</code> | [GWT R040][R040] |
| <code>Uploading {0}</code> | <code>上传 {0}</code> | <code>uploadingContent</code> | [GWT R040][R040] |
| <code>Only rendered documents can be published to RPubs. To publish this document, click Knit or Preview to render it to HTML, then click the Publish button above the rendered document.</code> | <code>只有已渲染的文档才能发布到 RPubs。要发布此文档，请单击“编织”或“预览”将其渲染为 HTML，然后单击已渲染文档上方的“发布”按钮。</code> | <code>uploadToRPubsErrorMessage</code> | [GWT R040][R040] |
| <code>Verifying Account</code> | <code>正在校验账户</code> | <code>verifyingAccount</code> | [GWT R040][R040] |
| <code>Website</code> | <code>网站</code> | <code>website</code> | [GWT R040][R040] |
| <code>website</code> | <code>网站</code> | <code>websiteLowercase</code> | [GWT R040][R040] |
| <code>Valid names contain 4 to 64 alphanumeric characters, dashes, and underscores.</code> | <code>有效名称应包含 4 至 64 个字母或数字字符、连字符和下划线。</code> | <code>validNameText</code> | [GWT R041][R041] |
| <code>IMPORTANT: All documents published to RPubs are publicly visible.</code> | <code>重要提示：发布到 RPubs 的所有文档都将公开可见。</code> | <code>importantRPubsText</code> | [GWT R042][R042] |
| <code>You should only publish documents you wish to share publicly.</code> | <code>您只应发布希望公开分享的文档。</code> | <code>publishDocumentsText</code> | [GWT R042][R042] |
| <code>RPubs is a free service from RStudio for sharing documents on the web. Click Publish to get started.</code> | <code>RPubs 是 RStudio 提供的免费网页文档共享服务。单击“发布”开始。</code> | <code>publishRPubsText</code> | [GWT R042][R042] |
| <code>Account Verified</code> | <code>账户已验证</code> | <code>accountVerifiedText</code> | [GWT R043][R043] |
| <code>A window will open momentarily to confirm your account. If it doesn''t, click here to open it:</code> | <code>稍后将打开一个窗口以确认您的账户。如果窗口未打开，请单击此处：</code> | <code>confirmAccountText</code> | [GWT R043][R043] |
| <code>You''ve successfully authorized this computer. Click "Connect Account" to add this account to RStudio.</code> | <code>您已成功授权此计算机。单击“连接账户”，将此账户添加到 RStudio。</code> | <code>connectAccountText</code> | [GWT R043][R043] |
| <code>Try Again</code> | <code>重试</code> | <code>tryAgainText</code> | [GWT R043][R043] |
| <code>Waiting for Authentication</code> | <code>正在等待认证</code> | <code>waitingAuthenticationText</code> | [GWT R043][R043] |
| <code>Click your name, then choose &lt;b&gt;Tokens&lt;/b&gt; from your account menu.</code> | <code>单击您的姓名，然后从账户菜单中选择&lt;b&gt;令牌&lt;/b&gt;。</code> | <code>chooseTokensText</code> | [GWT R044][R044] |
| <code>Get started here.</code> | <code>从这里开始。</code> | <code>getStartedText</code> | [GWT R044][R044] |
| <code>Go to &lt;a href=''http://www.shinyapps.io/'' target=''_blank''&gt;your account on ShinyApps&lt;/a&gt; and log in.</code> | <code>转到 &lt;a href=''http://www.shinyapps.io/'' target=''_blank''&gt;您的 ShinyApps 账户&lt;/a&gt;并登录。</code> | <code>loginShinyAppsText</code> | [GWT R044][R044] |
| <code>Need a ShinyApps.io account?</code> | <code>还没有 ShinyApps.io 账户？</code> | <code>shinyAppioAccountText</code> | [GWT R044][R044] |
| <code>ShinyApps Token and Secret</code> | <code>ShinyApps 令牌和密钥</code> | <code>shinyAppsAriaLabelText</code> | [GWT R044][R044] |
| <code>Click &lt;b&gt;Show&lt;/b&gt; on the token you want to use, then &lt;b&gt;Show Secret&lt;/b&gt; and &lt;b&gt;Copy to Clipboard.&lt;/b&gt; Paste the result here:</code> | <code>在要使用的令牌上单击&lt;b&gt;显示&lt;/b&gt;，然后单击&lt;b&gt;显示密钥&lt;/b&gt;和&lt;b&gt;复制到剪贴板&lt;/b&gt;。将结果粘贴到此处：</code> | <code>showTokenText</code> | [GWT R044][R044] |
| <code>Add environment variables...</code> | <code>添加环境变量...</code> | <code>addEnvironmentVariablesButtonText</code> | [GWT R045][R045] |
| <code>Add more...</code> | <code>添加更多...</code> | <code>addMoreButtonText</code> | [GWT R045][R045] |
| <code>Add new account</code> | <code>添加新账户</code> | <code>addNewAccountText</code> | [GWT R045][R045] |
| <code>Create new</code> | <code>新建</code> | <code>createNewText</code> | [GWT R045][R045] |
| <code>Looking up details for</code> | <code>正在查找详细信息：</code> | <code>lookingUpDetailsText</code> | [GWT R045][R045] |
| <code>Preview...</code> | <code>预览...</code> | <code>previewText</code> | [GWT R045][R045] |
| <code>Publish files from:</code> | <code>发布文件来源 :</code> | <code>publishFilesFromLabel</code> | [GWT R045][R045] |
| <code>Publish from account:</code> | <code>从账户发布 :</code> | <code>publishFromAccountText</code> | [GWT R045][R045] |
| <code>Publish:</code> | <code>发布 :</code> | <code>publishText</code> | [GWT R045][R045] |
| <code>Publish to account:</code> | <code>发布到账户 :</code> | <code>publishToAccountText</code> | [GWT R045][R045] |
| <code>Title:</code> | <code>标题 :</code> | <code>titleText</code> | [GWT R045][R045] |
| <code>Uncheck all</code> | <code>全部取消选中</code> | <code>uncheckAllButtonText</code> | [GWT R045][R045] |
| <code>Update:</code> | <code>更新 :</code> | <code>updateText</code> | [GWT R045][R045] |
| <code>About Posit Connect</code> | <code>关于 Posit Connect</code> | <code>aboutPositConnectCaption</code> | [GWT R046][R046] / Source patch |
| <code>Contact your Posit Connect server administrator if you need its URL.</code> | <code>如果需要 Posit Connect 服务器的 URL，请联系服务器管理员。</code> | <code>contactAdminText</code> | [GWT R046][R046] |
| <code>Enter the public URL of the Posit Connect server:</code> | <code>输入 Posit Connect 服务器的公共 URL：</code> | <code>enterPublicURLText</code> | [GWT R046][R046] / Source patch |
| <code>Once you''ve authorized this computer to publish content to an account, you can publish any time without re-entering your credentials.</code> | <code>授权此计算机向账户发布内容后，您以后无需重新输入凭据即可随时发布。</code> | <code>authorizeNewAccountText</code> | [GWT R047][R047] |
| <code>To publish content, you first need to connect RStudio to an account on the service you want to publish to.</code> | <code>要发布内容，必须先将 RStudio 连接到目标服务的账户。</code> | <code>publishContentText</code> | [GWT R047][R047] |
| <code>Shiny App Background Launch Failed</code> | <code>Shiny 应用后台启动失败</code> | <code>backgroundLaunchFailedErrorCaption</code> | [GWT R049][R049] |
| <code>Failed to Stop</code> | <code>停止失败</code> | <code>failedToStopErrorCaption</code> | [GWT R049][R049] |
| <code>Could not stop the Shiny application.\n\n{0}</code> | <code>无法停止 Shiny 应用。\n\n{0}</code> | <code>failedToStopErrorMsg</code> | [GWT R049][R049] |
| <code>In Background Job</code> | <code>在后台任务中</code> | <code>inBackgroundJobLabel</code> | [GWT R049][R049] |
| <code>In R Console</code> | <code>在 R 控制台中</code> | <code>inRConsoleLabel</code> | [GWT R049][R049] |
| <code>Shiny App Launch Failed</code> | <code>Shiny 应用启动失败</code> | <code>launchFailedErrorCaption</code> | [GWT R049][R049] |
| <code>Open in Browser</code> | <code>在浏览器中打开</code> | <code>openInBrowserButtonText</code> | [GWT R049][R049] |
| <code>Failed to reload</code> | <code>重新加载失败</code> | <code>reloadFailErrorCaption</code> | [GWT R049][R049] |
| <code>Could not reload the Shiny application.\n\n{0}</code> | <code>无法重新加载 Shiny 应用。\n\n{0}</code> | <code>reloadFailErrorMsg</code> | [GWT R049][R049] |
| <code>Running Shiny applications</code> | <code>运行 Shiny 应用</code> | <code>runningShinyUserAction</code> | [GWT R049][R049] |
| <code>Shiny Application</code> | <code>Shiny 应用</code> | <code>shinyApplicationTitle</code> | [GWT R049][R049] |

## 21. Terminal / 终端

本节 82 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>Append Buffer</code> | <code>追加缓冲区内容</code> | <code>appendBufferTitle</code> | [GWT R101][R101] |
| <code>Browser:    ''</code> | <code>浏览器:    ''</code> | <code>browserText</code> | [GWT R101][R101] |
| <code>{0} (busy)</code> | <code>{0}（忙碌）</code> | <code>busyCaption</code> | [GWT R101][R101] |
| <code>Busy:        ''</code> | <code>忙碌:        ''</code> | <code>busyText</code> | [GWT R101][R101] |
| <code>Cancel</code> | <code>取消</code> | <code>cancelLabel</code> | [GWT R101][R101] |
| <code>'' Caption: ''</code> | <code>'' 说明: ''</code> | <code>captionDumpText</code> | [GWT R101][R101] |
| <code>'' Caption: ''</code> | <code>'' 说明: ''</code> | <code>captionLabel</code> | [GWT R101][R101] |
| <code>Caption:     ''</code> | <code>说明:     ''</code> | <code>captionText</code> | [GWT R101][R101] |
| <code>Channel type not implemented</code> | <code>尚未实现此通道类型</code> | <code>channelTypeNotImplementedError</code> | [GWT R101][R101] |
| <code>Clearing Buffer</code> | <code>清空缓冲区</code> | <code>clearingBufferCaption</code> | [GWT R101][R101] |
| <code>Clearing Final Line of Buffer</code> | <code>清除缓冲区的最后一行</code> | <code>clearingFinalLineCaption</code> | [GWT R101][R101] |
| <code>Close All Terminals</code> | <code>关闭所有终端</code> | <code>closeAllTerminalsCaption</code> | [GWT R101][R101] |
| <code>Are you sure you want to close all terminals? Any running jobs will be stopped</code> | <code>确定要关闭所有终端吗？所有正在运行的任务都将停止。</code> | <code>closeAllTerminalsQuestion</code> | [GWT R101][R101] |
| <code>Close {0}</code> | <code>关闭 {0}</code> | <code>closeCaption</code> | [GWT R101][R101] |
| <code>Are you sure you want to exit the terminal named "{0}"? Any running jobs will be terminated.</code> | <code>确定要退出名为“{0}”的终端吗？所有正在运行的任务都将终止。</code> | <code>closeMessage</code> | [GWT R101][R101] |
| <code>Close</code> | <code>关闭</code> | <code>closeTitle</code> | [GWT R101][R101] |
| <code>Cols x Rows  ''</code> | <code>列数 × 行数: ''</code> | <code>colsText</code> | [GWT R101][R101] |
| <code>Connected with RPC</code> | <code>已通过 RPC 连接</code> | <code>connectedWithRPCMessage</code> | [GWT R101][R101] |
| <code>\nConnection Information\n----------------------\n</code> | <code>\n连接信息\n----------------------\n</code> | <code>connectionInformationText</code> | [GWT R101][R101] |
| <code>Connect WebSocket: ''</code> | <code>连接 WebSocket: ''</code> | <code>connectWebSocketMessage</code> | [GWT R101][R101] |
| <code>Custom</code> | <code>自定义</code> | <code>customShellLabel</code> | [GWT R101][R101] |
| <code>Default</code> | <code>默认</code> | <code>defaultShellLabel</code> | [GWT R101][R101] |
| <code>Desktop:    ''</code> | <code>桌面版:    ''</code> | <code>desktopText</code> | [GWT R101][R101] |
| <code>Disconnected</code> | <code>已断开连接</code> | <code>disconnectedLabel</code> | [GWT R101][R101] |
| <code>Empty Terminal caption</code> | <code>终端标题为空</code> | <code>emptyTerminalCaptionText</code> | [GWT R101][R101] |
| <code>Error</code> | <code>错误</code> | <code>errorCaption</code> | [GWT R101][R101] |
| <code>Tried to switch to unknown terminal handle.</code> | <code>尝试切换到未知的终端句柄。</code> | <code>errorMessage</code> | [GWT R101][R101] |
| <code>Exit Code:   ''</code> | <code>退出代码:   ''</code> | <code>exitCodeText</code> | [GWT R101][R101] |
| <code>Failed to switch to RPC: </code> | <code>切换到 RPC 失败: </code> | <code>failedToSwitchRPCMessage</code> | [GWT R101][R101] |
| <code>Full screen: ''client=</code> | <code>全屏: ''client=</code> | <code>fullScreenText</code> | [GWT R101][R101] |
| <code>Global Terminal Information\n---------------------------\n</code> | <code>全局终端信息\n---------------------------\n</code> | <code>globalTerminalInformationText</code> | [GWT R101][R101] |
| <code>Handle: ''</code> | <code>句柄: ''</code> | <code>handleDumpText</code> | [GWT R101][R101] |
| <code>Handle: ''</code> | <code>句柄: ''</code> | <code>handleLabel</code> | [GWT R101][R101] |
| <code>Handle:      ''</code> | <code>句柄:      ''</code> | <code>handleText</code> | [GWT R101][R101] |
| <code>Interactive: ''</code> | <code>交互模式: ''</code> | <code>interactiveText</code> | [GWT R101][R101] |
| <code>Interrupting child</code> | <code>正在中断子进程</code> | <code>interruptingChildCaption</code> | [GWT R101][R101] |
| <code>Loaded TerminalSessions: </code> | <code>已加载的终端会话: </code> | <code>loadedTerminalSessionsLabel</code> | [GWT R101][R101] |
| <code>Local-echo:  ''</code> | <code>本地回显:  ''</code> | <code>localEchoText</code> | [GWT R101][R101] |
| <code>\nLocal-echo Match Failures\n-------------------------\n</code> | <code>\n本地回显匹配失败\n-------------------------\n</code> | <code>matchFailuresText</code> | [GWT R101][R101] |
| <code>Name already in use</code> | <code>名称已被使用</code> | <code>nameAlreadyInUseCaption</code> | [GWT R101][R101] |
| <code>Please enter a unique name.</code> | <code>请输入一个未被使用的名称。</code> | <code>nameAlreadyInUseMessage</code> | [GWT R101][R101] |
| <code>User command</code> | <code>用户命令</code> | <code>nonShellLabel</code> | [GWT R101][R101] |
| <code>&lt;Not applicable&gt;\n</code> | <code>&lt;不适用&gt;\n</code> | <code>notApplicableText</code> | [GWT R101][R101] |
| <code>No Terminal ConsoleProcess received from server</code> | <code>未从服务器收到终端 ConsoleProcess</code> | <code>noTerminalReceivedFromServerText</code> | [GWT R101][R101] |
| <code>Permanently Disconnected</code> | <code>已永久断开连接</code> | <code>permanentlyDisconnectedLabel</code> | [GWT R101][R101] |
| <code>Platform:   ''</code> | <code>平台:      ''</code> | <code>platformText</code> | [GWT R101][R101] |
| <code>[Process completed]</code> | <code>[进程已完成]</code> | <code>processCompletedText</code> | [GWT R101][R101] |
| <code>Please enter the new terminal name:</code> | <code>请输入新的终端名称:</code> | <code>renameTerminalLabel</code> | [GWT R101][R101] |
| <code>Rename Terminal</code> | <code>重命名终端</code> | <code>renameTerminalTitle</code> | [GWT R101][R101] |
| <code>Restarted:   ''</code> | <code>已重启:   ''</code> | <code>restartedText</code> | [GWT R101][R101] |
| <code>Tried to send user input over null websocket</code> | <code>尝试通过空的 WebSocket 发送用户输入</code> | <code>sendUserInputMessage</code> | [GWT R101][R101] |
| <code>Sequence:    ''</code> | <code>序号:    ''</code> | <code>sequenceText</code> | [GWT R101][R101] |
| <code>'' Session Created: </code> | <code>'' 会话创建时间: </code> | <code>sessionCreatedText</code> | [GWT R101][R101] |
| <code>Switched to RPC</code> | <code>已切换到 RPC</code> | <code>switchedToRPCMessage</code> | [GWT R101][R101] |
| <code>\nSystem Information------------------\n</code> | <code>\n系统信息\n------------------\n</code> | <code>systemInformationText</code> | [GWT R101][R101] |
| <code>\n\nTerminal Buffer (Server)\n---------------\n</code> | <code>\n\n终端缓冲区（服务器）\n---------------\n</code> | <code>terminalBufferText</code> | [GWT R101][R101] |
| <code>The terminal is currently busy. {0}</code> | <code>终端当前正忙。{0}</code> | <code>terminalBusyMessage</code> | [GWT R101][R101] |
| <code>Terminal Creation Failure</code> | <code>创建终端失败</code> | <code>terminalCreationFailureCaption</code> | [GWT R101][R101] |
| <code>Terminal Diagnostics</code> | <code>终端诊断</code> | <code>terminalDiagnosticsText</code> | [GWT R101][R101] |
| <code>Terminal Failed to Connect</code> | <code>终端连接失败</code> | <code>terminalFailedToConnect</code> | [GWT R101][R101] |
| <code>Terminal failed to connect. Please try again.</code> | <code>终端连接失败，请重试。</code> | <code>terminalFailedToConnectMessage</code> | [GWT R101][R101] |
| <code>Terminal List Count: </code> | <code>终端列表数量: </code> | <code>terminalListCountText</code> | [GWT R101][R101] |
| <code>Terminal Reconnection Failure</code> | <code>终端重新连接失败</code> | <code>terminalReconnectionErrorMessage</code> | [GWT R101][R101] |
| <code>Terminal Tab</code> | <code>终端标签页</code> | <code>terminalTabLabel</code> | [GWT R101][R101] |
| <code>Terminal</code> | <code>终端</code> | <code>terminalText</code> | [GWT R101][R101] |
| <code>Terminate</code> | <code>终止</code> | <code>terminateLabel</code> | [GWT R101][R101] |
| <code>Timeout connecting via WebSockets, switching to RPC</code> | <code>通过 WebSocket 连接超时，正在切换到 RPC</code> | <code>timeoutConnectingMessage</code> | [GWT R101][R101] |
| <code>Title:       ''</code> | <code>标题:       ''</code> | <code>titleText</code> | [GWT R101][R101] |
| <code>Track Env    ''</code> | <code>跟踪环境:   ''</code> | <code>trackEnvText</code> | [GWT R101][R101] |
| <code>Unable to discover websocket protocol</code> | <code>无法确定 WebSocket 协议</code> | <code>unableToDiscoverWebsocketMessage</code> | [GWT R101][R101] |
| <code>Undetermined Terminal sequence</code> | <code>无法确定终端序号</code> | <code>undeterminedTerminalSequenceText</code> | [GWT R101][R101] |
| <code>Unknown</code> | <code>未知</code> | <code>unknownShellLabel</code> | [GWT R101][R101] |
| <code>Unknown</code> | <code>未知</code> | <code>unknownText</code> | [GWT R101][R101] |
| <code>WebSocket closed</code> | <code>WebSocket 已关闭</code> | <code>websockedClosedMessage</code> | [GWT R101][R101] |
| <code>WebSocket connected</code> | <code>WebSocket 已连接</code> | <code>websocketConnectedMessage</code> | [GWT R101][R101] |
| <code>WebSocket connect error, switching to RPC</code> | <code>WebSocket 连接出错，正在切换到 RPC</code> | <code>websocketConnectError</code> | [GWT R101][R101] |
| <code>Command Prompt</code> | <code>命令提示符</code> | <code>winCmdShellLabel</code> | [GWT R101][R101] |
| <code>Working Dir: ''</code> | <code>工作目录: ''</code> | <code>workingDirText</code> | [GWT R101][R101] |
| <code>{0}Error: {1}{2}</code> | <code>{0}错误: {1}{2}</code> | <code>writeErrorMessage</code> | [GWT R101][R101] |
| <code>[Exit code: </code> | <code>[退出代码: </code> | <code>zombieExitCodeText</code> | [GWT R101][R101] |
| <code>Zombie, not reconnecting</code> | <code>进程已僵死，不再重新连接</code> | <code>zombieNotReconnectingMessage</code> | [GWT R101][R101] |
| <code>Zombie:      ''</code> | <code>僵死:      ''</code> | <code>zombieText</code> | [GWT R101][R101] |

## 22. 构建 / 程序包开发

本节 26 条。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| <code>All Formats</code> | <code>所有格式</code> | <code>allFormatsLabel</code> | [GWT R064][R064] |
| <code>Book</code> | <code>书籍</code> | <code>bookText</code> | [GWT R064][R064] |
| <code>Build all</code> | <code>全部构建</code> | <code>buildAllDesc</code> | [GWT R064][R064] |
| <code>Build All</code> | <code>全部构建</code> | <code>buildAllLabel</code> | [GWT R064][R064] |
| <code>Build book options</code> | <code>书籍构建选项</code> | <code>buildBookOptionsText</code> | [GWT R064][R064] |
| <code>Build Book</code> | <code>构建书籍</code> | <code>buildBookText</code> | [GWT R064][R064] |
| <code>Building sites</code> | <code>正在构建站点</code> | <code>buildingSitesUserAction</code> | [GWT R064][R064] |
| <code>Build Tab</code> | <code>构建标签页</code> | <code>buildTabLabel</code> | [GWT R064][R064] |
| <code>Build</code> | <code>构建</code> | <code>buildText</code> | [GWT R064][R064] |
| <code>Build Website</code> | <code>构建网站</code> | <code>buildWebsiteText</code> | [GWT R064][R064] |
| <code>Error Terminating Build</code> | <code>终止构建时出错</code> | <code>errorTerminatingBuildCaption</code> | [GWT R064][R064] |
| <code>Unable to terminate build. Please try again.</code> | <code>无法终止构建，请重试。</code> | <code>errorTerminatingBuildMessage</code> | [GWT R064][R064] |
| <code>{0} Format</code> | <code>{0} 格式</code> | <code>formatMenuLabel</code> | [GWT R064][R064] |
| <code>More</code> | <code>更多</code> | <code>moreText</code> | [GWT R064][R064] |
| <code>Building package documentation</code> | <code>正在生成程序包文档</code> | <code>packageDocumentationProgressCaption</code> | [GWT R064][R064] |
| <code>Project</code> | <code>项目</code> | <code>projectTypeText</code> | [GWT R064][R064] |
| <code>Website</code> | <code>网站</code> | <code>projectWebsiteText</code> | [GWT R064][R064] |
| <code>Quarto Serve Error</code> | <code>Quarto 服务错误</code> | <code>quartoServeError</code> | [GWT R064][R064] |
| <code>Render Book</code> | <code>渲染书籍</code> | <code>renderBookText</code> | [GWT R064][R064] |
| <code>Render </code> | <code>渲染</code> | <code>renderLabel</code> | [GWT R064][R064] |
| <code>Render Project</code> | <code>渲染项目</code> | <code>renderProjectText</code> | [GWT R064][R064] |
| <code>Render Website</code> | <code>渲染网站</code> | <code>renderWebsiteText</code> | [GWT R064][R064] |
| <code>Preview Book</code> | <code>预览书籍</code> | <code>serveBookText</code> | [GWT R064][R064] |
| <code>Preview</code> | <code>预览</code> | <code>serveLabel</code> | [GWT R064][R064] |
| <code>Terminal jobs will be terminated. Are you sure?</code> | <code>终端任务将被终止。确定要继续吗？</code> | <code>terminalTerminatedQuestion</code> | [GWT R064][R064] |
| <code>Terminating Build...</code> | <code>正在终止构建...</code> | <code>terminatingBuildMessage</code> | [GWT R064][R064] |

## 来源索引

所有路径相对于当前版本的 `translations/2026.09.0+174/upstream/`。R 编号只用于本目录追踪；同名 key 必须结合来源文件识别。

| 编号 | 实际语言资源路径 |
| --- | --- |
| R001 | [src/gwt/src/org/rstudio/core/client/CoreClientConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/CoreClientConstants_zh_CN.properties) |
| R002 | [src/gwt/src/org/rstudio/core/client/hyperlink/HyperlinkConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/hyperlink/HyperlinkConstants_zh_CN.properties) |
| R003 | [src/gwt/src/org/rstudio/core/client/widget/InfoBarMyBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/widget/InfoBarMyBinderImplGenMessages_zh_CN.properties) |
| R004 | [src/gwt/src/org/rstudio/core/client/widget/ProgressDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/widget/ProgressDialogBinderImplGenMessages_zh_CN.properties) |
| R005 | [src/gwt/src/org/rstudio/core/client/widget/ShortcutInfoPanelShortcutInfoPanelUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/widget/ShortcutInfoPanelShortcutInfoPanelUiBinderImplGenMessages_zh_CN.properties) |
| R006 | [src/gwt/src/org/rstudio/core/client/widget/SlideLabelSlideLabelUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/widget/SlideLabelSlideLabelUiBinderImplGenMessages_zh_CN.properties) |
| R007 | [src/gwt/src/org/rstudio/core/client/widget/VimKeyInfoVimKeyInfoUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/widget/VimKeyInfoVimKeyInfoUiBinderImplGenMessages_zh_CN.properties) |
| R008 | [src/gwt/src/org/rstudio/studio/client/StudioClientConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/StudioClientConstants_zh_CN.properties) |
| R009 | [src/gwt/src/org/rstudio/studio/client/application/StudioClientApplicationConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/application/StudioClientApplicationConstants_zh_CN.properties) |
| R010 | [src/gwt/src/org/rstudio/studio/client/application/ui/AboutDialogContentsAboutDialogContentsUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/application/ui/AboutDialogContentsAboutDialogContentsUiBinderImplGenMessages_zh_CN.properties) |
| R011 | [src/gwt/src/org/rstudio/studio/client/application/ui/AboutOpenSourceDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/application/ui/AboutOpenSourceDialogBinderImplGenMessages_zh_CN.properties) |
| R012 | [src/gwt/src/org/rstudio/studio/client/application/ui/LauncherSessionStatusLauncherSessionStatusUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/application/ui/LauncherSessionStatusLauncherSessionStatusUiBinderImplGenMessages_zh_CN.properties) |
| R013 | [src/gwt/src/org/rstudio/studio/client/application/ui/RTimeoutOptionsRTimeoutOptionsUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/application/ui/RTimeoutOptionsRTimeoutOptionsUiBinderImplGenMessages_zh_CN.properties) |
| R014 | [src/gwt/src/org/rstudio/studio/client/application/ui/WarningBarBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/application/ui/WarningBarBinderImplGenMessages_zh_CN.properties) |
| R015 | [src/gwt/src/org/rstudio/studio/client/common/StudioClientCommonConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/common/StudioClientCommonConstants_zh_CN.properties) |
| R016 | [src/gwt/src/org/rstudio/studio/client/common/rstudioapi/ui/AskSecretDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/common/rstudioapi/ui/AskSecretDialogBinderImplGenMessages_zh_CN.properties) |
| R017 | [src/gwt/src/org/rstudio/studio/client/dataviewer/DataViewerConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/dataviewer/DataViewerConstants_zh_CN.properties) |
| R018 | [src/gwt/src/org/rstudio/studio/client/htmlpreview/HtmlPreviewConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/htmlpreview/HtmlPreviewConstants_zh_CN.properties) |
| R019 | [src/gwt/src/org/rstudio/studio/client/notebook/CompileNotebookOptionsDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/notebook/CompileNotebookOptionsDialogBinderImplGenMessages_zh_CN.properties) |
| R020 | [src/gwt/src/org/rstudio/studio/client/notebook/NotebookConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/notebook/NotebookConstants_zh_CN.properties) |
| R021 | [src/gwt/src/org/rstudio/studio/client/notebookv2/CompileNotebookv2OptionsDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/notebookv2/CompileNotebookv2OptionsDialogBinderImplGenMessages_zh_CN.properties) |
| R022 | [src/gwt/src/org/rstudio/studio/client/notebookv2/NotebookV2Constants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/notebookv2/NotebookV2Constants_zh_CN.properties) |
| R023 | [src/gwt/src/org/rstudio/studio/client/packrat/PackratConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/packrat/PackratConstants_zh_CN.properties) |
| R024 | [src/gwt/src/org/rstudio/studio/client/palette/PaletteConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/palette/PaletteConstants_zh_CN.properties) |
| R025 | [src/gwt/src/org/rstudio/studio/client/panmirror/PanmirrorConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/panmirror/PanmirrorConstants_zh_CN.properties) |
| R026 | [src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorEditAttrWidgetBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorEditAttrWidgetBinderImplGenMessages_zh_CN.properties) |
| R027 | [src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorEditListDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorEditListDialogBinderImplGenMessages_zh_CN.properties) |
| R028 | [src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorEditRawDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorEditRawDialogBinderImplGenMessages_zh_CN.properties) |
| R029 | [src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorInsertCiteDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorInsertCiteDialogBinderImplGenMessages_zh_CN.properties) |
| R030 | [src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorInsertTableDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorInsertTableDialogBinderImplGenMessages_zh_CN.properties) |
| R031 | [src/gwt/src/org/rstudio/studio/client/plumber/PlumberConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/plumber/PlumberConstants_zh_CN.properties) |
| R032 | [src/gwt/src/org/rstudio/studio/client/projects/StudioClientProjectConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/projects/StudioClientProjectConstants_zh_CN.properties) |
| R033 | [src/gwt/src/org/rstudio/studio/client/projects/ui/prefs/buildtools/BuildToolsRoxygenOptionsDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/projects/ui/prefs/buildtools/BuildToolsRoxygenOptionsDialogBinderImplGenMessages_zh_CN.properties) |
| R034 | [src/gwt/src/org/rstudio/studio/client/quarto/QuartoConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/quarto/QuartoConstants_zh_CN.properties) |
| R035 | [src/gwt/src/org/rstudio/studio/client/renv/RenvConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/renv/RenvConstants_zh_CN.properties) |
| R036 | [src/gwt/src/org/rstudio/studio/client/rmarkdown/RMarkdownConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rmarkdown/RMarkdownConstants_zh_CN.properties) |
| R037 | [src/gwt/src/org/rstudio/studio/client/rmarkdown/ui/RmdTemplateChooserRmdTemplateChooserUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rmarkdown/ui/RmdTemplateChooserRmdTemplateChooserUiBinderImplGenMessages_zh_CN.properties) |
| R038 | [src/gwt/src/org/rstudio/studio/client/rmarkdown/ui/RmdTemplateOptionsWidgetRmdTemplateOptionsWidgetUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rmarkdown/ui/RmdTemplateOptionsWidgetRmdTemplateOptionsWidgetUiBinderImplGenMessages_zh_CN.properties) |
| R039 | [src/gwt/src/org/rstudio/studio/client/rmarkdown/ui/ShinyDocumentWarningShinyDocumentWarningUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rmarkdown/ui/ShinyDocumentWarningShinyDocumentWarningUiBinderImplGenMessages_zh_CN.properties) |
| R040 | [src/gwt/src/org/rstudio/studio/client/rsconnect/RsconnectConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/RsconnectConstants_zh_CN.properties) |
| R041 | [src/gwt/src/org/rstudio/studio/client/rsconnect/ui/AppNameTextboxAppNameTextboxUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/AppNameTextboxAppNameTextboxUiBinderImplGenMessages_zh_CN.properties) |
| R042 | [src/gwt/src/org/rstudio/studio/client/rsconnect/ui/PublishRPubsPublishRPubsUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/PublishRPubsPublishRPubsUiBinderImplGenMessages_zh_CN.properties) |
| R043 | [src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectAuthWaitRSConnectAuthWaitUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectAuthWaitRSConnectAuthWaitUiBinderImplGenMessages_zh_CN.properties) |
| R044 | [src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectCloudAccountRSConnectCloudAccountUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectCloudAccountRSConnectCloudAccountUiBinderImplGenMessages_zh_CN.properties) |
| R045 | [src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectDeployRSConnectDeployUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectDeployRSConnectDeployUiBinderImplGenMessages_zh_CN.properties) |
| R046 | [src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectLocalAccountRSConnectLocalAccountUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectLocalAccountRSConnectLocalAccountUiBinderImplGenMessages_zh_CN.properties) |
| R047 | [src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectNewAccountRSConnectNewAccountUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectNewAccountRSConnectNewAccountUiBinderImplGenMessages_zh_CN.properties) |
| R048 | [src/gwt/src/org/rstudio/studio/client/server/ServerConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/server/ServerConstants_zh_CN.properties) |
| R049 | [src/gwt/src/org/rstudio/studio/client/shiny/ShinyConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/shiny/ShinyConstants_zh_CN.properties) |
| R050 | [src/gwt/src/org/rstudio/studio/client/vcs/VCSConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/vcs/VCSConstants_zh_CN.properties) |
| R051 | [src/gwt/src/org/rstudio/studio/client/workbench/ClientWorkbenchConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/ClientWorkbenchConstants_zh_CN.properties) |
| R052 | [src/gwt/src/org/rstudio/studio/client/workbench/addins/AddinsConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/addins/AddinsConstants_zh_CN.properties) |
| R053 | [src/gwt/src/org/rstudio/studio/client/workbench/assistant/AssistantUIConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/assistant/AssistantUIConstants_zh_CN.properties) |
| R054 | [src/gwt/src/org/rstudio/studio/client/workbench/codesearch/CodeSearchConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/codesearch/CodeSearchConstants_zh_CN.properties) |
| R055 | [src/gwt/src/org/rstudio/studio/client/workbench/commands/CmdConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/commands/CmdConstants_zh_CN.properties) |
| R056 | [src/gwt/src/org/rstudio/studio/client/workbench/commands/MenuConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/commands/MenuConstants_zh_CN.properties) |
| R057 | [src/gwt/src/org/rstudio/studio/client/workbench/exportplot/ExportPlotConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/exportplot/ExportPlotConstants_zh_CN.properties) |
| R058 | [src/gwt/src/org/rstudio/studio/client/workbench/model/ModelConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/model/ModelConstants_zh_CN.properties) |
| R059 | [src/gwt/src/org/rstudio/studio/client/workbench/prefs/PrefsConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/prefs/PrefsConstants_zh_CN.properties) |
| R060 | [src/gwt/src/org/rstudio/studio/client/workbench/prefs/model/UserPrefsAccessorConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/prefs/model/UserPrefsAccessorConstants_zh_CN.properties) |
| R061 | [src/gwt/src/org/rstudio/studio/client/workbench/prefs/model/UserStateAccessorConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/prefs/model/UserStateAccessorConstants_zh_CN.properties) |
| R062 | [src/gwt/src/org/rstudio/studio/client/workbench/snippets/SnippetsConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/snippets/SnippetsConstants_zh_CN.properties) |
| R063 | [src/gwt/src/org/rstudio/studio/client/workbench/ui/UIConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/ui/UIConstants_zh_CN.properties) |
| R064 | [src/gwt/src/org/rstudio/studio/client/workbench/views/buildtools/ViewBuildtoolsConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/buildtools/ViewBuildtoolsConstants_zh_CN.properties) |
| R065 | [src/gwt/src/org/rstudio/studio/client/workbench/views/chat/ChatConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/chat/ChatConstants_zh_CN.properties) |
| R066 | [src/gwt/src/org/rstudio/studio/client/workbench/views/choosefile/ChoosefileConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/choosefile/ChoosefileConstants_zh_CN.properties) |
| R067 | [src/gwt/src/org/rstudio/studio/client/workbench/views/connections/ConnectionsConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/connections/ConnectionsConstants_zh_CN.properties) |
| R068 | [src/gwt/src/org/rstudio/studio/client/workbench/views/console/ConsoleConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/console/ConsoleConstants_zh_CN.properties) |
| R069 | [src/gwt/src/org/rstudio/studio/client/workbench/views/edit/EditConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/edit/EditConstants_zh_CN.properties) |
| R070 | [src/gwt/src/org/rstudio/studio/client/workbench/views/environment/ViewEnvironmentConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/ViewEnvironmentConstants_zh_CN.properties) |
| R071 | [src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportColTypesMenuMyUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportColTypesMenuMyUiBinderImplGenMessages_zh_CN.properties) |
| R072 | [src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportDataImportUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportDataImportUiBinderImplGenMessages_zh_CN.properties) |
| R073 | [src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportFileChooserMyUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportFileChooserMyUiBinderImplGenMessages_zh_CN.properties) |
| R074 | [src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiCsvLocaleBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiCsvLocaleBinderImplGenMessages_zh_CN.properties) |
| R075 | [src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiCsvMyUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiCsvMyUiBinderImplGenMessages_zh_CN.properties) |
| R076 | [src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiSavMyUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiSavMyUiBinderImplGenMessages_zh_CN.properties) |
| R077 | [src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiXlsMyUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiXlsMyUiBinderImplGenMessages_zh_CN.properties) |
| R078 | [src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/ImportFileSettingsDialogMyBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/ImportFileSettingsDialogMyBinderImplGenMessages_zh_CN.properties) |
| R079 | [src/gwt/src/org/rstudio/studio/client/workbench/views/environment/view/MemoryUsageSummaryBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/view/MemoryUsageSummaryBinderImplGenMessages_zh_CN.properties) |
| R080 | [src/gwt/src/org/rstudio/studio/client/workbench/views/files/FilesConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/files/FilesConstants_zh_CN.properties) |
| R081 | [src/gwt/src/org/rstudio/studio/client/workbench/views/help/HelpConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/help/HelpConstants_zh_CN.properties) |
| R082 | [src/gwt/src/org/rstudio/studio/client/workbench/views/history/HistoryConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/history/HistoryConstants_zh_CN.properties) |
| R083 | [src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/JobsConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/JobsConstants_zh_CN.properties) |
| R084 | [src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/view/JobLauncherControlsJobLauncherControlsUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/view/JobLauncherControlsJobLauncherControlsUiBinderImplGenMessages_zh_CN.properties) |
| R085 | [src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/view/JobOutputPanelJobOutputPanelUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/view/JobOutputPanelJobOutputPanelUiBinderImplGenMessages_zh_CN.properties) |
| R086 | [src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/view/JobQuitControlsJobQuitControlsUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/view/JobQuitControlsJobQuitControlsUiBinderImplGenMessages_zh_CN.properties) |
| R087 | [src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/view/JobsListJobsListUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/view/JobsListJobsListUiBinderImplGenMessages_zh_CN.properties) |
| R088 | [src/gwt/src/org/rstudio/studio/client/workbench/views/output/OutputConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/output/OutputConstants_zh_CN.properties) |
| R089 | [src/gwt/src/org/rstudio/studio/client/workbench/views/output/find/FindInFilesDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/output/find/FindInFilesDialogBinderImplGenMessages_zh_CN.properties) |
| R090 | [src/gwt/src/org/rstudio/studio/client/workbench/views/packages/PackagesConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/packages/PackagesConstants_zh_CN.properties) |
| R091 | [src/gwt/src/org/rstudio/studio/client/workbench/views/plots/PlotsConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/plots/PlotsConstants_zh_CN.properties) |
| R092 | [src/gwt/src/org/rstudio/studio/client/workbench/views/presentation/PresentationConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/presentation/PresentationConstants_zh_CN.properties) |
| R093 | [src/gwt/src/org/rstudio/studio/client/workbench/views/presentation2/Presentation2Constants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/presentation2/Presentation2Constants_zh_CN.properties) |
| R094 | [src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties) |
| R095 | [src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/EditorsTextConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/EditorsTextConstants_zh_CN.properties) |
| R096 | [src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/rmd/ChunkContextToolbarChunkContextToolbarUiBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/rmd/ChunkContextToolbarChunkContextToolbarUiBinderImplGenMessages_zh_CN.properties) |
| R097 | [src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/spelling/SpellingDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/spelling/SpellingDialogBinderImplGenMessages_zh_CN.properties) |
| R098 | [src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/ui/NewRMarkdownDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/ui/NewRMarkdownDialogBinderImplGenMessages_zh_CN.properties) |
| R099 | [src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/ui/NewRdDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/ui/NewRdDialogBinderImplGenMessages_zh_CN.properties) |
| R100 | [src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/visualmode/dialogs/VisualModeConfirmDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/visualmode/dialogs/VisualModeConfirmDialogBinderImplGenMessages_zh_CN.properties) |
| R101 | [src/gwt/src/org/rstudio/studio/client/workbench/views/terminal/TerminalConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/terminal/TerminalConstants_zh_CN.properties) |
| R102 | [src/gwt/src/org/rstudio/studio/client/workbench/views/tutorial/TutorialConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/tutorial/TutorialConstants_zh_CN.properties) |
| R103 | [src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/ViewVcsConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/ViewVcsConstants_zh_CN.properties) |
| R104 | [src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/dialog/SizeWarningWidgetBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/dialog/SizeWarningWidgetBinderImplGenMessages_zh_CN.properties) |
| R105 | [src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/git/dialog/GitReviewPanelBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/git/dialog/GitReviewPanelBinderImplGenMessages_zh_CN.properties) |
| R106 | [src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/svn/SVNResolveDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/svn/SVNResolveDialogBinderImplGenMessages_zh_CN.properties) |
| R107 | [src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/svn/commit/SVNCommitDialogBinderImplGenMessages_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/svn/commit/SVNCommitDialogBinderImplGenMessages_zh_CN.properties) |
| R108 | [src/gwt/src/org/rstudio/studio/client/workbench/views/viewer/ViewerConstants_zh_CN.properties](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/viewer/ViewerConstants_zh_CN.properties) |
| R109 | [src/node/desktop/src/assets/locales/zh-CN.json](../translations/2026.09.0%2B174/upstream/src/node/desktop/src/assets/locales/zh-CN.json) |

显示映射和消费路径登记：

- [source-patches.json](../translations/2026.09.0%2B174/source-patches.json)
- [source-additions.json](../translations/2026.09.0%2B174/source-additions.json)
- [panmirror-source.json](../translations/2026.09.0%2B174/panmirror-source.json)
- [rmd-template-i18n-contract.json](../translations/2026.09.0%2B174/rmd-template-i18n-contract.json)
- [translation-provenance.json](../translations/2026.09.0%2B174/translation-provenance.json)
- [translation-policy.json](../translations/2026.09.0%2B174/translation-policy.json)
- [review-decisions.json](../translations/2026.09.0%2B174/review-decisions.json)
- [version.json](../translations/2026.09.0%2B174/version.json)
- [RmdTemplateDisplayNames.java](../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rmarkdown/ui/RmdTemplateDisplayNames.java)

## 有意保留英文或技术标识

以下仅列代表性内容，不作为漏翻，也不计作中文翻译条目：

- 技术、产品、语言及格式名称：`R`、`R Markdown`、`Python`、`Git`、`GitHub`、`TeX`、`PDF`、`Word`、`Notebook`、`Knitr`、`YAML`、`HTML`、`CSS`、`JavaScript`。
- 快捷键与编辑器身份：`Alt+` 等组合键、原始 command ID 和 scope；显示名可中文，身份不变。
- Visual Editor 搜索：代码语言与英文插入关键词继续用于匹配，例如 `Bash`，不把搜索兼容性误作翻译缺漏。
- R 数据与类型：`NA`、`<dbl>`、`<int>`、`<chr>`、`<lgl>`、对象名、用户列名和用户单元格值不翻。
- R Markdown 内部身份：`html_document`、`word_document`、`pdf_document`、YAML key、option_list 原始值不翻。
- 可执行文件名与内部定位：`rstudio.exe`、`rsession`、CSS class、DOM id、preference key 不翻。

## 统计与完整性

### 现场统计

| 项目 | 数量 |
| --- | ---: |
| 实际扫描语言资源 | 109 |
| GWT zh_CN properties | 108 |
| Electron zh-CN.json | 1 |
| 资源精确 key 总数（区分大小写） | 6760 |
| 仓库逐 key 英中追踪记录 | 6759 |
| 已核实 display translation entries | 6462 |
| 中文已收录、英文依据待核对 | 1 |
| 合并的完全重复映射 | 0 |
| 未纳入中文配对表的保留英文/技术模板等条目 | 297 |
| 检查的 source patches | 418 |
| 检查的 Panmirror patches | 22 |
| 检查的 source-additions Java helper | 1 |
| 无法解析的资源文件 | 0 |
| 同一精确来源 + key 对应多个中文 | 0 |
| 同英文跨 key 的不同中文组（保留各上下文） | 76 |
| 英中占位符 token 多重集合不一致 | 0 |

本目录不机械合并不同 key；同英文跨语境的不同中文不自动判为冲突。统计由实际解析结果计算，不直接使用 provenance 头部历史计数。6760 个精确 key = 6462 个已配对条目 + 297 个保留项 + 1 个待核对项。

### 已发现的精确 key 追踪缺口

当前资源中以下 key 的中文确实存在，但当前仓库未提供该**精确大小写 key** 的英文配对记录。不能用另一个 key 的英文猜填，因此单列、不伪称已核实配对；未改任何翻译。

| 英文 | 简体中文 | Key / 标识 | 来源 |
| --- | --- | --- | --- |
| （当前仓库未记录此精确 key 的英文，待核对） | <code>文件“{0}”没有可供比较的更改。</code> | <code>noChangesToFileToDiff</code> | [GWT R103][R103] |

`noChangesToFileToDiff` 与 `noChangesToFileTODiff` 是区分大小写的两个 key，中文分别为“文件“{0}”没有可供比较的更改。”和“文件“{0}”没有可比较的更改。”。后者已有英文配对、已收入版本控制章节；前者仅在本节记录。两者不是同一精确 key 的冲突，但存在大小写近似 key 的追踪歧义。

### 现有措辞待确认项

仓库现有政策将 `anchorHomeText`（Home → 主页）和 `authoringRPresentationsHelpDesc`（Guide to using R Markdown → R 演示文稿制作指南）标为非阻塞措辞待确认；目录按实现原样收录，不据英文重译。`shellText`、`webSocketsText` 仍为技术英文显示，未计作中文翻译。

### 覆盖与格式检查

- 每条已配对中文与实际 zh_CN properties / zh-CN.json 解码值完全一致；英文与仓库逐 key 记录一致，登记的英文增补亦逐 key 核对。
- source patches、Panmirror patches 与 source-additions 的显示逻辑使用上述 locale 常量，不重复把 technical anchor、raw identity 或行为性补丁记成翻译。
- 每个应收录资源 key 恰有一条主表记录；不同来源的相同英文未删除。唯一精确 key 英文追踪缺口已在上节单列，没有静默丢弃中文。
- Markdown 管道符、HTML 字符和反斜杠均转义；动态占位符不改格式、不替换为固定数字。
- 未翻译或修改用户数据、列名、R 类型、命令 ID、preference key、YAML 或内部身份。

[R001]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/CoreClientConstants_zh_CN.properties
[R002]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/hyperlink/HyperlinkConstants_zh_CN.properties
[R003]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/widget/InfoBarMyBinderImplGenMessages_zh_CN.properties
[R004]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/widget/ProgressDialogBinderImplGenMessages_zh_CN.properties
[R005]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/widget/ShortcutInfoPanelShortcutInfoPanelUiBinderImplGenMessages_zh_CN.properties
[R006]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/widget/SlideLabelSlideLabelUiBinderImplGenMessages_zh_CN.properties
[R007]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/core/client/widget/VimKeyInfoVimKeyInfoUiBinderImplGenMessages_zh_CN.properties
[R008]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/StudioClientConstants_zh_CN.properties
[R009]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/application/StudioClientApplicationConstants_zh_CN.properties
[R010]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/application/ui/AboutDialogContentsAboutDialogContentsUiBinderImplGenMessages_zh_CN.properties
[R011]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/application/ui/AboutOpenSourceDialogBinderImplGenMessages_zh_CN.properties
[R012]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/application/ui/LauncherSessionStatusLauncherSessionStatusUiBinderImplGenMessages_zh_CN.properties
[R013]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/application/ui/RTimeoutOptionsRTimeoutOptionsUiBinderImplGenMessages_zh_CN.properties
[R014]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/application/ui/WarningBarBinderImplGenMessages_zh_CN.properties
[R015]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/common/StudioClientCommonConstants_zh_CN.properties
[R016]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/common/rstudioapi/ui/AskSecretDialogBinderImplGenMessages_zh_CN.properties
[R017]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/dataviewer/DataViewerConstants_zh_CN.properties
[R018]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/htmlpreview/HtmlPreviewConstants_zh_CN.properties
[R019]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/notebook/CompileNotebookOptionsDialogBinderImplGenMessages_zh_CN.properties
[R020]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/notebook/NotebookConstants_zh_CN.properties
[R021]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/notebookv2/CompileNotebookv2OptionsDialogBinderImplGenMessages_zh_CN.properties
[R022]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/notebookv2/NotebookV2Constants_zh_CN.properties
[R023]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/packrat/PackratConstants_zh_CN.properties
[R024]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/palette/PaletteConstants_zh_CN.properties
[R025]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/panmirror/PanmirrorConstants_zh_CN.properties
[R026]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorEditAttrWidgetBinderImplGenMessages_zh_CN.properties
[R027]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorEditListDialogBinderImplGenMessages_zh_CN.properties
[R028]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorEditRawDialogBinderImplGenMessages_zh_CN.properties
[R029]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorInsertCiteDialogBinderImplGenMessages_zh_CN.properties
[R030]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/panmirror/dialogs/PanmirrorInsertTableDialogBinderImplGenMessages_zh_CN.properties
[R031]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/plumber/PlumberConstants_zh_CN.properties
[R032]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/projects/StudioClientProjectConstants_zh_CN.properties
[R033]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/projects/ui/prefs/buildtools/BuildToolsRoxygenOptionsDialogBinderImplGenMessages_zh_CN.properties
[R034]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/quarto/QuartoConstants_zh_CN.properties
[R035]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/renv/RenvConstants_zh_CN.properties
[R036]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rmarkdown/RMarkdownConstants_zh_CN.properties
[R037]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rmarkdown/ui/RmdTemplateChooserRmdTemplateChooserUiBinderImplGenMessages_zh_CN.properties
[R038]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rmarkdown/ui/RmdTemplateOptionsWidgetRmdTemplateOptionsWidgetUiBinderImplGenMessages_zh_CN.properties
[R039]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rmarkdown/ui/ShinyDocumentWarningShinyDocumentWarningUiBinderImplGenMessages_zh_CN.properties
[R040]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/RsconnectConstants_zh_CN.properties
[R041]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/AppNameTextboxAppNameTextboxUiBinderImplGenMessages_zh_CN.properties
[R042]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/PublishRPubsPublishRPubsUiBinderImplGenMessages_zh_CN.properties
[R043]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectAuthWaitRSConnectAuthWaitUiBinderImplGenMessages_zh_CN.properties
[R044]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectCloudAccountRSConnectCloudAccountUiBinderImplGenMessages_zh_CN.properties
[R045]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectDeployRSConnectDeployUiBinderImplGenMessages_zh_CN.properties
[R046]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectLocalAccountRSConnectLocalAccountUiBinderImplGenMessages_zh_CN.properties
[R047]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/rsconnect/ui/RSConnectNewAccountRSConnectNewAccountUiBinderImplGenMessages_zh_CN.properties
[R048]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/server/ServerConstants_zh_CN.properties
[R049]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/shiny/ShinyConstants_zh_CN.properties
[R050]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/vcs/VCSConstants_zh_CN.properties
[R051]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/ClientWorkbenchConstants_zh_CN.properties
[R052]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/addins/AddinsConstants_zh_CN.properties
[R053]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/assistant/AssistantUIConstants_zh_CN.properties
[R054]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/codesearch/CodeSearchConstants_zh_CN.properties
[R055]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/commands/CmdConstants_zh_CN.properties
[R056]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/commands/MenuConstants_zh_CN.properties
[R057]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/exportplot/ExportPlotConstants_zh_CN.properties
[R058]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/model/ModelConstants_zh_CN.properties
[R059]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/prefs/PrefsConstants_zh_CN.properties
[R060]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/prefs/model/UserPrefsAccessorConstants_zh_CN.properties
[R061]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/prefs/model/UserStateAccessorConstants_zh_CN.properties
[R062]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/snippets/SnippetsConstants_zh_CN.properties
[R063]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/ui/UIConstants_zh_CN.properties
[R064]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/buildtools/ViewBuildtoolsConstants_zh_CN.properties
[R065]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/chat/ChatConstants_zh_CN.properties
[R066]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/choosefile/ChoosefileConstants_zh_CN.properties
[R067]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/connections/ConnectionsConstants_zh_CN.properties
[R068]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/console/ConsoleConstants_zh_CN.properties
[R069]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/edit/EditConstants_zh_CN.properties
[R070]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/ViewEnvironmentConstants_zh_CN.properties
[R071]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportColTypesMenuMyUiBinderImplGenMessages_zh_CN.properties
[R072]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportDataImportUiBinderImplGenMessages_zh_CN.properties
[R073]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportFileChooserMyUiBinderImplGenMessages_zh_CN.properties
[R074]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiCsvLocaleBinderImplGenMessages_zh_CN.properties
[R075]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiCsvMyUiBinderImplGenMessages_zh_CN.properties
[R076]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiSavMyUiBinderImplGenMessages_zh_CN.properties
[R077]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/DataImportOptionsUiXlsMyUiBinderImplGenMessages_zh_CN.properties
[R078]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/dataimport/ImportFileSettingsDialogMyBinderImplGenMessages_zh_CN.properties
[R079]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/environment/view/MemoryUsageSummaryBinderImplGenMessages_zh_CN.properties
[R080]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/files/FilesConstants_zh_CN.properties
[R081]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/help/HelpConstants_zh_CN.properties
[R082]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/history/HistoryConstants_zh_CN.properties
[R083]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/JobsConstants_zh_CN.properties
[R084]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/view/JobLauncherControlsJobLauncherControlsUiBinderImplGenMessages_zh_CN.properties
[R085]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/view/JobOutputPanelJobOutputPanelUiBinderImplGenMessages_zh_CN.properties
[R086]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/view/JobQuitControlsJobQuitControlsUiBinderImplGenMessages_zh_CN.properties
[R087]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/jobs/view/JobsListJobsListUiBinderImplGenMessages_zh_CN.properties
[R088]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/output/OutputConstants_zh_CN.properties
[R089]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/output/find/FindInFilesDialogBinderImplGenMessages_zh_CN.properties
[R090]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/packages/PackagesConstants_zh_CN.properties
[R091]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/plots/PlotsConstants_zh_CN.properties
[R092]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/presentation/PresentationConstants_zh_CN.properties
[R093]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/presentation2/Presentation2Constants_zh_CN.properties
[R094]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/ViewsSourceConstants_zh_CN.properties
[R095]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/EditorsTextConstants_zh_CN.properties
[R096]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/rmd/ChunkContextToolbarChunkContextToolbarUiBinderImplGenMessages_zh_CN.properties
[R097]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/spelling/SpellingDialogBinderImplGenMessages_zh_CN.properties
[R098]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/ui/NewRMarkdownDialogBinderImplGenMessages_zh_CN.properties
[R099]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/ui/NewRdDialogBinderImplGenMessages_zh_CN.properties
[R100]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/source/editors/text/visualmode/dialogs/VisualModeConfirmDialogBinderImplGenMessages_zh_CN.properties
[R101]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/terminal/TerminalConstants_zh_CN.properties
[R102]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/tutorial/TutorialConstants_zh_CN.properties
[R103]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/ViewVcsConstants_zh_CN.properties
[R104]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/dialog/SizeWarningWidgetBinderImplGenMessages_zh_CN.properties
[R105]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/git/dialog/GitReviewPanelBinderImplGenMessages_zh_CN.properties
[R106]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/svn/SVNResolveDialogBinderImplGenMessages_zh_CN.properties
[R107]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/vcs/svn/commit/SVNCommitDialogBinderImplGenMessages_zh_CN.properties
[R108]: ../translations/2026.09.0%2B174/upstream/src/gwt/src/org/rstudio/studio/client/workbench/views/viewer/ViewerConstants_zh_CN.properties
[R109]: ../translations/2026.09.0%2B174/upstream/src/node/desktop/src/assets/locales/zh-CN.json
