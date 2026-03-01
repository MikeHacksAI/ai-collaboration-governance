$repoRoot = "C:\repos\projects\ai-collaboration-governance"

Set-Content -Path "$repoRoot\README.md" -Value "# AI Collaboration Governance`n`nSee governance/architectural-rules.md for rules.`nSee drift-log/ for all drift instances.`nSee project-summary/PROJECT_SUMMARY.md for full summary."
Write-Host "Created: README.md" -ForegroundColor Green

Set-Content -Path "$repoRoot\project-summary\PROJECT_SUMMARY.md" -Value "# Project Summary`nLast Updated: 2026-02-28`n`n## Drift Instances`n| # | Date | File | Summary | Status |`n|---|------|------|---------|--------|`n| 001 | 2026-02-28 | Incorrect-Shells-Placement_02-28-2026.md | AI placed shared identity file in wrong location | Logged |"
Write-Host "Created: PROJECT_SUMMARY.md" -ForegroundColor Green

Set-Content -Path "$repoRoot\governance\architectural-rules.md" -Value "# Architectural Rules`nLast Updated: 2026-02-28`n`n## Rule 001 - Shared Cross-Shell Files`nCorrect Location: S:\Logseq-Technical-Portfolio\Logseq\identity\`nNever use: C:\ or OneDrive for shared files`n`n## Rule 002 - Windows Only Files`nCorrect Location: OneDrive\PowerShell\`n`n## Rule 003 - Drift Documentation`nNaming: Topic_MM-DD-YYYY.md"
Write-Host "Created: architectural-rules.md" -ForegroundColor Green

Set-Content -Path "$repoRoot\handoff\AI-Collaboration-Handoff_02-28-2026.md" -Value "# AI Collaboration Governance - Context Handoff`nDate: 2026-02-28`nFrom: Cloud Mounts Workspace`nTo: ai-collaboration-governance repo`n`n## Drift Instances As Of This Handoff`n| # | File | Summary |`n|---|------|---------|`n| 001 | Incorrect-Shells-Placement_02-28-2026.md | AI placed shared identity file in wrong location |`n`n## To Resume In New Workspace`nTell AI: Please read handoff/AI-Collaboration-Handoff_02-28-2026.md and continue drift governance from here."
Write-Host "Created: handoff file" -ForegroundColor Green

Set-Content -Path "$repoRoot\.gitignore" -Value "# OS`n.DS_Store`nThumbs.db`n`n# VS Code`n.vscode/`n`n# Temp`n*.tmp`n*.temp"
Write-Host "Created: .gitignore" -ForegroundColor Green

Set-Content -Path "$repoRoot\ai-collaboration-governance.code-workspace" -Value '{"folders":[{"name":"AI Collaboration Governance","path":"."}],"settings":{"window.title":"AI Collaboration Governance"}}'
Write-Host "Created: .code-workspace" -ForegroundColor Green

Write-Host ""
Write-Host "All files created. Verifying..." -ForegroundColor Cyan
Get-ChildItem $repoRoot -Recurse -File | Select-Object FullName
