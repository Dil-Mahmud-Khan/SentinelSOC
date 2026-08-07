# Investigation Hypothesis

## Hypothesis

An IP address received by a SOC may require enrichment before an analyst can determine whether it is relevant to an investigation.

## Objective

I wanted to determine whether SentinelSOC could:

- validate an IP address
- identify its type
- determine whether it is publicly routable
- produce structured enrichment data
- preserve the result for later investigation

## Test Indicator

`8.8.8.8`

This is a safe test indicator used only to validate the workflow.

## Expected Result

The system should correctly identify the indicator as an IPv4 address and provide basic network classification.

## Result

The workflow successfully produced structured enrichment data for the test indicator.
