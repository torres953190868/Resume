// 面向 CARIZON 酷睿程数据闭环平台（北京 / 上海）。事实来源和待核实项见同目录 README.md。
#set document(title: "周洪宇｜CARIZON 数据闭环平台简历", author: "周洪宇")
#import "../简历样式.typ": *
#show: resume-style

#grid(
  columns: (1fr, auto),
  column-gutter: 0.8cm,
  align: (left + horizon, right + horizon),
  [
    #text(size: 26pt, weight: "bold", fill: ink)[周洪宇]
    #h(0.35cm)
    #text(size: 10pt, fill: muted)[HONGYU ZHOU]
  ],
  [#text(size: 10pt, weight: "medium", fill: accent)[数据闭环平台]],
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

= 项目与研究经历
#project("BranchMind｜AI 学习与教材生成应用", "2025—至今", "Next.js · TypeScript · PostgreSQL / pgvector（Supabase）· Vercel Queues", "https://github.com/torres953190868/MindGPT")
- 构建分支对话与教材生成应用，保存项目及节点状态；PDF 问答支持*页码引用*。
- 构建 PDF 解析、按页分块与向量检索流程，以 *PostgreSQL / pgvector* 存储文档及向量；#box[*Vercel Queues*] 异步处理 PDF 索引任务。
- 使用 *Vitest* 测试 PDF 上传、索引与查询 API，*Playwright* 覆盖课程创建、生成与发布；CI 集成类型检查、构建与测试。

#project("Api-ChatBox｜多模型聊天与管理后台", "2026", "Next.js · TypeScript · SQLite / Drizzle · Docker Compose", "https://github.com/torres953190868/Api-ChatBox")
- 构建支持登录、会话保存及 *SSE 流式响应*的多模型聊天应用。
- 服务端按用户与模型校验每日配额；管理端配置用户、模型及 API Key。
- 以 *SQLite / Drizzle* 保存用户、会话和消息；提供 *Docker Compose* 部署与初始化脚本。

#project("LLM-as-a-Judge｜大模型裁判偏差研究", "2025—至今", "Python · MT-Bench · 自动化评测 · 统计分析", "https://github.com/torres953190868/llm-as-judge")
- 基于 MT-Bench 设计长度对照与位置交换实验，筛选问题并检查回答语义与质量。
- 使用 Python 串联模型调用、结果解析与统计检验，形成自动化评测流程。
- 长度实验：*21 题、84 条对照试验、252 次有效判定*；位置交换：*152 条试验、456 次有效判定*。
- 本配置下未观察到稳定总体长度偏好；位置偏差二项检验 p = 0.1876，未达显著水平。

#project("LoRA Text-to-SQL｜面向 SQL 生成的大模型微调", "2025—至今", "PyTorch · Transformers · PEFT / LoRA · SQLite", "https://github.com/torres953190868/text-to-sql-llm")
- 预处理 GeoQuery 数据、设计 Schema 提示，以 LoRA 微调 SmolLM2-360M-Instruct 生成 SQL。
- 以 SQLite 执行预测 SQL 与标准 SQL，比较查询结果集，并分类分析语法与语义错误。
- GeoQuery 开发集 *49 条样本*，推理提示*不含示例*；同条件下结果集完全匹配率由未微调基线 *2.04%* 提升至 *73.47%*。

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
#publication("第二作者", "红黑树双黑节点移除的扩展符号运算方法", "International Journal of Mathematical Sciences and Computing", "2025.04", "https://doi.org/10.5815/ijmsc.2025.01.01", description: [研究涉及节点旋转与重新着色的双黑节点移除方法，用于讲解红黑树删除后的平衡恢复。])
#publication("第四作者", "红黑树删除与再平衡的符号运算教学方法", "Educational Dimension", "2022.12", "https://doi.org/10.31812/educdim.7629", description: [用符号加减运算描述双黑节点移除与黑高恢复过程，帮助理解红黑树删除算法。])

= 专业技能
#skills((
  ("编程基础：", [Python、SQL、TypeScript、Java；数据结构与算法]),
  ("后端与存储：", [Spring Boot / Next.js、MySQL、PostgreSQL / pgvector、SQLite / Drizzle]),
  ("数据与任务：", [PDF 解析与分块、向量检索、异步索引、Python 自动化评测]),
  ("工程实践：", [Docker Compose、Vitest / Playwright、CI]),
  ("英语能力：", [IELTS 6.0；本科及硕士全英文授课]),
))
