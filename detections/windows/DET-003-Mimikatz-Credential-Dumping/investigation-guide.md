# Investigation Guide

## Alert Summary

This alert indicates possible credential dumping activity on a Windows endpoint. The detection is designed to identify behaviors commonly associated with Mimikatz and other tools that attempt to access credentials stored in LSASS memory.

---

## Why This Alert Matters

Credential dumping is often performed immediately after an attacker gains local administrator privileges. Successfully obtaining credentials allows the attacker to move laterally, escalate privileges, and maintain access to the environment.

---

## Investigation Workflow

### Step 1 – Validate the Alert

Confirm:

- Rule ID: 100300
- Alert timestamp
- Hostname
- Username

Determine whether the activity occurred on a workstation, server, or domain controller.

---

### Step 2 – Review Process Execution

Collect:

- Process name
- Full command line
- Parent process
- Process ID (PID)
- Parent Process ID (PPID)

Look for suspicious parent processes such as:

- cmd.exe
- powershell.exe
- rundll32.exe
- wscript.exe

---

### Step 3 – Review LSASS Access

If Sysmon Event ID 10 is available:

- Confirm that the target process is `lsass.exe`.
- Identify the process requesting access.
- Review the granted access rights.

Unexpected access to LSASS should be treated as highly suspicious.

---

### Step 4 – Look for Related Activity

Search for:

- New administrator accounts
- Scheduled tasks
- Registry modifications
- Network connections
- Remote logons
- Service creation

These events may indicate that credential dumping is part of a larger attack chain.

---

### Step 5 – Determine Scope

Identify:

- Other affected hosts
- Additional users
- Similar alerts within the same timeframe
- Evidence of lateral movement

---

## Analyst Decision

Classify the alert as:

- True Positive
- False Positive
- Authorized Security Activity

Document the reasoning for the final decision.
o

