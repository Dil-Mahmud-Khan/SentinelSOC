#!/bin/bash

echo "========== Failed SSH Login Hunt =========="

if [ -f /var/log/auth.log ]; then
    grep "Failed password" /var/log/auth.log
else
    journalctl -u ssh | grep "Failed password"
fi

