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
echo -e "   \e[$back_text            \e[30m═[\e[$box PANEL DOMAIN\e[30m ]═          \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[$below Add ID Cloudflare\e[m"
echo -e "   \e[$number (•2)\e[m \e[$below Add Subdomain\e[m"
echo -e "   \e[$number (•3)\e[m \e[$below Pointing IP\e[m"
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x) SYSTEM MENU                        \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -p "        Please Input Number  [1-3 or x] :  "  sys
echo -e ""
case $sys in
1)
cfa
;;
2)
cfd
;;
3)
cfp
;;
x)
system
;;
*)
echo "Please enter an correct number"
sleep 1
panel-domain
;;
esac
