
# DET-002 – Encoded PowerShell Detection

## Overview

## Threat Description

## Detection Objective

## MITRE ATT&CK Mapping

## Detection Logic

## Detection Rules
### Wazuh

- Rule ID: 100200
- Severity: High (Level 10)
- Event Source: Sysmon Event ID 1
- Detection Method: Process Creation Monitoring
- Target: PowerShell execution using `-EncodedCommand` or `-enc`
### Sigma

- Log Source: Windows Process Creation
- Detection: PowerShell execution using `-EncodedCommand` or `-enc`
- Severity: High
- MITRE Technique: T1059.001

## Detection Workflow

## Testing Procedure

## Investigation Guide

## Response Playbook

## Sample Logs

## Detection Tuning

## False Positives

## References

