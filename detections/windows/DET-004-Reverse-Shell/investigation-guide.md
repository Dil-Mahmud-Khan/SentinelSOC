# Investigation Guide

## Alert Summary

This alert indicates potential reverse shell activity originating from a Windows endpoint. Reverse shells allow an attacker to establish an interactive remote session by initiating an outbound connection from the compromised host.

---

# Why This Alert Matters

A reverse shell often represents successful post-exploitation. Once established, an attacker can execute commands, deploy additional malware, create persistence, escalate privileges, and move laterally within the environment.

---

# Investigation Workflow

## Step 1 – Validate the Alert

Confirm:

- Rule ID: 100400
- Alert timestamp
- Hostname
- Username
- Source process

Determine whether the process execution is expected within the environment.

---

## Step 2 – Review Process Execution

Collect:

- Process Name
- Parent Process
- Command Line
- Process ID (PID)
- Parent Process ID (PPID)

Pay particular attention to:

- powershell.exe
- cmd.exe
- pwsh.exe
- python.exe
- nc.exe
- ncat.exe

---

## Step 3 – Review Network Activity

Identify:

- Destination IP Address
- Destination Port
- Protocol
- Connection Time

Questions:

- Is the destination IP internal or external?
- Has the endpoint communicated with this IP before?
- Is the destination known to be malicious?

---

## Step 4 – Look for Related Activity

Search for:

- PowerShell execution
- Encoded commands
- New scheduled tasks
- Service creation
- Credential dumping
- Additional Wazuh alerts

---

## Step 5 – Determine Scope

Identify:

- Other affected hosts
- Similar outbound connections
- Additional compromised users
- Evidence of lateral movement

---

# Analyst Decision

Classify the alert as:

- True Positive
- False Positive
- Authorized Security Activity

Document all findings before closing or escalating the incident.


