这是一个使用 LoRA 微调小型语言模型、将自然语言问题转换为可执行 SQL 的 Text-to-SQL 研究项目。

GitHub: https://github.com/torres953190868/text-to-sql-llm

# Text-to-SQL with SmolLM2

- 类型：研究 / 课程项目
- 时间：待核实（GitHub 仓库记录为 2026-09）
- 组织 / 角色：MRes Computer Science / README 署名 Hongyu Zhou；具体协作分工待核实

## 背景与目标

探索参数高效微调在 Text-to-SQL 任务中的效果：将 `HuggingFaceTB/SmolLM2-360M-Instruct` 适配到 GeoQuery 数据集，使模型根据自然语言问题和数据库 Schema 生成可执行 SQL，并通过实际查询结果评估语义正确性。

## 本人行动

- 构建 GeoQuery 数据预处理流程，展开变量占位符并保留 549 条训练、49 条开发和 279 条测试数据的既有划分。
- 设计包含数据库 Schema 的 zero-shot 训练提示及 zero-shot / few-shot 推理提示，并在注意力层的 `q_proj`、`k_proj`、`v_proj`、`o_proj` 模块应用 LoRA。
- 实现 completion-only 数据整理器，将提示词和 padding token 屏蔽，只对目标 SQL 序列计算训练损失；训练参数约占模型总参数的 3.50%。
- 实现基于 SQLite 的执行式评估流程，通过执行预测 SQL 与标准 SQL，计算结果集完全匹配率、SQL 可执行率、Precision、Recall、Micro F1 和 Macro F1，并保留语法与语义错误供分析。
- 使用确定性 greedy decoding 完成开发集和独立测试集评估；上述为仓库可核实的实现范围，个人具体编码分工待核实。

## 结果与影响

- README 记录的完整实验中，开发集采用 LoRA + zero-shot，结果集完全匹配率为 69.39%，SQL 可执行率为 89.80%，Micro F1 为 0.5567，Macro F1 为 0.7005。
- README 记录的独立测试集采用 LoRA + few-shot，结果集完全匹配率为 38.35%，SQL 可执行率为 90.32%，Micro F1 为 0.3390，Macro F1 为 0.4091。
- README 记录开发集上 LoRA 相比基础模型提示实验的完全匹配率提高 34.70 个百分点，Micro F1 绝对提高 0.3954；该结果仅针对 GeoQuery 单一小型领域，尚不能证明跨数据库泛化能力。

## 技术与能力

- Python、PyTorch、Transformers、PEFT / LoRA、TRL、Hugging Face Datasets、SQLite、Jupyter Notebook。
- Text-to-SQL、监督微调、Schema-aware Prompting、执行式评估、错误分析与可复现实验。

## 相关链接与证明材料

- [项目 README 与实验口径](https://github.com/torres953190868/text-to-sql-llm/blob/main/README.md)
- [LoRA 微调与评估 Notebook](https://github.com/torres953190868/text-to-sql-llm/blob/main/llm_for_sql.ipynb)
- [Phase 1—4 完整实验分支](https://github.com/torres953190868/text-to-sql-llm/tree/all-phases)
