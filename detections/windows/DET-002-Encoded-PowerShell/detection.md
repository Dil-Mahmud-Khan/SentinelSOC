# Detection

## Why I Chose This Detection

While researching common Windows attack techniques, I found that PowerShell is one of the most frequently abused built-in tools. Since it is trusted by the operating system, attackers often use it to execute malicious commands without introducing additional binaries.

One technique that appears repeatedly in threat reports is the use of the `-EncodedCommand` parameter. Instead of executing a readable command, the attacker provides a Base64-encoded string, making the command more difficult to understand during a quick inspection.

I decided to build this detection because identifying encoded PowerShell execution can provide an early indicator of compromise and allow analysts to investigate suspicious activity before an attacker establishes persistence or performs credential theft.

---

## Detection Goal

The goal of this detection is to identify PowerShell executions that include the `-EncodedCommand` or `-enc` parameter and generate a high-severity alert for analyst review.

The detection is designed to improve visibility into potentially malicious PowerShell activity while providing enough context for investigation.

---

## Attack Flow

1. An attacker launches PowerShell.
2. A Base64-encoded command is passed using the `-EncodedCommand` parameter.
3. PowerShell decodes and executes the command.
4. Sysmon records the process creation event (Event ID 1).
5. The Wazuh agent forwards the event to the manager.
6. The custom Wazuh rule evaluates the command line.
7. If the encoded parameter is detected, a high-severity alert is generated for the SOC analyst.

---

## MITRE ATT&CK Mapping

| Category | Value |
|----------|-------|
| Tactic | Execution |
| Technique | T1059.001 |
| Technique Name | PowerShell |

---

## Detection Logic

This detection monitors PowerShell process creation events and inspects the command line for the presence of `-EncodedCommand` or its shortened form `-enc`.

If either parameter is found, the event is flagged because attackers commonly use encoded commands to hide malicious activity from administrators and basic monitoring tools.

The rule relies on process creation telemetry collected through Sysmon Event ID 1 and forwarded to Wazuh by the endpoint agent.

---

## Detection Strategy

Rather than attempting to identify every possible malicious PowerShell command, this detection focuses on a behavior that is uncommon during normal user activity but frequently appears during attacks.

This approach keeps the detection simple, understandable, and easy to improve as additional attack techniques are introduced into SentinelSOC.

---

## Rule Requirements

- Windows endpoint
- Sysmon installed
- Wazuh Agent
- Custom Wazuh Rule
- Process creation logging enabled

---

## Expected Telemetry

- Sysmon Event ID 1
- Process Image
- Parent Process
- Command Line
- Username
- Hostname
- Timestamp

---

## Detection Limitations

This detection identifies the use of encoded PowerShell commands but does not determine whether the decoded content is malicious.

Some administrative scripts and enterprise management tools may legitimately use encoded commands. Every alert should therefore be reviewed in context before being classified as malicious.