# Detection

## Why I Chose This Detection

During my research, I found that reverse shells are one of the most common techniques attackers use immediately after exploiting a vulnerable system. Once a reverse shell is established, the attacker gains interactive access and can execute commands remotely, download additional tools, establish persistence, or move laterally across the environment.

I selected this detection because reverse shells are frequently used in penetration testing frameworks, red team engagements, and real-world attacks. Detecting this behavior early can significantly reduce the attacker's opportunity to expand their access.

---

## Detection Goal

The objective of this detection is to identify processes that initiate suspicious outbound network connections commonly associated with reverse shell activity.

Rather than relying on a single executable, this detection focuses on suspicious process behavior and network activity that may indicate command and control communication.

---

## Attack Flow

1. The attacker exploits a vulnerable system.
2. A command interpreter or scripting engine is launched.
3. The compromised host initiates an outbound connection to the attacker's system.
4. The attacker gains interactive command execution.
5. Additional malicious actions may follow, including persistence, privilege escalation, or lateral movement.
6. Endpoint telemetry is collected by Sysmon.
7. Wazuh analyzes the collected events.
8. A high-severity alert is generated for the SOC analyst.

---

## MITRE ATT&CK Mapping

| Category | Value |
|----------|-------|
| Tactic | Command and Control |
| Technique | T1071 |
| Additional Technique | T1059 |

---

## Detection Logic

The detection monitors for command interpreters and scripting engines that establish outbound network connections shortly after execution.

The primary objective is to identify suspicious combinations of:

- Process creation
- Network connections
- Parent-child process relationships
- Command-line arguments

---

## Detection Strategy

The detection uses multiple telemetry sources instead of depending on a single indicator. Combining process activity with network behavior provides better visibility and reduces the likelihood of missing attacker activity.

---

## Rule Requirements

- Windows endpoint
- Sysmon installed
- Wazuh Agent
- Custom Wazuh Rule
- Process Creation Logging
- Network Connection Logging

---

## Expected Telemetry

- Sysmon Event ID 1
- Sysmon Event ID 3
- Process Name
- Parent Process
- Command Line
- Destination IP
- Destination Port
- Username
- Hostname
- Timestamp

---

## Detection Limitations

Not every outbound connection is malicious. Administrators, automation tools, and legitimate software may establish outbound sessions. Alerts should always be investigated using the surrounding context before determining whether malicious activity has occurred.

---

## Future Improvements

After the lab is completed, this detection will be enhanced by:

- Correlating process creation with network events.
- Detecting common reverse shell command patterns.
- Monitoring PowerShell-based reverse shells.
- Monitoring Python-based reverse shells.
- Monitoring Netcat and Socat usage.
- Reducing false positives through rule tuning.

