#!/bin/bash
PREF=$(ip rule show | grep -E "not from all fwmark 0xca6c" | awk -F: '{print $1}' | head -1)
if [ -n "$PREF" ]; then
    ip rule add to 100.64.0.0/10 lookup 52 priority $((PREF - 1))
    ip rule add from 100.64.0.0/10 lookup 52 priority $((PREF - 1))
else
    ip rule add to 100.64.0.0/10 lookup 52 priority 5000
    ip rule add from 100.64.0.0/10 lookup 52 priority 5000
fi
