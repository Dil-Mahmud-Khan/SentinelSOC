# Hunt Hypothesis

## Hypothesis

I hypothesized that repeated SSH authentication failures on the Kali host could indicate brute-force or password-guessing activity.

## Why I Chose This Hypothesis

SSH is a common remote-access service.

Repeated authentication failures can be an early indicator of an attacker attempting to gain access.

## What I Expected to Find

I expected the Wazuh telemetry to contain:

- SSH authentication events
- timestamps
- authentication results
- information about the affected agent
- rule information that could help with investigation

## Result

The hunt confirmed that SSH authentication telemetry is available and can be investigated through Wazuh Threat Hunting.
