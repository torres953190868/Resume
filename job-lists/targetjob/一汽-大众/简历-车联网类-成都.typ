// 面向一汽-大众车联网类（数字化开发方向）。事实来源和待核实项见同目录 README.md。
#set document(title: "周洪宇｜一汽-大众车联网类简历", author: "周洪宇")
#set page(paper: "a4", margin: (x: 1.5cm, y: 1.35cm))
#set text(font: ("PingFang SC", "Noto Serif CJK SC"), size: 11pt, fill: rgb("253441"), lang: "zh")
#set par(leading: 0.69em, spacing: 0.28em, justify: false)
#set list(indent: 0pt, body-indent: 0.95em, spacing: 0.36em)
#set heading(numbering: none)

#let ink = rgb("173650")
#let accent = rgb("287486")
#let muted = rgb("667481")
#let hairline = rgb("CCD9DF")
#let panel = rgb("F3F7F8")

#show heading.where(level: 1): it => block(above: 0.48cm, below: 0.18cm, breakable: false)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 0.26cm,
    align: horizon,
    text(size: 12.5pt, weight: "bold", fill: ink, it.body),
    line(length: 100%, stroke: (paint: hairline, thickness: 0.6pt)),
  )
]

#let school(name, degree, date) = block(above: 0.10cm, below: 0.16cm, breakable: false)[
  #grid(
    columns: (1fr, auto),
    column-gutter: 0.4cm,
    text(size: 11pt, weight: "bold", fill: ink, name),
    text(size: 9.6pt, fill: muted, date),
  )
  #text(size: 9.8pt, fill: muted, degree)
]

#let project(name, date, stack, url) = block(above: 0.40cm, below: 0.12cm, breakable: false)[
  #grid(
    columns: (1fr, auto),
    column-gutter: 0.4cm,
    [#text(weight: "bold", size: 11pt, fill: ink, name) #h(0.2cm) #text(size: 8.8pt, fill: accent)[#link(url)[项目仓库 ↗]]],
    text(size: 9.5pt, fill: muted, date),
  )
  #text(size: 9.5pt, fill: muted, stack)
  #v(0.08cm)
]

#grid(
  columns: (1fr, auto),
  column-gutter: 0.8cm,
  align: (left + horizon, right + horizon),
  [
    #text(size: 26pt, weight: "bold", fill: ink)[周洪宇]
    #h(0.35cm)
    #text(size: 10pt, fill: muted)[HONGYU ZHOU]
  ],
  [#text(size: 10pt, weight: "medium", fill: accent)[车联网类 · 数字化开发方向]],
)
#v(0.19cm)
#line(length: 100%, stroke: (paint: accent, thickness: 1.4pt))
#v(0.25cm)
#grid(
  columns: (auto, auto, 1fr),
  column-gutter: 0.55cm,
  text(size: 10pt, fill: muted, link("tel:+8613648893659", "+86 136 4889 3659")),
  text(size: 10pt, fill: muted, link("mailto:953190868@qq.com", "953190868@qq.com")),
  align(right, text(size: 10pt, fill: muted)[#link("https://github.com/torres953190868")[github.com/torres953190868]]),
)

= 教育背景
#school("西交利物浦大学", "计算机科学 · 研究型硕士（MRes）· 全英文授课", "2025.09—2027.08（预计）")
#school("温州肯恩大学", "计算机科学与技术 · 理学学士 · 全英文授课", "2019.09—2023.06")

= 专业技能
#block(fill: panel, radius: 3pt, inset: (x: 0.26cm, y: 0.27cm))[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 0.55cm,
    [#text(size: 9.6pt, weight: "bold", fill: ink)[大模型应用与评测] #linebreak() Agent Loop、RAG、LoRA 微调、SQL 执行式评估、A/B 对照],
    [#text(size: 9.6pt, weight: "bold", fill: ink)[开发与数据] #linebreak() Python、TypeScript、SQL、Next.js / React、SQLite、Supabase / pgvector],
  )
  #v(0.08cm)
  #text(size: 9.4pt, fill: muted)[测试与工程：数据结构与算法、Vitest、Playwright、CI 配置　｜　英语：雅思（IELTS）总分 6.0]
]

= 项目与研究经历
#project("MiniCodingAgent｜Python 编程代理", "2025—至今", "Python · OpenAI SDK 兼容接口 · 工具调用", "https://github.com/torres953190868/MiniCodingAgent")
- 实现最多 *10 轮 Agent Loop*，将工具执行结果回填对话，由模型决定下一步操作。
- 提供文件读写与脚本运行工具，设置路径和命令边界；离线演示覆盖代码修改与测试。

#project("LLM-as-a-Judge｜自动评判偏差实验", "2025—至今", "Python · MT-Bench · A/B 对照 · 统计分析", "https://github.com/torres953190868/llm-as-judge")
- 基于 MT-Bench 设计回答长度和展示位置实验，控制语义、质量、位置与提示词条件。
- 用 Python 编写自动化评测与统计脚本；长度实验保留 *21 问 / 84 trial / 252 有效判定*，#linebreak()
  位置实验 456 有效判定，A 位置决定性胜率 53.3%（p = 0.1876），未见显著位置偏差。

#project("BranchMind｜分支式 AI 学习与 PDF 问答", "2025—至今", "Next.js · React Flow · Supabase / pgvector · Vercel Queues", "https://github.com/torres953190868/MindGPT")
- 以可连接、可回溯的节点组织学习对话，支持分支延续并持久化项目与节点状态。
- 完成 PDF 分块、向量检索和*带页码引用的问答*；pgvector 存储向量，生产索引接入 Vercel Queues。

#project("LoRA Text-to-SQL｜模型微调与执行式评估", "2025—至今", "PyTorch · Transformers · PEFT / LoRA · SQLite", "https://github.com/torres953190868/text-to-sql-llm")
- LoRA 微调 SmolLM2-360M-Instruct 做 GeoQuery Text-to-SQL，Schema 提示 + 可训练参数约 *3.50%*。
- SQLite 执行式评估：开发集（zero-shot）完全匹配率 *69.39%*（较基础模型提示 *+34.70 个百分点*）；#linebreak()
  测试集（few-shot）*38.35%*、可执行率 *90.32%*，并保留语法/语义错误做错误分析。

= 工作经历
#grid(columns: (1fr, auto), column-gutter: 0.4cm,
  text(weight: "bold", size: 11pt, fill: ink)[云南众锐汽车服务有限公司],
  text(size: 9.5pt, fill: muted)[2023.09—2024.09],
)
- 参与经营例会与业务复盘，梳理 4S 店整车、售后与金融保险毛利口径；#linebreak()
  *独立设计三级毛利核算系统*的数据模型、权限与报表。

= 论文发表
#text(size: 10pt)[*第二作者* · #link("https://doi.org/10.5815/ijmsc.2025.01.01")[红黑树双黑节点移除的扩展符号运算教学模型]]
#linebreak()
#text(size: 9.1pt, fill: muted)[An Extended Symbolic-Arithmetic Model for Teaching Double-Black Removal with Rotation in Red-Black Trees. _International Journal of Mathematical Sciences and Computing_, 11(1): 1–30, 2025.04.]
