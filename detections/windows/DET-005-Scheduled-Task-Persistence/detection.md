# Detection

## Why I Chose This Detection

Scheduled Tasks are one of the most common persistence mechanisms used by attackers after gaining access to a Windows system. By creating a task that runs at startup, user logon, or on a schedule, an attacker can maintain access even after the system is rebooted.

I selected this technique because it is frequently observed in ransomware incidents, red team engagements, and advanced persistent threat (APT) campaigns. Detecting unauthorized scheduled task creation provides an opportunity to identify persistence before attackers expand their access.

---

## Detection Goal

The objective of this detection is to identify suspicious creation, modification, or execution of Windows Scheduled Tasks that may indicate persistence.

The detection is designed to monitor task registration events, process creation, and command-line activity associated with scheduled task management.

---

## Attack Flow

1. Attacker gains initial access.
2. Privileges are obtained.
3. A malicious Scheduled Task is created.
4. The task is configured to execute automatically.
5. Windows records task creation events.
6. Sysmon and Windows telemetry are collected.
7. Wazuh analyzes the events.
8. A high-severity alert is generated for investigation.

---

## MITRE ATT&CK Mapping

| Category | Value |
|----------|-------|
| Tactic | Persistence |
| Technique | T1053.005 |
| Technique Name | Scheduled Task |

---

## Detection Logic

The detection monitors for indicators associated with scheduled task creation and modification, including:

- Execution of `schtasks.exe`
- Suspicious command-line arguments
- Creation of new scheduled tasks
- Modification of existing scheduled tasks
- Task registration events

Behavioral analysis is preferred over relying solely on executable names.

---

## Rule Requirements

- Windows endpoint
- Sysmon installed
- Wazuh Agent
- Process Creation Logging
- Task Scheduler Operational Log enabled

---

## Expected Telemetry

- Sysmon Event ID 1
- Microsoft-Windows-TaskScheduler Operational Events
- Process Name
- Command Line
- Username
- Hostname
- Timestamp

---

## Detection Limitations

System administrators and enterprise management tools may legitimately create scheduled tasks. Alerts should be correlated with user activity, task names, execution paths, and expected administrative behavior before determining whether the activity is malicious.

---

## Future Improvements

When the lab is available, this detection will be extended to:

- Detect hidden scheduled tasks.
- Detect tasks executing from user-writable directories.
- Correlate task creation with subsequent process execution.
- Detect PowerShell and LOLBins launched through Scheduled Tasks.
- Tune the detection to reduce false positives in enterprise environments.

