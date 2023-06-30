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
echo -e "   \e[$line══════════════════════════════════════════\e[m"
echo -e "   \e[$back_text         \e[30m═[\e[$box SSH UDP Menu\e[30m ]═         \e[m"
echo -e "   \e[$line══════════════════════════════════════════\e[m"
echo -e "    \e[$number (•1)\e[m \e[$below Stop SSH UDP\e[m"
echo -e "    \e[$number (•2)\e[m \e[$below Unistall SSH UDP\e[m"
echo -e "    \e[$number (•3)\e[m \e[$below Reinstall SSH UDP\e[m"
echo -e ""
echo -e "   \e[$line══════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x)   MENU                               \e[m"
echo -e "   \e[$line══════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -p "       Please Input Number  [1-3 or x] :  "  sshu
echo -e ""
case $sshu in
1)
service ssh-udp stop
;;
2)
systemctl disable ssh-udp
;;
3)
systemctl enable ssh-udp
;;
x)
ssh
;;
*)
echo "Please enter an correct number"
;;
esac
