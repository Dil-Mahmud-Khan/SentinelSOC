# Testing

## Objective

Validate the SSH brute-force detection.

## Test Performed

I manually generated several failed SSH login attempts.

## Result

The logs were collected by the Wazuh agent.

The manager generated an alert.

The alert appeared in the Wazuh Dashboard.

## Status

PASS
