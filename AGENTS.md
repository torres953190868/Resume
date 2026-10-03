# 经历库路由

按目标岗位寻找经历时，先看下面的一句话介绍，再打开对应文件读取完整事实。个人资料与简历写作约定见 [rules.md](rules.md)，经历记录格式与事实边界见 [经历库记录规范.md](经历库记录规范.md)。

## 路由维护规则

- 每次向本文件夹或其子文件夹写入新的经历、项目、技能或岗位资料时，必须在同一次修改中更新本 `AGENTS.md`，添加对应的路由和一句话介绍。
- 移动、重命名或删除已有记录时，也必须同步更新本索引中的路径和说明，确保路由始终有效。

## 简历规则与个人资料

- [rules.md](rules.md)：记录已提供的姓名、联系方式、本科与研究生教育、留学生身份与全英文授课等个人资料，以及写简历时的使用约定。
- [网申个人信息.md](网申个人信息.md)：网申表单通用的个人敏感信息源（证件号、出生日期、家庭关系、考试成绩单编号及扫描件清单等），长期复用；已加入 .gitignore 不入库。
- [网申个人材料/](网申个人材料/)：存放已加入 .gitignore 的网申扫描件；雅思 Academic 成绩单位于 [网申个人材料/雅思成绩单扫描件.pdf](网申个人材料/雅思成绩单扫描件.pdf)。
- [网申个人材料/投递包-2026-10-03/](网申个人材料/投递包-2026-10-03/)：保存大众中国 VCTC AI、CARIAD 软件开发及应用、CARIZON 数据闭环平台后端三份上传用 PDF 与来源校验清单，已被 .gitignore 忽略。
- [经历库记录规范.md](经历库记录规范.md)：规定经历库文件结构、事实记录格式、按岗位改写简历的边界，并附有一汽-大众 2027 校招网申待补项清单。

## 工作经历

- [experiences/工作-云南金鼎汽车贸易有限公司.md](experiences/工作-云南金鼎汽车贸易有限公司.md)：家族企业工作经历，独立设计三级毛利核算系统并完成前后端开发，现有仓库为 Java 21 + Spring Boot 3 + MySQL 与 Vue 3 + TypeScript；用户于 2026-10-03 确认系统实际开发年份为 2023，仓库提交时间（2026-06）另行记录；无正式岗位名称。

## 语言与编程技能

- [skills/语言能力-雅思.md](skills/语言能力-雅思.md)：记录 2024-10-16 Academic IELTS，总分 6.0，听力 6.5、阅读/写作/口语各 6.0；成绩单扫描件保存在已忽略的网申个人材料目录。
- [skills/技能-Java.md](skills/技能-Java.md)：记录用户确认可列入简历的 Java 技能及三级毛利系统的 Spring Boot / MySQL 项目证据，熟练程度与使用年限仍待确认。

## 目标岗位资料

- [job-lists/大众系2027校招岗位清单.xlsx](job-lists/大众系2027校招岗位清单.xlsx)：汇总大众系 2027 届校招岗位，供筛选目标岗位和定制简历时参考。
- [job-lists/targetjob/README.md](job-lists/targetjob/README.md)：按目标公司组织岗位 JD、定制简历和投递记录的工作区总览。
- [job-lists/targetjob/投递准备.md](job-lists/targetjob/投递准备.md)：2026-10-03 大众中国 VCTC AI、CARIAD 软件与 CARIZON 后端三岗已成功投递，记录岗位、简历、系统志愿顺序和填写来源；一汽-大众已由用户确认投递。
- [job-lists/targetjob/简历样式.typ](job-lists/targetjob/简历样式.typ)：大众中国 AI、软件开发及应用与 CARIZON 数据闭环平台三份简历的共享排版，参照一汽-大众采用无衬线字体、统一页边距与模块间距，并保持技能框完整分页；事实内容保留在各简历正文中。
- [job-lists/targetjob/简历排版参考.md](job-lists/targetjob/简历排版参考.md)：记录参照一汽-大众优化三份简历的排版与即时验证方法，并附 JD 内容审查、工程证据补强、评测口径改写及待核实项，供后续岗位简历复用。
- [job-lists/targetjob/一汽-大众/README.md](job-lists/targetjob/一汽-大众/README.md)：保存一汽-大众成都车联网岗位的材料。
- [job-lists/targetjob/一汽-大众/投递记录.md](job-lists/targetjob/一汽-大众/投递记录.md)：用户于 2026-10-03 确认已投递成都车联网，实际提交日期和招聘系统回执尚未记录。
- [job-lists/targetjob/一汽-大众/JD-车联网类-成都.md](job-lists/targetjob/一汽-大众/JD-车联网类-成都.md)：记录一汽-大众成都车联网岗位的云端 AI、LLM Harness、Agent 平台职责及任职要求。
- [job-lists/targetjob/一汽-大众/简历-车联网类-成都.typ](job-lists/targetjob/一汽-大众/简历-车联网类-成都.typ)：面向一汽-大众车联网数字化开发方向的中文定制简历，按 BranchMind、Judge、MiniCodingAgent、LoRA 展示项目，技能栏含 Java，并列出第二作者与第四作者两篇红黑树论文；四项均确认为个人项目，具体职责与行动仍待补充；[导出 PDF](job-lists/targetjob/一汽-大众/简历-车联网类-成都.pdf)。
- [job-lists/targetjob/大众汽车中国-VCTC/README.md](job-lists/targetjob/大众汽车中国-VCTC/README.md)：保存大众中国统一入口的两份材料；2026-10-03 核实 AI 归属 VCTC，软件开发及应用归属 CARIAD，目录沿用原路径。
- [job-lists/targetjob/大众汽车中国-VCTC/投递记录.md](job-lists/targetjob/大众汽车中国-VCTC/投递记录.md)：2026-10-03 两岗已成功投递，系统显示 CARIAD 软件第 1 志愿、VCTC AI 第 2 志愿；记录职位 ID、附件与成功回执，本次未修改志愿顺序。
- [job-lists/targetjob/大众汽车中国-VCTC/JD-研发类-AI.md](job-lists/targetjob/大众汽车中国-VCTC/JD-研发类-AI.md)：记录 VCTC 研发类 AI 方向已公布的信息、待确认项与简历准备重点。
- [job-lists/targetjob/大众汽车中国-VCTC/JD-研发类-软件开发及应用.md](job-lists/targetjob/大众汽车中国-VCTC/JD-研发类-软件开发及应用.md)：记录大众中国统一入口中归属 CARIAD 的软件开发及应用方向，2026-10-03 页面职责仍为“暂无”。
- [job-lists/targetjob/大众汽车中国-VCTC/简历-研发类-AI.typ](job-lists/targetjob/大众汽车中国-VCTC/简历-研发类-AI.typ)：按 BranchMind、LoRA、Judge、MiniCodingAgent 展示 AI 应用与研究，明确 LoRA 无示例推理、49 条开发样本的基线 2.04% 与结果 73.47%、SQL 可执行率 91.84%，区分 Judge 试验和判定次数，技能含 PyTorch / Transformers / PEFT；[导出 PDF](job-lists/targetjob/大众汽车中国-VCTC/简历-研发类-AI.pdf)。
- [job-lists/targetjob/大众汽车中国-VCTC/简历-研发类-软件开发及应用.typ](job-lists/targetjob/大众汽车中国-VCTC/简历-研发类-软件开发及应用.typ)：按 BranchMind、Api-ChatBox、PixelDock-AI、MiniCodingAgent 展示软件工程项目，明确 PDF 索引、用户 / 模型配额、RAG API 与课程端到端测试、工具执行反馈，技能含 Spring Boot / MySQL 与 PostgreSQL / pgvector；[导出 PDF](job-lists/targetjob/大众汽车中国-VCTC/简历-研发类-软件开发及应用.pdf)。
- [job-lists/targetjob/CARIZON-酷睿程/README.md](job-lists/targetjob/CARIZON-酷睿程/README.md)：保存 CARIZON 材料；每人限投 2 岗，主选数据闭环平台，第二志愿槽位保留（候选：数据及应用测试或云服务）。
- [job-lists/targetjob/CARIZON-酷睿程/JD-数据闭环平台开发工程师-后端.md](job-lists/targetjob/CARIZON-酷睿程/JD-数据闭环平台开发工程师-后端.md)：2026-10-03 官网可直接查看的上海 / 北京校招后端岗位，记录数据闭环平台职责、后端与数据库及容器要求、两岗限制和毕业资格口径。
- [job-lists/targetjob/CARIZON-酷睿程/投递记录.md](job-lists/targetjob/CARIZON-酷睿程/投递记录.md)：2026-10-03 已成功投递数据闭环平台后端，系统显示第 1 志愿、“投递简历”；意向上海、北京并接受城市调剂，第二志愿保留。
- [job-lists/targetjob/CARIZON-酷睿程/简历-数据闭环平台.typ](job-lists/targetjob/CARIZON-酷睿程/简历-数据闭环平台.typ)：按 BranchMind、Api-ChatBox、Judge、LoRA 展示后端与数据项目，明确 PostgreSQL 向量索引、API / 课程测试、用户 / 模型配额、Judge 试验数量和 LoRA 开发集基线对比，技能含 Spring Boot / MySQL；[导出 PDF](job-lists/targetjob/CARIZON-酷睿程/简历-数据闭环平台.pdf)。

## 论文发表

- [publications/论文-2022-双黑节点符号运算.md](publications/论文-2022-双黑节点符号运算.md)：2022 年发表于 Educational Dimension 的红黑树双黑节点符号运算教学论文，Hongyu Zhou 为第四作者；[原文 PDF](publications/论文-2022-双黑节点符号运算.pdf)。
- [publications/论文-2025-扩展符号运算.md](publications/论文-2025-扩展符号运算.md)：2025 年发表于 International Journal of Mathematical Sciences and Computing 的红黑树双黑节点扩展符号运算论文，Hongyu Zhou 为第二作者；[原文 PDF](publications/论文-2025-扩展符号运算.pdf)。

## 简历模板

- [resume/src/chinese.typ](resume/src/chinese.typ)：中文 Typst 简历模板入口；当前仍是仓库示例，定制时按 [rules.md](rules.md) 和 [经历库记录规范.md](经历库记录规范.md) 选取已核实事实。
- [resume/src/english.typ](resume/src/english.typ)：英文 Typst 简历模板入口；当前仍是仓库示例，需基于同一事实来源改写。

## AI 应用与研究

- [projects/项目-BranchMind.md](projects/项目-BranchMind.md)：分支知识画布、课程 Agent 与 PDF 问答应用，附已核实的 PDF 上传 / 索引 / 查询 API 测试、课程端到端测试与 CI 配置证据。
- [projects/项目-Api-ChatBox.md](projects/项目-Api-ChatBox.md)：提供多模型聊天、会话保存和管理员管理功能的 Web 应用。
- [projects/项目-PixelDock-AI.md](projects/项目-PixelDock-AI.md)：在网页悬浮窗口中提供划词翻译、词汇保存和社交平台文案生成的浏览器扩展。
- [projects/项目-MiniCodingAgent.md](projects/项目-MiniCodingAgent.md)：通过模型工具调用读取、修改和运行项目代码的轻量级 Python 编程代理。
- [LoRA Text-to-SQL 项目](projects/项目-Text-to-SQL-LLM.md)：使用 LoRA 微调 SmolLM2，将自然语言问题转换为可执行 SQL，并通过 SQLite 执行结果评估生成质量。
- [projects/项目-LLM-as-a-Judge偏差实验.md](projects/项目-LLM-as-a-Judge偏差实验.md)：基于 MT-Bench 检验 LLM 自动评判是否受回答长度和展示位置影响的试点研究。

## 网站与开发工具

- [projects/项目-Element-Inspector-Helper.md](projects/项目-Element-Inspector-Helper.md)：快速定位网页元素并复制 CSS 选择器的前端调试工具。
