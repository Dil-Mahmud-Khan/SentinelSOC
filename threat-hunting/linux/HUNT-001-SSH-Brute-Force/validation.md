# Validation

## Validation Objective

I validated that the SSH threat-hunting workflow can retrieve and investigate SSH authentication telemetry from the Kali agent.

## Validation Steps

### Step 1: Confirm SSH Events

I searched the Wazuh Threat Hunting interface for SSH-related activity.

Result: SSH-related events were returned.

Evidence:

`HUNT-001-01_Search.png`

### Step 2: Inspect an Individual Event

I opened an individual SSH event and reviewed its available fields.

Result: Event details were available for investigation.

Evidence:

`HUNT-001-02_Event_Details.png`

### Step 3: Review the Hunt Results

I reviewed the main Threat Hunting results, including the event timeline and event list.

Result: The collected SSH telemetry could be reviewed as a group.

Evidence:

`HUNT-001-03_Hunt_Summary.png`

## Validation Result

**PASS**

The threat-hunting workflow successfully retrieved and investigated SSH authentication telemetry from the Kali Wazuh agent.

## Limitation

This validation confirms telemetry availability and investigation capability. It does not by itself prove that a real external brute-force attack occurred.
