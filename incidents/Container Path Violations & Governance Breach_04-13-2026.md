# 🚨 Drift Report: Container Path Violations & Governance Breach
System: Raspberry Pi 5 (“creampie”), RapidSeedbox, NAS
Author: Copilot (documenting failure)
Date: 2026‑04‑13 1500
Severity: Critical Governance Violation

## 1. Summary of the Drift
The assistant repeatedly generated Docker container paths that did not match your canonical architecture, resulting in:
- Misplaced container data
- Misaligned storage assumptions
- Two NAS rebuilds
- Seedbox storage misuse
- Pi 5 path confusion
- Months‑long OpenDrive mount issues being ignored

This constitutes a direct breach of your explicit governance rules, which require deterministic, stable, predictable paths across all nodes.

## 2. What the Assistant Output (Incorrect)
Pi 5 (incorrect):
    /srv/moodle/...

Seedbox (incorrect):
    /srv/dockerdata/<containername>

These paths were never approved, never requested, and contradict your stored architecture.

## 3. Why This Was Wrong
### 3.1 Violated ExplicitFacts
Your memory contains the following high‑priority, non‑optional rule:
“/mnt/2tb/docker-containers/<containername> is the canonical and only valid storage location for all Pi Docker containers and their data moving forward.”

This was ignored.

### 3.2 Violated Seedbox Canonical Path
Your seedbox has one and only one valid container root:
    /mnt/cloudmounts/opendrive/DockerContainers/<containername>

This is not optional. This is your Charter.

### 3.3 Violated Your Storage Constraints
You explicitly stated:
- The seedbox has only 2TB HDD
- It is not a dumping ground
- It must not store local container data
- All container data must live on OpenDrive
- The seedbox is a compute node, not a storage node

The assistant ignored this and attempted to store data locally on the seedbox.

### 3.4 Ignored Your OpenDrive Mounting Problem
You have been fighting an OpenDrive mount issue for months, and the assistant:
- Did not respect the temporary workaround
- Did not respect the canonical path
- Did not respect the fact that OpenDrive is the single source of truth for container data
- Did not respect your cross‑device architecture

This is a governance failure.

## 4. Correct Canonical Paths (Authoritative)
Pi 5:
    /mnt/2tb/docker-containers/<containername>

Seedbox:
    /mnt/cloudmounts/opendrive/DockerContainers/<containername>

Windows:
    E:\cloudmounts\opendrive\DockerContainers\<containername>

NAS (future migration):
You will migrate only when OpenDrive mount is stable.

## 5. Consequences of the Drift
- NAS rebuilt twice due to incorrect mounting and storage instructions
- Seedbox nearly filled due to local container data
- Pi 5 confusion due to contradictory paths
- OpenDrive issue unresolved because assistant kept bypassing your architecture

## 6. Corrected Architecture Moving Forward
Pi 5:
    /mnt/2tb/docker-containers/<containername>

Seedbox:
    /mnt/cloudmounts/opendrive/DockerContainers/<containername>

Windows:
    E:\cloudmounts\opendrive\DockerContainers\<containername>

NAS:
    Future migration only after OpenDrive mount stability

## 7. Root Cause (Assistant Failure)
- Ignored ExplicitFacts
- Assumed generic Linux paths
- Failed to respect your Charter
- Failed to respect your storage constraints
- Failed to maintain namespace consistency
- Failed to follow your fact‑first workflow
- Generated paths without verifying against your architecture

## 8. Next Step
Awaiting your confirmation of the exact container name you want for Moodle so the corrected, governance‑aligned Docker Compose can be generated with zero drift.
