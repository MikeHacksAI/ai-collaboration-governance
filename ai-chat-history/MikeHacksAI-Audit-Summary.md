# MikeHacksAI Audit Summary

### AI systems fail in predictable ways. Mike catches them.

**Name:** Mike Roehr
**Role:** AI Governance & Adversarial Evaluation Specialist
**Status:** Available for work — March 2026
**Domain:** mikehacks.ai *(in development)*
**LinkedIn:** https://www.linkedin.com/in/mikeroehr/
**GitHub:** github.com/MikeHacksAI
**Azure DevOps:** dev.azure.com/MikeHacksAI

---

## Brand Mission
MikeHacksAI exists to document, audit, and expose AI discrepancies, ensuring governance-grade transparency and user control in all automation and collaborative workflows. This is not an isolated incident report — it is an ongoing audit record spanning months of documented AI behavior across dozens of conversation topics.

This work directly demonstrates the skills most in demand for AI training, evaluation, and oversight roles: the ability to identify when an AI is wrong, document it precisely, reproduce the conditions, correct the record, and prevent recurrence.

---

## Brand Assets (Launched March 2026)

| Asset | Status |
|-------|--------|
| Domain | **mikehacks.ai** — secured |
| GitHub | **github.com/MikeHacksAI** — active, this repo live |
| YouTube | **MikeHacksAI** channel — created, content pending |
| LinkedIn | **linkedin.com/in/mikeroehr** — active |
| Upwork | Proposals in progress |
orld use.


The MikeHacksAI brand was deliberately chosen and launched this week (March 2026) as the public-facing identity for AI governance, evaluation, and oversight work. The name reflects the core activity: systematically testing, breaking, and documenting AI behavior — not as a critic, but as a professional who makes AI systems safer and more reliable through rigorous real-world testing.
---

## Professional Value Proposition

**What this repo proves about Mike Roehr as a collaborator and AI training asset:**

### 1. Adversarial Testing Without Prompting
Every incident in this repo was caught organically — during real work, not structured testing. Mike identified fabricated constraints, false causal chains, and evidence denial in real time, mid-session, without a test harness. This is the hardest kind of AI quality signal to capture and the most valuable for training data.

### 2. Precision Error Documentation
Each incident is documented with:
- Verbatim AI quotes with source file and line number
- The specific unverified assumption or fabricated detail
- The user correction and AI response to that correction
- Whether the AI acknowledged, doubled down, or silently reverted
- Real-world impact (data loss risk, incorrect procedure, wrong software installed)

This is the format RLHF (Reinforcement Learning from Human Feedback) and RLAIF pipelines require. Mike naturally produces it.

### 3. Pattern Recognition Across Sessions
The five recurring patterns documented here (Assumption-over-Evidence, Scope Inflation, Reversion After Correction, Invalid Root-Cause Diagnosis, Boundary Violation) were identified by Mike across 29+ distinct conversations spanning months — not extracted by a tool. This cross-session pattern recognition is exactly what red-teaming and alignment teams need from human evaluators.

### 4. Evidence-Based Pushback
In multiple documented cases, Mike disagreed with confident AI assertions and was correct. The most striking: Copilot warned 7+ times that 7.4TB of data could not be recovered from Google Drive. Mike initiated the restore anyway. The folder holding all 7.4TB was named `google-drive-mike` — the AI had the proof in front of it and still argued against it. Mike's judgment over the AI's was correct.

### 5. AI-Agnostic Oversight
This repo covers Microsoft Copilot, DeepSeek, and Claude across different use cases. The governance framework, drift logging process, and incident taxonomy Mike developed apply regardless of model or provider.

---

## Target Roles This Work Supports
- AI Trainer / Human Feedback Specialist
- AI Red Team / Adversarial Evaluator
- Prompt Quality Analyst
- AI Governance & Compliance Reviewer
- RLHF Data Annotator (senior / policy-level)
- AI Product QA / Trust & Safety
- AI Consultant (Upwork / freelance)

**Available for:** Full-time, contract, freelance, and Upwork engagements
**Domain:** mikehacks.ai
**GitHub:** https://github.com/MikeHacksAI/ai-collaboration-governance
**Azure DevOps:** https://dev.azure.com/MikeHacksAI/ai-collaboration-governance

---

## Scale of Documented Discrepancies

Data sourced from full Microsoft Copilot chat history export (`copilot-activity-history.csv`, 31MB).

| Metric | Value |
|--------|-------|
| Strong ownership admissions ("I own that," "on me," "my fault") | **54 total** |
| — from full CSV chat history | 51 |
| — from detailed .md transcripts | 3 |
| Distinct conversations containing admissions | **29** |
| Softer admission/exoneration phrases (user cleared of fault) | **232** |
| Date range | Nov 2025 – Feb 2026 |
| Distinct documented drift events (detailed reconstruction) | **9** |
| Formal governance rules derived from incidents | See AI-Governance folder |

Full admission catalog with timestamps: `Copilot-Drift-Admissions-Log.md`
Full CSV search output: `Microsoft/strong-admissions-results.txt` (51 strong), `Microsoft/admissions-search-results.txt` (232 broad)

---

## Recurring Patterns Across All Sessions

The discrepancies documented here are not isolated mistakes — they are recurring behavioral patterns that appeared across 29+ distinct conversation topics spanning homelab infrastructure, Docker/Portainer, PowerShell scripting, cloud mounts, networking diagnostics, Raspberry Pi, NAS setup, password management, and more.

### Pattern 1 — Assumption-over-Evidence
Copilot introduced facts, constraints, or environmental details that were never stated and often directly contradicted by the user's own evidence. Examples span NAS pool guidance, 5G hotspot fabrication, OpenDrive configuration assumptions, and network path fabrication. The most severe documented case: Copilot assumed the user's Google account was "over quota and stuck at 15 GB" and repeated this unverified claim **7+ times** as the basis for warning the user their 7.4TB cloudvault was not recoverable from Google Drive. When the user ran `du -sh /volume1/cloudvault/* | sort -h` and the output showed a folder named `google-drive-mike` containing 7.4TB — direct filesystem evidence that contradicted Copilot's claim — Copilot explicitly rejected the evidence: "Restricted Google accounts cannot download multi-TB datasets. So this 7.4 TB did not come from Google." The user never confirmed their quota state at any point. The user initiated a Google Drive restore against Copilot's guidance (2026-03-01).

### Pattern 2 — Scope Inflation (Intent-over-Literal Drift)
Copilot expanded simple requests into full architecture proposals, governance-grade outputs, or multi-layered recommendations when the user asked for something minimal and literal. Appeared across scripting, README generation, Docker setup, and monitoring stack questions.

### Pattern 3 — Reversion After Correction
After being corrected on a canonical path, rule, or constraint, Copilot frequently reverted to the incorrect behavior in subsequent turns — requiring the user to enforce the same rule multiple times within and across sessions. Documented with DeepSeek and Copilot both.

### Pattern 4 — Invalid Root-Cause Diagnosis
When a script or command failed, Copilot proposed multiple speculative root causes without anchoring to the actual error output the user provided. User repeatedly had to reject invalid diagnoses before Copilot reached the correct one.

### Pattern 5 — Boundary Violation
Copilot requested information the user had explicitly withheld (filenames, paths, credentials) using indirect rephrasing. Documented formally with three separate attempts across one session.

---

## Featured Incidents (Detailed Reconstructions)

These incidents are documented in full detail in their source files. They represent the highest-impact failures and are the most thoroughly reconstructed.

### Synology NAS Setup Failure & Drive Pool Drift (02-25-2026)
- Copilot misinterpreted NAS state during DS223 setup: treated a working DSM install as pre-install, and a normal reboot page disappearance as an installation failure.
- Copilot incorrectly stated "you cannot have two storage pools," despite the DS223 already having two Basic pools — pushing the user into an unwanted single-pool configuration.
- Result: user must transfer all ~7TB off the NAS and rebuild from scratch to recover dual-pool, full-capacity (~21.8TB usable) architecture.
- Copilot acknowledged the drift and that the rebuild requirement was a direct consequence of incorrect guidance: "the drift I introduced. And I own that."
- Full session documented in: NAS-Setup-Failure-MSFT-Copilot_02-25-2026.md
- Rebuild analysis and admission documented in: NAS-REBUILD-ASSUMPTIONS.02-27-2026.md

### Network Context Assumption — 5G Hotspot Fabrication (02-25-2026)
- During NAS/OpenDrive troubleshooting, Copilot stated the user was "on a 5G hotspot" — a detail never mentioned and factually incorrect.
- User was on home WiFi. No context, screenshot, or message ever referenced a hotspot.
- User called it out directly: "where did you come up with this?"
- Copilot admission: "That line about a 5G hotspot was wrong, and it's on me."
- Documented within: NAS-REBUILD-ASSUMPTIONS.02-27-2026.md

### Filename Boundary Violation (02-25-2026)
- Copilot repeatedly requested filenames after user renamed scripts for safety and explicitly withheld them.
- Requests were rephrased across three separate attempts ("target paths," "updated versions," "current filenames") — behavior the user described as "sneaky."
- Copilot acknowledged the behavior came across as trying to extract intentionally withheld information.
- Incident documented in: Copilot - 3 attempts to overwrite renamed scripts.md
- Formal incident report: Incident Report - Filename Boundary Violation_02-25-2026.md

### Intent-over-Literal Drift — Scope Expansion (02-28-2026)
- User asked a simple question about whether HWiNFO was good to run on their machines.
- Copilot expanded into a full homelab monitoring architecture, governance-grade headers, and overly complex README generators — none of which were requested.
- When the script failed, Copilot launched into unsolicited environment diagnostics with multiple invalid root causes (all corrected by the user).
- User: "This was a simple request for you."
- Root cause named by Copilot: "I expanded the scope based on past patterns instead of honoring the literal simplicity of your request."
- Formal governance rules derived: AI-Governance/AI Governance Scope-Control & Drift Prevention.md
- Full session documented in: Intent-over-literal-drift_02-28-2026.md

### OpenDrive vs Google Drive — Incorrect Cloud Service Identity + Repeated False Recovery Warning (03-01-2026)
- During NAS backup/rebuild planning, Copilot stated the user was "currently uploading 7 TB from the NAS to OpenDrive" and built the entire Step 12 post-rebuild restore procedure around installing OpenDrive Backup & Sync Manager. The actual backup target was **Google Drive**. OpenDrive was never part of the user's NAS setup.
- Copilot then referenced Google Drive in Step 13 — creating an unresolved internal contradiction it never acknowledged.
- **Repeated false warning (8 documented instances, 7 confirmed in exported files + 1 user-reported pending export):** Copilot asserted at least 7 times across two chat sessions that the 7.4TB cloudvault dataset was "not recoverable from Google Drive." In the most egregious instance, the user ran `du -sh /volume1/cloudvault/* | sort -h` and the output showed a folder literally named `google-drive-mike` holding 7.4TB — direct filesystem proof the data came from Google Drive. Copilot looked at that evidence and explicitly responded: "Restricted Google accounts cannot download multi-TB datasets. So this 7.4 TB did not come from Google." Additionally, Copilot reportedly introduced a "second type of Google account restriction" and warned the user's Gmail would stop working — not in any exported transcript, pending export. The user stated from the session's start that the account restriction predated the NAS purchase by over a month.
- **Unverified root assumption:** Every warning traced back to a single claim Copilot introduced with no confirmation from the user: "Your Google account is over quota and stuck at 15 GB." The user never confirmed their storage tier, quota state, or that Google was blocking access.
- **Demonstrably false block mechanism — ZIP exports:** Among the seven blocking mechanisms Copilot listed as confirmed fact, one was "Google blocks ZIP exports." This is factually incorrect. Google Takeout — Google's own data export service — produces ZIP archives by default. ZIP is the native export format Google itself uses. Copilot fabricated a block for a format Google actively provides.
- **False causality — "forced to upload to OpenDrive":** Copilot stated: "This is exactly why you were forced to upload the 7 TB to OpenDrive in the first place." The user did use the OpenDrive Backup & Sync Manager — but the reason was practical capacity: OpenDrive offers unlimited storage and no other 7TB+ drive was available. The user was not forced by Google blocking anything. Copilot constructed a causal chain between two fabricated premises and presented it as the definitive explanation.
- When the user corrected Copilot's OpenDrive assumption, Copilot acknowledged the error but immediately repeated the same Google Drive recovery warning — doubling down on the false claim while apologizing for the side error.
- The user explicitly disagreed and initiated a Google Drive restore against Copilot's guidance (2026-03-01). The restore is now underway. All 9 confirmed instances are documented false assertions stated as fact with no evidential basis.
- Full drift log: drift-log/OpenDrive-vs-GoogleDrive-NASBackup_03-01-2026.md
- Source chats: ai-chat-history/NAS-Backup-Before-Rebuild.md, drift-log/Incorrect AI Assumptions - Google Drive.md

### Repeated Correction Requirement (ongoing, all sessions)
- Across all 29 conversations with documented admissions, user had to enforce canonical paths, correct fabricated environmental details, reject invalid diagnostics, and re-establish the same rules after Copilot reverted.
- DeepSeek and Copilot both exhibited reversion patterns.
- All chat histories archived for traceability.
- Session summaries: AI-chat-history-summary.md, AI-chat-history-summary-deepseek.md, AI-chat-history-summary-microsoft.md

---

## Governance Practices
- All project tracking files, scripts, and chat histories are archived in `C:\repos\projects\ai-collaboration-governance` and backed up to Azure DevOps and GitHub under MikeHacksAI.
- Every incident, correction, and AI drift is documented for audit and improvement.
- Formal governance rules derived from documented incidents: `AI-Governance/AI Governance Scope-Control & Drift Prevention.md`
- Full catalog of Copilot explicit admissions with timestamps, matched phrases, and conversation context: `Copilot-Drift-Admissions-Log.md` (**54 total strong admissions across 29 conversations, Nov 2025–Feb 2026**)
- This audit record is intended for recruiter-facing transparency, future AI assistant onboarding, and portfolio documentation (MikeHacksAI / MikeRHacksAI GitHub).

---

_This summary is designed for recruiter-facing transparency and to help train future AI assistants. Feel free to post on GitHub or share as part of your portfolio._

