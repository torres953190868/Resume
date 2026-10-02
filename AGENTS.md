# 经历库路由

按目标岗位寻找经历时，先看下面的一句话介绍，再打开对应文件读取完整事实。个人资料与简历写作约定见 [rules.md](rules.md)，经历记录格式与事实边界见 [经历库记录规范.md](经历库记录规范.md)。

## 路由维护规则

- 每次向本文件夹或其子文件夹写入新的经历、项目、技能或岗位资料时，必须在同一次修改中更新本 `AGENTS.md`，添加对应的路由和一句话介绍。
- 移动、重命名或删除已有记录时，也必须同步更新本索引中的路径和说明，确保路由始终有效。

## 简历规则与个人资料

- [rules.md](rules.md)：记录已提供的姓名、联系方式、本科与研究生教育、留学生身份与全英文授课等个人资料，以及写简历时的使用约定。
- [网申个人信息.md](网申个人信息.md)：网申表单通用的个人敏感信息源（证件号、出生日期、家庭关系、考试成绩单编号及扫描件清单等），长期复用；已加入 .gitignore 不入库。
- [网申个人材料/](网申个人材料/)：存放已加入 .gitignore 的网申扫描件；雅思 Academic 成绩单位于 [网申个人材料/雅思成绩单扫描件.pdf](网申个人材料/雅思成绩单扫描件.pdf)。
- [经历库记录规范.md](经历库记录规范.md)：规定经历库文件结构、事实记录格式、按岗位改写简历的边界，并附有一汽-大众 2027 校招网申待补项清单。

## 工作经历

- [experiences/工作-云南金鼎汽车贸易有限公司.md](experiences/工作-云南金鼎汽车贸易有限公司.md)：家族企业工作经历，针对 4S 店 Excel 分散核算问题，独立设计三级毛利核算系统并完成开发，展示单车收益明细、关联业务员与统计总收益；无正式岗位名称。

## 语言与编程技能

- [skills/语言能力-雅思.md](skills/语言能力-雅思.md)：记录 2024-10-16 Academic IELTS，总分 6.0，听力 6.5、阅读/写作/口语各 6.0；成绩单扫描件保存在已忽略的网申个人材料目录。
- [skills/技能-Java.md](skills/技能-Java.md)：记录用户确认可列入简历的 Java 技能，熟练程度和具体使用经历待补充。

## 目标岗位资料

- [job-lists/大众系2027校招岗位清单.xlsx](job-lists/大众系2027校招岗位清单.xlsx)：汇总大众系 2027 届校招岗位，供筛选目标岗位和定制简历时参考。
- [job-lists/targetjob/README.md](job-lists/targetjob/README.md)：按目标公司组织岗位 JD、定制简历和投递记录的工作区总览。
- [job-lists/targetjob/一汽-大众/README.md](job-lists/targetjob/一汽-大众/README.md)：保存一汽-大众成都车联网岗位的材料。
- [job-lists/targetjob/一汽-大众/JD-车联网类-成都.md](job-lists/targetjob/一汽-大众/JD-车联网类-成都.md)：记录一汽-大众成都车联网岗位的云端 AI、LLM Harness、Agent 平台职责及任职要求。
- [job-lists/targetjob/一汽-大众/简历-车联网类-成都.typ](job-lists/targetjob/一汽-大众/简历-车联网类-成都.typ)：面向一汽-大众车联网数字化开发方向的中文定制简历，按 BranchMind、Judge、MiniCodingAgent、LoRA 展示项目，技能栏含 Java，并列出第二作者与第四作者两篇红黑树论文；四项均确认为个人项目，具体职责与行动仍待补充；[导出 PDF](job-lists/targetjob/一汽-大众/简历-车联网类-成都.pdf)。
- [job-lists/targetjob/大众汽车中国-VCTC/README.md](job-lists/targetjob/大众汽车中国-VCTC/README.md)：保存大众汽车中国 / VCTC 的 AI 与软件开发方向材料。
- [job-lists/targetjob/大众汽车中国-VCTC/JD-研发类-AI.md](job-lists/targetjob/大众汽车中国-VCTC/JD-研发类-AI.md)：记录 VCTC 研发类 AI 方向已公布的信息、待确认项与简历准备重点。
- [job-lists/targetjob/大众汽车中国-VCTC/JD-研发类-软件开发及应用.md](job-lists/targetjob/大众汽车中国-VCTC/JD-研发类-软件开发及应用.md)：记录 VCTC 软件开发及应用方向已公布的信息、待确认项与简历准备重点。
- [job-lists/targetjob/CARIZON-酷睿程/README.md](job-lists/targetjob/CARIZON-酷睿程/README.md)：保存 CARIZON 应用软件、云服务及数据与应用测试方向材料。

## 论文发表

- [publications/论文-2022-双黑节点符号运算.md](publications/论文-2022-双黑节点符号运算.md)：2022 年发表于 Educational Dimension 的红黑树双黑节点符号运算教学论文，Hongyu Zhou 为第四作者；[原文 PDF](publications/论文-2022-双黑节点符号运算.pdf)。
- [publications/论文-2025-扩展符号运算.md](publications/论文-2025-扩展符号运算.md)：2025 年发表于 International Journal of Mathematical Sciences and Computing 的红黑树双黑节点扩展符号运算论文，Hongyu Zhou 为第二作者；[原文 PDF](publications/论文-2025-扩展符号运算.pdf)。

## 简历模板

- [resume/src/chinese.typ](resume/src/chinese.typ)：中文 Typst 简历模板入口；当前仍是仓库示例，定制时按 [rules.md](rules.md) 和 [经历库记录规范.md](经历库记录规范.md) 选取已核实事实。
- [resume/src/english.typ](resume/src/english.typ)：英文 Typst 简历模板入口；当前仍是仓库示例，需基于同一事实来源改写。

## AI 应用与研究

- [projects/项目-BranchMind.md](projects/项目-BranchMind.md)：将 AI 学习对话组织成可分支知识画布，支持课程 Agent 联网检索资料与编写教材，以及 PDF 阅读与问答。
- [projects/项目-Api-ChatBox.md](projects/项目-Api-ChatBox.md)：提供多模型聊天、会话保存和管理员管理功能的 Web 应用。
- [projects/项目-PixelDock-AI.md](projects/项目-PixelDock-AI.md)：在网页悬浮窗口中提供划词翻译、词汇保存和社交平台文案生成的浏览器扩展。
- [projects/项目-MiniCodingAgent.md](projects/项目-MiniCodingAgent.md)：通过模型工具调用读取、修改和运行项目代码的轻量级 Python 编程代理。
- [LoRA Text-to-SQL 项目](projects/项目-Text-to-SQL-LLM.md)：使用 LoRA 微调 SmolLM2，将自然语言问题转换为可执行 SQL，并通过 SQLite 执行结果评估生成质量。
- [projects/项目-LLM-as-a-Judge偏差实验.md](projects/项目-LLM-as-a-Judge偏差实验.md)：基于 MT-Bench 检验 LLM 自动评判是否受回答长度和展示位置影响的试点研究。

## 网站与开发工具

- [projects/项目-Element-Inspector-Helper.md](projects/项目-Element-Inspector-Helper.md)：快速定位网页元素并复制 CSS 选择器的前端调试工具。
