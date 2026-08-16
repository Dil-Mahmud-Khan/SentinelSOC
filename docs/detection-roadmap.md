# SentinelSOC Detection Roadmap

This roadmap tracks the engineering and validation state of SentinelSOC
detections.

A detection is not considered validated merely because its documentation
or detection logic exists. Validation requires successful testing in the
lab and supporting evidence.

## Status Definitions

- **Needs Repair** — Existing implementation or documentation requires correction.
- **Engineering Complete** — Detection package and engineering artifacts exist.
- **Pending Validation** — Engineering is complete, but lab validation/evidence is incomplete.
- **Validated** — Detection has been successfully tested in the lab with supporting evidence.
- **Production Ready** — Detection has been validated, tuned, documented, and reviewed for operational use.

---

## Phase 1 - Core Detections

| ID | Detection | Status |
|----|-----------|--------|
| DET-001 | SSH Brute Force | Needs Repair |
| DET-002 | Encoded PowerShell | Pending Validation |
| DET-003 | Mimikatz Credential Dumping | Pending Validation |
| DET-004 | Reverse Shell Detection | Pending Validation |

---

## Phase 2 - Persistence

| ID | Detection | Status |
|----|-----------|--------|
| DET-005 | Scheduled Task Persistence | Pending Validation |
| DET-006 | Registry Run Keys | Not Started |
| DET-007 | Windows Service Creation | Not Started |

---

## Phase 3 - Discovery

| ID | Detection | Status |
|----|-----------|--------|
| DET-008 | System Discovery | Not Started |
| DET-009 | Account Discovery | Not Started |
| DET-010 | Network Discovery | Not Started |

---

## Phase 4 - Lateral Movement

| ID | Detection | Status |
|----|-----------|--------|
| DET-011 | PsExec | Not Started |
| DET-012 | RDP | Not Started |
| DET-013 | SMB | Not Started |

---

## Phase 5 - Defense Evasion

| ID | Detection | Status |
|----|-----------|--------|
| DET-014 | LOLBins | Not Started |
| DET-015 | Defender Tampering | Not Started |

---

## Phase 6 - Impact

| ID | Detection | Status |
|----|-----------|--------|
| DET-016 | Ransomware Behavior | Not Started |
| DET-017 | Mass File Deletion | Not Started |

---

## Current Phase

**Phase 0 — Repository and Implementation Repair**

Before adding new detection content, existing detections and SOC components
will be reviewed, repaired, validated, and brought into alignment with the
engineering standards.

Phase 1 expansion will begin only after the Phase 0 repair process is complete.
