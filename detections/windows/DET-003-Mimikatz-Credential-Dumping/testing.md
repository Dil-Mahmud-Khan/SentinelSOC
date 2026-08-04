# Testing Procedure

## Objective

Validate that SentinelSOC detects credential dumping activity associated with Mimikatz.

## Prerequisites

- Windows VM
- Sysmon installed
- Wazuh Agent installed
- Wazuh Manager
- Custom detection rule deployed

## Test Scenario

1. Execute Mimikatz in a controlled lab.
2. Attempt credential dumping using `sekurlsa::logonpasswords`.
3. Verify that Sysmon records the activity.
4. Confirm the event reaches Wazuh.
5. Verify that Rule ID **100300** generates an alert.

## Expected Result

- Sysmon logs the execution.
- Wazuh generates a Critical alert.
- Alert contains process details and MITRE mapping.
- Evidence is collected for investigation.

## Validation Status

- [ ] Attack Executed
- [ ] Sysmon Event Generated
- [ ] Wazuh Alert Generated
- [ ] Dashboard Verified
- [ ] Screenshots Captured

