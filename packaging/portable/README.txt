RStudio 2026.09.0+174 简体中文本地化 r3（非官方，Windows）

推荐安装：
1. 自行准备未经修改的官方 RStudio Desktop 2026.09.0+174。
2. 完整解压 ZIP，双击 Install-RStudioZhCn.cmd。
3. 按提示确认官方目录与新的中文版目录。找不到时可用文件夹选择器。

无需另装 PowerShell 7，也无需输入路径命令，不需要管理员权限。
入口优先使用已有 pwsh.exe，否则使用 Windows 自带 PowerShell 5.1。
CMD 仅为本次安装子进程设置 ExecutionPolicy Bypass，以运行下载的未签名脚本；
不修改用户/机器执行策略，组织强制策略仍须遵守。
请只运行本项目可信 Release，并先核对发布页 SHA256SUMS.txt。

安装器校验官方版本、关键文件、包清单及每个补丁哈希；不覆盖任何现有目录。
安装完成后可选择创建当前用户桌面快捷方式及立即启动。
首次打开后在 Tools / 工具 → Global Options / 全局选项选择简体中文并重启。
卸载：退出中文版后删除其独立目录，官方原版不受影响。

高级 CLI（Windows PowerShell 5.1 或 PowerShell 7）：
powershell.exe -NoProfile -File .\Install-RStudioZhCn.ps1 -SourcePath "C:\Program Files\RStudio" -DestinationPath "$env:LOCALAPPDATA\Programs\RStudio-2026.09.0+174-zh_CN"
在 PowerShell 中执行此命令；如下载标记导致脚本被阻止，请使用上述 CMD 入口。
完整给出两个路径时不出现交互提示；无参数时进入简单安装模式。
构建项目仍需要 PowerShell 7，但安装已发布汉化包不需要另外安装 PowerShell 7。

r3 修复 r2 恢复数据查看器标签页时可能白屏的问题，翻译和双击安装体验不变。Visual Editor / 快捷插入主要使用英文关键词。
部分技术名及边缘内容保留英文。官方多 Source 列连续 zoom/restore 的 pane 暂时
不可见行为仍存在，重启可恢复；本项目未修改此上游行为。
本项目与 Posit 无隶属或官方认可关系。许可及对应源码见 LICENSE、NOTICE、SOURCE。
