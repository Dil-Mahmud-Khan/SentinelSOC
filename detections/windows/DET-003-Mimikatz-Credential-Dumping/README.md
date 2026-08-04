# DET-003 – Mimikatz Credential Dumping Detection

## Overview

Credential dumping is one of the most critical techniques used by attackers after gaining access to a Windows system. By extracting credentials from memory, attackers can impersonate legitimate users, move laterally across the network, and escalate privileges.

For this detection, I designed a custom detection package to identify activities associated with Mimikatz credential dumping. The detection uses Windows telemetry together with custom Wazuh and Sigma rules to help SOC analysts quickly identify and investigate suspicious credential access attempts.

---

## Why I Built This Detection

Credential theft is a common objective during real-world intrusions. Since Mimikatz is one of the most well-known credential dumping tools, I wanted SentinelSOC to include a detection capable of identifying this behavior and guiding analysts through a structured investigation process.

---

## Detection Goal

Detect suspicious processes and indicators associated with Mimikatz credential dumping and generate high-severity alerts for SOC investigation.

---

## MITRE ATT&CK

| Tactic | Technique |
|---------|-----------|
| Credential Access | T1003 – OS Credential Dumping |

---

## Detection Components

- Custom Wazuh Rule
- Sigma Rule
- Investigation Guide
- Response Playbook
- Testing Procedure
- Sample Logs
- Validation Checklist
### Detection Rules
#### Sigma

- Log Source: Windows Process Creation
- Detection: Mimikatz process execution
- Severity: Critical
- MITRE Technique: T1003
#### Wazuh

- Rule ID: 100300
- Severity: Critical (Level 12)
- Event Source: Sysmon Event ID 1
- Detection Method: Process Creation Monitoring
---

## Current Status

| Component | Status |
|----------|--------|
| Documentation | ✅ Complete |
| Wazuh Rule | ⏳ Pending |
| Sigma Rule | ⏳ Pending |
| Investigation Guide | ⏳ Pending |
| Response Playbook | ⏳ Pending |
| Testing Procedure | ⏳ Pending |
| Sample Logs | ⏳ Pending |
| Lab Validation | ⏳ Pending |