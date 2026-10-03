// 面向大众汽车中国 / VCTC 研发类（AI 方向），LLM / Agent 应用与评测版本。事实来源和待核实项见同目录 README.md。
#set document(title: "周洪宇｜大众汽车中国-VCTC 研发类 AI 简历", author: "周洪宇")
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
  [#text(size: 10pt, weight: "medium", fill: accent)[研发类 · AI 方向]],
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
#project("BranchMind｜AI 学习与教材生成应用", "2025—至今", "Next.js · React Flow · RAG · pgvector · Vercel Queues", "https://github.com/torres953190868/MindGPT")
- 面向自主学习，提供分支对话、联网检索与教材生成，以及 PDF 问答功能。
- 以 React Flow 节点组织并保存学习对话；课程 Agent 联网检索并编写教材，保留运行记录。
- 实现 PDF 分块、向量检索与*带页码引用的问答*；以 pgvector 存储向量，异步处理 PDF 索引。

#project("LoRA Text-to-SQL｜面向 SQL 生成的大模型微调", "2025—至今", "PyTorch · Transformers · PEFT / LoRA · SQLite", "https://github.com/torres953190868/text-to-sql-llm")
- 使用 LoRA 微调 SmolLM2-360M-Instruct，结合数据库 Schema 提示生成 SQL；#box[*仅对目标 SQL 计算损失*]，#box[可训练参数占 *3.50%*]。
- 以 SQLite 执行预测与标准 SQL，比较查询结果集并分析语法、语义错误；统一提示、解码与评分条件对比未微调基线。
- GeoQuery 开发集 *49 条样本*，推理提示*不含示例*：结果集完全匹配率从基线 *2.04%* 提升至 *73.47%*，SQL 可执行率 *91.84%*。

#project("LLM-as-a-Judge｜大模型裁判偏差研究", "2025—至今", "Python · MT-Bench · 自动化评测 · 统计分析", "https://github.com/torres953190868/llm-as-judge")
- 基于 MT-Bench 设计长度对照与位置交换实验，检查样本语义与质量，评估裁判偏差。
- 使用 Python 串联模型调用、结果解析与统计检验，形成自动化评测流程。
- 长度实验：*21 题、84 条对照试验、252 次有效判定*；位置交换：*152 条试验、456 次有效判定*。
- 本配置下未观察到稳定总体长度偏好；位置偏差二项检验 p = 0.1876，未达显著水平。

#project("MiniCodingAgent｜Python 编程 Agent", "2025—至今", "Python · OpenAI SDK 兼容接口 · 工具调用 · Agent Loop", "https://github.com/torres953190868/MiniCodingAgent")
- 构建 Python 编程 Agent，提供文件读写与脚本执行工具；将结果回填模型，支持#box[*连续工具调用与决策*]，调用上限为 10 轮。
- 设置路径与命令边界检查；固定模型响应的离线演示验证读取、修改与测试执行。

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
  ("编程基础：", [Python、TypeScript、SQL、Java；数据结构与算法]),
  ("大模型应用：", [RAG、Agent 工具调用、Prompt 设计]),
  ("模型训练与评测：", [PyTorch、Transformers、PEFT / LoRA；执行式评估与统计分析]),
  ("应用开发：", [Next.js / React、SQLite、PostgreSQL / pgvector（Supabase）]),
  ("英语能力：", [IELTS 6.0；本科及硕士全英文授课]),
))
