# 大众汽车中国 / VCTC

用于保存大众汽车集团（中国）及 VCTC 目标岗位的 JD、定制简历和投递记录。

## 当前目标岗位

1. [AI](JD-研发类-AI.md)：首选，重点匹配 LLM、Agent、RAG、模型微调与评测经历。
2. [软件开发及应用](JD-研发类-软件开发及应用.md)：第二方向，重点匹配全栈开发、数据库、测试、部署与工程自动化经历。

当前清单中的岗位仍属于方向级信息；取得具体 JD 后，应先核对职责、技术栈和学历要求，再调整对应简历。投递入口规则：每 3 个月最多申请 5 个职位（2026-09-22 核实，以投递系统提示为准）。

## 中文定制简历

- [研发类：AI 简历 PDF](简历-研发类-AI.pdf)：LLM / Agent 应用与评测版本，按 BranchMind、LoRA Text-to-SQL、LLM-as-a-Judge、MiniCodingAgent 展示项目，强调 RAG、LoRA 微调、执行式评估、错误分析与 Agent 闭环。
- [研发类：软件开发及应用简历 PDF](简历-研发类-软件开发及应用.pdf)：AI 应用全栈 / 软件工程版本，按 BranchMind、Api-ChatBox、PixelDock-AI、MiniCodingAgent 展示项目，强调 Next.js / React / TypeScript、Python、API 与模型接入、数据库、异步任务、Docker、测试与 CI；未声称嵌入式或车载底层开发经验。
- Typst 源文件：[研发类：AI](简历-研发类-AI.typ)、[研发类：软件开发及应用](简历-研发类-软件开发及应用.typ)，采用[共享排版](../简历样式.typ)，页眉方向标注分别为“研发类 · AI 方向”和“研发类 · 软件开发及应用方向”。

### 2026-10-03 修订

- AI 版将 LoRA 和 Judge 提前；LoRA 明确不含示例的推理提示与 49 条开发样本，在统一评测条件下对比未微调基线 2.04% 与微调结果 73.47%，另列 SQL 可执行率 91.84%。
- 软件版保留四个项目，减少功能罗列，突出异步索引、Vitest / Playwright / CI、数据库与服务端配额检查、Docker Compose、Shadow DOM 样式隔离与 Zod 结构校验。
- 参照一汽-大众统一无衬线字体、页边距和模块层级，保持单页与 11pt 正文；模块顺序调整为教育、项目、工作、论文、技能，技能框禁止跨页拆分。
- AI 版 Judge 区分 84 / 152 条对照试验与 252 / 456 次有效判定，并保留 21 个问题与二项检验 p = 0.1876；技能栏补充 PyTorch、Transformers、PEFT。
- 两版 MiniCodingAgent 强调工具结果回填与连续决策，10 轮仅作为执行上限；离线演示明确采用固定模型响应。
- 软件版明确用户与模型两层每日配额、PDF 索引任务，以及已核实的 PDF 上传 / 索引 / 查询 API 测试和课程创建 / 生成 / 发布端到端测试；技能栏增加 Spring Boot / MySQL、PostgreSQL / pgvector。
- 两版论文均保留研究说明；最新页底文字留白为 AI 版 13.9 mm、软件版 9.6 mm，逐份编译并检查 PNG。后续复用见[简历排版参考](../简历排版参考.md)。
- 用户于 2026-10-03 确认三级毛利系统实际开发年份为 2023，已同步工作记录与索引。
- 按用户要求保留现有简历公司名称，不调整工作经历公司记录。

### 事实来源

| 简历内容 | 原始记录 |
| --- | --- |
| BranchMind | [项目记录](../../../projects/项目-BranchMind.md) |
| MiniCodingAgent | [项目记录](../../../projects/项目-MiniCodingAgent.md) |
| LLM-as-a-Judge | [项目记录](../../../projects/项目-LLM-as-a-Judge偏差实验.md) |
| LoRA Text-to-SQL | [项目记录](../../../projects/项目-Text-to-SQL-LLM.md) |
| Api-ChatBox | [项目记录](../../../projects/项目-Api-ChatBox.md) |
| PixelDock-AI | [项目记录](../../../projects/项目-PixelDock-AI.md) |
| 工作经历（公司名称沿用现有简历） | [工作记录](../../../experiences/工作-云南金鼎汽车贸易有限公司.md) |
| 英语成绩 | [雅思记录](../../../skills/语言能力-雅思.md) |
| Java | [技能记录](../../../skills/技能-Java.md) |
| 2025 年第二作者论文 | [论文记录](../../../publications/论文-2025-扩展符号运算.md) |
| 2022 年第四作者论文 | [论文记录](../../../publications/论文-2022-双黑节点符号运算.md) |

### 编译

在经历库根目录执行：

```sh
resume/.local/bin/typst compile --root . --font-path resume/fonts 'job-lists/targetjob/大众汽车中国-VCTC/简历-研发类-AI.typ' 'job-lists/targetjob/大众汽车中国-VCTC/简历-研发类-AI.pdf'
resume/.local/bin/typst compile --root . --font-path resume/fonts 'job-lists/targetjob/大众汽车中国-VCTC/简历-研发类-软件开发及应用.typ' 'job-lists/targetjob/大众汽车中国-VCTC/简历-研发类-软件开发及应用.pdf'
```
