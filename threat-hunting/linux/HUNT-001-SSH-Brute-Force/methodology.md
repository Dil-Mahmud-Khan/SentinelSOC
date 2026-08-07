# Hunting Methodology

## 1. Define the Objective

I wanted to identify and investigate SSH authentication activity that could indicate brute-force behaviour.

## 2. Select the Data

I used the Wazuh telemetry collected from the Kali agent.

## 3. Search

I used the Wazuh Threat Hunting interface to search for SSH-related authentication activity.

## 4. Review Events

I reviewed the returned events and checked their timestamps, agent information, rule information, and available authentication details.

## 5. Investigate an Event

I opened an individual event to inspect the available fields and understand what evidence was available for further investigation.

## 6. Review the Overall Activity

I returned to the main Threat Hunting results and reviewed the event timeline and event list.

## 7. Document the Findings

I documented the results and preserved screenshots as evidence.

## Limitations

This hunt was performed using the telemetry currently available from my lab environment.

The absence of a large number of historical events does not prove that brute-force activity never occurred. It only means that the available dataset did not provide additional evidence during this hunt.
