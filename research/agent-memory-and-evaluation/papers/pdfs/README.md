# PDF copies

This folder is the destination for original arXiv PDFs that are verified to permit redistribution.

Run [download-cc-by-papers.ps1](../download-cc-by-papers.ps1) from PowerShell to download the currently verified CC BY 4.0 papers directly from arXiv.

## Included by the downloader

- **LongMemEval**, arXiv:2410.10813v2 — CC BY 4.0
- **Terminal-Bench**, arXiv:2601.11868 — CC BY 4.0

The script verifies that each downloaded file is a PDF. It does not commit or push files automatically; inspect the files and attribution before committing.

Other papers remain linked to arXiv because their redistribution license is non-exclusive or has not been verified. In particular, do not mirror arXiv:2602.07900v2 until the apparent mismatch between the arXiv HTML license and the PDF's ACM rights statement is resolved.
