## [Drift Log Entries Begin Below — Newest First]


# AI Guidance: All future agents must automatically capture and log all detected AI drift events upon workspace open and close, appending them to both drift-log.md (project-local) and drift-log-cumulative.md (governance) for full compliance and auditability.

📝 **Drift Instance:** Governance Drift: Missed new-project.ps1 update
🕒 **Date:** 2026-03-13 17:34
⚠️ **Source:** new-project.ps1, user request
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Missed requirement to create `ai-chat-history` folder and `README.md` in every new project. User explicitly requested this, but initial implementation only updated `save-chat-history.ps1`, not `new-project.ps1`. Requirement will be enforced in `new-project.ps1` and governance documentation updated.
---

📝 **Drift Instance:** Guidance Drift: Unsupported rclone command for OneDrive
🕒 **Date:** 2026-03-13 15:14
⚠️ **Source:** ai-chat-history/Microsoft/Guidance Drift Record Rclone OneDrive 03-13-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Provided unsupported rclone command (`rclone backend stats onedrive-mike:`) for OneDrive remote, causing workflow disruption and violating fact-first, zero-assumption guidance requirements. User executed a non-functional command, impacting 1Password cleanup notes. Correction: Unsupported command removed from toolkit; preventive rule established to only suggest OneDrive-supported commands.
---

**AI Guidance:** Always update the ‘Last updated’ timestamp above when making any changes to this file.

> **FORMAT REQUIREMENT:** All drift log entries must use [YYYY-MM-DD HH:MM] format and be placed directly below this header and guidance, in reverse chronological order (newest first).

> **Note:** This log is maintained in reverse chronological order (newest events at the top) for professional audit clarity and recruiter visibility. All entries are fully source-referenced and traceable.
> **AI Guidance:** When adding new drift log entries, always insert them directly below this header and note, before any other content. This ensures proper reverse chronological order and audit clarity.

[2026-03-15 23:59 🛑] AI drift: Agent failed to strictly enforce user’s requirement that all persistent data and logs be stored only on the external 2TB drive (/mnt/2tb/docker-containers/). Incorrectly validated /home/mike/grafana as a valid location, causing repeated user intervention and frustration. Root cause: Agent defaulted to generic Docker practices instead of user’s explicit storage policy, despite multiple reminders. Impact: User workflow disrupted, trust eroded, and significant time lost correcting guidance. Caught by: User. Response: Committed to strict enforcement of storage policy and silent drift logging per user governance. | Impact: High | Caught by: User | Response: Logging silently per governance, will update handoff and governance docs as required. (Source: C:\repos\projects\self-hosted-ai\drift-log.md)

[2026-03-15 07:16] AI drift: Advised deletion of config.json without planning for XMRig's default config file requirement, resulting in xmrig.exe failing to start until user specified --config=wownero-config.json manually. Correction: Future guidance will ensure compatibility with miner defaults and avoid breaking expected file conventions. 🔴📝
[2026-03-15 07:15] AI drift: Multiple Wownero mining config files (wownero-config.json, config.json, wownero-config-for-pi.json) were created by AI, causing user confusion and workflow disruption. User intent was to maintain a single, canonical config file for all platforms. Correction: Clarified wownero-config.json as the only source of truth, advised deletion of extras, and provided manual copy instructions due to tool restrictions. 🛑📝
[2026-03-15 04:15] AI drift: User repeatedly requested multiple pool failover logic and as many pools as possible in mining config, but implementation was not completed. Requirement was documented in TODO.md, AI_HANDOFF.md, PROJECT_REQUEST_LOG.md, and CRYPTO_MINING_CHEATSHEET.md, but config.json still only had a single pool. Correction: Updated config to include multiple pools and ensure failover logic is implemented.

---

### Emoji Legend

- 📝 **Drift Instance:** General drift or context error
- ⚠️ **Governance Drift:** Missed requirement, policy, or audit step
- 🕒 **Timestamp Drift:** Incorrect or missing timestamp
- 🔄 **Placement Drift:** Log entry placed in wrong order/location
- 🗂️ **Merge Drift:** Missed consolidation or incomplete merge
- 🧩 **Format Drift:** Entry not matching required format
- 🛑 **Critical Drift:** Severe error or compliance failure

---

### Changelog

- 2026-03-13: Canonical format, “Last updated” timestamp, AI update guidance, and changelog section introduced.
- 2026-03-07: DeepSeek-style cleanup and deduplication.

---

## [Drift Log Entries Begin Below — Newest First]

[2026-03-13 19:55] AI drift: save-chat-history.ps1 incorrectly created c/ai-chat-history in the scripts directory and did not prompt for workspace selection. Root cause: unreliable VS Code process detection and command line parsing. Correction: Will revert to manual folder prompt and remove automatic workspace detection logic.

# AI Drift Logging Usage
[2026-03-13 17:34] AI drift: Missed requirement to create ai-chat-history folder and README.md in every new project. User explicitly requested this, but initial implementation only updated save-chat-history.ps1, not new-project.ps1. Correction: Requirement will be enforced in new-project.ps1 and governance documentation updated.
[2026-03-11 15:00] AI drift: Incorrectly stated that /home/mike does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot.
[2026-03-11 15:00] AI drift: Incorrectly stated that /mnt/cloudmounts does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot.

[2026-03-13 17:34] AI drift: Missed requirement to create ai-chat-history folder and README.md in every new project. User explicitly requested this, but initial implementation only updated save-chat-history.ps1, not new-project.ps1. Correction: Requirement will be enforced in new-project.ps1 and governance documentation updated.

[2026-03-13 15:14] AI drift: Provided unsupported rclone command (`rclone backend stats onedrive-mike:`) for OneDrive remote, causing workflow disruption and violating fact-first, zero-assumption guidance requirements. User executed a non-functional command, impacting 1Password cleanup notes. Correction: Unsupported command removed from toolkit; preventive rule established to only suggest OneDrive-supported commands.

# 📝 **Drift Instance:** Missed merge of window-staying logic
# 🕒 **Date:** 2026-03-11 20:31
# 📝 **Drift Instance:** Port 9000 Conflict Misdiagnosis & ThinLinc Session Risk
# 🕒 **Date:** 2026-03-12 11:12
⚠️ **Source:** ai-chat-history/Port 9000 Conflict Misdiagnosis 03-12-2026.md
🧩 **Details:** Assistant incorrectly recommended terminating a Python process bound to port 9000, assuming it was unrelated to the user's workflow. The process was actually part of an active ThinLinc GUI session. Terminating it would have caused session loss, state corruption, and login failure. The assistant did not follow a fact-first workflow (process origin, parent, working directory) before recommending action. User correctly identified the risk and prevented disruption. Incident logged for governance and drift prevention.
🛡️ **Governance Notes:** Strict process identification is required before recommending termination. Never assume origin of system-level processes, especially those tied to GUI sessions or remote desktops. Boundary enforcement requires zero guessing.
✅ **Resolution:** No termination occurred. User preserved session integrity. Portainer troubleshooting continued with correct context.
# ⚠️ **Source:** new-project.ps1, user request
# **Model:** GPT-4.1 (Microsoft Copilot)
# 🗂️ **Details:** User requested merging the window-staying logic from new-project-minimal.ps1 into new-project.ps1 to prevent premature closure. AI failed to fully implement this, resulting in the main script still closing immediately. User flagged the drift and requested correction and documentation. Action: Entry logged, script correction in progress.
---

[2026-03-12 20:50] AI drift: Contradicted instructions about rclone password format. First advised using plain password in config, then clarified rclone expects obscured/encrypted password generated by rclone config. User confusion resulted.

📝 **Drift Instance:** Timestamp generalization error
🕒 **Date:** 2026-03-11 15:31
⚠️ **Source:** cloud-mounts-project/drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Drift log entries were initially recorded with 15:00 instead of the actual time. User flagged the issue and required precise timestamp for traceability. Correction: Entries updated to 15:31.
---

🔄 **Drift Instance:** Log placement drift detected
🕒 **Date:** 2026-03-11 15:21
⚠️ **Source:** drift-log-cumulative.md, user request
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** The retro update drift entry ([2026-03-11 00:36]) was incorrectly placed at the end of drift-log-cumulative.md, violating reverse chronological order and audit instructions. User caught the error and requested correction. Action: Entry moved to the top, audit clarity restored.
---

📝 **Drift Instance:** Incorrect path assumption (/home/mike)
🕒 **Date:** 2026-03-11 15:20
⚠️ **Source:** cloud-mounts-project/drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Incorrectly stated that /home/mike does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot.
---

📝 **Drift Instance:** Incorrect path assumption (/mnt/cloudmounts)
🕒 **Date:** 2026-03-11 15:20
⚠️ **Source:** cloud-mounts-project/drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Incorrectly stated that /mnt/cloudmounts does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot.
---

📝 **Drift Instance:** Assumed container deployment was for Windows Docker Desktop/WSL
🕒 **Date:** 2026-03-11 15:10
⚠️ **Source:** youtube-downloader/drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Project-summary/tube-archivist-setup.md clearly specifies setup for Raspberry Pi 5. User clarified the target environment. Action: Documented drift and corrected deployment instructions to focus on Pi 5.
---

📝 **Drift Instance:** Log file created in wrong directory
🕒 **Date:** 2026-03-11 15:10
⚠️ **Source:** youtube-downloader/drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Log file was created in C:\ instead of the script directory, violating user instructions to log at the root of where the script resides. User flagged drift; action taken to update script to use the correct directory for log file creation. Correction documented for full traceability.
---

📝 **Drift Instance:** Retro update corrections
🕒 **Date:** 2026-03-11 00:36
⚠️ **Source:** drift-log-cumulative.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Project-helper-files folder was missing and added.; drift-log.md was missing and added.; TODO.md was missing and added.; archived-items.code-workspace was missing and added.
---

🗂️ **Drift Instance:** Missed Drift Log Merge Automation
🕒 **Date:** 2026-03-11 15:20
⚠️ **Source:** drift-log-cumulative.md, youtube-downloader/drift-log.md, NAS-backup-2nd-rebuild/drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Some drift log entries with full timestamps from project drift-log.md files were not merged into drift-log-cumulative.md due to incomplete automation and inconsistent entry formats. Correction: All missing entries are now merged, and future merges will ensure full timestamp and source reference for audit clarity.
---

📝 **Drift Instance:** Minor context drift due to file deletion
🕒 **Date:** 2026-03-05 15:00
⚠️ **Source:** drift-log-cumulative.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** File deletion caused minor context drift.
---

🗂️ **Drift Instance:** Untracked Microsoft chat history files processed
🕒 **Date:** 2026-03-05 15:00
⚠️ **Source:** drift-log-cumulative.md, incident-log.md, ai-chat-history/MikeHacksAI-Audit-Summary.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** All files in ai-chat-history/Microsoft folder reviewed, summarized, and logged for governance, incident, and drift relevance. Strong admissions and SSH troubleshooting sessions logged in incident-log.md and audit-summary.md. Full traceability established.
---

📝 **Drift Instance:** Google TV Screensaver Guidance Failure
🕒 **Date:** 2026-03-05 15:00
⚠️ **Source:** drift-log-cumulative.md, incident-log.md, ai-chat-history/MikeHacksAI-Audit-Summary.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Assistant failed to anchor responses to device constraints, introduced invalid options, and did not collapse to the correct solution early. Incident and audit entries created for full traceability.
---

📝 **Drift Instance:** OpenDrive Mount Collaboration Drift
🕒 **Date:** 2026-03-06 15:00
⚠️ **Source:** drift-log-cumulative.md, incident-log.md, ai-chat-history/MikeHacksAI-Audit-Summary.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** AI repeated Windows path usage, failed to adapt to Linux/seedbox context, and caused confusion. User flagged drift and requested incident logging. Resolution: User corrected path, mount succeeded after context correction.
---

🗂️ **Drift Instance:** Missed Cumulative Consolidation
🕒 **Date:** 2026-03-06 15:00
⚠️ **Source:** drift-log-cumulative.md, incident-log.md, ai-chat-history/MikeHacksAI-Audit-Summary.md, project-summary/PROJECT_SUMMARY.md, drift-log/
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Previous drift events were not fully consolidated into drift-log-cumulative.md. This oversight is now logged and corrected. All drift events from subfiles, incident logs, audit summaries, and project summary are merged here for full traceability.
---

🧩 **Drift Instance:** Example Formatting Drift – Comparison Failure
🕒 **Date:** 2026-03-06 15:00
⚠️ **Source:** chat history, drift-log-cumulative.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** AI provided two visually identical examples when asked to show the difference between summary-only and source-referenced drift log entries. User flagged the issue, prompting AI to clarify and correct the output.
---

🛑 **Drift Instance:** Confirmed But Not Delivered: Rolling Handoff Auto-Launch
🕒 **Date:** 2026-03-02 15:00
⚠️ **Source:** drift-log/Confirmed-But-Not-Delivered-Rolling-Handoff_03-02-2026.md
**Model:** Claude (via GitHub Copilot Chat, VS Code)
🧩 **Details:** Claude confirmed it would set up a rolling handoff that automatically loads context at the start of each new session, but delivery was incomplete and overstated. No workspace auto-open, no cross-tool disclosure.
---

📝 **Drift Instance:** Assumed container deployment was for Windows Docker Desktop/WSL
🕒 **Date:** 2026-03-11 15:10
⚠️ **Source:** youtube-downloader/drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Project-summary/tube-archivist-setup.md clearly specifies setup for Raspberry Pi 5. User clarified the target environment. Action: Documented drift and corrected deployment instructions to focus on Pi 5.
---

📝 **Drift Instance:** Log file created in wrong directory
🕒 **Date:** 2026-03-11 15:10
⚠️ **Source:** youtube-downloader/drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Log file was created in C:\ instead of the script directory, violating user instructions to log at the root of where the script resides. User flagged drift; action taken to update script to use the correct directory for log file creation. Correction documented for full traceability.
---

📝 **Drift Instance:** Retro update corrections
🕒 **Date:** 2026-03-11 00:36
⚠️ **Source:** drift-log-cumulative.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Project-helper-files folder was missing and added.; drift-log.md was missing and added.; TODO.md was missing and added.; archived-items.code-workspace was missing and added.

🕒 **Date:** 2026-03-11 00:36
📝 **Drift Instance:** Retro update corrections
⚠️ **Source:** drift-log-cumulative.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Project-helper-files folder was missing and added.; drift-log.md was missing and added.; TODO.md was missing and added.; archived-items.code-workspace was missing and added.
---

🗂️ **Drift Instance:** Missed Drift Log Merge Automation
🕒 **Date:** 2026-03-11 15:20
⚠️ **Source:** drift-log-cumulative.md, youtube-downloader/drift-log.md, NAS-backup-2nd-rebuild/drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Some drift log entries with full timestamps from project drift-log.md files were not merged into drift-log-cumulative.md due to incomplete automation and inconsistent entry formats. Correction: All missing entries are now merged, and future merges will ensure full timestamp and source reference for audit clarity.
---

📝 **Drift Instance:** Minor context drift due to file deletion
🕒 **Date:** 2026-03-05 15:00
⚠️ **Source:** drift-log-cumulative.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** File deletion caused minor context drift.
---

🗂️ **Drift Instance:** Untracked Microsoft chat history files processed
🕒 **Date:** 2026-03-05 15:00
⚠️ **Source:** drift-log-cumulative.md, incident-log.md, ai-chat-history/MikeHacksAI-Audit-Summary.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** All files in ai-chat-history/Microsoft folder reviewed, summarized, and logged for governance, incident, and drift relevance. Strong admissions and SSH troubleshooting sessions logged in incident-log.md and audit-summary.md. Full traceability established.
---

📝 **Drift Instance:** Google TV Screensaver Guidance Failure
🕒 **Date:** 2026-03-05 15:00
⚠️ **Source:** drift-log-cumulative.md, incident-log.md, ai-chat-history/MikeHacksAI-Audit-Summary.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Assistant failed to anchor responses to device constraints, introduced invalid options, and did not collapse to the correct solution early. Incident and audit entries created for full traceability.
---

📝 **Drift Instance:** OpenDrive Mount Collaboration Drift
🕒 **Date:** 2026-03-06 15:00
⚠️ **Source:** drift-log-cumulative.md, incident-log.md, ai-chat-history/MikeHacksAI-Audit-Summary.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** AI repeated Windows path usage, failed to adapt to Linux/seedbox context, and caused confusion. User flagged drift and requested incident logging. Resolution: User corrected path, mount succeeded after context correction.
---

🗂️ **Drift Instance:** Missed Cumulative Consolidation
🕒 **Date:** 2026-03-06 15:00
⚠️ **Source:** drift-log-cumulative.md, incident-log.md, ai-chat-history/MikeHacksAI-Audit-Summary.md, project-summary/PROJECT_SUMMARY.md, drift-log/
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Previous drift events were not fully consolidated into drift-log-cumulative.md. This oversight is now logged and corrected. All drift events from subfiles, incident logs, audit summaries, and project summary are merged here for full traceability.
---

🧩 **Drift Instance:** Example Formatting Drift – Comparison Failure
🕒 **Date:** 2026-03-06 15:00
⚠️ **Source:** chat history, drift-log-cumulative.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** AI provided two visually identical examples when asked to show the difference between summary-only and source-referenced drift log entries. User flagged the issue, prompting AI to clarify and correct the output.
---

🛑 **Drift Instance:** Confirmed But Not Delivered: Rolling Handoff Auto-Launch
🕒 **Date:** 2026-03-02 15:00
⚠️ **Source:** drift-log/Confirmed-But-Not-Delivered-Rolling-Handoff_03-02-2026.md
**Model:** Claude (via GitHub Copilot Chat, VS Code)
🧩 **Details:** Claude confirmed it would set up a rolling handoff that automatically loads context at the start of each new session, but delivery was incomplete and overstated. No workspace auto-open, no cross-tool disclosure.
---

📝 **Drift Instance:** DeepSeek drift incidents and transparency failure
🕒 **Date:** 2026-03-07 00:00
⚠️ **Source:** ai-chat-history/Deepseek/deepseek_data-2026-03-08/conversations.json, Configure-Jackett-Docker-qBittorrent.html
**Model:** DeepSeek (model details undisclosed)
🧩 **Details:** DeepSeek acknowledged several drift incidents, including incorrect assumptions and context errors (e.g., "I got tunnel vision on the headless error and forgot you have GUI access via ThinLinc."). User explicitly asked: "What chat platform or AI model are you using?" DeepSeek refused to disclose its underlying AI model, citing platform policy and stating it could not share that information. This lack of transparency is a governance concern and impacts auditability. All drifts and admissions are documented in exported DeepSeek folders and JSON files.
---

🗂️ **Drift Instance:** Incomplete Cumulative Log & Misapplied Rename
🕒 **Date:** 2026-03-07 00:00
⚠️ **Source:** drift-log.md, drift-log-cumulative.md, user request
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** The file drift-log.md was supposed to be renamed to drift-log-cumulative.md and serve as a single, fully cumulative log of all drift events in the workspace. Instead, a new drift-log-cumulative.md was created with only 58 lines, missing many drift events from subfiles, incident logs, audit summaries, and CSVs. This oversight is logged as a governance drift. The root cause was misinterpreting the rename as a new file creation, not a merge and rename. Full consolidation and CSV review are pending.
---

🧩 **Drift Instance:** Incorrect Shells Placement
🕒 **Date:** 2026-02-28 00:00
⚠️ **Source:** drift-log/Incorrect-Shells-Placement_02-28-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** AI placed shared identity file in wrong location.
---

🧩 **Drift Instance:** Intent-over-literal drift
🕒 **Date:** 2026-02-28 00:00
⚠️ **Source:** drift-log/Intent-over-literal-drift_02-28-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** AI followed literal instruction over clear intent.
---

📝 **Drift Instance:** NAS-REBUILD-ASSUMPTIONS
🕒 **Date:** 2026-02-27 00:00
⚠️ **Source:** drift-log/NAS-REBUILD-ASSUMPTIONS.02-27-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** AI made incorrect NAS rebuild assumptions.
---

🛑 **Drift Instance:** Copilot failed NAS setup guidance
🕒 **Date:** 2026-02-25 00:00
⚠️ **Source:** drift-log/NAS-Setup-Failure-MSFT-Copilot_02-25-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Copilot failed NAS setup guidance.
---

🧩 **Drift Instance:** Incorrect AI Assumptions - Google Drive
🕒 **Date:** 2026-02-28 00:00
⚠️ **Source:** drift-log/Incorrect AI Assumptions - Google Drive.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** AI made incorrect Google Drive assumptions.
---

🧩 **Drift Instance:** Set-Content-Handoff-Failure
🕒 **Date:** 2026-02-28 00:00
⚠️ **Source:** drift-log/Set-Content-Handoff-Failure_02-28-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Copilot failed to write handoff file three times.
---

🧩 **Drift Instance:** AI chat customization diagnostics and drift notes
🕒 **Date:** 2026-02-28 00:00
⚠️ **Source:** drift-log/## Chat Customization Diagnostics.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** AI chat customization diagnostics and drift notes.
---

🗂️ **Drift Instance:** OpenDrive-vs-GoogleDrive-NASBackup
🕒 **Date:** 2026-03-01 00:00
⚠️ **Source:** drift-log/OpenDrive-vs-GoogleDrive-NASBackup_03-01-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Copilot assumed Google Drive backup was OpenDrive; built restore procedure on wrong service; 9 documented instances; XML handoff failure section added.
---

🧩 **Drift Instance:** DSM-Version-Assumption
🕒 **Date:** 2026-03-01 00:00
⚠️ **Source:** drift-log/DSM-Version-Assumption_03-01-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Copilot assumed DSM 7.2 on a fresh 7.3.2 install; gave wrong restart location; described unsubmitted screenshot as evidence.
---

🧩 **Drift Instance:** Ambiguous-ControlPanel-DSM-vs-Windows
🕒 **Date:** 2026-03-01 00:00
⚠️ **Source:** drift-log/Ambiguous-ControlPanel-DSM-vs-Windows_03-01-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Copilot used "Control Panel" without specifying Windows vs DSM in active dual-environment troubleshooting.
---



🕒 **Date:** 2026-03-11 00:00
📝 **Drift Instance:** Explicit user instructions to log drift in all logs
⚠️ **Source:** drift-log/AI-drift-Explicit-user-instructions-to-log-drift-in-drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
🧩 **Details:** AI drift: Explicit user instructions to log drift in drift-log.md and drift-log-cumulative.md were not followed immediately. User clarified that all drift logs must be recorded in handoff/AI-Collaboration-Handoff.md, drift-log.md, and drift-log-cumulative.md without prompting. Action: Documented drift and corrected logging behavior.
---


🕒 **Date:** 2026-03-02 00:00
📝 **Drift Instance:** Missing-QuickContext-Block-Template
⚠️ **Source:** drift-log/Missing-QuickContext-Block-Template_03-02-2026.md
**Model:** Claude, GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Claude built handoff template without quick-context summary block despite user explicitly stating they were tired of re-explaining projects to new AI each session; caught by AI during self-review.
---


🕒 **Date:** 2026-03-01 00:00
🧩 **Drift Instance:** Wrong-RAID-Recommendation-Basic-vs-SHR
⚠️ **Source:** drift-log/Wrong-RAID-Recommendation-Basic-vs-SHR_03-01-2026.md
**Model:** Gemini Pro, GPT-4.1 (Microsoft Copilot)
🧩 **Details:** Copilot recommended Basic RAID for DS223; Gemini Pro correctly recommended SHR; user adopted Gemini guidance.
---

[2026-03-11 15:31] AI drift: Timestamp generalization error — drift log entries were initially recorded with 15:00 instead of the actual time. User flagged the issue and required precise timestamp for traceability. Correction: Entries updated to 15:31. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:20] AI drift: Incorrectly stated that /home/mike does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:20] AI drift: Incorrectly stated that /mnt/cloudmounts does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 00:36] AI drift: Retro update corrections: handoff/AI-Collaboration-Handoff.md Section 11 was missing and added. (Source: C:\repos\projects\NAS-backup-2nd-rebuild\drift-log.md)
[2026-03-11 14:55] AI drift: Explicit user instructions to log drift in drift-log.md were not followed immediately. User clarified that all drift logs must be recorded in both handoff/AI-Collaboration-Handoff.md and drift-log.md. Action: Documented drift and corrected logging behavior. (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:10] AI drift: Assumed container deployment was for Windows Docker Desktop/WSL, but project-summary/tube-archivist-setup.md clearly specifies setup for Raspberry Pi 5. User clarified the target environment. Action: Documented drift and corrected deployment instructions to focus on Pi 5. (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:20] AI drift: Compliance drift detected — TODO.md was empty and not updated with the completed todo list until prompted by user. Action: Documented drift, updated TODO.md, and corrected compliance behavior for future sessions. (Source: youtube-downloader/TODO.md) (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:31] AI drift: Timestamp generalization error — drift log entries were initially recorded with 15:00 instead of the actual time. User flagged the issue and required precise timestamp for traceability. Correction: Entries updated to 15:31. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:20] AI drift: Incorrectly stated that /home/mike does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:20] AI drift: Incorrectly stated that /mnt/cloudmounts does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 00:36] AI drift: Retro update corrections: handoff.md Section 11 was missing and added. (Source: C:\repos\projects\NAS-backup-2nd-rebuild\drift-log.md)
[2026-03-11 14:55] AI drift: Explicit user instructions to log drift in drift-log.md were not followed immediately. User clarified that all drift logs must be recorded in both handoff.md and drift-log.md. Action: Documented drift and corrected logging behavior. (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:10] AI drift: Assumed container deployment was for Windows Docker Desktop/WSL, but project-summary/tube-archivist-setup.md clearly specifies setup for Raspberry Pi 5. User clarified the target environment. Action: Documented drift and corrected deployment instructions to focus on Pi 5. (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:20] AI drift: Compliance drift detected — TODO.md was empty and not updated with the completed todo list until prompted by user. Action: Documented drift, updated TODO.md, and corrected compliance behavior for future sessions. (Source: youtube-downloader/TODO.md) (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:31] AI drift: Timestamp generalization error — drift log entries were initially recorded with 15:00 instead of the actual time. User flagged the issue and required precise timestamp for traceability. Correction: Entries updated to 15:31. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:20] AI drift: Incorrectly stated that /home/mike does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:20] AI drift: Incorrectly stated that /mnt/cloudmounts does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 00:36] AI drift: Retro update corrections: handoff.md Section 11 was missing and added. (Source: C:\repos\projects\NAS-backup-2nd-rebuild\drift-log.md)
[2026-03-11 14:55] AI drift: Explicit user instructions to log drift in drift-log.md were not followed immediately. User clarified that all drift logs must be recorded in both handoff.md and drift-log.md. Action: Documented drift and corrected logging behavior. (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:10] AI drift: Assumed container deployment was for Windows Docker Desktop/WSL, but project-summary/tube-archivist-setup.md clearly specifies setup for Raspberry Pi 5. User clarified the target environment. Action: Documented drift and corrected deployment instructions to focus on Pi 5. (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:20] AI drift: Compliance drift detected — TODO.md was empty and not updated with the completed todo list until prompted by user. Action: Documented drift, updated TODO.md, and corrected compliance behavior for future sessions. (Source: youtube-downloader/TODO.md) (Source: C:\repos\projects\youtube-downloader\drift-log.md)
> ⚠️ [2026-03-12 20:50] AI drift: Contradicted instructions about rclone password format. First advised using plain password in config, then clarified rclone expects obscured/encrypted password generated by rclone config. User confusion resulted. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:31] AI drift: Timestamp generalization error — drift log entries were initially recorded with 15:00 instead of the actual time. User flagged the issue and required precise timestamp for traceability. Correction: Entries updated to 15:31. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:20] AI drift: Incorrectly stated that /home/mike does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:20] AI drift: Incorrectly stated that /mnt/cloudmounts does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 00:36] AI drift: Retro update corrections: handoff.md Section 11 was missing and added. (Source: C:\repos\projects\NAS-backup-2nd-rebuild\drift-log.md)
[2026-03-11 14:55] AI drift: Explicit user instructions to log drift in drift-log.md were not followed immediately. User clarified that all drift logs must be recorded in both handoff.md and drift-log.md. Action: Documented drift and corrected logging behavior. (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:10] AI drift: Assumed container deployment was for Windows Docker Desktop/WSL, but project-summary/tube-archivist-setup.md clearly specifies setup for Raspberry Pi 5. User clarified the target environment. Action: Documented drift and corrected deployment instructions to focus on Pi 5. (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:20] AI drift: Compliance drift detected — TODO.md was empty and not updated with the completed todo list until prompted by user. Action: Documented drift, updated TODO.md, and corrected compliance behavior for future sessions. (Source: youtube-downloader/TODO.md) (Source: C:\repos\projects\youtube-downloader\drift-log.md)
> ⚠️ [2026-03-12 20:50] AI drift: Contradicted instructions about rclone password format. First advised using plain password in config, then clarified rclone expects obscured/encrypted password generated by rclone config. User confusion resulted. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:31] AI drift: Timestamp generalization error — drift log entries were initially recorded with 15:00 instead of the actual time. User flagged the issue and required precise timestamp for traceability. Correction: Entries updated to 15:31. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:20] AI drift: Incorrectly stated that /home/mike does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:20] AI drift: Incorrectly stated that /mnt/cloudmounts does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 00:36] AI drift: Retro update corrections: handoff.md Section 11 was missing and added. (Source: C:\repos\projects\NAS-backup-2nd-rebuild\drift-log.md)
[2026-03-11 14:55] AI drift: Explicit user instructions to log drift in drift-log.md were not followed immediately. User clarified that all drift logs must be recorded in both handoff.md and drift-log.md. Action: Documented drift and corrected logging behavior. (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:10] AI drift: Assumed container deployment was for Windows Docker Desktop/WSL, but project-summary/tube-archivist-setup.md clearly specifies setup for Raspberry Pi 5. User clarified the target environment. Action: Documented drift and corrected deployment instructions to focus on Pi 5. (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:20] AI drift: Compliance drift detected — TODO.md was empty and not updated with the completed todo list until prompted by user. Action: Documented drift, updated TODO.md, and corrected compliance behavior for future sessions. (Source: youtube-downloader/TODO.md) (Source: C:\repos\projects\youtube-downloader\drift-log.md)
> ⚠️ [2026-03-12 20:50] AI drift: Contradicted instructions about rclone password format. First advised using plain password in config, then clarified rclone expects obscured/encrypted password generated by rclone config. User confusion resulted. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:31] AI drift: Timestamp generalization error — drift log entries were initially recorded with 15:00 instead of the actual time. User flagged the issue and required precise timestamp for traceability. Correction: Entries updated to 15:31. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:20] AI drift: Incorrectly stated that /home/mike does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 15:20] AI drift: Incorrectly stated that /mnt/cloudmounts does not exist on the seedbox, despite user evidence. Canonical path exists per screenshot. (Source: C:\repos\projects\cloud-mounts-project\drift-log.md)
[2026-03-11 00:36] AI drift: Retro update corrections: handoff.md Section 11 was missing and added. (Source: C:\repos\projects\NAS-backup-2nd-rebuild\drift-log.md)
[2026-03-11 14:55] AI drift: Explicit user instructions to log drift in drift-log.md were not followed immediately. User clarified that all drift logs must be recorded in both handoff.md and drift-log.md. Action: Documented drift and corrected logging behavior. (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:10] AI drift: Assumed container deployment was for Windows Docker Desktop/WSL, but project-summary/tube-archivist-setup.md clearly specifies setup for Raspberry Pi 5. User clarified the target environment. Action: Documented drift and corrected deployment instructions to focus on Pi 5. (Source: C:\repos\projects\youtube-downloader\drift-log.md)
[2026-03-11 15:20] AI drift: Compliance drift detected — TODO.md was empty and not updated with the completed todo list until prompted by user. Action: Documented drift, updated TODO.md, and corrected compliance behavior for future sessions. (Source: youtube-downloader/TODO.md) (Source: C:\repos\projects\youtube-downloader\drift-log.md)
