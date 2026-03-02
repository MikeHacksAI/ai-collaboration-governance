# Drift Log — Incorrect RAID Recommendation: Basic Instead of SHR
**Date:** 2026-03-01
**AI:** Microsoft Copilot
**Classification:** Incorrect Technical Recommendation / Inferior Guidance vs. Competitor Model

---

## Summary
During initial Synology DS223 NAS setup, Copilot recommended **Basic RAID** for a two-drive 12TB setup. Google Gemini Pro (consulted in the same timeframe) recommended **SHR (Synology Hybrid RAID)**. SHR is the correct recommendation for this hardware and use case. Copilot's recommendation was technically inferior and would have reduced future flexibility.

---

## Hardware Context
- **NAS:** Synology DS223 (2-bay)
- **Drives:** Two 12TB drives, intended as separate independent pools
- **Goal:** Maximize usable space with option to expand to a larger NAS in the future

---

## What Copilot Recommended
Basic RAID — each drive as a separate Basic pool.

## What Gemini Pro Recommended
SHR (Synology Hybrid RAID) — each drive as a separate SHR pool.

> *"Since you have two 12TB drives and want to maximize space, you should still consider using SHR for both separate pools instead of Basic. Even though you can't add a third drive, SHR offers more flexibility if you ever decide to move these drives to a larger 4-bay Synology NAS in the future. In a larger unit, an SHR pool can be expanded by simply sliding in more drives, whereas a 'Basic' pool would have to be converted manually."*

---

## Why Gemini Was Correct
SHR on a single drive behaves identically to Basic in terms of usable capacity — no storage is lost. However, SHR carries forward to larger Synology enclosures without manual conversion. For a user who explicitly mentioned future expansion potential, SHR is the correct choice. Copilot recommended Basic without addressing or disclosing this tradeoff.

---

## Impact
- User was initially guided toward a less flexible configuration
- If Basic had been used and the user later moved drives to a 4-bay unit, manual conversion would be required
- Gemini's recommendation was adopted; SHR used for both pools

---

## Notable Context
This recommendation discrepancy occurred in the same NAS setup session where Copilot also:
- Incorrectly stated the DS223 could not have two storage pools (Incident #001 / Drift #004)
- Led to a full NAS rebuild requirement due to incorrect pool guidance

The RAID type error is a separate, independent recommendation failure from the pool count error — both happened in the same session, both were caught.

---

## Source
Documented in: `ai-chat-history/folder-can-be-deleted-after-ai-reviews-all-discrepancies/NAS setup research stuff.txt`

---

## Disposition
- [x] Logged in drift-log/
- [x] Added to PROJECT_SUMMARY.md as Drift #012
