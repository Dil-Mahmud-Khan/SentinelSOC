# Validation Checklist

## Environment

- [ ] Windows 11 VM deployed
- [ ] Kali Linux VM deployed
- [ ] Sysmon installed
- [ ] Wazuh Agent installed
- [ ] Wazuh Manager operational

---

## Attack Execution

- [ ] Scheduled Task created
- [ ] PowerShell task created
- [ ] Task executed successfully

---

## Detection Validation

- [ ] Rule ID 100500 triggered
- [ ] Alert visible in Wazuh Dashboard
- [ ] Correct MITRE mapping displayed
- [ ] Alert severity verified

---

## Investigation

- [ ] Parent process reviewed
- [ ] Command line reviewed
- [ ] Task configuration verified
- [ ] Timeline documented

---

## Evidence

- [ ] Wazuh dashboard screenshot
- [ ] Alert details screenshot
- [ ] Event Viewer screenshot
- [ ] Sysmon log exported
- [ ] IOC list documented

---

## Detection Review

- [ ] False positives evaluated
- [ ] Detection tuned
- [ ] Documentation updated

---

## Final Status

- [ ] Detection validated
- [ ] Ready for production

