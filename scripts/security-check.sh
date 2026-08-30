#!/bin/bash

echo "======================================"
echo " Linux Security Check"
echo "======================================"
echo

echo "[+] Current User"
whoami
id
echo

echo "[+] Sudo Access"
sudo -n true 2>/dev/null

if [ $? -eq 0 ]; then
    echo "Current user has passwordless sudo access."
else
    echo "Passwordless sudo not detected."
fi

echo

echo "[+] Firewall Status"

if command -v ufw >/dev/null 2>&1; then
    sudo ufw status
elif command -v firewall-cmd >/dev/null 2>&1; then
    sudo firewall-cmd --state
elif command -v nft >/dev/null 2>&1; then
    sudo nft list ruleset
else
    echo "No supported firewall management tool detected."
fi

echo

echo "[+] SSH Service"

if systemctl is-active --quiet ssh 2>/dev/null; then
    echo "SSH service is running."
elif systemctl is-active --quiet sshd 2>/dev/null; then
    echo "SSHD service is running."
else
    echo "SSH service does not appear to be running."
fi

echo

echo "[+] Listening Services"
ss -tulpn 2>/dev/null
echo

echo "[+] Failed Login Attempts"

if command -v journalctl >/dev/null 2>&1; then
    journalctl --since "24 hours ago" 2>/dev/null | grep -i "failed password" | tail -20
else
    echo "journalctl not available."
fi

echo

echo "[+] World-Writable Files in /etc"
find /etc -xdev -type f -perm -0002 2>/dev/null

echo
echo "======================================"
echo " Security Check Complete"
echo "======================================"
