#!/bin/bash
# Simpel Change Root For Linux ( ALL LINUX OS )
# Author = LostServer
# ================================================

# Clear
clear
rm -f root.sh

# Get Passwd
echo ""
echo "by LostServer"
echo ""
read -p "Please Input an New Password For Root : " Pass

# Starting Changes To Root
rm -f /etc/ssh/sshd_config
wget -O /etc/ssh/sshd_config https://raw.githubusercontent.com/syntax-err0rr/Root-VPS/main/sshd
echo -e "$Pass\n$Pass\n"|passwd root &> /dev/null
IPANDA=$(wget -qO- ifconfig.co);

# Successful
clear
echo "Please Save This VPS Account Information"
echo ""
echo "============================================"
echo "  IP ADDRESS = $IPANDA"
echo "  Username   = root"
echo "  Password   = $Pass"
echo "============================================"
echo ""
echo "VPS Will Rebooting On 10 Second !!!!!"

rm -f root.sh
sleep 10
reboot
 
