# Response Playbook

## Objective

This playbook describes the recommended response when SentinelSOC detects possible credential dumping activity associated with Mimikatz.

The primary objective is to contain the threat before compromised credentials are used for privilege escalation or lateral movement.

---

# Phase 1 – Identification

## Initial Triage

Confirm:

- Rule ID: 100300
- Alert severity
- Hostname
- Username
- Detection timestamp

Review:

- Process name
- Command line
- Parent process
- Related Sysmon events

Determine whether the activity is expected, authorized, or suspicious.

---

# Phase 2 – Containment

If the activity is confirmed as malicious:

- Isolate the affected endpoint from the network.
- Prevent further credential use.
- Preserve volatile evidence before rebooting.
- Notify the SOC Lead or Incident Response team.
- Begin monitoring for similar activity on other systems.

---

# Phase 3 – Eradication

After evidence has been collected:

- Remove malicious tools.
- Remove persistence mechanisms.
- Disable compromised accounts if required.
- Reset passwords for affected users.
- Rotate privileged credentials when necessary.
- Scan the endpoint for additional malware.

---

# Phase 4 – Recovery

Before returning the system to production:

- Verify the endpoint is clean.
- Confirm no additional persistence exists.
- Restore business operations.
- Continue monitoring for recurring alerts.
- Validate that new credentials have been applied successfully.

---

# Phase 5 – Lessons Learned

After the incident:

- Document the complete attack timeline.
- Record Indicators of Compromise (IOCs).
- Improve detection logic where possible.
- Review whether additional telemetry should be collected.
- Update SentinelSOC documentation.
- Share findings with the security team.

---

# Success Criteria

The incident can be considered resolved when:

- The attacker no longer has access.
- Compromised credentials have been secured.
- No additional malicious activity is observed.
- Detection rules have been reviewed and improved where necessary.