# Testing Procedure

## Objective

Validate that SentinelSOC detects reverse shell activity on a Windows endpoint.

---

## Prerequisites

- Windows VM
- Kali Linux VM
- Sysmon installed
- Wazuh Agent installed
- Wazuh Manager running
- Custom Rule 100400 deployed

---

## Test Scenario

1. Start a Netcat listener on Kali.
2. Execute a PowerShell reverse shell from Windows.
3. Verify Sysmon logs process creation and network connection events.
4. Confirm the events are received by Wazuh.
5. Verify that Rule ID 100400 generates an alert.

---

## Expected Results

- Sysmon Event ID 1 generated.
- Sysmon Event ID 3 generated.
- Wazuh alert generated.
- MITRE mapping displayed.
- Alert visible in the Wazuh dashboard.

---

## Validation Status

- [ ] Reverse shell executed
- [ ] Sysmon Event ID 1 observed
- [ ] Sysmon Event ID 3 observed
- [ ] Wazuh alert generated
- [ ] Dashboard verified
- [ ] Screenshots captured

