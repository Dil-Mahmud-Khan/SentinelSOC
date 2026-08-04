# Testing Procedure

## Objective

Validate that the custom Wazuh rule correctly detects PowerShell execution using the `-EncodedCommand` parameter.

## Prerequisites

- Windows endpoint
- Sysmon installed
- Wazuh Agent
- Wazuh Manager
- Custom rule deployed

## Test Command

```powershell
powershell.exe -EncodedCommand <Base64_String>

