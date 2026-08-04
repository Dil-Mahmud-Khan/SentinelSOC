# Testing Procedure

## Objective

Validate that SentinelSOC detects malicious Scheduled Task creation.

---

## Prerequisites

- Windows 11 VM
- Kali Linux VM
- Sysmon installed
- Wazuh Agent installed
- Wazuh Manager running
- Rule ID 100500 deployed

---

## Test Scenario

1. Create a scheduled task using `schtasks.exe`.
2. Configure it to execute PowerShell.
3. Verify Sysmon records the process.
4. Confirm Wazuh receives the event.
5. Verify Rule ID 100500 generates an alert.

---

## Expected Results

- Sysmon Event ID 1 generated.
- Scheduled Task event recorded.
- Wazuh alert generated.
- MITRE mapping displayed.
- Alert visible in Wazuh Dashboard.

---

## Validation Status

- [ ] Task created
- [ ] Sysmon Event ID 1 observed
- [ ] Task Scheduler event observed
- [ ] Wazuh alert generated
- [ ] Dashboard verified
- [ ] Screenshots captured

