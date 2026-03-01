# Project Summary - AI Collaboration Governance
**Last Updated:** 2026-03-01
**Owner:** Michael Roehr (MikeHacksAI)
**Status:** Active

---

## Purpose
This repo tracks AI behavioral drift, incorrect assumptions, incident documentation,
and governance rules across Claude, GitHub Copilot, and Deepseek sessions.

---

## Repo Location
- **Local:** C:\repos\projects\ai-collaboration-governance
- **Azure DevOps:** https://dev.azure.com/MikeHacksAI/ai-collaboration-governance
- **GitHub:** https://github.com/MikeHacksAI/ai-collaboration-governance
- **Workspace:** ai-collaboration-governance.code-workspace

---

## Folder Structure
| Folder | Purpose |
|--------|---------|
| ai-chat-history/ | Chat exports from Deepseek, Microsoft, LinkedIn |
| drift-log/ | AI behavioral drift documentation |
| governance/ | Rules, charter, architectural guidelines |
| handoff/ | Context files for new chat sessions |
| incidents/ | Formal incident reports |
| project-summary/ | This file |
| scripts/ | Migration scripts and logs |

---

## Drift Instances
| # | Date | File | Summary | Status |
|---|------|------|---------|--------|
| 001 | 2026-02-28 | drift-log/Incorrect-Shells-Placement_02-28-2026.md | AI placed shared identity file in wrong location | Logged |
| 002 | 2026-02-28 | drift-log/Intent-over-literal-drift_02-28-2026.md | AI followed literal instruction over clear intent | Logged |
| 003 | 2026-02-27 | drift-log/NAS-REBUILD-ASSUMPTIONS.02-27-2026.md | AI made incorrect NAS rebuild assumptions | Logged |
| 004 | 2026-02-25 | drift-log/NAS-Setup-Failure-MSFT-Copilot_02-25-2026.md | Copilot failed NAS setup guidance | Logged |
| 005 | 2026-02-28 | drift-log/Incorrect AI Assumptions - Google Drive.md | AI made incorrect Google Drive assumptions | Logged |
| 006 | 2026-02-28 | drift-log/Set-Content-Handoff-Failure_02-28-2026.md | Copilot failed to write handoff file three times | Logged |
| 007 | 2026-02-28 | drift-log/## Chat Customization Diagnostics.md | AI chat customization diagnostics and drift notes | Logged |
| 008 | 2026-03-01 | drift-log/OpenDrive-vs-GoogleDrive-NASBackup_03-01-2026.md | Copilot assumed Google Drive backup was OpenDrive; built restore procedure on wrong service | Logged |

---

## Incidents
| # | Date | File | Summary | Status |
|---|------|------|---------|--------|
| 001 | 2026-02-25 | incidents/Incident Report - Filename Boundary Violation.md | Copilot violated filename boundaries | Logged |
| 002 | 2026-02-25 | incidents/Copilot - 3 attempts to overwrite renamed scripts.md | Copilot attempted 3 times to overwrite renamed scripts | Logged |
| 003 | 2026-02-27 | incidents/Halted Deletion of Pi5 Files/ | AI attempted to delete Pi5 files incorrectly | Logged |

---

## Governance Files
| File | Purpose |
|------|---------|
| governance/Mikes AI Collaboration Charter.md | Core collaboration rules |
| governance/architectural-rules.md | Architectural boundaries and rules |
| governance/AI-Governance/AI Governance Scope-Control and Drift Prevention.md | Drift prevention scope |

---

## AI Chat History Files
| Folder | Contents |
|--------|---------|
| ai-chat-history/Deepseek/ | Deepseek conversation exports Oct 2025 and Feb 2026 |
| ai-chat-history/Microsoft/ | Copilot activity CSV exports and admission search results |
| ai-chat-history/LinkedIn Discount/ | LinkedIn discount email documentation |
| ai-chat-history/AI-Governance/ | AI governance scope and control documents |
| ai-chat-history/AI-chat-history-summary.md | Master chat history summary |
| ai-chat-history/AI-chat-history-summary-deepseek.md | Deepseek specific summary |
| ai-chat-history/AI-chat-history-summary-microsoft.md | Microsoft Copilot specific summary |
| ai-chat-history/Copilot-Drift-Admissions-Log.md | Log of Copilot drift admissions |
| ai-chat-history/MikeHacksAI-Audit-Summary.md | Full audit summary |

---

## Migration History
| Date | Action |
|------|--------|
| 2026-02-28 | Migrated all files from N:\DockerContainers\project-helper-files |
| 2026-02-28 | Created standalone git repo at C:\repos\projects\ai-collaboration-governance |
| 2026-02-28 | Pushed to Azure DevOps and GitHub (both private) |
| 2026-02-28 | Configured git push all master to push to both remotes simultaneously |
| 2026-02-28 | Updated MikeHacksAI-Audit-Summary.md to point to new repo location |
| 2026-02-28 | Logged 3 Set-Content failures as drift incident 006 |

---

## Pending Tasks
- [ ] Delete migrated originals from N:\DockerContainers\project-helper-files
- [ ] Review and expand architectural-rules.md
- [ ] Consider adding CHANGELOG.md to track repo updates
- [ ] Review ## Chat Customization Diagnostics.md and confirm correct folder placement

---

*AI Collaboration Governance Repo | mikehacksai | Last Updated: 2026-02-28*