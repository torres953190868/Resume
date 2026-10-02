这是一个使用 LoRA 微调小型语言模型、将自然语言问题转换为可执行 SQL 的 Text-to-SQL 研究项目。

GitHub: https://github.com/torres953190868/text-to-sql-llm

# Text-to-SQL with SmolLM2

- 类型：研究 / 课程项目
- 时间：2025—至今（用户确认年份与持续状态；起始月份未提供。GitHub 仓库记录为 2026-09）
- 组织 / 角色：MRes Computer Science / 个人项目；README 署名 Hongyu Zhou。具体个人行动仍待补充。

## 背景与目标

探索参数高效微调在 Text-to-SQL 任务中的效果：将 `HuggingFaceTB/SmolLM2-360M-Instruct` 适配到 GeoQuery 数据集，使模型根据自然语言问题和数据库 Schema 生成可执行 SQL，并通过实际查询结果评估语义正确性。

## 本人行动

- 构建 GeoQuery 数据预处理流程，展开变量占位符并保留 549 条训练、49 条开发和 279 条测试数据的既有划分。
- 设计包含数据库 Schema 的 zero-shot 训练提示及 zero-shot / few-shot 推理提示，并在注意力层的 `q_proj`、`k_proj`、`v_proj`、`o_proj` 模块应用 LoRA。
- 实现 completion-only 数据整理器，将提示词和 padding token 屏蔽，只对目标 SQL 序列计算训练损失；训练参数约占模型总参数的 3.50%。
- 实现基于 SQLite 的执行式评估流程，通过执行预测 SQL 与标准 SQL，计算结果集完全匹配率、SQL 可执行率、Precision、Recall、Micro F1 和 Macro F1，并保留语法与语义错误供分析。
- 使用确定性 greedy decoding 完成开发集和独立测试集评估；修复 gold SQL 与评分流程后，在统一推理条件下重新评估开发集，并增加 zero-shot / few-shot 控制实验。用户于 2026-09-28 确认这是个人项目；具体个人行动仍待补充。

## 结果与影响

- 修复 gold SQL 与评估流程后，在 GeoQuery 开发集 49 条样本上端到端重跑：LoRA + zero-shot 的查询结果集完全匹配率为 73.47%，SQL 可执行率为 91.84%，Micro F1 为 0.6921，Macro F1 为 0.7464。
- 在相同开发集、zero-shot 提示、greedy decoding 与评分代码下，未微调基础模型的完全匹配率为 2.04%、SQL 可执行率为 51.02%、Micro F1 为 0.0026；LoRA 将完全匹配率提高 71.4 个百分点。
- 2×2 提示控制实验显示：few-shot 将基础模型完全匹配率由 2.04% 提高至 28.57%，但将同一 LoRA checkpoint 的完全匹配率由 73.47% 降至 26.53%，表明微调模型已专门适配训练时的 zero-shot 提示格式。
- 修复前的 69.39% 开发集结果和 38.35% 测试集结果已被列为历史数据；测试集尚未按修复后的流程重新评估。当前结论仅针对 GeoQuery 单一小型领域和 49 条开发样本，不能证明跨数据库泛化能力。

## 技术与能力

- Python、PyTorch、Transformers、PEFT / LoRA、TRL、Hugging Face Datasets、SQLite、Jupyter Notebook。
- Text-to-SQL、监督微调、Schema-aware Prompting、执行式评估、错误分析与可复现实验。

## 相关链接与证明材料

- [项目 README 与实验口径](https://github.com/torres953190868/text-to-sql-llm/blob/main/README.md)
- [LoRA zero-shot 微调与评估 Notebook](https://github.com/torres953190868/text-to-sql-llm/blob/main/llm_for_sql_zero-shot.ipynb)
- [Zero-shot / few-shot 控制实验 Notebook](https://github.com/torres953190868/text-to-sql-llm/blob/main/llm_for_sql_fewshot.ipynb)
- [Phase 1—4 完整实验分支](https://github.com/torres953190868/text-to-sql-llm/tree/all-phases)
