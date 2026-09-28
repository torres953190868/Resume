# 大众汽车中国 / VCTC

用于保存大众汽车集团（中国）及 VCTC 目标岗位的 JD、定制简历和投递记录。

## 当前目标岗位

1. [AI](JD-研发类-AI.md)：首选，重点匹配 LLM、Agent、RAG、模型微调与评测经历。
2. [软件开发及应用](JD-研发类-软件开发及应用.md)：第二方向，重点匹配全栈开发、数据库、测试、部署与工程自动化经历。

当前清单中的岗位仍属于方向级信息；取得具体 JD 后，应先核对职责、技术栈和学历要求，再调整对应简历。投递入口规则：每 3 个月最多申请 5 个职位（2026-09-22 核实，以投递系统提示为准）。

## 中文定制简历

- [研发类：AI 简历 PDF](简历-研发类-AI.pdf)：LLM / Agent 应用与评测版本，按 BranchMind、MiniCodingAgent、LLM-as-a-Judge、LoRA Text-to-SQL 展示项目，强调 RAG、工具调用、Agent 闭环、LoRA 微调、执行式评估与错误分析；未写成自动驾驶算法岗或大模型训练岗。
- [研发类：软件开发及应用简历 PDF](简历-研发类-软件开发及应用.pdf)：AI 应用全栈 / 软件工程版本，按 BranchMind、Api-ChatBox、PixelDock-AI、MiniCodingAgent 展示项目，强调 Next.js / React / TypeScript、Python、API 与模型接入、数据库、异步任务、Docker、测试与 CI；未声称嵌入式或车载底层开发经验。
- Typst 源文件：[研发类：AI](简历-研发类-AI.typ)、[研发类：软件开发及应用](简历-研发类-软件开发及应用.typ)，沿用一汽-大众车联网简历的单页排版，页眉方向标注分别为“研发类 · AI 方向”和“研发类 · 软件开发及应用方向”。

### 事实来源

| 简历内容 | 原始记录 |
| --- | --- |
| BranchMind | [项目记录](../../../projects/项目-BranchMind.md) |
| MiniCodingAgent | [项目记录](../../../projects/项目-MiniCodingAgent.md) |
| LLM-as-a-Judge | [项目记录](../../../projects/项目-LLM-as-a-Judge偏差实验.md) |
| LoRA Text-to-SQL | [项目记录](../../../projects/项目-Text-to-SQL-LLM.md) |
| Api-ChatBox | [项目记录](../../../projects/项目-Api-ChatBox.md) |
| PixelDock-AI | [项目记录](../../../projects/项目-PixelDock-AI.md) |
| 云南众锐汽车服务有限公司 | [工作记录](../../../experiences/工作-云南众锐汽车服务有限公司.md) |
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
