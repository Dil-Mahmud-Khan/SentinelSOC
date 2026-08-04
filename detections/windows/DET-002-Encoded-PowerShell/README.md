# DET-002 – Encoded PowerShell Detection

## Overview

PowerShell is one of the most powerful administrative tools available on Windows systems, which also makes it a popular target for attackers. During my research, I found that many malware families, penetration testing frameworks, and ransomware groups use the `-EncodedCommand` parameter to hide malicious commands from administrators and basic security monitoring.

For this detection, I created a custom Wazuh rule to identify PowerShell executions containing encoded commands. The objective is to provide analysts with an early warning of suspicious activity and a clear investigation path before the attack progresses further.

---

## Why I Built This Detection

I selected this technique because it is frequently observed in real-world attacks and is mapped to the MITRE ATT&CK Execution tactic (T1059.001).

Rather than relying only on default detection rules, I wanted to understand how encoded PowerShell commands appear in Windows logs, how Wazuh processes those events, and how analysts should investigate them.

---

## Detection Goal

Detect PowerShell executions that use the `-EncodedCommand` or `-enc` parameter and generate a high-severity alert for analyst review.

---

## MITRE ATT&CK

| Tactic | Technique |
|---------|-----------|
| Execution | T1059.001 – PowerShell |

---

## Detection Components

- Custom Wazuh Rule
- Sigma Rule
- Investigation Guide
- Response Playbook
- Sample Sysmon Log
- Testing Procedure
- Validation Checklist

---
