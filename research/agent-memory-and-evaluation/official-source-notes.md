# Official Source Notes

本文件保存本次核对中从官方来源提取的结构化阅读笔记，不复制受版权保护的课程/论文全文。

## Stanford CS329Z — Coursework

Source: https://github.com/cs329z/cs329z.github.io/blob/main/pages/coursework.md

官方课程将两项作业分别定位为：
- HW1: Build an Agentic Harness：从基础 LLM 调用开始，构建可处理企业邮件档案、工具、终端、记忆和 human-in-the-loop 的 agent harness。
- HW2: Evaluate an Agent：为已有 Agent 设计完整 evaluation suite，包含 code-based graders、至少一个 LLM-as-judge、按 request / environment / stopping criteria / scorer 四元组构建任务，以及 error analysis。

本报告中有关 HW2 的四元组、grader 和错误分析内容以该官方 coursework 为依据。

## CMU 11-768 — Assignment 2

Source: https://github.com/cmu-agents/assignment-2/blob/main/ASSIGNMENT.md

官方作业实际任务是评估 data-visualization agent。Validator 的输入包括用户任务、输入数据、agent trajectory 和最终图像；它在评分时一次只看一个 run，不获得 ground-truth label、参考图或其他候选 run。

错误族：
- execution_failure
- wrong_data
- wrong_chart
- hard_to_read

各类错误分别按二分类问题计算 Matthews correlation coefficient (MCC)，总分为四类 MCC 的不加权平均 macro_mcc。若某类别 ground truth 缺少正类或负类，作业评分器按约定返回 MCC=0 并标记 insufficient support。该细节很重要：小型自建验证集可能无法提供稳定 MCC。

## Harbor — Creating Tasks

Source: https://github.com/harbor-framework/docs/blob/main/guides/creating-tasks.mdx

官方文档给出的任务结构：
- task.toml：元数据、超时、资源限制和环境配置。
- instruction.md：交给 Agent 的自然语言任务。
- environment/：Dockerfile 或多服务环境。
- tests/：独立验证脚本，向 /logs/verifier/reward.txt 写入奖励。
- solution/：可选参考解，用于验证任务可解且 verifier 正确。

官方文档特别强调：使用参考解验证 verifier、测试边界条件、保持测试确定性、明确依赖和资源、控制网络。对真实 Jira → PR benchmark，必须确保隐藏 verifier 与 Agent 可写工作区隔离。

## Pi / Terminal-Bench Adapter

Source: https://github.com/badlogic/pi-terminal-bench

该仓库说明它是 pi coding agent 的 Harbor adapter，用于运行 Terminal-Bench。README 展示了 Harbor CLI 的 agent import path、模型参数、任务 ID 过滤、oracle 校验及结果目录。

README 还记录了作者遇到的 Harbor upload_dir 目录复制问题及 workaround。这是特定仓库作者的环境经验，不应未经复测就视为所有 Harbor 版本均存在的通用 bug。仓库示例使用 Terminal-Bench 2.0，因此不要与其他 benchmark 版本的分数直接比较。

## License / Redistribution

- 本目录只保留以上官方资料的原创摘要与少量事实性结构说明。
- 论文和课程作业全文通过上方链接访问。
- Harbor docs 仓库标注 MIT；具体文件仍应按仓库 LICENSE 与 attribution 要求处理。
- 截图为用户提供的研究线索，若后续归档图片，应保持来源和用途说明。
