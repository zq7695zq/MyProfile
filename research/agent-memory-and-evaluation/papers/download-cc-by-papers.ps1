# Download arXiv PDFs whose redistribution license was verified as CC BY 4.0.
# Run from any directory with PowerShell 7+ or Windows PowerShell 5.1.
# This script downloads original PDFs from arXiv; it does not commit or push them.

$ErrorActionPreference = "Stop"

$PaperDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$PdfDir = Join-Path $PaperDir "pdfs"
New-Item -ItemType Directory -Force -Path $PdfDir | Out-Null

$Papers = @(
    @{
        Id = "2410.10813v2"
        File = "LongMemEval-2410.10813v2.pdf"
        Url = "https://arxiv.org/pdf/2410.10813v2"
        Title = "LongMemEval: Benchmarking Chat Assistants on Long-Term Interactive Memory"
        Authors = "Di Wu, Hongwei Wang, Wenhao Yu, Yuwei Zhang, Kai-Wei Chang, Dong Yu"
        License = "CC BY 4.0"
        LicenseUrl = "https://creativecommons.org/licenses/by/4.0/"
    },
    @{
        Id = "2601.11868"
        File = "Terminal-Bench-2601.11868.pdf"
        Url = "https://arxiv.org/pdf/2601.11868"
        Title = "Terminal-Bench: Benchmarking Agents on Hard, Realistic Tasks in Command Line Interfaces"
        Authors = "Mike A. Merrill et al."
        License = "CC BY 4.0"
        LicenseUrl = "https://creativecommons.org/licenses/by/4.0/"
    }
)

foreach ($Paper in $Papers) {
    $Destination = Join-Path $PdfDir $Paper.File
    if (Test-Path $Destination) {
        Write-Host "Already exists: $($Paper.File)"
        continue
    }

    Write-Host "Downloading $($Paper.Id) from arXiv..."
    Invoke-WebRequest -Uri $Paper.Url -OutFile $Destination

    $Bytes = [System.IO.File]::ReadAllBytes($Destination)
    if ($Bytes.Length -lt 5 -or [System.Text.Encoding]::ASCII.GetString($Bytes, 0, 4) -ne "%PDF") {
        Remove-Item -Force $Destination
        throw "Downloaded file is not a valid PDF: $($Paper.Id)"
    }

    Write-Host "Downloaded: $Destination"
}

Write-Host ""
Write-Host "The following PDFs are licensed CC BY 4.0 (verify the selected version before redistributing):"
$Papers | ForEach-Object { Write-Host " - $($_.Id): $($_.Title)" }
Write-Host ""
Write-Host "To add them to Git after reviewing attribution:"
Write-Host '  git add research/agent-memory-and-evaluation/papers/pdfs'
Write-Host '  git commit -m "Add CC BY arXiv papers"'
Write-Host '  git push'
