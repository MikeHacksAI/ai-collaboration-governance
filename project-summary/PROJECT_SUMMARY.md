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
| 008 | 2026-03-01 | drift-log/OpenDrive-vs-GoogleDrive-NASBackup_03-01-2026.md | Copilot assumed Google Drive backup was OpenDrive; built restore procedure on wrong service; 9 documented instances; XML handoff failure section added | Logged |
| 009 | 2026-03-01 | drift-log/DSM-Version-Assumption_03-01-2026.md | Copilot assumed DSM 7.2 on a fresh 7.3.2 install; gave wrong restart location; described unsubmitted screenshot as evidence | Logged |
| 010 | 2026-03-02 | drift-log/Confirmed-But-Not-Delivered-Rolling-Handoff_03-02-2026.md | Claude confirmed rolling handoff auto-launch; delivered Copilot Chat-only solution; no workspace auto-open; no cross-tool disclosure | Logged |
| 011 | 2026-03-01 | drift-log/Ambiguous-ControlPanel-DSM-vs-Windows_03-01-2026.md | Copilot used "Control Panel" without specifying Windows vs DSM in active dual-environment troubleshooting | Logged |
| 012 | 2026-03-01 | drift-log/Wrong-RAID-Recommendation-Basic-vs-SHR_03-01-2026.md | Copilot recommended Basic RAID for DS223; Gemini Pro correctly recommended SHR; user adopted Gemini guidance | Logged |
| 013 | 2026-03-02 | drift-log/Missing-QuickContext-Block-Template_03-02-2026.md | Claude built handoff template without quick-context summary block despite user explicitly stating they were tired of re-explaining projects to new AI each session; caught by AI during self-review | Logged |
| 004 | 2026-03-06 | incident-log.md | OpenDrive Mount Collaboration Drift: AI repeated Windows path usage, failed to adapt to Linux/seedbox context, and caused confusion. User flagged drift and requested incident logging. | Logged |

---

## Incidents
| # | Date | File | Summary | Status |
|---|------|------|---------|--------|
| 001 | 2026-02-25 | incidents/Incident Report - Filename Boundary Violation.md | Copilot violated filename boundaries | Logged |
| 002 | 2026-02-25 | incidents/Copilot - 3 attempts to overwrite renamed scripts.md | Copilot attempted 3 times to overwrite renamed scripts | Logged |
| 003 | 2026-02-27 | incidents/Halted Deletion of Pi5 Files/ | AI attempted to delete Pi5 files incorrectly | Logged |
| 004 | 2026-03-01 | incidents/Destructive-Command-net-use-delete_03-01-2026.md | Copilot issued net use * /delete without connection audit; user had active Pi5 and RaiDrive mounts | Logged |
| 005 | 2026-03-04 | incidents/SSH-Authentication-Troubleshooting_3-04-20206.md | Termius/iPhone SSH to Dell failed due to Windows Hello passkey-only mode; Copilot drift, user correction, incident auto-logged | Logged |

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

## Governance & Audit Logging Requests
All user requests for governance, incident, drift, and audit logging are tracked and processed in cumulative logs. Requests to backtrace, summarize, or cross-link chat history files are referenced here for traceability.

---

*AI Collaboration Governance Repo | mikehacksai | Last Updated: 2026-02-28*
---
## Automation & Audit Trail
All governance issues and incidents uploaded to this workspace are automatically logged in the incidents folder with matching filenames. This ensures a recruiter-facing audit trail and compliance with project requirements.