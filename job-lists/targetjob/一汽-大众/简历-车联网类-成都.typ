// 面向一汽-大众车联网类（数字化开发方向）。事实来源和待核实项见同目录 README.md。
#set document(title: "周洪宇｜一汽-大众车联网类简历", author: "周洪宇")
#set page(paper: "a4", margin: (x: 1.5cm, y: 1.0cm))
#set text(font: ("PingFang SC", "Noto Serif CJK SC"), size: 11pt, fill: rgb("253441"), lang: "zh")
#set par(leading: 0.69em, spacing: 0.28em, justify: false)
#set list(indent: 0pt, body-indent: 0.95em, spacing: 0.28em)
#set heading(numbering: none)

#let ink = rgb("173650")
#let accent = rgb("287486")
#let muted = rgb("667481")
#let hairline = rgb("CCD9DF")
#let panel = rgb("F3F7F8")

#show heading.where(level: 1): it => block(above: 0.38cm, below: 0.14cm, breakable: false)[
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

#let project(name, date, stack, url) = block(above: 0.30cm, below: 0.10cm, breakable: false)[
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
  text(size: 10pt, fill: muted)[电话：#link("tel:+8613648893659", "+86 136 4889 3659")],
  text(size: 10pt, fill: muted)[邮箱：#link("mailto:953190868@qq.com", "953190868@qq.com")],
  align(right, text(size: 10pt, fill: muted)[GitHub：#link("https://github.com/torres953190868")[github.com/torres953190868]]),
)

= 教育背景
#school("西交利物浦大学", "计算机科学 · 研究型硕士（MRes）· 全英文授课", "2025.09—2027.07（预计）")
#school("温州肯恩大学", "计算机科学与技术 · 理学学士 · 全英文授课", "2019.09—2023.06")

= 专业技能
#block(fill: panel, radius: 3pt, inset: (x: 0.26cm, y: 0.27cm))[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 0.18cm,
    row-gutter: 0.10cm,
    text(weight: "bold", fill: ink)[编程基础：],
    [Python、Java、TypeScript、SQL；数据结构与算法],
    text(weight: "bold", fill: ink)[大模型应用：],
    [Agent 工具调用、Prompt 设计、RAG、LoRA 微调、自动化评测],
    text(weight: "bold", fill: ink)[应用开发：],
    [Next.js / React、SQLite、Supabase / pgvector],
    text(weight: "bold", fill: ink)[英语能力：],
    [IELTS 6.0；本科及硕士全英文授课],
  )
]

= 项目与研究经历
#project("BranchMind｜AI 学习与教材生成应用", "2025—至今", "Next.js · React Flow · pgvector · Vercel Queues", "https://github.com/torres953190868/MindGPT")
- 面向自主学习场景，提供联网搜集资料与教材生成、分支式学习对话和 PDF 问答功能。
- 实现课程生成 Agent，联网检索资料并编写教材、留存运行记录；以分支节点组织并保存学习对话。
- 实现 PDF 分块、向量检索与*带页码引用的问答*；pgvector 存储向量，生产索引接入 Vercel Queues。

#project("LLM-as-a-Judge｜大模型裁判偏差研究", "2025—至今", "Python · MT-Bench · 自动化评测 · 统计分析", "https://github.com/torres953190868/llm-as-judge")
- 基于 MT-Bench，检验回答长度与展示顺序是否影响大模型裁判的判断，设计长度对照与位置交换实验。
- 使用 Python 编写模型调用、结果解析和统计分析脚本，检查长度实验样本的语义与质量，形成可复现的评测流程。
- 长度实验覆盖 21 个问题、*252 次有效判定*，位置实验获得 *456 次有效判定*；本次试点未观察到稳定的总体长度偏好，位置偏差检验未达显著水平。

#project("MiniCodingAgent｜Python 编程 Agent", "2025—至今", "Python · OpenAI SDK 兼容接口 · 工具调用", "https://github.com/torres953190868/MiniCodingAgent")
- 构建轻量级编程 Agent，通过模型调用工具完成文件读取、代码修改和 Python 脚本运行。
- 实现*工具执行结果回填与连续决策*，设置路径及命令边界检查；离线演示覆盖代码修改与测试。

#project("LoRA Text-to-SQL｜面向 SQL 生成的大模型微调", "2025—至今", "PyTorch · Transformers · PEFT / LoRA · SQLite", "https://github.com/torres953190868/text-to-sql-llm")
- 使用 LoRA 微调 SmolLM2-360M-Instruct，将自然语言问题转换为 SQL；结合数据库结构设计提示，可训练参数约占 *3.50%*。
- 在 GeoQuery 开发集上，以 SQLite 执行查询验证生成结果：zero-shot 查询结果集完全匹配率为 *69.39%*，较未微调基线提升 *34.70 个百分点*，并对语法与语义错误分类分析。

// 为页尾的工作经历与论文增加局部留白。
#set par(leading: 0.88em)
#set list(spacing: 0.55em)

= 工作经历
#v(0.10cm)
#grid(columns: (1fr, auto), column-gutter: 0.4cm,
  text(weight: "bold", size: 11pt, fill: ink)[云南众锐汽车服务有限公司],
  text(size: 9.5pt, fill: muted)[2023.09—2024.09],
)
#v(0.10cm)
- 针对单车收益依赖 Excel 分散记录、月底汇总的问题，*独立设计三级毛利核算系统*并完成开发。
- 展示进销差、厂家补贴、保险与银行分成等单车收益明细，关联对应业务员，并支持总收益统计。

= 论文发表
#v(0.10cm)
#block(breakable: false, below: 0.55cm)[
  #text(size: 10pt)[*第二作者* · #link("https://doi.org/10.5815/ijmsc.2025.01.01")[红黑树双黑节点移除的扩展符号运算方法]]
  #linebreak()
  #text(size: 9.1pt, fill: muted)[_International Journal of Mathematical Sciences and Computing_，2025.04]
  #linebreak()
  #text(size: 9.6pt)[研究涉及节点旋转与重新着色的双黑节点移除方法，用于讲解红黑树删除后的平衡恢复。]
]
#block(breakable: false)[
  #text(size: 10pt)[*第四作者* · #link("https://doi.org/10.31812/educdim.7629")[红黑树删除与再平衡的符号运算教学方法]]
  #linebreak()
  #text(size: 9.1pt, fill: muted)[_Educational Dimension_，2022.12]
  #linebreak()
  #text(size: 9.6pt)[用符号加减运算描述双黑节点移除与黑高恢复过程，帮助理解红黑树删除算法。]
]
