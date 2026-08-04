# Investigation Guide

## Alert Summary

This alert indicates possible abuse of Windows Scheduled Tasks to establish persistence. Scheduled Tasks can execute programs automatically at startup, logon, or scheduled intervals, making them a common persistence mechanism used by attackers.

---

# Why This Alert Matters

A malicious scheduled task allows an attacker to maintain access even after a reboot. It may also be used to launch malware, establish command and control, or execute ransomware at a later time.

---

# Investigation Workflow

## Step 1 – Validate the Alert

Confirm:

- Rule ID: 100500
- Hostname
- Username
- Timestamp
- Process Name

Determine whether the task creation was expected.

---

## Step 2 – Review Process Execution

Collect:

- Process Name
- Parent Process
- Command Line
- PID
- PPID

Verify whether `schtasks.exe` was launched by:

- cmd.exe
- powershell.exe
- explorer.exe
- services.exe

Unexpected parent processes should be investigated.

---

## Step 3 – Examine the Scheduled Task

Identify:

- Task Name
- Trigger
- Action
- Execution Path
- Run As User

Questions:

- Does the task execute from AppData or Temp?
- Is the executable signed?
- Does the task use PowerShell or CMD?

---

## Step 4 – Look for Related Activity

Search for:

- PowerShell execution
- Registry changes
- New services
- Reverse shells
- Credential dumping
- Defender tampering

---

## Step 5 – Determine Scope

Identify:

- Other hosts with the same task
- Similar task names
- Related alerts
- Lateral movement

---

# Analyst Decision

Classify the alert as:

- True Positive
- False Positive
- Authorized Administrative Activity

Document all findings.

