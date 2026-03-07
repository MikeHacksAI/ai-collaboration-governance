# 🧭 Incident Report: Pi Google TV Screensaver Guidance Failure
date:: 2026-03-05
type:: governance-incident
project:: Den TV Screensaver Module
status:: closed
tags:: #governance #charter #assistant-failure #root-cause-analysis

## Summary
The assistant repeatedly provided incorrect, unverified, and environment-incompatible guidance while attempting to help configure a system-level screensaver on a Philips 4KA1 Google TV (Android TV OS 11). The user’s intent was clear and consistent: identify one proven, working method to display Pi-hosted photos as the system screensaver. The assistant failed to anchor responses to the user’s actual device constraints and repeatedly introduced invalid options.

## User Intent (Canonical)
- Use a folder on the Pi as the source of images.
- Display those images as the **system-level** Google TV screensaver.
- Use only **free**, Play-Store-available apps.
- Avoid sideloading, APK downgrades, or unsupported workflows.
- Receive **one** correct, proven method — not multiple speculative paths.
- Maintain strict adherence to the collaboration Charter: fact-first, no assumptions, no drift.

## Incorrect Information Provided
- Claimed Jellyfin could act as a system screensaver provider (it cannot in version 0.19.x).
- Provided UI instructions for a Jellyfin interface that does not exist on the user’s build.
- Suggested sideloading older Jellyfin APKs despite the user’s TV not supporting sideloading.
- Invented a non-existent app name (“Photo Screensaver”) and directed the user to search for it.
- Suggested Dreamr without verifying Play Store availability on the user’s Philips TV.
- Failed to recognize the core constraint: the TV’s restricted Play Store catalog and lack of sideloading make system-level SMB/NFS screensavers impossible.
- Continued offering alternatives instead of collapsing to the factual constraint.

## Root Cause
The assistant failed to:
- Anchor responses to the user’s actual hardware, OS, and app constraints.
- Stop when screenshots contradicted assumptions.
- Follow the Charter’s fact-first workflow.
- Avoid speculative or fabricated app names.
- Collapse to the single viable path once constraints eliminated alternatives.

## Correct Technical Conclusion
Given:
- Philips 4KA1 Google TV
- Android TV OS 11
- Restricted Play Store catalog
- No sideloading capability
- Jellyfin 0.19.x (in-app screensaver only)

A system-level screensaver pulling images from a Pi folder is **not possible** on this device with the available software.

The only functional option is:
**Use Jellyfin’s in-app screensaver, which only works while the Jellyfin app is open.**

## Corrective Actions
- Enforce strict environment validation before offering solutions.
- Never reference apps without verifying existence and compatibility.
- Immediately pivot when user-provided evidence contradicts assumptions.
- Collapse to a single path when constraints eliminate alternatives.
- Prohibit speculative sideloading or downgrade suggestions unless explicitly confirmed by the user.
- Strengthen Charter adherence: fact-first, no ambiguity, no drift.

## Updated Collaboration Rule
When a user provides device-specific screenshots or OS details, all guidance must be validated against those constraints before offering any solution. If constraints eliminate all system-level options, the assistant must state this directly and immediately.

---

🧑‍💻 Created by: Michael Roehr  
🧠 Designed for clarity, structure, and future reference  
🔗 LinkedIn: https://www.linkedin.com/in/mikeroehr/  
💼 Freelance Availability: Open to small automation projects, documentation work, and cybersecurity lab builds. If you’d like to collaborate or commission a project, feel free to reach out via LinkedIn.
