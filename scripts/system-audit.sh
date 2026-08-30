#!/bin/bash

echo "//////////////////////////////////////"
echo " Linux System Audit"
echo "______________________________________"
echo

echo "[+] Hostname"
hostname
echo

echo "[+] Kernel / Architecture"
uname -a
echo

echo "[+] CPU"
lscpu 2>/dev/null || echo "lscpu not available"
echo

echo "[+] Memory"
free -h 2>/dev/null || echo "free command not available"
echo

echo "[+] Disk Usage"
df -h
echo

echo "[+] Network Interfaces"
ip addr 2>/dev/null || ifconfig
echo

echo "[+] Routing Table"
ip route 2>/dev/null || netstat -rn
echo

echo "[+] Logged-In Users"
who
echo

echo "[+] Listening Services"
ss -tulpn 2>/dev/null || netstat -tulpn 2>/dev/null

echo
echo "======================================"
echo " Audit Complete"
echo "======================================"
