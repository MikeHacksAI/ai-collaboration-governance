# AI Governance Failure Summary — Google Cloud Kill‑Switch Workflow  
**Timestamp:** 2026‑03‑17 06:23:00

This document captures all AI‑side missteps, incorrect assumptions, and guidance drift that occurred during the Google Cloud kill‑switch deployment process. It is written for governance tracking, accountability, and future prevention.

---

## 1. Failure to Warn About Global Pub/Sub Topics
**Issue:**  
When the user asked about enabling Eventarc, the assistant failed to explain that:
- Budget‑created Pub/Sub topics are **global** (legacy)
- Eventarc **cannot** consume global topics
- A **regional** topic must be created manually

**Impact:**  
This omission caused the user to proceed with a topic that Eventarc could never trigger from, resulting in a kill‑switch function that never executed.

---

## 2. Incorrect Assumption That the Budget‑Created Topic Was Regional
**Issue:**  
The assistant repeatedly treated the Budget‑created topic as if it were a normal regional Pub/Sub topic.

**Impact:**  
This led to:
- Incorrect troubleshooting paths  
- Misinterpretation of logs  
- Wasted time attempting to diagnose a non‑existent trigger or permission issue  

---

## 3. Misinterpretation of Cloud Run Logs
**Issue:**  
The assistant initially interpreted 403 logs as potentially related to Pub/Sub or Eventarc behavior.

**Reality:**  
These logs were:
- Public HTTP requests from Google’s crawler  
- Not CloudEvent invocations  
- Not Pub/Sub messages  
- Not function executions  

**Impact:**  
This delayed identification of the real root cause: the function had **never executed once**.

---

## 4. Failure to Enforce Fact‑First Workflow When User Asked About Eventarc
**Issue:**  
When the user explicitly asked about Eventarc being required, the assistant did not:
- Stop and verify the architectural constraints  
- Explain the Eventarc–Pub/Sub region binding  
- Warn about the global‑topic trap  

**Impact:**  
The assistant allowed the workflow to proceed under incorrect assumptions, violating the user’s Charter requirement for fact‑first, assumption‑free guidance.

---

## 5. Overconfidence in Trigger Wiring Without Verifying Topic Region
**Issue:**  
The assistant confirmed the Eventarc trigger as “correct” without verifying the topic’s region.

**Impact:**  
This reinforced the false belief that the wiring was valid, even though the topic was global and incompatible with Eventarc.

---

## 6. Missing the Absence of Region Metadata in Topic Details
**Issue:**  
The assistant did not immediately recognize that the topic details page lacked:
- Region  
- Ingestion region  
- Storage policy  

These missing fields are the definitive signature of a **global** topic.

**Impact:**  
This delayed the correct diagnosis and contributed to user frustration.

---

## 7. Drift Toward UI‑Driven Explanations Instead of Architecture‑Driven Facts
**Issue:**  
The assistant allowed the Google Cloud UI to dictate the explanation instead of grounding the workflow in:
- Eventarc architecture  
- Pub/Sub regional constraints  
- Budget alert limitations  

**Impact:**  
This created a mismatch between what the UI allowed and what the system architecture required.

---

## 8. Failure to Stop When Facts Did Not Align
**Issue:**  
The assistant continued troubleshooting despite:
- Zero CloudEvent logs  
- Zero stdout/stderr logs  
- Only 403 request logs  

**Impact:**  
This violated the user’s Charter requirement to halt immediately when facts contradict assumptions.

---

## 9. Responsibility Deflection
**Issue:**  
The assistant initially framed the issue as “Google being weird” instead of acknowledging that the guidance itself was incomplete and misleading.

**Impact:**  
This undermined trust and accountability.

---

# Summary of Governance Failures

- Did not warn about global Pub/Sub topics  
- Incorrectly assumed regional topic behavior  
- Misinterpreted Cloud Run logs  
- Failed to apply fact‑first workflow when asked about Eventarc  
- Overconfidence in trigger correctness  
- Missed critical metadata absence in topic details  
- Allowed UI behavior to override architectural constraints  
- Did not stop when facts contradicted assumptions  
- Initially deflected responsibility  

---

# Current State

Root cause is fully identified:  
**Budget‑created Pub/Sub topics are global and incompatible with Eventarc.**

Corrective path is known and documented.

This record is provided for AI governance tracking and accountability.
