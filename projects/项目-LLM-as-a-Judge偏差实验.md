这是一个基于 MT-Bench 检验大语言模型自动评判是否受回答长度和展示位置影响的试点研究。

GitHub: https://github.com/torres953190868/llm-as-judge

# LLM-as-a-Judge 长度偏差与位置偏差实验

- 类型：研究 / 课程项目
- 时间：2025—至今（用户确认年份与持续状态；起始月份未提供。GitHub 仓库记录为 2026-05—2026-09）
- 组织 / 角色：MRes Computer Science / 研究报告署名 Hongyu Zhou

## 背景与目标

评估 LLM 作为自动裁判时，是否会受到回答长度和 A/B 展示顺序等非内容因素影响，并为实验建立可复现的流程。

## 本人行动

- 以 FastChat MT-Bench 数据构建两条独立实验流程：长度偏差实验和原始回答交换位置实验。
- 长度实验对样本进行适用性筛选、回答加长和语义/质量 manipulation check，再构造不同位置与提示词条件的 A/B trials。
- 使用 Python 脚本组织模型调用、结果解析、统计分析与绘图，并提供复现说明和基础测试。
- 报告署名可证实项目归属；协作者及个人编码分工待核实。

## 结果与影响

- 研究报告记录：长度实验最终保留 21 个问题、84 条 trial、252 条有效判定；长回答的决定性胜率为 45.4%，未观察到稳定的总体长度偏好。
- 独立位置实验产生 152 条 trial、456 条有效判定；A 位置决定性胜率为 53.3%，二项检验 `p = 0.1876`，未形成强位置偏差证据。
- 以上仅是该配置下的试点结果，样本量和模型覆盖范围有限，不能推广为普遍结论。

## 技术与能力

- Python、实验设计、数据筛选、A/B 对照、LLM 评估、统计分析与可复现研究。

## 相关链接与证明材料

- [项目 README](https://github.com/torres953190868/llm-as-judge/blob/main/README.md)
- [研究报告与统计口径](https://github.com/torres953190868/llm-as-judge/blob/main/report.md)
- [复现说明](https://github.com/torres953190868/llm-as-judge/blob/main/REPRODUCIBILITY.md)
