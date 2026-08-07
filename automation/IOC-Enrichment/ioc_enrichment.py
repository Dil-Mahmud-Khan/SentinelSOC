#!/usr/bin/env python3

import ipaddress
import json
import sys
from datetime import datetime, timezone


def enrich_ip(value):
    try:
        ip = ipaddress.ip_address(value)
    except ValueError:
        raise ValueError(f"Invalid IP address: {value}")

    result = {
        "indicator": str(ip),
        "indicator_type": "ipv4" if ip.version == 4 else "ipv6",
        "is_private": ip.is_private,
        "is_global": ip.is_global,
        "is_loopback": ip.is_loopback,
        "is_reserved": ip.is_reserved,
        "is_multicast": ip.is_multicast,
        "classification": "public_global_ip" if ip.is_global else "non_public_ip",
        "enriched_at": datetime.now(timezone.utc).isoformat()
    }

    return result


def main():
    if len(sys.argv) != 2:
        print("Usage: python3 ioc_enrichment.py <IP_ADDRESS>")
        sys.exit(1)

    indicator = sys.argv[1]

    try:
        result = enrich_ip(indicator)
    except ValueError as error:
        print(f"Error: {error}")
        sys.exit(1)

    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
