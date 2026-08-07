# Validation

## Validation Objective

I validated the SentinelSOC IOC enrichment workflow using a known public IPv4 address.

## Test Indicator

`8.8.8.8`

## Test Command

`python3 automation/IOC-Enrichment/ioc_enrichment.py 8.8.8.8`

## Expected Result

The workflow should:

1. Accept the IP indicator
2. Validate the address
3. Identify the IP version
4. Determine network classification
5. Produce structured JSON
6. Preserve the result as an investigation artifact

## Actual Result

The workflow successfully processed the indicator.

The result identified:

- `indicator_type`: `ipv4`
- `is_global`: `true`
- `is_private`: `false`
- `is_loopback`: `false`
- `is_reserved`: `false`
- `is_multicast`: `false`
- `classification`: `public_global_ip`

## Evidence

Dashboard evidence:

- `screenshots/TI-001-01_Wazuh_SSH_Event_Details.png`
- `screenshots/TI-001-02_Wazuh_SSH_Event_Search.png`
- `screenshots/TI-001-03_Wazuh_Event_JSON.png`

Enrichment evidence:

`artifacts/8.8.8.8-enrichment.json`

## Status

**PASS**

The IOC enrichment workflow successfully passed technical validation.

## Limitation

This validation confirms the technical workflow.

It does not determine whether the indicator is malicious.
