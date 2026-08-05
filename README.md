# SentinelSOC

> Enterprise Detection Engineering & Incident Response Platform

![Status](https://img.shields.io/badge/Status-Active-success)
![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux-blue)
![Detection%20Engineering](https://img.shields.io/badge/Focus-Detection%20Engineering-red)
![MITRE ATT%26CK](https://img.shields.io/badge/MITRE-ATT%26CK-orange)
![License](https://img.shields.io/badge/License-MIT-green)

---

## Overview

SentinelSOC is a long-term Detection Engineering and Security Operations project designed to simulate the workflow of an enterprise Security Operations Center (SOC).

Unlike traditional home labs that focus only on tool deployment, SentinelSOC emphasizes the complete detection lifecycle—from attack simulation and telemetry collection to custom detection development, investigation, incident response, and validation.

The objective is to build, validate, and continuously improve detection content while documenting the engineering decisions behind each detection.

---

## Mission

Design and build an enterprise-style Security Operations platform that simulates real-world attacks, detects malicious activity, investigates security incidents, automates response, and documents the complete detection lifecycle.

---

## Project Objectives

- Develop production-style detection content.
- Build custom Wazuh detection rules.
- Create Sigma rules for portable detections.
- Map detections to the MITRE ATT&CK framework.
- Document investigation workflows.
- Develop incident response playbooks.
- Validate detections within a controlled lab environment.
- Improve detections through testing and tuning.

---

---

# Repository Structure

```text
SentinelSOC/
├── architecture/          # System architecture and design diagrams
├── detections/            # Detection engineering packages
├── attack-scenarios/      # Attack simulation documentation
├── automation/            # Security automation scripts
├── threat-hunting/        # Threat hunting hypotheses and queries
├── incident-response/     # Response playbooks and case studies
├── malware-analysis/      # Malware analysis documentation
├── digital-forensics/     # Forensic investigations
├── reports/               # Technical and executive reports
├── screenshots/           # Validation evidence
├── docs/                  # Engineering documentation
└── wazuh/                 # Wazuh deployment
```

---

## Repository Design

I organized the repository into independent modules so each area of the SOC lifecycle can evolve without affecting the others.

For example, detection rules, investigation guides, response playbooks, automation scripts, and architecture documentation are maintained separately. This structure keeps the project easier to maintain as new detections and features are added.

The goal is to simulate how security engineering content is organized in a real SOC environment rather than storing everything in a single directory.

---

# Skills Demonstrated

Through SentinelSOC I am developing practical experience in:

- Detection Engineering
- Security Operations (SOC)
- Windows Event Analysis
- Linux Log Analysis
- Wazuh Rule Development
- Sigma Rule Development
- MITRE ATT&CK Mapping
- Incident Response
- Threat Hunting
- Detection Validation
- Security Documentation
- Security Automation

