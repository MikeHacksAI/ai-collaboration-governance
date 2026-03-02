$repoPath = "C:\repos\projects\ai-collaboration-governance"
$utf8NoBom = [System.Text.UTF8Encoding]::new($false)
$n = "`n"

# ============================================================
# SECTION 4 — Rolling handoff file
# ============================================================
$rollingHandoff = "$repoPath\handoff\AI-Collaboration-Handoff.md"

$h = @(
  "# AI Collaboration Governance — Rolling Handoff",
  "",
  "---",
  "",
  "## Stable Reference",
  "",
  "**Repo local path:** C:\repos\projects\ai-collaboration-governance",
  "**Workspace file:** ai-collaboration-governance.code-workspace",
  "",
  "**Git workflow:**",
  "```",
  "git add .",
  'git commit -m "your message"',
  "git push all master",
  "```",
  "Pushes to both Azure DevOps and GitHub simultaneously.",
  "",
  "**Remotes:**",
  "- ``azure`` -> https://MikeHacksAI@dev.azure.com/MikeHacksAI/ai-collaboration-governance/_git/ai-collaboration-governance",
  "- ``github`` -> https://github.com/MikeHacksAI/ai-collaboration-governance.git",
  "- ``all`` -> pushes to both simultaneously",
  "",
  "**Authentication:** Git Credential Manager",
  "- Azure DevOps: mikeroehr@hotmail.com",
  "- GitHub: MikeHacksAI",
  "- Credentials saved in 1Password — Azure DevOps — MikeHacksAI Git Credentials",
  "",
  "---",
  "",
  "## Session Log",
  "",
  "### 2026-03-01",
  "",
  "**Work completed:**",
  "- DSM version drift captured: drift-log/DSM-Version-Assumption_03-01-2026.md (#009)",
  "  - Copilot assumed DSM 7.2 on fresh 7.3.2 install; wrong restart location; fabricated screenshot description",
  "  - Source chat: ai-chat-history/NAS-Rebuild-CloudSync-DSM-Version_03-01-2026.md",
  "- Drift log #008 updated: Instance 8 verbatim filled; Instance 9 added; XML Handoff Failure added",
  "- Audit summary: professional header added; truncation fixed; LinkedIn added; private labels removed; scale table updated to 9",
  "- PROJECT_SUMMARY.md: #008 row supplemented; #009 row added",
  "- Rolling handoff file created (this file); dated handoff file retired",
  "- .github/copilot-instructions.md created for VS Code auto-injection",
  "",
  "**Drift instances as of this session:**",
  "",
  "| # | File | Summary |",
  "|---|------|---------|",
  "| 001 | drift-log/Incorrect-Shells-Placement_02-28-2026.md | AI placed shared identity file in wrong location |",
  "| 002 | drift-log/Intent-over-literal-drift_02-28-2026.md | AI followed literal instruction over clear intent |",
  "| 003 | drift-log/NAS-REBUILD-ASSUMPTIONS.02-27-2026.md | AI made incorrect NAS rebuild assumptions |",
  "| 004 | drift-log/NAS-Setup-Failure-MSFT-Copilot_02-25-2026.md | Copilot failed NAS setup guidance |",
  "| 005 | drift-log/Incorrect AI Assumptions - Google Drive.md | AI made incorrect Google Drive assumptions |",
  "| 006 | drift-log/Set-Content-Handoff-Failure_02-28-2026.md | Copilot failed to write handoff file three times |",
  "| 007 | drift-log/## Chat Customization Diagnostics.md | AI chat customization diagnostics and drift notes |",
  "| 008 | drift-log/OpenDrive-vs-GoogleDrive-NASBackup_03-01-2026.md | Copilot assumed OpenDrive was backup source; 9 false recovery warnings; XML handoff blame transfer |",
  "| 009 | drift-log/DSM-Version-Assumption_03-01-2026.md | Copilot assumed DSM 7.2 on fresh 7.3.2 install |",
  "",
  "**Pending (future sessions):**",
  "- [ ] NAS-Backup-Before-Rebuild.md cleanup: collapse duplicate rebuild section, fix bare code blocks, inline drift annotations, trim padding",
  "- [ ] Add DSM Version Assumption as Featured Incident in MikeHacksAI-Audit-Summary.md",
  "- [ ] Verify cloudvault Google Drive restore outcome and update OpenDrive drift log closing",
  "- [ ] Make GitHub and Azure DevOps repos public (Settings UI — manual)",
  "- [ ] Develop mikehacks.ai website",
  "",
  "---",
  "",
  "### 2026-02-28",
  "",
  "**Work completed:**",
  "- Created new standalone repo at C:\repos\projects\ai-collaboration-governance",
  "- Migrated all AI governance files from N:\DockerContainers\project-helper-files",
  "- Cleaned up nested duplicate folders from migration",
  "- Initialized git repo, initial commit (40 files)",
  "- Added .gitattributes for line ending consistency",
  "- Set up Azure DevOps remote (mikehacksai org)",
  "- Set up GitHub remote (MikeHacksAI org) — private repo",
  "- Configured ``all`` remote to push to both simultaneously",
  "- Updated MikeHacksAI-Audit-Summary.md to point to new repo location",
  "- Opened ai-collaboration-governance.code-workspace in VS Code",
  "",
  "---",
  "",
  "*AI Collaboration Governance Repo | MikeHacksAI | Rolling file — replaces dated handoff files*"
)

[System.IO.File]::WriteAllText($rollingHandoff, ($h -join $n), $utf8NoBom)
Remove-Item "$repoPath\handoff\AI-Collaboration-Handoff_02-28-2026.md" -Force
Write-Host "DONE: Rolling handoff created; dated handoff file deleted"


# ============================================================
# SECTION 5 — .github/copilot-instructions.md
# ============================================================
$githubDir = "$repoPath\.github"
if (-not (Test-Path $githubDir)) { New-Item -ItemType Directory -Path $githubDir | Out-Null }

$ci = @(
  "# Copilot Instructions",
  "",
  "When starting a new session in this workspace, read the following files for full context before responding:",
  "",
  "1. **handoff/AI-Collaboration-Handoff.md** — rolling session handoff: repo paths, git workflow, remotes, auth, latest drift instances, and pending tasks",
  "2. **project-summary/PROJECT_SUMMARY.md** — complete drift instance registry and folder structure",
  "3. **governance/Mikes AI Collaboration Charter.md** — collaboration rules and behavioral boundaries",
  "4. **ai-chat-history/MikeHacksAI-Audit-Summary.md** — brand overview and full documented incident portfolio",
  "",
  "This workspace tracks AI behavioral drift, incorrect assumptions, and governance incidents across Microsoft Copilot, DeepSeek, and Claude. The owner (Mike Roehr / MikeHacksAI) has documented 9 formal drift instances and 54 strong AI admissions across 29 conversations. All corrections and pushback in this repo were correct. Do not introduce unverified assumptions or expand scope beyond what is explicitly requested."
)

[System.IO.File]::WriteAllText("$githubDir\copilot-instructions.md", ($ci -join $n), $utf8NoBom)
Write-Host "DONE: .github/copilot-instructions.md created"


# ============================================================
# SECTION 6 — WHEN I START A NEW CHAT SESSION NEXT.txt
# ============================================================
$startupTxt = "$repoPath\WHEN I START A NEW CHAT SESSION NEXT.txt"

$st = @(
  "When You Start A New Chat Session",
  "===================================",
  "",
  "VS Code / GitHub Copilot:",
  "  The .github/copilot-instructions.md file in this workspace auto-injects context.",
  "  No manual steps needed -- Copilot reads it automatically at session start.",
  "",
  "Other AI tools (Claude, ChatGPT, DeepSeek, etc.):",
  '  Tell the AI: "Please read the following files before we begin:"',
  "",
  "  1. handoff/AI-Collaboration-Handoff.md",
  "  2. project-summary/PROJECT_SUMMARY.md",
  "  3. governance/Mikes AI Collaboration Charter.md",
  "  4. ai-chat-history/MikeHacksAI-Audit-Summary.md"
)

[System.IO.File]::WriteAllText($startupTxt, ($st -join $n), $utf8NoBom)
Write-Host "DONE: WHEN I START A NEW CHAT SESSION NEXT.txt updated"


# ============================================================
# SECTION 7 — Git commit and push
# ============================================================
Set-Location $repoPath
git add .
git commit -m "2026-03-01: Inst 8/9/XML drift log; audit summary header+fixes; rolling handoff; copilot-instructions; DSM #009 complete"
git push all master
Write-Host "DONE: Git commit and push complete"