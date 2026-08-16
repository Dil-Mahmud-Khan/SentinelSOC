#!/bin/bash

# SentinelSOC - AR-001
# SSH Brute Force Automated Response
# Usage:
#   sudo ./block-source-ip.sh <IP> --dry-run
#   sudo ./block-source-ip.sh <IP> --block

set -euo pipefail

IP="${1:-}"
ACTION="${2:---dry-run}"

if [[ -z "$IP" ]]; then
    echo "Usage: $0 <IP> [--dry-run|--block]"
    exit 1
fi

if ! [[ "$IP" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
    echo "ERROR: Invalid IPv4 address: $IP"
    exit 1
fi

echo "========================================"
echo "SentinelSOC - Automated Response"
echo "========================================"
echo "Source IP : $IP"
echo "Action    : $ACTION"
echo

if [[ "$ACTION" == "--dry-run" ]]; then
    echo "[DRY-RUN] Would execute:"
    echo "iptables -I INPUT -s $IP -j DROP"
    exit 0
fi

if [[ "$ACTION" != "--block" ]]; then
    echo "ERROR: Action must be --dry-run or --block"
    exit 1
fi

if [[ "$IP" == "127.0.0.1" || "$IP" == "0.0.0.0" ]]; then
    echo "ERROR: Refusing to block a critical local address."
    exit 1
fi

echo "[ACTION] Blocking source IP: $IP"

iptables -C INPUT -s "$IP" -j DROP 2>/dev/null || \
iptables -I INPUT -s "$IP" -j DROP

echo "[SUCCESS] IP $IP is now blocked."

echo
echo "Current rule:"
iptables -L INPUT -n --line-numbers | grep "$IP" || true
