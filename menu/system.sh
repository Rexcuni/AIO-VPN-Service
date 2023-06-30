#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V2.0
# Auther  : givpn
# (C) Copyright 2023
# =========================================
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
clear
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text             \e[30m═[\e[$box SYSTEM MENU\e[30m ]═          \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[$below Add New Subdomain\e[m"
echo -e "   \e[$number (•2)\e[m \e[$below Renew Cert Xray Core\e[m"
echo -e "   \e[$number (•3)\e[m \e[$below DNS Changer\e[m"
echo -e "   \e[$number (•4)\e[m \e[$below Netflix Checker\e[m"
echo -e "   \e[$number (•5)\e[m \e[$below Panel Domain\e[m"
echo -e "   \e[$number (•6)\e[m \e[$below Backup Vps\e[m"
echo -e "   \e[$number (•7)\e[m \e[$below Restore Vps\e[m"
echo -e "   \e[$number (•8)\e[m \e[$below Install Webmin\e[m"
echo -e "   \e[$number (•9)\e[m \e[$below Setup Speed VPS\e[m"
echo -e "   \e[$number (10)\e[m \e[$below Restart VPN\e[m"
echo -e "   \e[$number (11)\e[m \e[$below Speedtest VPS\e[m"
echo -e "   \e[$number (12)\e[m \e[$below Xray Version\e[m"
echo -e "   \e[$number (13)\e[m \e[$below Install BBR\e[m"
echo -e "   \e[$number (14)\e[m \e[$below Install Ads Block\e[m"
echo -e "   \e[$number (15)\e[m \e[$below Ads Block Panel\e[m"
echo -e "   \e[$number (16)\e[m \e[$below ON/OF Auto Reboot\e[m"
echo -e "   \e[$number (17)\e[m \e[$below Change Password VPS\e[m"
echo -e "   \e[$number (18)\e[m \e[$below Check CPU & RAM\e[m"
echo -e "   \e[$number (19)\e[m \e[$below Change Banner SSH\e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x)   MENU                             \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -p "    Please Input Number  [1-19 or x] :  "  sys
echo -e ""
case $sys in
1)
add-host
;;
2)
certv2ray
;;
3)
dns
;;
4)
netf
;;
5)
panel-domain
;;
6)
backup
;;
7)
restore
;;
8)
wbmn
;;
9)
limit-speed
;;
10)
restart
;;
11)
speedtest
;;
12)
xray version
;;
13)
bbr
;;
14)
ins-helium
;;
15)
helium
;;
16)
autoreboot
;;
17)
clear
passwd
;;
18)
htop
;;
19)
clear
nano /etc/issue.net
;;
x)
menu
;;
*)
echo "Please enter an correct number"
sleep 1
system
;;
esac
