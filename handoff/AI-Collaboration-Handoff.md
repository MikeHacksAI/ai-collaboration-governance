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

## Session Log

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

### 2026-02-28

**Work completed:**
- Created new standalone repo at C:\repos\projects\ai-collaboration-governance
- Migrated all AI governance files from N:\DockerContainers\project-helper-files
- Cleaned up nested duplicate folders from migration
- Initialized git repo, initial commit (40 files)
- Added .gitattributes for line ending consistency
- Set up Azure DevOps remote (mikehacksai org)
- Set up GitHub remote (MikeHacksAI org) — private repo
- Configured all remote to push to both simultaneously
- Updated MikeHacksAI-Audit-Summary.md to point to new repo location
- Opened ai-collaboration-governance.code-workspace in VS Code

---

*AI Collaboration Governance Repo | MikeHacksAI | Rolling file — replaces dated handoff files*
