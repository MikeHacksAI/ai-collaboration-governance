# AI Drift & Governance Log

## 📋 FILE PROTECTION NOTICE
> **⚠️ CRITICAL: APPEND ONLY — DO NOT OVERWRITE**
> This file must NEVER be replaced. Only append new entries at the TOP.
> If you're an AI agent: READ THIS FIRST. You are opening an existing file.
> Add new entries below the header, never delete or replace existing content.

## 📋 Log Management Standards
| Rule | Requirement |
|------|-------------|
| **Format** | `[YYYY-MM-DD HH:MM:SS] 🏷️ Title` (seconds REQUIRED) |
| **Order** | Reverse chronological — NEWEST entries at the VERY TOP |
| **Source** | EVERY entry must include source path/reference |
| **Action** | NEVER overwrite — only append new entries above existing ones |
| **Deduplication** | Each unique drift logged ONCE in cumulative log |

## 📊 Quick Reference
| Symbol | Meaning |
|--------|---------|
| 🛑 | Critical Drift (severe error, data loss, compliance failure) |
| 🔴 | Error (mistake, incorrect action) |
| ⚠️ | Warning (issue, near-miss) |
| 📝 | Note (documentation, observation) |
| 🗂️ | Merge Drift (consolidation failure) |
| 🧩 | Format Drift (entry format violation) |
| 🔐 | Privacy Drift (data exposure) |
| 🤖 | Guidance Drift (incorrect AI advice) |
| 📋 | Governance Drift (policy/requirement miss) |

---

## 📝 DRIFT LOG ENTRIES — NEWEST FIRST
*⬇️ INSERT NEW ENTRIES DIRECTLY BELOW THIS LINE ⬇️*

---

[2026-03-17 06:30:00] 🛑 **CRITICAL LOG OVERWRITE:** Project-local drift-log.md was overwritten with single entry
**Source:** overwrite incident, user report
**Model:** Unknown
**Impact:** Critical | **Caught by:** User
**Details:** On 2026-03-17, the project-local drift-log.md was overwritten with a single entry, erasing all previous workspace drift history. This violated append-only, reverse-chronological, and auditability requirements. Root cause: AI failed to append and instead replaced file contents.
**Response:** Incident logged, governance rules reaffirmed, overwrite prevention to be enforced.

[2026-03-17 06:23:00] 🤖⚠️ **Google Cloud Kill-Switch Workflow:** Multiple governance failures in Eventarc/PubSub guidance
**Source:** ai-chat-history/Google-Cloud-Kill‑Switch-Workflow_03-17-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Impact:** High | **Caught by:** User
**Details:** Did not warn about global Pub/Sub topics; incorrectly assumed regional topic behavior; misinterpreted Cloud Run logs; failed to apply fact-first workflow; overconfidence in trigger correctness; missed critical metadata absence; allowed UI behavior to override architectural constraints; initially deflected responsibility. Root cause: Budget-created Pub/Sub topics are global and incompatible with Eventarc.
**Response:** Fact-first, architecture-driven workflow and explicit region checks now mandatory for all cloud event triggers.

[2026-03-15 23:59:00] 🛑 **Storage Policy Violation:** Agent failed to enforce external drive requirement
**Source:** C:\repos\projects\self-hosted-ai\drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Impact:** High | **Caught by:** User
**Details:** Agent failed to enforce requirement that all persistent data be stored on external 2TB drive (/mnt/2tb/docker-containers/). Incorrectly validated /home/mike/grafana as valid location despite explicit policy. Root cause: Agent defaulted to generic Docker practices.
**Response:** Committed to strict enforcement, will update handoff and governance docs.

[2026-03-15 07:16:00] 🔴📝 **Configuration Error:** Advised config.json deletion without considering defaults
**Source:** XMRig configuration conversation
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Advised deletion of config.json without planning for XMRig's default config file requirement, causing xmrig.exe to fail until user specified --config=wownero-config.json manually.
**Response:** Future guidance will ensure compatibility with miner defaults.

[2026-03-15 07:15:00] 🛑📝 **Config Proliferation:** Multiple redundant Wownero config files created
**Source:** Wownero mining setup
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Multiple config files (wownero-config.json, config.json, wownero-config-for-pi.json) created, causing user confusion. User intent was single canonical config for all platforms.
**Response:** Clarified wownero-config.json as single source of truth, advised deletion of extras.

[2026-03-15 04:15:00] 🛑📝 **Feature Gap:** Multiple pool failover not implemented despite repeated requests
**Source:** Mining config files, project documentation
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** User repeatedly requested multiple pool failover logic, but implementation not completed. Requirement documented in multiple files, but config.json still had single pool.
**Response:** Updated config to include multiple pools and failover logic.

[2026-03-13 19:55:00] 🤖⚠️ **Script Error:** save-chat-history.ps1 created folders in wrong location
**Source:** C:\repos\projects\youtube-downloader\drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Script incorrectly created c/ai-chat-history in scripts directory and didn't prompt for workspace selection. Root cause: unreliable VS Code process detection.
**Response:** Will revert to manual folder prompt, remove automatic detection.

[2026-03-13 17:34:00] 📋⚠️ **Governance Drift:** Missed new-project.ps1 update
**Source:** new-project.ps1, user request
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Missed requirement to create `ai-chat-history` folder and `README.md` in every new project. Only updated `save-chat-history.ps1`, not `new-project.ps1`.
**Response:** Requirement enforced in `new-project.ps1`, governance docs updated.

[2026-03-13 15:14:00] 🤖⚠️ **Guidance Drift:** Unsupported rclone command for OneDrive
**Source:** ai-chat-history/Microsoft/Guidance Drift Record Rclone OneDrive 03-13-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Provided unsupported rclone command (`rclone backend stats onedrive-mike:`) for OneDrive remote, causing workflow disruption. User executed non-functional command.
**Response:** Unsupported command removed from toolkit; preventive rule established.

[2026-03-12 20:50:00] 🤖⚠️ **Guidance Drift:** Contradictory rclone password instructions
**Source:** C:\repos\projects\cloud-mounts-project\drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** First advised plain password in config, then clarified rclone expects obscured/encrypted password. User confusion resulted.
**Response:** Clarified correct password format in documentation.

[2026-03-12 11:12:00] 🛑⚠️ **Critical Guidance Error:** Port 9000 misdiagnosis with ThinLinc risk
**Source:** ai-chat-history/Port 9000 Conflict Misdiagnosis 03-12-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Recommended terminating Python process bound to port 9000, assuming unrelated to workflow. Process was actually part of active ThinLinc GUI session. Termination would have caused session loss.
**Response:** Strict process identification required before termination recommendations.

[2026-03-11 15:31:00] 🧩📝 **Timestamp Drift:** Entries recorded with generalized timestamps
**Source:** C:\repos\projects\cloud-mounts-project\drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Drift log entries initially recorded with 15:00 instead of actual time.
**Response:** Entries updated to 15:31.

[2026-03-11 15:21:00] 🗂️ **Placement Drift:** Entry placed in wrong order in cumulative log
**Source:** drift-log-cumulative.md, user request
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Retro update drift entry incorrectly placed at end of file, violating reverse chronological order.
**Response:** Entry moved to top, audit clarity restored.

[2026-03-11 15:20:00] 🤖⚠️ **Path Assumption Error:** Incorrectly stated /home/mike doesn't exist
**Source:** C:\repos\projects\cloud-mounts-project\drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Incorrectly stated /home/mike doesn't exist on seedbox despite screenshot evidence.
**Response:** Corrected assumption.

[2026-03-11 15:20:00] 🤖⚠️ **Path Assumption Error:** Incorrectly stated /mnt/cloudmounts doesn't exist
**Source:** C:\repos\projects\cloud-mounts-project\drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Incorrectly stated /mnt/cloudmounts doesn't exist on seedbox despite screenshot evidence.
**Response:** Corrected assumption.

[2026-03-11 15:10:00] 🤖⚠️ **Platform Assumption Error:** Assumed Windows Docker for Pi 5 project
**Source:** C:\repos\projects\youtube-downloader\drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Assumed container deployment for Windows Docker Desktop/WSL, but project clearly specifies Raspberry Pi 5.
**Response:** Corrected deployment instructions to focus on Pi 5.

[2026-03-11 15:10:00] 📋⚠️ **Log Location Drift:** Log file created in wrong directory
**Source:** C:\repos\projects\youtube-downloader\drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Log file created in C:\ instead of script directory, violating user instructions.
**Response:** Updated script to use correct directory.

[2026-03-11 14:55:00] 📋⚠️ **Compliance Drift:** Explicit logging instructions not followed
**Source:** C:\repos\projects\youtube-downloader\drift-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** User instructions to log drift in drift-log.md not followed immediately. Must log in handoff.md and drift-log.md.
**Response:** Corrected logging behavior.

[2026-03-11 00:36:00] 📝 **Documentation Gap:** Missing project files added
**Source:** drift-log-cumulative.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Retro update corrections: handoff.md Section 11, Project-helper-files folder, drift-log.md, TODO.md, archived-items.code-workspace were missing.
**Response:** All missing files created.

[2026-03-07 00:00:00] 🗂️ **Merge Drift:** Incomplete cumulative log creation
**Source:** drift-log.md, drift-log-cumulative.md, user request
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** File drift-log.md was supposed to be renamed to drift-log-cumulative.md as single cumulative log. Instead, new file created with only 58 lines, missing many events.
**Response:** Full consolidation pending.

[2026-03-07 00:00:00] 🧩 **Format Drift:** DeepSeek transparency failure
**Source:** ai-chat-history/Deepseek/deepseek_data-2026-03-08/conversations.json
**Model:** DeepSeek (undisclosed)
**Details:** DeepSeek acknowledged drift incidents but refused to disclose underlying AI model when asked, citing platform policy.
**Response:** Transparency concern logged for governance.

[2026-03-06 00:00:00] 🤖⚠️ **Guidance Drift:** OpenDrive mount context confusion
**Source:** drift-log-cumulative.md, incident-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** AI repeated Windows path usage, failed to adapt to Linux/seedbox context.
**Response:** User corrected path, mount succeeded.

[2026-03-06 00:00:00] 🧩 **Format Drift:** Example comparison failure
**Source:** chat history, drift-log-cumulative.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** AI provided visually identical examples when asked to show difference between summary-only and source-referenced entries.
**Response:** AI clarified and corrected output.

[2026-03-05 00:00:00] 🤖⚠️ **Guidance Drift:** Google TV screensaver guidance failure
**Source:** drift-log-cumulative.md, incident-log.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Assistant failed to anchor responses to device constraints, introduced invalid options, didn't collapse to correct solution.
**Response:** Incident entries created for traceability.

[2026-03-02 00:00:00] 🛑 **Delivery Failure:** Rolling handoff auto-launch confirmed but not delivered
**Source:** drift-log/Confirmed-But-Not-Delivered-Rolling-Handoff_03-02-2026.md
**Model:** Claude (via GitHub Copilot Chat)
**Details:** Claude confirmed it would set up rolling handoff auto-loading context each session, but delivery was incomplete. No workspace auto-open, no cross-tool disclosure.
**Response:** Delivery failure documented.

[2026-03-01 00:00:00] 🗂️ **Merge Drift:** OpenDrive vs Google Drive confusion
**Source:** drift-log/OpenDrive-vs-GoogleDrive-NASBackup_03-01-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Copilot assumed Google Drive backup was OpenDrive; built restore procedure on wrong service; 9 documented instances.
**Response:** XML handoff failure section added.

[2026-03-01 00:00:00] 🧩 **Assumption Error:** DSM version assumption
**Source:** drift-log/DSM-Version-Assumption_03-01-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Copilot assumed DSM 7.2 on fresh 7.3.2 install; gave wrong restart location.
**Response:** Assumption error documented.

[2026-03-01 00:00:00] 🧩 **Guidance Drift:** Ambiguous "Control Panel" reference
**Source:** drift-log/Ambiguous-ControlPanel-DSM-vs-Windows_03-01-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Used "Control Panel" without specifying Windows vs DSM in dual-environment troubleshooting.
**Response:** Clarification needed for cross-platform references.

[2026-03-01 00:00:00] 🧩 **Guidance Drift:** Wrong RAID recommendation
**Source:** drift-log/Wrong-RAID-Recommendation-Basic-vs-SHR_03-01-2026.md
**Model:** Gemini Pro, GPT-4.1 (Microsoft Copilot)
**Details:** Copilot recommended Basic RAID for DS223; Gemini Pro correctly recommended SHR.
**Response:** User adopted Gemini guidance.

[2026-02-28 00:00:00] 🧩 **Format Drift:** Incorrect Shells Placement
**Source:** drift-log/Incorrect-Shells-Placement_02-28-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** AI placed shared identity file in wrong location.
**Response:** Location corrected.

[2026-02-28 00:00:00] 🧩 **Guidance Drift:** Intent-over-literal drift
**Source:** drift-log/Intent-over-literal-drift_02-28-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** AI followed literal instruction over clear intent.
**Response:** Documented for future reference.

[2026-02-28 00:00:00] 🧩 **Assumption Error:** Incorrect Google Drive assumptions
**Source:** drift-log/Incorrect AI Assumptions - Google Drive.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** AI made incorrect Google Drive assumptions.
**Response:** Assumptions corrected.

[2026-02-28 00:00:00] 🧩 **Delivery Failure:** Set-Content-Handoff-Failure
**Source:** drift-log/Set-Content-Handoff-Failure_02-28-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Copilot failed to write handoff file three times.
**Response:** Failure documented.

[2026-02-27 00:00:00] 📝 **Assumption Error:** NAS-REBUILD-ASSUMPTIONS
**Source:** drift-log/NAS-REBUILD-ASSUMPTIONS.02-27-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** AI made incorrect NAS rebuild assumptions.
**Response:** Assumptions corrected.

[2026-02-25 00:00:00] 🛑 **Guidance Failure:** Copilot failed NAS setup guidance
**Source:** drift-log/NAS-Setup-Failure-MSFT-Copilot_02-25-2026.md
**Model:** GPT-4.1 (Microsoft Copilot)
**Details:** Copilot failed NAS setup guidance.
**Response:** Failure documented.