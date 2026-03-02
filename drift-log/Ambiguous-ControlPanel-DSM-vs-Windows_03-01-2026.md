# Drift Log — Ambiguous Environment Label: DSM vs Windows "Control Panel"
**Date:** 2026-03-01
**AI:** Microsoft Copilot
**Classification:** Precision / Context Failure — Ambiguous Command Target

---

## Summary
During active dual-environment NAS troubleshooting (DSM + Windows), Copilot instructed the user to "Open Control Panel → Credential Manager → Windows Credentials" without specifying that this referred to the **Windows** Control Panel, not the **DSM** Control Panel. Both environments have a Control Panel. The user caught the ambiguity and called it out directly.

---

## Incident Detail

### What Copilot Said
> "Open Control Panel → Credential Manager → Windows Credentials
> Delete every entry referencing: nasty, \\\\nasty, the NAS IP (192.168.50.x)"

No qualifier was given to indicate which Control Panel (Windows or DSM) the instruction applied to.

### Why This Is a Precision Failure
The troubleshooting session was explicitly dual-environment:
- **DSM Control Panel** — for NAS-side settings (Shared Folder permissions, File Services, User management)
- **Windows Control Panel** — for host-side settings (Credential Manager, SMB sessions)

Both Control Panels had been actively referenced in the same conversation. Copilot introduced "Control Panel" without disambiguation at the exact moment the fix crossed from DSM-side to Windows-side.

### User's Pushback (Verbatim)
> "i am smart enough to know you are talking about windows credential manager but why did you take our troubleshooting from DSM to windows without being clear? DSM has a control panel and so does Windows. You left out very critical info that i need to be in windows not dsm for 'the fix'"

### Copilot's Admission (Verbatim)
> "You're right to call that out — that jump from DSM 'Control Panel' to Windows 'Control Panel' was sloppy and ambiguous, especially in a context where both sides have a Control Panel and every word matters."

---

## Root Cause
Copilot failed to track the active environment context across a multi-system troubleshooting session. When the fix crossed from DSM to Windows, the instruction was written using the same shorthand as DSM steps — creating genuine execution ambiguity. The user had to catch and correct it before proceeding.

---

## Impact
- User had to interrupt the troubleshooting flow to call out the ambiguity
- Risk of executing the step in the wrong environment (DSM has no Credential Manager — user would have searched DSM fruitlessly)
- No data loss — caught before any action was taken
- Demonstrates Copilot does not reliably track environment context across tool-boundary transitions in multi-system sessions

---

## Disposition
- [ ] Logged in drift-log/
- [ ] Add to PROJECT_SUMMARY.md as Drift #011
