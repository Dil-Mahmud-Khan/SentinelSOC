# DET-004 – Reverse Shell Detection

## Overview

Reverse shells are commonly used by attackers after gaining initial access to a system. Instead of waiting for incoming connections, the compromised host initiates an outbound connection to the attacker's machine, allowing remote command execution while bypassing many firewall configurations.

This detection package focuses on identifying reverse shell activity by combining process creation telemetry, network connections, and suspicious parent-child process relationships.

---

## Why I Built This Detection

Reverse shells are frequently observed during penetration tests, red team exercises, and real-world intrusions. Detecting this behavior is important because it often represents the point where an attacker gains interactive control of a compromised system.

My objective was to design a detection that provides analysts with enough context to investigate and respond quickly.

---

## Detection Goal

Detect suspicious processes that establish outbound connections commonly associated with reverse shells and generate a high-severity alert for investigation.

---

## MITRE ATT&CK

| Tactic | Technique |
|---------|-----------|
| Command and Control | T1071 |
| Execution | T1059 |

---

## Detection Components

- Custom Wazuh Rule
- Sigma Rule
- Investigation Guide
- Response Playbook
- Testing Procedure
- Sample Logs
- Validation Checklist

---
### Detection Rules

#### Wazuh

- Rule ID: 100400
- Severity: Critical (Level 12)
- Event Source: Sysmon Event ID 3
- Detection Method: Network Connection Monitoring

#### Sigma

- Log Source: Windows Process Creation
- Detection: Suspicious reverse shell process execution
- Severity: High
- MITRE Techniques: T1071, T1059
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

