// 基于根目录经历库，面向一汽-大众车联网类（数字化开发方向）。
// 事实来源、待补充项与编译方式见同目录 README.md。
#import "../../../resume/template/template.typ": resume, contact

#show: resume.with(
  "Hongyu Zhou",
  lang: "zh",
  font: "Noto Serif CJK SC",
  contacts: (
    contact("手机：待补充"),
    contact("邮箱：待补充"),
    contact("GitHub: torres953190868", dest: "https://github.com/torres953190868"),
  ),
)
#set text(size: 10.5pt)
#set par(leading: 0.55em, spacing: 0.5em)
#set list(indent: 0pt, body-indent: 0.9em, spacing: 0.4em)
#show heading.where(level: 1): set text(size: 11pt)
#show heading.where(level: 1): set block(above: 0.85em, below: 0.5em)

#let project(name, url, date, tech) = block(breakable: false, above: 0.75em, below: 0.4em)[
  #grid(columns: (1fr, auto), gutter: 0.8em,
    [#strong(name) #text(size: 8pt)[#link(url)[仓库]]],
    text(size: 9pt, date),
  )
  #text(size: 9pt, fill: rgb("444444"))[#tech]
]

#align(center)[*求职意向：一汽-大众 · 车联网类 · 数字化开发方向（成都）*]

= 教育背景
学校、学历、专业、起止年月及预计毕业时间：待补充。

= 专业技能
- *编程与工程：* 项目使用 Python、TypeScript、SQL；涉及 Next.js / React、SQLite、Supabase / pgvector，以及 Vitest、Playwright 与 CI 配置。
- *大模型应用与评测：* 工具调用与 Agent Loop、RAG 文档检索问答、Schema-aware Prompt、PEFT / LoRA 微调、SQL 执行式评估、A/B 对照与统计分析。
- *英语：* 雅思（IELTS）总分 6.0。

= 项目与研究经历
#project("MiniCodingAgent｜Python 编程代理", "https://github.com/torres953190868/MiniCodingAgent", "2026.09*", "个人项目维护者 · Python / OpenAI SDK 兼容接口 / 工具调用")
- 项目实现最多 *10 轮 Agent Loop*，将工具执行结果回填对话，由模型决定下一步操作，形成模型调用、工具执行与反馈的闭环。
- 提供文件列表、读取、覆盖写入和 Python 脚本运行四类工具，设置路径与命令边界检查；提供固定模型响应的离线演示，复现读取、修改和运行测试的完整流程。

#project("BranchMind｜分支式 AI 学习与 PDF 问答", "https://github.com/torres953190868/MindGPT", "2026.05 - 2026.08*", "个人项目维护者 · Next.js / React Flow / Supabase / pgvector / Vercel Queues")
- 项目以可连接、可回溯的节点组织 AI 学习对话，支持从节点延续主线或创建分支，并持久化项目与节点状态。
- 实现文字型 PDF 解析、按页与章节分块、向量化、检索及*带页码引用的问答*；以 Supabase / pgvector 保存文档和向量，生产索引任务接入 Vercel Queues。
- 仓库包含课程生成 Agent、运行记录及 Vitest / Playwright 测试与 CI 配置，形成可运行的产品代码。

#project("LLM-as-a-Judge｜自动评判偏差实验", "https://github.com/torres953190868/llm-as-judge", "2026.05 - 2026.09*", "研究项目 · 报告署名 Hongyu Zhou · Python / MT-Bench / A/B 对照 / 统计分析")
- 基于 FastChat MT-Bench 构建长度偏差与回答位置交换两条实验流程；长度实验包含样本筛选、回答加长、语义与质量检查，以及位置和提示词条件控制。
- 以 Python 脚本组织模型调用、判定解析、统计分析与绘图，提供复现说明和基础测试。长度实验保留 *21 个问题、84 条 trial、252 条有效判定*，长回答决定性胜率为 45.4%。
- 独立位置实验获得 456 条有效判定，A 位置决定性胜率 53.3%（p = 0.1876）；该试点未形成强位置偏差证据，结论限定于本次样本与配置。

#project("LoRA Text-to-SQL｜模型微调与执行式评估", "https://github.com/torres953190868/text-to-sql-llm", "2026.09*", "研究项目 · README 署名 Hongyu Zhou · PyTorch / Transformers / PEFT / SQLite")
- 项目使用 SmolLM2-360M-Instruct 与 GeoQuery 数据，保留 549 / 49 / 279 条训练、开发、测试划分；结合数据库 Schema 构建提示，在注意力投影层应用 LoRA，可训练参数约占 *3.50%*。
- 仅对目标 SQL 计算训练损失；通过 SQLite 执行预测与标准 SQL，计算结果集完全匹配率、可执行率及 F1，并保留语法与语义错误用于分析。
- 开发集（LoRA + zero-shot）结果集完全匹配率 *69.39%*；独立测试集（LoRA + few-shot）完全匹配率 *38.35%*、SQL 可执行率 *90.32%*，分别报告不同配置下的效果。

= 工作经历
#grid(columns: (1fr, auto), [*云南众锐汽车服务有限公司*], [2023.09 - 2024.09])
- 参与经营例会与业务复盘，了解 4S 店整车销售、售后、金融保险业务的毛利结构与门店数据口径；基于业务理解，*独立设计三级毛利核算系统*，覆盖数据模型、权限与报表设计。

= 论文发表
*第二作者*：An Extended Symbolic-Arithmetic Model for Teaching Double-Black Removal with Rotation in Red-Black Trees. _International Journal of Mathematical Sciences and Computing_, 11(1): 1-30, 2025.04. #link("https://doi.org/10.5815/ijmsc.2025.01.01")[DOI]

#v(0.4em)
#text(size: 8pt, fill: rgb("555555"))[
  \* 待完善稿：项目日期为仓库记录，实际起止时间及个人分工待核实；中文姓名、联系方式和完整教育背景待补充。
]
