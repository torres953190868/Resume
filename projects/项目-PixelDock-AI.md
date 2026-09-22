PixelDock-AI 是一个在网页悬浮窗口中提供划词翻译、词汇保存和社交平台文案生成的浏览器扩展。

GitHub: https://github.com/torres953190868/PixelDock-AI

# PixelDock-AI

- 类型：个人浏览器扩展项目
- 时间：待核实（GitHub 仓库记录为 2026-05）
- 组织 / 角色：个人仓库 / 项目维护者；具体协作分工待核实

## 背景与目标

减少阅读网页时切换翻译工具的操作，并把查过的词与原句、来源页面一起保存。

## 本人行动

- 仓库使用 WXT、React 和 TypeScript 开发内容脚本与后台脚本；通过划词、快捷键或右键菜单触发翻译。
- 用 Shadow DOM 挂载可拖动、可调整尺寸的悬浮面板，隔离页面样式与扩展界面。
- 通过 DeepSeek 接口生成翻译解释或 X、小红书、Reddit 文案，并使用 Zod 校验返回结构。
- 使用 Chrome 本地存储保存设置、词汇和文案草稿，支持词汇搜索与 JSON/CSV 导出；个人具体编码分工待核实。

## 结果与影响

- 仓库包含扩展构建与 QA 脚本；是否已发布到扩展商店、实际用户量及运行效果待核实。

## 技术与能力

- WXT、React、TypeScript、Chrome Extension API、Shadow DOM、Zod、LLM 接口集成。

## 相关链接与证明材料

- [内容脚本与交互入口](https://github.com/torres953190868/PixelDock-AI/blob/main/entrypoints/content.tsx)
- [后台消息处理](https://github.com/torres953190868/PixelDock-AI/blob/main/entrypoints/background.ts)
- [模型调用与结构校验](https://github.com/torres953190868/PixelDock-AI/blob/main/src/lib/llm.ts)
- [词汇与草稿存储](https://github.com/torres953190868/PixelDock-AI/blob/main/src/lib/storage.ts)
