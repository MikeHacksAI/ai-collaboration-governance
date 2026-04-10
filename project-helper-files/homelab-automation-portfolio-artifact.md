# Homelab Automation Portfolio Artifact

## Status

Completed automation components with reproducible scripts and operational controls. This artifact summarizes implemented work from active homelab projects.

## Public-Safe Summary

Designed and implemented homelab automation workflows focused on reliability, repeatability, and drift control. Built self-healing cloud mount automation with health checks, cooldown logic, process validation, and systemd timer orchestration. Added model-management automation for self-hosted AI operations, including batch model download and duplicate prevention.

## Implemented Automation Highlights

### 1) Self-Healing Cloud Mount Automation (Rclone + Linux)

Primary script: `cloud-mounts-project/scripts/mount_accessible_remotes.sh`

Implemented capabilities:
- Pre-flight stale mount sweep and healing
- Backing-process health checks before remount attempts
- PID tracking per remote for targeted teardown
- Distinct cooldown windows by failure category
- Auto-resolution path for "directory already mounted" conditions
- Root-owned process detection with explicit operator guidance
- Union mount rebuild flow for current healthy sources

Operational outcome:
- Reduced mount churn, improved remount reliability, and safer unattended recovery behavior.

### 2) Seedbox Remount Stack Deployment Automation (Systemd)

Deployment script: `cloud-mounts-project/scripts/deploy_seedbox_remount_stack.sh`

Implemented capabilities:
- Dry-run and execute modes for safe rollout
- Backups of existing systemd units before changes
- Service/timer deployment and daemon reload workflow
- Recovery run sequence (unmount, remount, health check)
- Timer enablement and status verification
- Rollback-ready deployment output

Operational outcome:
- Repeatable remount stack deployment and predictable recovery operations.

### 3) Self-Hosted AI Model Management Automation (Ollama)

Automation script: `self-hosted-ai/scripts/ollama-download-models.sh`

Implemented capabilities:
- Batch model selection workflow
- Optional all-model run mode
- Duplicate-download avoidance by checking installed models
- Scripted model bootstrap for local AI environments

Operational outcome:
- Faster model provisioning and reduced manual setup effort.

## Tooling and Stack

- Bash
- PowerShell (project-level orchestration patterns)
- Rclone
- Systemd service/timer automation
- Linux mount and process controls
- Ollama model operations

## Reliability and Governance Pattern

- Idempotent script design for repeat runs
- Dry-run options before apply actions
- Explicit error handling and operator guidance
- Recovery-first sequencing
- Documented rollback paths

## Recruiter-Facing Blurb

Built homelab automation workflows for storage mount reliability and self-hosted AI operations, including self-healing remount logic, systemd timer deployment automation, and model management scripts. Focused on reproducibility, safe rollout controls, and operational resilience.

## LinkedIn Featured Metadata

- Title: Homelab Automation Portfolio Artifact
- Description: Implemented self-healing cloud mount automation, systemd-based remount stack deployment, and self-hosted AI model management scripts with reliability and rollback controls.
