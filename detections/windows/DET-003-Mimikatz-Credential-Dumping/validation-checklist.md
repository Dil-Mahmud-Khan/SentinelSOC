# Validation Checklist

## Environment

- [ ] Windows VM deployed
- [ ] Sysmon installed
- [ ] Wazuh Agent installed
- [ ] Wazuh Manager running
- [ ] Custom rule deployed

---

## Attack Execution

- [ ] Mimikatz executed in lab
- [ ] Credential dumping attempted
- [ ] Sysmon Event ID 1 generated
- [ ] Sysmon Event ID 10 generated

---

## Detection Validation

- [ ] Rule ID 100300 triggered
- [ ] Correct severity assigned
- [ ] MITRE mapping verified
- [ ] Alert reviewed in Wazuh Dashboard

---

## Investigation

- [ ] Parent process reviewed
- [ ] Command line analyzed
- [ ] LSASS access confirmed
- [ ] Timeline documented
- [ ] User identified

---

## Evidence

- [ ] Dashboard screenshot
- [ ] Alert screenshot
- [ ] Event Viewer screenshot
- [ ] Exported logs
- [ ] IOC list created

---

## Detection Review

- [ ] False positives evaluated
- [ ] Detection tuned
- [ ] Documentation updated

---

## Final Status

- [ ] Detection validated
- [ ] Ready for production

