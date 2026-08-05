# Hunting Methodology

## Scope

This hunt focuses on Windows endpoint telemetry collected through Sysmon and Wazuh.

---

## Investigation Process

1. Review PowerShell process creation events.
2. Examine full command-line arguments.
3. Identify encoded or obfuscated commands.
4. Review parent-child process relationships.
5. Check user context and execution time.
6. Correlate findings with additional endpoint events.
7. Determine whether the activity is expected or suspicious.

---

## Expected Challenges

- Legitimate administrators may use PowerShell.
- Automation tools may generate similar events.
- Additional context is required before classifying activity as malicious.

---

## Future Improvements

After the lab environment is available, this methodology will be validated using simulated attacks and updated based on the results.
o

