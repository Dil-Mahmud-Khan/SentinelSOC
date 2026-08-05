# Detection Engineering Dashboard

## Purpose

This document provides an overview of the detection engineering work completed in SentinelSOC.

Instead of reviewing each detection individually, I created this dashboard to track overall progress, measure coverage, and identify areas that still require development.

The goal is to maintain a structured engineering process rather than simply adding more detection rules.

---

# Current Progress

| Category | Status |
|----------|--------|
| Detection Packages | 5 |
| Engineering Complete | 5 |
| Lab Validated | 0 |
| Windows Detections | 4 |
| Linux Detections | 1 |
| Custom Wazuh Rules | 5 |
| Sigma Rules | 5 |

---

# Detection Maturity Model

Each detection follows the same engineering lifecycle.

| Stage | Description |
|--------|-------------|
| Design | Detection idea and objectives are defined. |
| Engineering | Documentation and detection logic are developed. |
| Lab Validation | Detection is tested in the lab using simulated attacks. |
| Rule Tuning | False positives are reduced and detection quality is improved. |
| Production Ready | Detection is validated and considered stable. |

At the current stage, all completed detections have reached the **Engineering** phase. Lab validation will begin once the Windows environment is available.

---

# Current Detection Coverage

| Detection ID | Technique | Platform | Status |
|--------------|-----------|----------|--------|
| DET-001 | SSH Brute Force | Linux | Engineering Complete |
| DET-002 | Encoded PowerShell | Windows | Engineering Complete |
| DET-003 | Mimikatz Credential Dumping | Windows | Engineering Complete |
| DET-004 | Reverse Shell | Windows | Engineering Complete |
| DET-005 | Scheduled Task Persistence | Windows | Engineering Complete |

---

# Engineering Decisions

While designing SentinelSOC, I decided to complete the engineering work before building the full virtual lab.

This approach allows me to focus on detection quality, documentation, and investigation procedures first. Once the lab environment is available, I can validate each detection, collect evidence, tune the rules, and update the documentation without redesigning the project structure.

---

# Challenges

Current limitations include:

- No dedicated SSD for a permanent virtual lab.
- Windows validation is pending.
- Dashboard screenshots are not yet available.

These limitations affect validation only. The engineering work continues independently and will be validated later.

---

# Next Milestones

- Upgrade DET-001 to match the new standard.
- Complete the repository architecture.
- Develop additional persistence detections.
- Build threat hunting modules.
- Implement automation for IOC enrichment.
- Validate detections after the lab environment is deployed.

