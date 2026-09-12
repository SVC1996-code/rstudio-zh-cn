# RStudio 简体中文本地化

面向 Windows 用户的非官方 RStudio Desktop 简体中文本地化项目，也可以理解为社区维护的 **RStudio 中文版 / RStudio 汉化**。通过 RStudio 自身的国际化机制提供中文界面，方便学习、教学和科研使用。

严格适配 **RStudio Desktop 2026.08.1+195**，不保证兼容其他版本。本项目不代表 Posit 官方中文版。

![RStudio Desktop 2026.08.1+195 简体中文界面](assets/rstudio-zh-cn-main.png)

## 下载

[下载正式版：v2026.08.1+195-zh_CN](https://github.com/SVC1996-code/rstudio-zh-cn/releases/tag/v2026.08.1%2B195-zh_CN)

文件：`RStudio-2026.08.1+195-zh_CN.zip`

SHA-256：

```text
990525F6D89CBE18BA4B3B7C5057ABE7AB2980CB4C83C194A8557AD11B415593
```

这是版本锁定的前端补丁包，**不包含完整 RStudio**。请自行准备未经修改的对应官方 RStudio Desktop 2026.08.1+195。

## 快速安装

完整解压 ZIP，在解压后的顶层目录打开 **PowerShell 7**，运行：

```powershell
pwsh -NoProfile -File .\Install-RStudioZhCn.ps1 `
  -SourcePath "C:\Program Files\RStudio" `
  -DestinationPath "$env:LOCALAPPDATA\Programs\RStudio-2026.08.1+195-zh_CN"
```

按实际位置填写 `SourcePath`，`DestinationPath` 必须是尚不存在的目录。安装器校验版本与关键文件，从官方原版创建独立中文版目录，**不覆盖原版**。

启动新目录中的 `rstudio.exe`，在 Tools / 工具 → Global Options / 全局选项中选择“简体中文”，按提示重启。普通用户不需要源码或构建工具；详见[安装说明](docs/installation.md)。

## 主要特点

- GWT / Electron 简体中文界面。
- Visual Editor / Panmirror 中文化。
- R Markdown 模板与选项显示文本中文化。
- 不修改原生 `rstudio.exe`、`rsession`。
- 严格锁定版本，安装前校验 SHA-256。
- 保留必要技术名称与英文关键词搜索。

## 已知限制

- 仅支持 RStudio Desktop 2026.08.1+195，不能通用于其他版本。
- Visual Editor 的 `/` 快捷插入主要使用英文关键词；双语标题不代表完整支持中文或带空格搜索。
- 部分技术名称有意保留英文；少量边缘界面可能仍有英文。
- R、程序包、帮助文档和外部服务的内容不属于全部中文化范围。

## 卸载

退出中文版 RStudio，删除安装时指定的独立中文版目录即可，官方原版不受影响。

## 从源码构建

维护、构建、翻译和测试流程见[维护说明](docs/maintenance.md)，版本变化见[更新日志](CHANGELOG.md)，安全问题见[安全策略](SECURITY.md)。

## 许可与声明

本项目按 `AGPL-3.0-only` 维护。详见 [LICENSE](LICENSE)、[NOTICE](NOTICE)、[SOURCE](SOURCE)、[UPSTREAM.md](UPSTREAM.md) 和 [licenses/](licenses/)。

本项目由社区维护，与 Posit 无隶属关系，也未获得 Posit 官方授权、认可或背书。RStudio、Posit 及相关名称和商标属于其各自权利人。

Unofficial Simplified Chinese localization for RStudio Desktop 2026.08.1+195.
This project is community-maintained and is not affiliated with or endorsed by Posit.
