# Hunting Hypothesis

## Hypothesis

Attackers frequently abuse PowerShell because it is available on almost every Windows system and allows commands to be executed without introducing new binaries.

If an attacker gains access to a system, there is a high probability that PowerShell will be used for execution, persistence, payload delivery, or defense evasion.

By reviewing PowerShell process creation events and command-line arguments, suspicious activity may be identified before a high-confidence alert is generated.

---

## Why I Selected This Hunt

I selected this hunting scenario because PowerShell is one of the most abused Windows utilities in modern attacks.

Rather than relying only on alerts, I wanted to build a repeatable hunting process that can identify suspicious behavior through telemetry analysis.

---

## Success Criteria

The hunt should identify PowerShell executions that require analyst investigation based on unusual command-line arguments or execution context.
o

