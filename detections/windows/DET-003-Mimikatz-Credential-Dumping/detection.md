# Detection

## Why I Chose This Detection

While studying post-exploitation techniques, I found that credential dumping is one of the most valuable objectives for an attacker after gaining initial access. Tools such as Mimikatz can extract password hashes, Kerberos tickets, and other credentials from Windows memory, allowing attackers to authenticate as legitimate users without knowing their passwords.

I chose this detection because credential dumping is a high-impact technique that frequently appears during ransomware incidents, red team exercises, and penetration tests. Detecting this activity early can prevent privilege escalation and lateral movement.

---

## Detection Goal

The objective of this detection is to identify indicators of Mimikatz execution and credential dumping attempts using Windows event logs and Sysmon telemetry.

The detection focuses on behaviors commonly associated with credential dumping rather than relying only on a specific executable name.

---

## Attack Flow

1. Attacker gains access to a Windows system.
2. Privileges are elevated to Administrator or SYSTEM.
3. Mimikatz is executed.
4. LSASS process memory is accessed.
5. Credentials are extracted.
6. Sysmon and Windows logs record the activity.
7. Wazuh analyzes the event.
8. A high-severity alert is generated for the SOC analyst.

---

## MITRE ATT&CK Mapping

| Category | Value |
|----------|-------|
| Tactic | Credential Access |
| Technique | T1003 |
| Technique Name | OS Credential Dumping |

---

## Detection Logic

The detection monitors for indicators associated with credential dumping, including known Mimikatz process names, suspicious command-line arguments, and attempts to access the LSASS process.

Where available, Sysmon process creation and process access events provide additional context for identifying credential dumping behavior.

---

## Detection Strategy

Instead of depending on a single signature, the detection combines multiple behavioral indicators that commonly appear during credential dumping attacks. This approach improves detection coverage while reducing dependence on a single tool or executable.

---

## Rule Requirements

- Windows endpoint
- Sysmon installed
- Wazuh Agent
- Custom Wazuh Rule
- Process creation logging enabled
- Process access logging enabled

---

## Expected Telemetry

- Sysmon Event ID 1 (Process Creation)
- Sysmon Event ID 10 (Process Access)
- Process Name
- Parent Process
- Command Line
- Target Process
- Username
- Hostname
- Timestamp

---

## Detection Limitations

Attackers may rename Mimikatz or use alternative credential dumping techniques. For this reason, the detection should be combined with additional behavioral rules and threat hunting activities to improve coverage.

### Detection Rules

#### Wazuh

- Rule ID: 100300
- Severity: Critical (Level 12)
- Event Source: Sysmon Event ID 1
- Detection Method: Process Creation Monitoring
---

## Future Improvements

The current detection focuses on identifying known Mimikatz process names and serves as an initial detection capability.

During lab validation, I plan to extend the detection by monitoring:

- Sysmon Event ID 10 (Process Access)
- Access to the LSASS process
- Suspicious command-line arguments
- Renamed Mimikatz executables
- Memory dumping behavior
- Correlation with additional Windows security events

This approach will improve detection coverage while reducing reliance on process names alone.
