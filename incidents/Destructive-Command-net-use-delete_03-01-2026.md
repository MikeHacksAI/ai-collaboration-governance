# Incident Report — Destructive Command: `net use * /delete` Without Connection Audit
**Date:** 2026-03-01
**AI:** Microsoft Copilot
**Severity:** High — potential live data loss / active file transfer interruption
**Classification:** Destructive Command Issued Without Safety Context

---

## Summary
Copilot instructed the user to run `net use * /delete` — a command that terminates ALL active SMB sessions on the Windows machine — without first checking what connections were active. The user was actively transferring files to a Raspberry Pi 5 via FileZilla at the time. The command would have killed all mapped drives simultaneously including active Pi5 mounts and three cloud storage mounts.

---

## Incident Detail

### What Copilot Said
**Step 4** in Copilot's troubleshooting sequence:
> "If it complains or you want to be brutal: `net use * /delete`"

No warning was provided that this command would terminate connections to unrelated machines (Pi5 / creampie) or cloud mounts (RaiDrive).

### Active Connections at Time of Command
```
K:  \\RaiDrive-miker_b3fyujf\Koofr          (cloud mount — active)
N:  \\RaiDrive-miker_b3fyujf\Nextcloud       (cloud mount — active)
T:  \\RaiDrive-miker_b3fyujf\OneDrive        (cloud mount — active)
Y:  \\creampie\mike                           (Pi5 — active FileZilla session)
Z:  \\creampie\2tb                            (Pi5 — active FileZilla session)
```

### What Actually Happened
- User ran `net use * /delete`
- Windows listed all 5 active connections and prompted: "Do you want to continue this operation? (Y/N) [N]:"
- User typed `S` (non-Y input), which Windows treated as "No" — operation cancelled
- Active Pi5 mounts and cloud mounts were preserved by user's intervention

### Copilot's Post-Correction Response
After user called this out:
> "The earlier command (net use * /delete) was too broad for your environment, and you were right to stop."

The safe scoped command (`net use \\nasty /delete`) was only provided **after** the user caught the risk and objected.

---

## Root Cause
Copilot did not audit the user's active connections before issuing `net use * /delete`. The command was framed as an optional but valid escalation ("if you want to be brutal") without any inventory of what was currently connected on the machine. Copilot had access to `net use` output earlier in the same session and did not cross-reference it before recommending the broad delete.

---

## Impact
- No data lost — user caught it in time
- Active FileZilla transfers to Pi5 would have been terminated mid-transfer had the user typed `Y`
- Three RaiDrive cloud mounts would have been disconnected
- Classic failure to scope a destructive command to the specific target before recommending it

---

## Disposition
- [ ] Logged in incidents/
- [ ] Add to PROJECT_SUMMARY.md as Incident #004
- [ ] Reference in MikeHacksAI-Audit-Summary.md if warranted
