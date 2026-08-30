#!/bin/bash

echo "======================================"
echo " Linux Network Audit"
echo "======================================"
echo

echo "[+] Network Interfaces"
ip -brief addr 2>/dev/null || ifconfig
echo

echo "[+] Default Gateway"
ip route | grep default 2>/dev/null
echo

echo "[+] Routing Table"
ip route 2>/dev/null || netstat -rn
echo

echo "[+] DNS Configuration"
cat /etc/resolv.conf
echo

echo "[+] Listening TCP/UDP Ports"
ss -tulpn 2>/dev/null || netstat -tulpn 2>/dev/null
echo

echo "[+] Gateway Connectivity"

GATEWAY=$(ip route 2>/dev/null | awk '/default/ {print $3; exit}')

if [ -n "$GATEWAY" ]; then
    ping -c 3 "$GATEWAY"
else
    echo "Default gateway not detected."
fi

echo
echo "[+] Internet Connectivity"
ping -c 3 1.1.1.1

echo
echo "======================================"
echo " Network Audit Complete"
echo "======================================"
