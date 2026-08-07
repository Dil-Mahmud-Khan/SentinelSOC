# IP Enrichment Query

## Indicator

`8.8.8.8`

## Purpose

I used a known public IP address as a safe test indicator to validate the SentinelSOC IOC enrichment workflow.

## Command

`python3 automation/IOC-Enrichment/ioc_enrichment.py 8.8.8.8`

## Expected Output

The workflow should return structured information describing the IP version and basic network classification.

## Observed Output

The indicator was identified as an IPv4 public global IP.

The workflow reported:

- Public/global: `true`
- Private: `false`
- Loopback: `false`
- Reserved: `false`
- Multicast: `false`

## Preserved Evidence

The result was saved to:

`artifacts/8.8.8.8-enrichment.json`
