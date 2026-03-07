# Project Requirements — AI Collaboration Governance

**Purpose:**
Defines the functional, technical, and quality requirements for this project. Update as requirements evolve.

---

## Functional Requirements
- [ ] Track and log all AI drift and incident events
- [ ] Maintain session continuity and handoff logs
- [ ] Provide recruiter-facing audit and summary files

## Technical Requirements
- [ ] All logs and handoff files must be append-only (no destructive edits)
- [ ] Git version control with dual remote push (Azure DevOps + GitHub)
- [ ] All automation scripts must be idempotent and safe


## Quality Requirements
- [ ] All documentation must be clear, timestamped, and reproducible
- [ ] No sensitive data in public logs or summaries
- [ ] Workspace must be runnable and handoff-ready at all times

---

## Drift Logging & Presentation Requirements
 ✨ Maintain a single, cumulative **drift-log-cumulative.md** as the primary recruiter/audit-facing log.
 🔗 Each drift/adherence incident must be summarized in drift-log-cumulative.md and link to a detailed markdown file in drift-log/.
 🎨 All drift/adherence logs must use visually engaging markdown: include emojis, bold/italic text, and clear section headers for readability and impact.
 🚫 Avoid plain, generic formatting—make logs stand out and be memorable to readers.

---

## Governance & Audit Logging Requests
- All user requests for governance, incident, drift, and audit logging must be captured and processed in cumulative logs (drift-log-cumulative.md, incident-log.md, audit-summary.md).
- Requests to backtrace, summarize, or cross-link chat history files must be logged and referenced in project documentation.
- Project must maintain clear traceability for all governance and audit actions, including user-driven requests for review, summary, and logging.

---

*Update this file as requirements change or new features are added.*

## Automation Requirement
Automatically create a recruiter-audit-ready incident log in incidents/ for every governance issue uploaded (filename matches source)

## Governance Incident: NAS Rebuild Failure (March 4, 2026)

User attempted to rebuild NAS for a single 24TB pool using two 12TB drives, following Microsoft Copilot's advice. The guidance was incorrect, resulting in only one drive being usable. After a second rebuild attempt, Copilot again provided wrong instructions. Google Assistant independently confirmed Copilot's advice was incorrect both times, and a full rebuild was required.

See incidents/NAS-Rebuild-Required-24TB-Pool-Governance-Drift_03-04-2026.md for full details. This incident is logged for governance and audit visibility.
