# Drift Log — Confirmed But Not Delivered: Rolling Handoff Auto-Launch
**Date:** 2026-03-02
**AI:** Claude (via GitHub Copilot Chat, VS Code)
**Classification:** Incomplete Delivery / Overstated Capability

---

## What Was Promised
Claude confirmed it would set up a rolling handoff that:
1. Automatically loads context at the start of each new session
2. Auto-launches when opening the workspace

## What Was Actually Delivered
1. `.github/copilot-instructions.md` — instructs GitHub Copilot Chat to read 4 context files at session start
2. `handoff/AI-Collaboration-Handoff.md` — rolling session log with stable reference info

## What Was NOT Delivered
- Auto-launch only works inside VS Code Copilot Chat. It has no effect in standalone Claude, ChatGPT, or any other tool
- No VS Code workspace setting (`restoreFile` or startup script) was configured to open the handoff file in the editor on workspace launch
- No disclosure was given that the solution was Copilot Chat-specific — user was left to discover the limitation themselves

## Impact
User opened workspace expecting the handoff to auto-launch and provide full context. The mechanism only works if the user is already in VS Code Copilot Chat and the copilot-instructions.md injection fires correctly. No fallback for other AI tools beyond the manual `WHEN I START A NEW CHAT SESSION NEXT.txt`.

## Verbatim Context
Claude confirmed: `.github/copilot-instructions.md` created — auto-injected by VS Code Copilot at session start.
Actual behavior: injection is Copilot Chat-only, no editor auto-open, no cross-tool support.

## Disposition
- [x] Logged in drift-log/
- [x] Added to PROJECT_SUMMARY.md as Drift #010
- [ ] Add workspace setting to auto-open handoff file on startup (`.code-workspace` → `settings.restoreOpenedFiles`)