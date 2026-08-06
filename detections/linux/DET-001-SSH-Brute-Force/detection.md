# Detection

## Log Source

- /var/log/auth.log

## Detection Logic

This detection monitors failed SSH login attempts.

When multiple authentication failures are recorded, Wazuh generates an alert.

## Severity

Medium
