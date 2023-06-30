#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V2.0
# Auther  : givpn
# (C) Copyright 2023
# =========================================
clear
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
yl='\e[031;1m'
bl='\e[36;1m'
gl='\e[32;1m'
BLUE='\e[0;34m'
clear
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text         \e[30m═[\e[$box CHANGE PORT MENU\e[30m ]═         \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$number   >>\e[$number Please select an option below :\e[0m"
echo -e "   \e[$number (•1)\e[m \e[$below Change Port Stunnel\e[m"
echo -e "   \e[$number (•2)\e[m \e[$below Change Port OpenVPN\e[m"
echo -e "   \e[$number (•3)\e[m \e[$below Change Port OHP SSH\e[m"
echo -e "   \e[$number (•4)\e[m \e[$below Change Port Websocket SSH\e[m"
echo -e "   \e[$number (•5)\e[m \e[$below Change Port Xray Core\e[m"
echo -e "   \e[$number (•6)\e[m \e[$below Change Port Squid Proxy\e[m"
echo -e ""
echo -e "   \e[$line═══════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x)  MENU                             \e[m"
echo -e "   \e[$line═══════════════════════════════════════\e[m"
echo -e ""
read -p "     Select From Options [1-8 or x] :  " port
echo -e ""
case $port in
1)
port-ssl
;;
2)
port-ovpn
;;
3)
port-ohp
;;
4)
port-websocket
;;
5)
port-xray
;;
6)
port-squid
;;
x)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac
