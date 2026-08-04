# DET-005 – Scheduled Task Persistence Detection

## Overview

Windows Scheduled Tasks provide a legitimate mechanism for automating system and administrative activities. Attackers frequently abuse this functionality to establish persistence by configuring malicious programs or scripts to execute automatically at system startup, user logon, or scheduled intervals.

This detection package focuses on identifying suspicious scheduled task creation and modification events using Windows telemetry, Sysmon, and Wazuh.

---

## Why I Built This Detection

Scheduled Tasks are a widely used persistence mechanism because they blend in with legitimate system administration. Detecting unauthorized task creation helps identify attackers attempting to maintain long-term access after the initial compromise.

---

## Detection Goal

Detect suspicious creation or modification of Windows Scheduled Tasks that could indicate persistence.

---

## MITRE ATT&CK

| Tactic | Technique |
|---------|-----------|
| Persistence | T1053.005 – Scheduled Task |

---

## Detection Components

- Custom Wazuh Rule
- Sigma Rule
- Investigation Guide
- Response Playbook
- Testing Procedure
- Validation Checklist
- Sample Logs

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
| Lab Validation | ⏳ Pending |

