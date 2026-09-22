Api-ChatBox 是一个支持多模型聊天、会话保存和管理员管理的 Web 聊天应用。

GitHub: https://github.com/torres953190868/Api-ChatBox

# Api-ChatBox

- 类型：个人全栈项目
- 时间：待核实（GitHub 仓库记录为 2026-04—2026-05）
- 组织 / 角色：个人仓库 / 项目维护者；具体协作分工待核实

## 背景与目标

提供可登录的模型聊天入口，并让管理员配置模型、用户、API Key 和使用配额。

## 本人行动

- 仓库基于 Next.js 和 React 实现聊天页面、会话与消息管理、流式响应、消息编辑与重新生成。
- 服务端按模型配置接入 Gemini、OpenAI 兼容接口等提供方；用 SQLite 和 Drizzle 保存用户、会话、消息及使用记录。
- 管理端提供用户、模型、用量和 API Key 配置；代码包含用户与模型每日配额检查。
- 提供 Docker Compose、初始化脚本和管理员创建脚本。上述为仓库可核实的实现；个人编码分工待核实。

## 结果与影响

- 仓库提供本地运行与 Docker 部署说明；实际部署情况、用户数和运行效果待核实。
- 用量代码使用字符数估算 token；不能将其表述为提供方返回的精确 token 统计。

## 技术与能力

- Next.js、React、TypeScript、SQLite、Drizzle ORM、SSE 流式响应、Docker。

## 相关链接与证明材料

- [项目 README](https://github.com/torres953190868/Api-ChatBox/blob/main/README.md)
- [聊天接口](https://github.com/torres953190868/Api-ChatBox/blob/main/app/api/chat/route.ts)
- [数据库结构](https://github.com/torres953190868/Api-ChatBox/blob/main/lib/schema.ts)
- [用量与配额逻辑](https://github.com/torres953190868/Api-ChatBox/blob/main/lib/usage.ts)
