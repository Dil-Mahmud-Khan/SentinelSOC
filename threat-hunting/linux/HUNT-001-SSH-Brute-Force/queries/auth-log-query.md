# Linux SSH Brute Force Hunt Query

## Objective

Identify repeated failed SSH login attempts that may indicate brute-force activity.

---

## Data Source

- /var/log/auth.log
- journalctl (systemd)
- Wazuh Agent (future validation)

---

## Hunt Indicators

- Failed password
- Invalid user
- Authentication failure
- Maximum authentication attempts exceeded
- Multiple failed logins from the same IP
- High authentication failure rate within a short period

---

## Investigation

During the investigation I will verify:

- Source IP address
- Username targeted
- Number of failed attempts
- Time window
- Whether a successful login occurred after repeated failures

---

## Expected Outcome

Normal users may mistype passwords occasionally.

Repeated failures from the same IP or against multiple accounts should be investigated further.

---

## Validation Status

Engineering Complete

Validation will be performed after generating SSH brute-force activity in the lab.

