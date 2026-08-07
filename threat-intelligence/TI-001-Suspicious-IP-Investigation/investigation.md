# Investigation

## Case

TI-001 — Suspicious IP Investigation

## Objective

I investigated an IP indicator using the SentinelSOC IOC enrichment workflow and supporting Wazuh security telemetry.

## Evidence Collection

I reviewed the Wazuh dashboard for SSH authentication activity associated with the test environment.

The investigation was supported by:

- `screenshots/TI-001-01_Wazuh_SSH_Event_Details.png`
- `screenshots/TI-001-02_Wazuh_SSH_Event_Search.png`
- `screenshots/TI-001-03_Wazuh_Event_JSON.png`

These screenshots provide dashboard-level evidence of the observed SSH security event and its underlying event data.

## IOC

`8.8.8.8`

The IP address was used as a safe test indicator for validating the IOC enrichment workflow.

## Enrichment

The SentinelSOC IOC enrichment script processed the indicator successfully.

Command:

`python3 automation/IOC-Enrichment/ioc_enrichment.py 8.8.8.8`

The result identified the indicator as:

- IPv4
- Public
- Globally routable
- Not private
- Not loopback
- Not reserved
- Not multicast

## Evidence Artifact

The enrichment output was preserved as:

`artifacts/8.8.8.8-enrichment.json`

## Analyst Interpretation

The enrichment result establishes the network characteristics of the indicator.

It does not establish maliciousness.

In a real SOC investigation, I would correlate the indicator with the source event, authentication activity, network connections, DNS activity, reputation intelligence and related indicators.

## Investigation Result

The SentinelSOC workflow successfully connected security telemetry, IOC enrichment and preserved investigation evidence.

The technical enrichment test passed.
