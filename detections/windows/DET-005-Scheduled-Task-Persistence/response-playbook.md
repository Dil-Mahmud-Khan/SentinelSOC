# Response Playbook

## Objective

This playbook describes the response process when SentinelSOC detects suspicious Scheduled Task activity that may indicate persistence.

---

# Phase 1 – Identification

Confirm:

- Rule ID
- Hostname
- User
- Task Name
- Execution Path
- Trigger

Determine whether the task is authorized.

---

# Phase 2 – Containment

If malicious:

- Isolate the endpoint.
- Disable the scheduled task.
- Preserve evidence.
- Notify the Incident Response team.
- Monitor for similar tasks across the environment.

---

# Phase 3 – Eradication

- Delete the malicious task.
- Remove associated malware.
- Remove persistence mechanisms.
- Reset compromised credentials if necessary.

---

# Phase 4 – Recovery

- Verify task removal.
- Confirm no additional persistence exists.
- Restore normal operations.
- Continue monitoring.

---

# Phase 5 – Lessons Learned

- Document the attack timeline.
- Record Indicators of Compromise.
- Improve detection logic.
- Tune detection rules.
- Update SentinelSOC documentation.

---

# Success Criteria

The incident is resolved when:

- The scheduled task has been removed.
- No persistence remains.
- The endpoint is verified clean.
- Detection improvements have been documented.

