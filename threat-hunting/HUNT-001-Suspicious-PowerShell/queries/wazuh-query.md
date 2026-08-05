# Wazuh Hunting Query

## Objective

Identify PowerShell processes that may indicate suspicious or malicious activity.

---

## Data Source

- Sysmon Event ID 1
- Windows Process Creation Events

---

## Hunt Focus

Look for PowerShell executions containing:

- -EncodedCommand
- -enc
- IEX
- Invoke-Expression
- DownloadString
- DownloadFile
- WebClient
- FromBase64String

---

## Expected Outcome

Normal administrative PowerShell activity should be limited.

Any encoded commands or download functions should be investigated to determine whether they represent legitimate administration or malicious execution.

---

## Current Status

Query design complete.

Validation will be performed after the Windows lab is deployed.

