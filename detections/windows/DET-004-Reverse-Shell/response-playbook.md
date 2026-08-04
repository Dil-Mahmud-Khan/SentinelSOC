# Response Playbook

## Objective

This playbook defines the recommended response when SentinelSOC detects potential reverse shell activity.

The objective is to quickly contain the compromised endpoint, terminate attacker access, preserve forensic evidence, and prevent lateral movement.

---

# Phase 1 – Identification

## Initial Triage

Verify:

- Rule ID: 100400
- Hostname
- Username
- Timestamp
- Process Name
- Destination IP
- Destination Port

Review:

- Parent Process
- Command Line
- Associated Sysmon Events
- Previous alerts from the same endpoint

Determine whether the activity is expected or unauthorized.

---

# Phase 2 – Containment

If confirmed malicious:

- Isolate the affected endpoint.
- Block communication with the remote IP address.
- Preserve volatile evidence.
- Notify the Incident Response team.
- Increase monitoring for similar activity across the environment.

---

# Phase 3 – Eradication

- Terminate the malicious process.
- Remove attacker tools.
- Remove persistence mechanisms.
- Scan the endpoint for malware.
- Reset compromised credentials if required.

---

# Phase 4 – Recovery

Before reconnecting the endpoint:

- Verify malware removal.
- Confirm persistence has been removed.
- Validate system integrity.
- Continue monitoring for recurring activity.
- Restore normal business operations.

---

# Phase 5 – Lessons Learned

After the incident:

- Document the attack timeline.
- Record all Indicators of Compromise (IOCs).
- Improve detection logic if needed.
- Tune detection rules to reduce false positives.
- Update SentinelSOC documentation.

---

# Success Criteria

The incident is considered resolved when:

- Reverse shell access has been terminated.
- The endpoint has been verified as clean.
- Credentials have been secured if necessary.
- No further malicious activity is observed.

