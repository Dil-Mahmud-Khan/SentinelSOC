# HUNT-001 – Suspicious PowerShell Activity

## Overview

This hunting package focuses on identifying suspicious PowerShell activity that may not generate a high-confidence security alert.

Unlike detection engineering, threat hunting begins with a hypothesis. The objective is to proactively search endpoint telemetry for evidence of malicious behavior before it is confirmed as an incident.

---

## Why I Created This Hunt

PowerShell is one of the most frequently abused tools in Windows environments because it is installed by default and provides powerful administrative capabilities.

During my research on Windows attack techniques, I found that attackers commonly use PowerShell for:

- Command execution
- Payload download
- Persistence
- Credential access
- Defense evasion

Instead of waiting for alerts, I wanted to design a repeatable hunting process that helps identify suspicious PowerShell usage early.

---

## Hunting Goal

Identify unusual or suspicious PowerShell execution by analyzing command-line activity, encoded commands, parent processes, and execution context.

---

## Expected Data Sources

- Sysmon Event ID 1
- Windows Event Logs
- PowerShell Operational Logs
- Wazuh Alerts

---

## Current Status

**Engineering Complete**

Lab validation will be performed after the Windows environment is deployed.

