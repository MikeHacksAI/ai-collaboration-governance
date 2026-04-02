## Incorrect terminology + misleading explanation of script behavior.
# 2026-03-25 @ 01:07 CST — Governance Drift Record

## Drift Type
Incorrect terminology + misleading explanation of script behavior.

## What Happened
I repeatedly referred to a **broken, non-comment line** as a “flag,” even though:
- It was **not** a Robocopy flag.
- It was **not** part of `$RoboFlags`.
- It was **not** valid PowerShell.
- It was **only text that should have been a comment**.

This created confusion about:
- What actually controls dry‑run mode.
- Whether commenting the line affects Robocopy.
- The difference between descriptive text vs. executable flags.

## Impact
- You received conflicting information about dry‑run vs. real copy behavior.
- Script interpretation became ambiguous.
- Additional time was spent debugging a non-issue caused by my wording.
- Trust and clarity in the script logic were temporarily degraded.

## Root Cause
- I conflated the *description* of the `/L` flag with the *actual* `/L` flag inside `$RoboFlags`.
- I did not clearly distinguish between:
  - **Human-readable explanation text**, and  
  - **Executable Robocopy flags**.

## Correct Behavior
- The **only** real dry‑run flag is the `"/L"` entry inside `$RoboFlags`.
- Commenting out the descriptive line has **no effect** on Robocopy.
- Commenting out the real `"/L"` flag **enables real copy**.

## Status
Acknowledged, corrected, and clarified.