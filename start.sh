#!/data/data/com.termux/files/usr/bin/bash
pkg install openssh -y
termux-wake-lock
sshd
echo "========================================"
echo "YOUR SSH USERNAME IS: $(whoami)"
echo "========================================"
ssh -p 443 -o StrictHostKeyChecking=no -R0:localhost:8022 tcp@a.pinggy.io
