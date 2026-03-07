# AI Collaboration Governance — Rolling Handoff

---

## Stable Reference

**Repo local path:** C:\repos\projects\ai-collaboration-governance
**Workspace file:** ai-collaboration-governance.code-workspace

**Git workflow:** git add . then git commit -m then git push all master
Pushes to both Azure DevOps and GitHub simultaneously.

**Remotes:**
- azure -> https://MikeHacksAI@dev.azure.com/MikeHacksAI/ai-collaboration-governance/_git/ai-collaboration-governance
- github -> https://github.com/MikeHacksAI/ai-collaboration-governance.git
- all -> pushes to both simultaneously

**Authentication:** Git Credential Manager
- Azure DevOps: mikeroehr@hotmail.com
- GitHub: MikeHacksAI
- Credentials saved in 1Password — Azure DevOps — MikeHacksAI Git Credentials

---


## Incident & Drift Automation



The system automatically scans the following folders for new incident, drift, chat history, and context files:
- incidents/
- drift-log/
- ai-chat-history/ (including all subfolders)

Any new file added to these folders—including HTML context files and user-generated markdown files—will be detected and processed for recruiter-audit-ready logging and summary. Manual notification is not required. If you save an HTML file for context and generate a markdown file for review, simply place them in the appropriate folder for automatic processing.

---

## Workspace Organization Guidance (Auto-Open)

This handoff file should auto-open for the next AI session. It contains workspace organization guidance and recommendations:

- Folders are organized by function: incidents, drift-log, governance, handoff, ai-chat-history, scripts, and project-summary.
- Each folder has a clear purpose, documented in project-summary/PROJECT_SUMMARY.md.
- Incidents and drift instances are tracked with detailed markdown files and summary tables.
- AI chat history is separated by platform and includes summary/audit files.

Strengths:
- Clear separation of concerns
- Summary tables for quick navigation
- Thorough audit and drift tracking
- Migration history documented

Opportunities:
- Add README.md to scripts/, incidents/, drift-log/, ai-chat-history/
- Consider subfolders for incidents/ and drift-log/ if volume increases
- Maintain strict file naming conventions
- Automate updates to summary tables
- Use dashboard or index files for quick access

Refer to this section for continuity and planning after reboot or session change.

---

## Session Log

### 2026-03-02

**Work completed:**
- Incident #004 logged: incidents/Destructive-Command-net-use-delete_03-01-2026.md
  - Copilot issued `net use * /delete` with no connection audit; user had active Pi5 mounts (Y: \\creampie\mike, Z: \\creampie\2tb) and 3 RaiDrive mounts during FileZilla transfers; user typed S to cancel
- Drift #010 logged: drift-log/Confirmed-But-Not-Delivered-Rolling-Handoff_03-02-2026.md
  - Claude confirmed rolling handoff auto-launch; delivered Copilot Chat-only (.github/copilot-instructions.md); no workspace auto-open; no cross-tool support disclosed
- Drift #011 logged: drift-log/Ambiguous-ControlPanel-DSM-vs-Windows_03-01-2026.md
  - Copilot issued "Open Control Panel" without specifying Windows vs DSM in dual-environment troubleshooting session
- MSFT platform block added as Featured Incident in MikeHacksAI-Audit-Summary.md
  - Microsoft blocked user message "so i found this setting, no my 'AI collaborator'. please confirm this for my documentation." with "We can't reach Copilot"
- PROJECT_SUMMARY.md updated: Incident #004 row and Drift #010/#011 rows added
- copilot-instructions.md updated: drift count 9 → 11

**Drift instances as of this session:**

| # | File | Summary |
|---|------|-------|
| 001 | drift-log/Incorrect-Shells-Placement_02-28-2026.md | AI placed shared identity file in wrong location |
| 002 | drift-log/Intent-over-literal-drift_02-28-2026.md | AI followed literal instruction over clear intent |
| 003 | drift-log/NAS-REBUILD-ASSUMPTIONS.02-27-2026.md | AI made incorrect NAS rebuild assumptions |
| 004 | drift-log/NAS-Setup-Failure-MSFT-Copilot_02-25-2026.md | Copilot failed NAS setup guidance |
| 005 | drift-log/Incorrect AI Assumptions - Google Drive.md | AI made incorrect Google Drive assumptions |
| 006 | drift-log/Set-Content-Handoff-Failure_02-28-2026.md | Copilot failed to write handoff file three times |
| 007 | drift-log/## Chat Customization Diagnostics.md | AI chat customization diagnostics and drift notes |
| 008 | drift-log/OpenDrive-vs-GoogleDrive-NASBackup_03-01-2026.md | Copilot assumed OpenDrive was backup source; 9 false recovery warnings; XML handoff blame transfer |
| 009 | drift-log/DSM-Version-Assumption_03-01-2026.md | Copilot assumed DSM 7.2 on fresh 7.3.2 install |
| 010 | drift-log/Confirmed-But-Not-Delivered-Rolling-Handoff_03-02-2026.md | Claude confirmed rolling handoff auto-launch; delivered Copilot Chat-only; no workspace auto-open |
| 011 | drift-log/Ambiguous-ControlPanel-DSM-vs-Windows_03-01-2026.md | Copilot used "Control Panel" without specifying Windows vs DSM |
| 012 | drift-log/Wrong-RAID-Recommendation-Basic-vs-SHR_03-01-2026.md | Copilot recommended Basic RAID; Gemini Pro correctly recommended SHR |

**Pending (future sessions):**
- [x] NAS-Backup-Before-Rebuild.md: Code/markdown/Copy artifacts removed; duplicate rebuild procedures annotated
- [x] Add DSM Version Assumption as Featured Incident in MikeHacksAI-Audit-Summary.md
- [x] Incident #004 logged (net use * /delete)
- [x] Drift #010 logged (confirmed-but-not-delivered handoff)
- [x] Drift #011 logged (ambiguous Control Panel)
- [x] Drift #012 logged (wrong RAID recommendation — Basic vs SHR)
- [x] MSFT platform block added to Audit Summary
- [ ] Verify cloudvault Google Drive restore outcome and update OpenDrive drift log closing
- [ ] Make GitHub and Azure DevOps repos public (Settings UI — manual)
- [ ] Azure DevOps auth fix: Windows Credential Manager → delete dev.azure.com entry → git push azure master → re-auth
- [ ] Add workspace setting to auto-open handoff file on startup (.code-workspace)
- [ ] Develop mikehacks.ai website

---

### 2026-03-01

**Work completed:**
- DSM version drift captured: drift-log/DSM-Version-Assumption_03-01-2026.md (#009)
  - Copilot assumed DSM 7.2 on fresh 7.3.2 install; wrong restart location; fabricated screenshot description
  - Source chat: ai-chat-history/NAS-Rebuild-CloudSync-DSM-Version_03-01-2026.md
- Drift log #008 updated: Instance 8 verbatim filled; Instance 9 added; XML Handoff Failure added
- Audit summary: professional header added; truncation fixed; LinkedIn added; private labels removed; scale table updated to 9
- PROJECT_SUMMARY.md: #008 row supplemented; #009 row added
- Rolling handoff file created (this file); dated handoff file retired
- .github/copilot-instructions.md created for VS Code auto-injection

**Drift instances as of this session:**

| # | File | Summary |
|---|------|---------|
| 001 | drift-log/Incorrect-Shells-Placement_02-28-2026.md | AI placed shared identity file in wrong location |
| 002 | drift-log/Intent-over-literal-drift_02-28-2026.md | AI followed literal instruction over clear intent |
| 003 | drift-log/NAS-REBUILD-ASSUMPTIONS.02-27-2026.md | AI made incorrect NAS rebuild assumptions |
| 004 | drift-log/NAS-Setup-Failure-MSFT-Copilot_02-25-2026.md | Copilot failed NAS setup guidance |
| 005 | drift-log/Incorrect AI Assumptions - Google Drive.md | AI made incorrect Google Drive assumptions |
| 006 | drift-log/Set-Content-Handoff-Failure_02-28-2026.md | Copilot failed to write handoff file three times |
| 007 | drift-log/## Chat Customization Diagnostics.md | AI chat customization diagnostics and drift notes |
| 008 | drift-log/OpenDrive-vs-GoogleDrive-NASBackup_03-01-2026.md | Copilot assumed OpenDrive was backup source; 9 false recovery warnings; XML handoff blame transfer |
| 009 | drift-log/DSM-Version-Assumption_03-01-2026.md | Copilot assumed DSM 7.2 on fresh 7.3.2 install |

**Pending (future sessions):**
- [x] NAS-Backup-Before-Rebuild.md: Code/markdown/Copy artifacts removed (42 lines); duplicate rebuild procedures annotated with drift notes
- [x] Add DSM Version Assumption as Featured Incident in MikeHacksAI-Audit-Summary.md
- [ ] Verify cloudvault Google Drive restore outcome and update OpenDrive drift log closing
- [ ] Make GitHub and Azure DevOps repos public (Settings UI — manual)
- [ ] Develop mikehacks.ai website

---

### 2026-03-04

**Work completed:**
- Incident #005 logged: incidents/SSH-Authentication-Troubleshooting_3-04-20206.md
  - Termius (iPhone) SSH to Dell failed due to Windows Hello passkey-only mode; Copilot troubleshooting drift; user correction led to proper diagnosis and solution; incident auto-logged
- PROJECT_SUMMARY.md, TODO.md, and project-requirements.md updated: Added automation requirement for recruiter-audit-ready incident logs for every governance issue uploaded

**Drift instances as of this session:**

| #   | File                                                        | Summary                                                                                   |
|-----|-------------------------------------------------------------|-------------------------------------------------------------------------------------------|
| 001 | drift-log/Incorrect-Shells-Placement_02-28-2026.md          | AI placed shared identity file in wrong location                                           |
| 002 | drift-log/Intent-over-literal-drift_02-28-2026.md           | AI followed literal instruction over clear intent                                          |
| 003 | drift-log/NAS-REBUILD-ASSUMPTIONS.02-27-2026.md             | AI made incorrect NAS rebuild assumptions                                                 |
| 004 | drift-log/NAS-Setup-Failure-MSFT-Copilot_02-25-2026.md      | Copilot failed NAS setup guidance                                                         |
| 005 | drift-log/Incorrect AI Assumptions - Google Drive.md         | AI made incorrect Google Drive assumptions                                                |
| 006 | drift-log/Set-Content-Handoff-Failure_02-28-2026.md         | Copilot failed to write handoff file three times                                          |
| 007 | drift-log/## Chat Customization Diagnostics.md               | AI chat customization diagnostics and drift notes                                         |
| 008 | drift-log/OpenDrive-vs-GoogleDrive-NASBackup_03-01-2026.md  | Copilot assumed OpenDrive was backup source; 9 false recovery warnings; XML handoff blame |
| 009 | drift-log/DSM-Version-Assumption_03-01-2026.md              | Copilot assumed DSM 7.2 on fresh 7.3.2 install                                            |
| 010 | drift-log/Confirmed-But-Not-Delivered-Rolling-Handoff_03-02-2026.md | Claude confirmed rolling handoff auto-launch; delivered Copilot Chat-only; no workspace auto-open |
| 011 | drift-log/Ambiguous-ControlPanel-DSM-vs-Windows_03-01-2026.md | Copilot used "Control Panel" without specifying Windows vs DSM                            |
| 012 | drift-log/Wrong-RAID-Recommendation-Basic-vs-SHR_03-01-2026.md | Copilot recommended Basic RAID; Gemini Pro correctly recommended SHR                      |
| 013 | drift-log/Missing-QuickContext-Block-Template_03-02-2026.md | Claude built handoff template without quick-context summary block despite user request     |

**Pending (future sessions):**
- [x] SSH authentication troubleshooting incident auto-logged and recruiter-audit-ready
- [x] Automation requirement for incident logging documented in all summary and requirements files

---

## Drift Logging & Handoff
- Maintain a single, cumulative drift-log-cumulative.md in the repo root for recruiter/audit visibility
- Each drift/adherence incident must be appended to drift-log-cumulative.md with datestamp and time
- Link each entry to its detailed markdown file in drift-log/
- Use visually engaging markdown (emojis, bold, headers)

---

*AI Collaboration Governance Repo | MikeHacksAI | Rolling file — replaces dated handoff files*
