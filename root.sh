#!/bin/bash
clear
# Get Passwd
echo
echo "======================================================"
read -p "Please Input an New Password For Root : " Pass

# Starting Changes To Root
rm -f /etc/ssh/sshd_config
wget -O /etc/ssh/sshd_config https://raw.githubusercontent.com/lostserver/Root-VPS/main/sshd
echo -e "$Pass\n$Pass\n"|passwd root &> /dev/null
MYIP=$(curl -sS ipinfo.io/ip);

# Successful
clear
echo "Please Save This VPS Account Information"
echo "======================================================"
echo "  IP ADDRESS = $MYIP"
echo "  Username   = root"
echo "  Password   = $Pass"
echo "======================================================"
echo ""
echo "VPS Will Rebooting On 10 Second !!!!!"

rm -f root.sh
sleep 10
reboot
 
