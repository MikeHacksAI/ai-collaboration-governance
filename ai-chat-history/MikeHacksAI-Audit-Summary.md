# MikeHacksAI Audit Summary

## Brand Mission
MikeHacksAI exists to document, audit, and expose AI discrepancies, ensuring governance-grade transparency and user control in all automation and collaborative workflows. This is not an isolated incident report — it is an ongoing audit record spanning months of documented AI behavior across dozens of conversation topics.

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
| Distinct documented drift events (detailed reconstruction) | **7** |
| Formal governance rules derived from incidents | See AI-Governance folder |

Full admission catalog with timestamps: `Copilot-Drift-Admissions-Log.md`
Full CSV search output: `Microsoft/strong-admissions-results.txt` (51 strong), `Microsoft/admissions-search-results.txt` (232 broad)

---

## Recurring Patterns Across All Sessions

The discrepancies documented here are not isolated mistakes — they are recurring behavioral patterns that appeared across 29+ distinct conversation topics spanning homelab infrastructure, Docker/Portainer, PowerShell scripting, cloud mounts, networking diagnostics, Raspberry Pi, NAS setup, password management, and more.

### Pattern 1 — Assumption-over-Evidence
Copilot introduced facts, constraints, or environmental details that were never stated and often directly contradicted by the user's own evidence. Examples span NAS pool guidance, 5G hotspot fabrication, OpenDrive configuration assumptions, and network path fabrication.

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

