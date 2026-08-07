# Hunt Findings

## Finding 1: SSH Telemetry Is Available

Wazuh is receiving SSH-related authentication telemetry from the Kali agent.

Evidence:

- `HUNT-001-01_Search.png`
- `HUNT-001-03_Hunt_Summary.png`

## Finding 2: Individual Events Can Be Investigated

Individual SSH events can be opened in Wazuh and inspected in detail.

Evidence:

- `HUNT-001-02_Event_Details.png`

## Finding 3: Events Provide Investigation Context

The available events contain useful information such as timestamps, agent information, rule information, and authentication-related details.

This information can be used to build a timeline and investigate suspicious authentication activity.

## Security Assessment

The telemetry is suitable for SSH authentication monitoring and provides a foundation for detecting repeated authentication failures.

## Final Assessment

The hunt successfully demonstrated the collection and investigation of SSH authentication telemetry.

I did not claim confirmed malicious activity solely from the presence of SSH events. Further investigation would be required to attribute repeated failures to an actual brute-force attack.
