# Response Playbook

## Objective

Provide a standardized response procedure for PowerShell executions using encoded commands.

---

# Phase 1 - Identification

- Confirm Rule ID 100200 triggered.
- Verify the affected host.
- Identify the executing user.
- Determine whether the activity is expected.

---

# Phase 2 - Containment

If malicious:

- Isolate the endpoint.
- Block active malicious network connections.
- Preserve evidence.
- Notify the SOC Lead.

---

# Phase 3 - Eradication

- Remove malicious scripts.
- Delete persistence mechanisms.
- Remove unauthorized accounts.
- Terminate malicious processes.

---

# Phase 4 - Recovery

- Restore affected files if necessary.
- Verify the endpoint is clean.
- Reconnect the system to the network.
- Continue monitoring.

---

# Phase 5 - Lessons Learned

- Identify why the attack succeeded.
- Improve detection logic.
- Update detection rules.
- Document new IOCs.

