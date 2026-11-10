# Sources, Primary Documents & Reading List

本文件为 [REPORT.md](REPORT.md) 中引用资料的导航索引。除明确标注为本地摘录的材料外，均链接到作者、论文、课程或项目官方页面。未将版权不明的论文 PDF、付费材料或课程内容整份复制进仓库。

## 1. 五组截图的直接来源

| ID | 来源 | 类型 | 链接 | 核验状态 |
|---|---|---|---|---|
| A1 | Lance Martin / Anthropic, The components of agent memory (2026-11-06) | 官方研究/工程文章 | https://www.anthropic.com/research/components-of-agent-memory | 官方原文 |
| A2 | Zhi Chen et al., Rethinking the Value of Agent-Generated Tests for LLM-Based Software Engineering Agents (2026; v2 2026-04-09) | 论文预印本 | https://arxiv.org/abs/2602.07900 ; https://arxiv.org/html/2602.07900v2 | 论文正文 |
| A2-data | 论文复现材料 | 数据/附属材料 | https://doi.org/10.5281/zenodo.19251470 | 论文关联材料 |
| A3 | Kun Chen, Sonnet 5.5 / DeepSWE 禁写测试独立实验公开讨论 | 作者自述 | https://substack.com/%40kunchenguid/note/c-355619717 | 作者原始公开文字；未独立复算 |
| A3-discussion | Kun Chen 后续讨论 | 作者公开讨论 | https://substack.com/profile/106988461-kun-chen/note/c-356093588 | 讨论材料 |
| A4 | Lilin Xu et al., ProMemAgent: Long-Horizon Proactive Assistance with Context-Aware Prospective Memory from Sensory Perceptions (2026-10-19) | 论文预印本 | https://arxiv.org/abs/2610.27400 ; https://arxiv.org/html/2610.27400v1 | 论文正文 |
| A5 | Harrison Chase / LangChain, New context engineering challenges in late 2026 (2026-11-02) | 官方博客 | https://www.langchain.com/blog/context-engineering-challenges-late-2026 | 作者原文 |
| A6 | Stanford CS329Z, Engineering AI Agents (Fall 2026) | 官方课程 | https://cs329z.stanford.edu/ | 官方课程 |
| A6-HW2 | Stanford CS329Z coursework / HW2 | 官方作业说明 | https://github.com/cs329z/cs329z.github.io/blob/main/pages/coursework.md | 官方仓库 |
| A7 | CMU 11-768, AI Agents (Fall 2026) | 官方课程 | https://www.cmu-agents.com/ | 官方课程 |
| A7-A2 | CMU 11-768 Assignment 2 | 官方作业说明 | https://github.com/cmu-agents/assignment-2/blob/main/ASSIGNMENT.md | 已核对任务是 data-visualization agent evaluator |
| A8 | Harbor Agent Evaluation Framework | 开源框架 | https://github.com/harbor-framework/harbor | 官方仓库 |
| A8-docs | Harbor Creating Tasks | 官方文档 | https://github.com/harbor-framework/docs/blob/main/guides/creating-tasks.mdx | 已核对目录结构与 verifier 说明 |
| A9 | badlogic/pi-terminal-bench | Pi 的 Harbor adapter | https://github.com/badlogic/pi-terminal-bench | 高相关工程材料；未确认即为截图原帖引用 |

## 2. 记忆与持续学习

| ID | 资料 | 链接 | 阅读重点 |
|---|---|---|---|
| B1 | Continual Learning Bench (2026) | https://arxiv.org/abs/2606.05661 | 跨任务状态环境中的持续学习 |
| B2 | Sleep-time Compute (2025) | https://arxiv.org/abs/2504.13171 | 离线计算与上下文预处理 |
| B3 | MemGPT (2023) | https://arxiv.org/abs/2310.08560 | 分层记忆与上下文容量管理 |
| B4 | Generative Agents (2023) | https://arxiv.org/abs/2304.03442 | 观察、反思、计划 |
| B5 | Anthropic Dreaming Cookbook | https://platform.claude.com/cookbook/managed-agents-cma-dreaming-with-a-dynamic-workflow | Dreaming 工程示例 |
| B6 | Claude Code Auto Memory | https://code.claude.com/docs/en/memory | MEMORY.md 与自动记忆 |
| B7 | LongMemEval (2024) | https://arxiv.org/abs/2410.10813 | 长时对话记忆检索与更新 |

## 3. 前瞻记忆与主动性

| ID | 资料 | 链接 | 阅读重点 |
|---|---|---|---|
| C1 | T-Mem: Memory That Anticipates, Not Archives (2026) | https://arxiv.org/abs/2606.15405 | 写入时生成未来检索触发线索 |
| C2 | TriggerBench (2026) | https://arxiv.org/abs/2606.23459 | 前瞻记忆触发、误提醒与过载 |
| C3 | ProMemAgent Appendix | https://arxiv.org/html/2610.27400v1 | 数据集、指标、消融和限制 |

## 4. 自生成测试、独立验证与评测可信度

| ID | 资料 | 链接 | 阅读重点 |
|---|---|---|---|
| D1 | ExecCritic: Learn to Test, Test to Improve for Coding Agents (2026) | https://arxiv.org/abs/2609.09133 ; https://github.com/MSR-Orchard/execcritic | 测试者与修复者分离 |
| D2 | Rethinking Verification in Agent Harnesses (2026) | https://arxiv.org/abs/2610.34577 | 独立 reviewer 与完成门槛 |
| D3 | OpenAI: Why SWE-bench Verified no longer measures frontier coding capabilities (2026) | https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/ | benchmark 污染与评分器问题 |
| D4 | Stacey on Software, Were the four rules always about intent? (2026-10-09) | https://stacey.vetzal.ca/2026/2026-10-09-the-four-rules-were-always-about-intent/ | 对自写测试争议的技术评论 |
| D5 | Anthropic: Demystifying evals for AI agents | https://www.anthropic.com/research/demystifying-evals-for-ai-agents | Agent eval 设计方法 |

## 5. 课程、框架与基准

| ID | 资料 | 链接 | 阅读重点 |
|---|---|---|---|
| E1 | Terminal-Bench paper (2026) | https://arxiv.org/abs/2601.11868 | 终端任务评测 |
| E2 | Terminal-Bench 4.0 release notes | https://www.tbench.ai/news/terminal-bench-4-0 | benchmark 版本变化 |
| E3 | Stanford CS329Z coursework | https://github.com/cs329z/cs329z.github.io/blob/main/pages/coursework.md | Task 四元组、code grader、LLM judge |
| E4 | CMU 11-768 Assignment 2 | https://github.com/cmu-agents/assignment-2/blob/main/ASSIGNMENT.md | 轨迹错误诊断与 MCC |
| E5 | Harbor task authoring docs | https://github.com/harbor-framework/docs/blob/main/guides/creating-tasks.mdx | 任务、环境、verifier |
| E6 | LangGraph persistence | https://docs.langchain.com/oss/python/langgraph/persistence | checkpoint 与恢复 |
| E7 | Anthropic: Effective harnesses for long-running agents | https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents | 长期 Agent harness |

## 6. 重要的来源限制

- 第五组截图顶部的 Exploration gives way to implementation at different points 行为阶段图尚未找到可验证的一手出处；报告未把图中的 11/39/66 actions 当作可复现统计。
- 小红书帖子完整卡片内容没有全部出现在截图中，不能声称已恢复帖子全文。
- Kun Chen 的实验属于作者公开自述；报告没有拿到完整任务级原始结果、运行配置和可独立复算材料。
- badlogic/pi-terminal-bench 是与截图内容高度相关的 Pi/Harbor 实践仓库，但不能确认它就是截图作者引用的原文。
- arXiv 页面链接指向论文版本；引用前应检查最新版本、作者列表和发表状态。
