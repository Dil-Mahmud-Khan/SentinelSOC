# TI-001 — Suspicious IP Investigation

## Overview

I created this investigation to demonstrate a basic threat-intelligence workflow in SentinelSOC.

I started with an IP indicator, reviewed supporting Wazuh telemetry, enriched the indicator and preserved the resulting evidence for analyst assessment.

## Objective

I wanted to verify that SentinelSOC can:

1. Receive an IP indicator
2. Review supporting security telemetry
3. Validate the indicator
4. Identify the IP version
5. Determine network classification
6. Generate structured enrichment data
7. Preserve investigation evidence
8. Document the analyst assessment

## Test Indicator

`8.8.8.8`

This known public IP was used as a safe test indicator.

The test validates the workflow. It does not claim that the indicator is malicious.

## Investigation Workflow

IP Indicator → Wazuh Telemetry → IOC Validation → Basic Enrichment → Structured JSON → Evidence Preservation → Analyst Assessment

## Evidence

### Wazuh Dashboard Evidence

- `screenshots/TI-001-01_Wazuh_SSH_Event_Details.png`
- `screenshots/TI-001-02_Wazuh_SSH_Event_Search.png`
- `screenshots/TI-001-03_Wazuh_Event_JSON.png`

### Enrichment Artifact

`artifacts/8.8.8.8-enrichment.json`

### Investigation Documentation

- `hypothesis.md`
- `investigation.md`
- `assessment.md`
- `validation.md`
- `references.md`
- `queries/ip-enrichment.md`

## Enrichment Result

The test indicator was identified as:

- IPv4
- Public
- Globally routable
- Not private
- Not loopback
- Not reserved
- Not multicast

## Security Interpretation

Publicly routable does not mean malicious.

A real SOC investigation would require additional context and corroborating intelligence before assigning a malicious or benign classification.

## Final Assessment

The SentinelSOC IOC enrichment workflow successfully processed the test indicator, produced structured enrichment data and preserved investigation evidence.

The technical validation passed.
