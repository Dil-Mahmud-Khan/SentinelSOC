# HUNT-001 — SSH Brute Force Threat Hunt

## Overview

This threat hunt investigates SSH authentication activity on a Linux endpoint using Wazuh.

The objective was to determine whether repeated SSH login attempts indicated brute-force behaviour or other suspicious authentication activity.

---

## Hunt Hypothesis

If an attacker is attempting to gain access through SSH, multiple authentication events should appear within a short period of time.

These events can be identified using Wazuh Threat Hunting and investigated further.

---

## Hunt Process

1. Open Wazuh Threat Hunting.
2. Search for SSH authentication events.
3. Review related alerts.
4. Examine event details.
5. Determine whether brute-force behaviour exists.
6. Document the findings.

---

## Findings

- SSH authentication events were successfully collected.
- Wazuh generated alerts correctly.
- Event timestamps were visible.
- Event details contained useful investigation data.
- The hunt successfully identified SSH authentication activity.

---

## Evidence

### 1. Threat Hunting Search

![](screenshots/HUNT-001-01_Search.png)

---

### 2. Filtered SSH Events

![](screenshots/HUNT-001-02_Filtered_Events.png)

---

### 3. Event Details

![](screenshots/HUNT-001-03_Event_Details.png)

---

### 4. Timeline

![](screenshots/HUNT-001-04_Timeline.png)

---

### 5. Final Investigation

![](screenshots/HUNT-001-05_Findings.png)

---

## Related Files

- hypothesis.md
- methodology.md
- findings.md
- validation.md

---

## Status

 Threat Hunt Completed

Platform: Wazuh

Operating System: Kali Linux

Data Source: Wazuh Agent