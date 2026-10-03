// 面向大众汽车中国统一入口 / CARIAD 研发类（软件开发及应用方向），AI 应用全栈 / 软件工程版本。事实来源和待核实项见同目录 README.md。
#set document(title: "周洪宇｜大众汽车中国-CARIAD 研发类软件开发及应用简历", author: "周洪宇")
#import "../简历样式.typ": *
#show: resume-style.with(leading: 1.05em, list-spacing: 0.75em, section-gap: 0.50cm)

#grid(
  columns: (1fr, auto),
  column-gutter: 0.8cm,
  align: (left + horizon, right + horizon),
  [
    #text(size: 26pt, weight: "bold", fill: ink)[周洪宇]
    #h(0.35cm)
    #text(size: 10pt, fill: muted)[HONGYU ZHOU]
  ],
  [#text(size: 10pt, weight: "medium", fill: accent)[研发类 · 软件开发及应用方向]],
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
#project("BranchMind｜AI 学习与教材生成应用", "2025—至今", "Next.js · React Flow · TypeScript · PostgreSQL / pgvector · Vercel Queues", "https://github.com/torres953190868/MindGPT")
- 构建分支式学习对话、教材生成与 PDF 问答应用，以 React Flow 节点保存对话状态。
- 实现 PDF 按页与章节分块、向量检索及*带页码引用的问答*，使用 pgvector 存储向量；#box[Vercel Queues] 异步处理 PDF 索引任务。
- 使用 *Vitest* 测试 PDF 上传、索引与查询 API，*Playwright* 覆盖课程创建、生成与发布；CI 集成类型检查、构建与测试。

#project("Api-ChatBox｜多模型聊天与管理后台", "2026", "Next.js · React · TypeScript · SQLite / Drizzle · Docker", "https://github.com/torres953190868/Api-ChatBox")
- 构建支持登录、会话保存与 *SSE 流式响应*的多模型聊天应用，支持消息编辑与重新生成。
- 服务端按用户与模型校验每日配额；管理端配置用户、模型及 API Key。
- 以 *SQLite / Drizzle* 保存用户、会话和消息；提供 *Docker Compose* 部署与初始化脚本。

#project("PixelDock-AI｜AI 翻译与文案浏览器扩展", "2026", "WXT · React / TypeScript · Shadow DOM · DeepSeek API · Zod", "https://github.com/torres953190868/PixelDock-AI")
- 开发划词翻译与文案生成扩展，支持划词、快捷键和右键菜单触发翻译；通过内容脚本与后台脚本处理网页交互和模型调用。
- 以 *Shadow DOM* 隔离网页与扩展样式，提供可拖动、可调整尺寸的悬浮面板。
- 使用 *Zod* 校验模型返回结构；Chrome 本地存储保存词汇与草稿，支持搜索及 JSON / CSV 导出。

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
  ("编程基础：", [TypeScript、Python、SQL、Java；数据结构与算法]),
  ("前端开发：", [Next.js / React、WXT / Chrome 扩展、Vue 3]),
  ("后端与存储：", [Spring Boot / Next.js、MySQL、PostgreSQL / pgvector、SQLite / Drizzle]),
  ("工程实践：", [SSE 流式响应、异步任务、Docker Compose、Vitest / Playwright、CI]),
  ("英语能力：", [IELTS 6.0；本科及硕士全英文授课]),
))
