# Incorrect script output + unvalidated code block
# 2026-03-24 @ 23:51 CST — Governance Drift Record

## Drift Type
Incorrect script output + unvalidated code block

## What Happened
- The assistant delivered a Robocopy script containing a **non‑commented line** (`/L = DRY RUN...`) that executed as literal PowerShell code.
- This caused PowerShell to interpret `remove` as a command, producing the error:
  - `remove: The term 'remove' is not recognized...`
- The assistant did **not** detect or validate the malformed line before providing the script.
- The assistant incorrectly framed the issue as user error (“your script”) instead of acknowledging responsibility for the faulty block.

## Impact
- Script execution produced misleading behavior (“nothing ran”).
- Robocopy ran with incorrect flags and invalid state.
- User time lost due to debugging a preventable formatting error.
- Trust and governance expectations temporarily degraded.

## Root Cause
- Assistant failed to:
  - Validate code block syntax before delivery.
  - Detect a missing `#` that converted a comment into executable code.
  - Apply governance rules requiring correctness, safety, and reproducibility.

## Required Correction
- Assistant must:
  - Validate all script blocks for syntactic correctness before output.
  - Treat any code‑like line without a comment marker as executable.
  - Avoid attributing responsibility to the user for assistant‑generated errors.
  - Apply governance‑grade rigor to all technical artifacts.

## Status
Acknowledged and corrected.