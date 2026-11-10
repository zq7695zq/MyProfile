# arXiv License & PDF Redistribution Notes

**原则：arXiv 免费访问不等于公众可把 PDF 重新上传到另一个公开仓库。**

arXiv 官方说明：
- 每个版本由提交者选择 license；版权通常仍由原作者持有。
- arXiv perpetual, non-exclusive license 仅授予 arXiv 分发权限，不自动授予其他人重新分发权。
- arXiv API Terms 明确禁止在没有版权所有者许可或相应 license 授权时，将 e-print PDF/source 存储并从第三方服务器提供。
- 同一论文的不同版本可能采用不同 license；应按具体版本检查。

官方说明：
- https://info.arxiv.org/help/license/index.html
- https://info.arxiv.org/help/license/reuse.html
- https://info.arxiv.org/help/api/tou.html

## 本次引用论文的核对结果

| arXiv ID | 论文 | 公开页面许可线索 | 本仓库处理 |
|---|---|---|---|
| 2602.07900v2 | Rethinking the Value of Agent-Generated Tests | arXiv HTML 显示 CC BY 4.0；但当前 PDF 首页含 ACM 版权/再发布限制文字，存在表面冲突 | 暂不镜像 PDF；链接原文，待作者/出版方许可澄清 |
| 2610.27400v1 | ProMemAgent | 本次未能从官方记录核实可再分发许可 | 不镜像 PDF |
| 2606.05661 | Continual Learning Bench | 本次未能从官方记录核实可再分发许可 | 不镜像 PDF |
| 2504.13171 | Sleep-time Compute | 本次未能从官方记录核实可再分发许可 | 不镜像 PDF |
| 2310.08560 | MemGPT | 本次未能从官方记录核实可再分发许可 | 不镜像 PDF |
| 2304.03442 | Generative Agents | 本次未能从官方记录核实可再分发许可 | 不镜像 PDF |
| 2410.10813v2 | LongMemEval | arXiv 页面 license 链接指向 CC BY 4.0 | 许可允许再分发；本轮执行环境无法直接获取 PDF 二进制，故暂用原文链接 |
| 2606.15405 | T-Mem | 官方 arXiv license 链接为 arXiv perpetual, non-exclusive | 不镜像 PDF |
| 2606.23459 | TriggerBench | 官方 arXiv license 链接为 arXiv perpetual, non-exclusive | 不镜像 PDF |
| 2609.09133 | ExecCritic | 第三方 arXiv 元数据镜像标注 CC BY 4.0；官方记录本次未展示可核验的 license 链接 | 暂不镜像 PDF，待官方 license 确认 |
| 2610.34577 | Rethinking Verification in Agent Harnesses | 第三方 arXiv 元数据镜像标注 CC BY 4.0；官方记录本次未展示可核验的 license 链接 | 暂不镜像 PDF，待官方 license 确认 |
| 2601.11868 | Terminal-Bench | arXiv 页面 license 链接指向 CC BY 4.0 | 许可允许再分发；本轮执行环境无法直接获取 PDF 二进制，故暂用原文链接 |

## 为什么没有把所有 PDF 复制进 GitHub？

1. GitHub 仓库是公开的，上传 PDF 等于再次托管和分发。
2. arXiv 的默认非独占许可不等于 CC BY。
3. 本次运行环境无法直接连接 arxiv.org 下载 PDF 二进制；不能用猜测或第三方镜像伪造原始文件。
4. 对于许可明确允许再分发的论文，后续可由仓库维护者从 arXiv 官方 PDF 下载，并附上原始 license / attribution 信息后再提交。

**推荐做法**：保留原始 arXiv PDF 链接和独立阅读笔记；仅对官方许可明确允许的版本保存 PDF。
