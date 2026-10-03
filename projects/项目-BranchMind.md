BranchMind 是一个把 AI 学习对话组织成可分支知识画布，并支持联网检索资料、编写教材及 PDF 阅读与问答的 Web 应用。

GitHub: https://github.com/torres953190868/MindGPT

# BranchMind（仓库名 MindGPT）

- 类型：个人产品项目
- 时间：2025—至今（用户确认年份与持续状态；起始月份未提供。GitHub 仓库记录为 2026-05—2026-08）
- 组织 / 角色：个人仓库 / 个人项目；具体模块与本人行动仍待补充。

## 背景与目标

把复杂知识学习中的线性 AI 对话改为可连接、可回溯的节点；同时让用户上传文字型 PDF，并基于文档内容提问。

## 本人行动

- 仓库实现了基于 Next.js、React 和 React Flow 的分支节点画布，支持从节点继续主线或创建分支，并保存项目与节点状态。
- 仓库实现了 PDF 文本解析、按页与章节分块、向量化、检索和带页码引用的问答流程；使用 Supabase 与 pgvector 保存文档和向量，生产索引任务接入 Vercel Queues。
- 仓库还包含课程生成与学习流程、Agent 运行记录，以及 Vitest、Playwright 和 CI 配置。
- 2026-10-03 进一步核对测试源码：Vitest 包含 PDF 上传 API、索引任务调度与查询 API 测试，检查重复文档、索引状态、入队失败及查询限流等情形；Playwright 课程端到端测试包含创建、生成、发布、加入课程和 Tutor 问答流程。CI 配置执行类型检查、Lint、Vitest、构建、Playwright 和 smoke 测试；本次只核对实现与配置，未运行完整应用测试，不记录通过率。
- 以上为仓库可核实的实现范围；用户于 2026-09-28 确认这是个人项目，各模块的具体设计与本人行动仍待补充。
- 用户于 2026-09-27 补充确认：课程生成 Agent 的主要功能是联网检索资料并编写教材；具体检索服务、教材生成步骤与个人编码分工仍待补充。

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
- [PDF 上传 API 测试](https://github.com/torres953190868/MindGPT/blob/main/tests/server/rag/upload-route.test.ts)
- [PDF 索引任务测试](https://github.com/torres953190868/MindGPT/blob/main/tests/server/rag/jobs.test.ts)
- [PDF 查询 API 测试](https://github.com/torres953190868/MindGPT/blob/main/tests/server/rag/query-route.test.ts)
- [课程端到端测试](https://github.com/torres953190868/MindGPT/blob/main/e2e/curriculum.spec.ts)
- [CI 配置](https://github.com/torres953190868/MindGPT/blob/main/.github/workflows/ci.yml)
- [仓库标注的线上地址](https://branchmind-blush.vercel.app)
