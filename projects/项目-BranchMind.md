BranchMind 是一个把 AI 学习对话组织成可分支知识画布，并支持 PDF 阅读与问答的 Web 应用。

GitHub: https://github.com/torres953190868/MindGPT

# BranchMind（仓库名 MindGPT）

- 类型：个人产品项目
- 时间：2025—至今（用户确认年份与持续状态；起始月份未提供。GitHub 仓库记录为 2026-05—2026-08）
- 组织 / 角色：个人仓库 / 项目维护者；具体协作分工待核实

## 背景与目标

把复杂知识学习中的线性 AI 对话改为可连接、可回溯的节点；同时让用户上传文字型 PDF，并基于文档内容提问。

## 本人行动

- 仓库实现了基于 Next.js、React 和 React Flow 的分支节点画布，支持从节点继续主线或创建分支，并保存项目与节点状态。
- 仓库实现了 PDF 文本解析、按页与章节分块、向量化、检索和带页码引用的问答流程；使用 Supabase 与 pgvector 保存文档和向量，生产索引任务接入 Vercel Queues。
- 仓库还包含课程生成与学习流程、Agent 运行记录，以及 Vitest、Playwright 和 CI 配置。
- 以上为仓库可核实的实现范围；本人对各模块的具体设计与编码分工待核实。

## 结果与影响

- 形成可运行的产品代码和公开仓库，仓库提供线上地址；实际用户量、使用效果和线上可用性待核实。
- PDF 问答当前针对可选择文本的单份 PDF；README 明确说明暂不支持扫描件 OCR、图片理解和跨文档问答。

## 技术与能力

- Next.js、React、TypeScript、React Flow、Supabase、pgvector、PDF.js、Vercel Queues、Vitest、Playwright。
- AI 对话交互、RAG 流程、数据建模与产品开发。

## 相关链接与证明材料

- [项目说明与 PDF 阅读流程](https://github.com/torres953190868/MindGPT/blob/main/README.md)
- [RAG 服务端代码](https://github.com/torres953190868/MindGPT/tree/main/lib/server/rag)
- [课程生成 Agent 代码](https://github.com/torres953190868/MindGPT/tree/main/lib/agents/curriculum-builder)
- [测试目录](https://github.com/torres953190868/MindGPT/tree/main/tests)
- [仓库标注的线上地址](https://branchmind-blush.vercel.app)
