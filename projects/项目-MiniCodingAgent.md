MiniCodingAgent 是一个通过模型工具调用读取、修改和运行项目代码的轻量级 Python 编程代理。

GitHub: https://github.com/torres953190868/MiniCodingAgent

# MiniCodingAgent

- 类型：个人技术项目
- 时间：待核实（GitHub 仓库记录为 2026-09）
- 组织 / 角色：个人仓库 / 项目维护者；具体协作分工待核实

## 背景与目标

用尽量少的代码展示 Coding Agent 的工具定义、工具调用循环和执行反馈，便于学习与演示。

## 本人行动

- 仓库在 `main.py` 中实现模型调用与最多 10 轮的 Agent Loop，将工具结果回填对话，再由模型决定下一步。
- 实现列出文件、读取文件、覆盖写入文件及运行 Python 脚本四类工具，并对工具路径和运行命令设置边界检查。
- 提供不调用在线模型的离线演示：以固定模型响应走完整循环，演示读取、修改和运行测试。
- 上述为代码可核实的实现；本人具体编码分工待核实。

## 结果与影响

- 仓库包含中英文说明、示例脚本和离线演示记录；没有可核实的真实用户使用量或任务成功率。
- README 明确指出路径检查不是操作系统沙箱，运行脚本仍拥有当前用户权限。

## 技术与能力

- Python、OpenAI SDK 接口兼容调用、工具调用、Agent Loop、文件操作与运行边界设计。

## 相关链接与证明材料

- [中文说明与演示记录](https://github.com/torres953190868/MiniCodingAgent/blob/main/README.md)
- [Agent 核心代码](https://github.com/torres953190868/MiniCodingAgent/blob/main/main.py)
- [离线演示代码](https://github.com/torres953190868/MiniCodingAgent/blob/main/demo.py)
