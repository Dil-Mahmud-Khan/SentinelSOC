# SentinelSOC Detection Catalog

The detection catalog is the authoritative summary of detection engineering
status.

Status must reflect the actual implementation state. Documentation alone does
not constitute validation.

| ID | Detection | Platform | MITRE ATT&CK | Severity | Status |
|----|-----------|----------|--------------|----------|--------|
| DET-001 | SSH Brute Force | Linux | T1110 | High | Needs Repair |
| DET-002 | Encoded PowerShell | Windows | T1059.001 | High | Pending Validation |
| DET-003 | Mimikatz Credential Dumping | Windows | T1003 | Critical | Pending Validation |
| DET-004 | Reverse Shell Detection | Windows | T1071 / T1059 | Critical | Pending Validation |
| DET-005 | Scheduled Task Persistence | Windows | T1053.005 | High | Pending Validation |

---

## Status Definitions

### Needs Repair

The detection already exists but contains implementation, configuration,
documentation, or evidence problems that must be corrected before validation.

### Engineering Complete

The detection package contains the required engineering artifacts and
detection logic, but operational validation has not yet been completed.

### Pending Validation

The engineering work is substantially present, but the detection still requires
successful lab validation and supporting evidence.

### Validated

The detection has been successfully tested against the intended telemetry and
produced the expected detection result, with evidence documented.

### Production Ready

The detection has been validated, tuned, documented, and reviewed for
operational use.
