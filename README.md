# AI Collaboration Governance
**Owner:** Mike Roehr — [MikeHacksAI](https://github.com/MikeHacksAI)
**Domain:** mikehacks.ai
**Visibility:** Private — publishing pending
**Status:** Active | **Brand Launched:** March 2026 | **Last Updated:** 2026-03-01

---

## What This Repo Is

A governance-grade audit record of AI behavioral drift, false assumptions, fabricated constraints, and boundary violations — captured organically across months of real working sessions with Microsoft Copilot, DeepSeek, and Claude.

This is not a research paper or a structured test suite. Every incident was caught during actual work, documented in real time, corrected with evidence, and logged with verbatim quotes, source references, and real-world impact.

---

## Why It Matters for AI Training

The incidents documented here are exactly the kind of high-signal human feedback that AI training pipelines need most:

- **Assumption-over-Evidence:** AI introduced unverified "facts" stated as confirmed truth — caught and documented with the exact quotes and the user corrections
- **Evidence Denial:** AI was shown a folder literally named `google-drive-mike` containing 7.4TB and explicitly concluded the data did not come from Google Drive
- **Fabricated Block Mechanisms:** AI listed "Google blocks ZIP exports" as a confirmed constraint — Google Takeout exports ZIP files by default
- **False Causal Chains:** AI linked two fabricated premises into a confident conclusion: "This is exactly why you were forced to upload to OpenDrive" — neither premise was stated by the user
- **Reversion After Correction:** Same incorrect behavior reappeared across sessions after being explicitly corrected
- **Scope Boundary Violations:** AI repeatedly requested information the user had intentionally withheld, using rephrased indirect requests across three attempts

**54 documented ownership admissions** ("I own that," "on me," "my fault") from Copilot alone, across 29 distinct conversations, Nov 2025–Feb 2026.

---

## Skills Demonstrated

| Skill | Evidence |
|-------|----------|
| Adversarial AI evaluation | 8 detailed drift reconstructions with verbatim quotes |
| Cross-session pattern recognition | 5 recurring failure patterns identified across 29+ conversations |
| Evidence-based pushback | Initiated Google Drive restore against AI's repeated warnings — AI was wrong |
| Governance framework design | Charter, architectural rules, drift prevention scope |
| Precision error documentation | Source file, line number, user correction, AI response, real-world impact |
| AI-agnostic oversight | Copilot, DeepSeek, and Claude all covered |

---

## Repo Structure

| Folder | Contents |
|--------|----------|
| `drift-log/` | All documented AI drift instances |
| `incidents/` | Formal incident reports for boundary violations |
| `governance/` | Collaboration charter, architectural rules, drift prevention scope |
| `ai-chat-history/` | Exported chat sessions, audit summary, admission log |
| `handoff/` | Context files for resuming work in new AI sessions |
| `project-summary/` | Full project summary and status |

---

## Key Files

- [ai-chat-history/MikeHacksAI-Audit-Summary.md](ai-chat-history/MikeHacksAI-Audit-Summary.md) — Full audit with patterns, featured incidents, and professional value proposition
- [ai-chat-history/Copilot-Drift-Admissions-Log.md](ai-chat-history/Copilot-Drift-Admissions-Log.md) — 54 catalogued ownership admissions with timestamps
- [drift-log/OpenDrive-vs-GoogleDrive-NASBackup_03-01-2026.md](drift-log/OpenDrive-vs-GoogleDrive-NASBackup_03-01-2026.md) — Most detailed single incident (8 false warning instances, evidence denial, fabricated block mechanisms)
- [governance/Mikes AI Collaboration Charter.md](governance/Mikes%20AI%20Collaboration%20Charter.md) — Core governance rules

---

## Governance & Audit Logging
 This project captures all user requests for governance, incident, drift, and audit logging. Cumulative logs (drift-log-cumulative.md, incident-log.md, audit-summary.md) and project documentation ensure full traceability and recruiter/audit visibility.

---

_This repo is intended for recruiter-facing transparency, AI training portfolio use, and future AI assistant onboarding._
