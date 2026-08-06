# Attack

## Summary

I simulated several failed SSH login attempts against my Kali machine.

The goal was to generate authentication failure logs and verify that Wazuh detected them.

## MITRE ATT&CK

- T1110 - Brute Force

## Detection Goal

Detect repeated failed SSH login attempts.
