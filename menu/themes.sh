#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V2.0
# Auther  : givpn
# (C) Copyright 2023
# =========================================
# PROVIDED
creditt=$(cat /root/provided)
# BANNER COLOUR
banner_colour=$(cat /etc/banner)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR ON TOP
text=$(cat /etc/text)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# BANNER
banner=$(cat /usr/bin/bannerku)
ascii=$(cat /usr/bin/test)
# FUCTION
function menu1 () {
clear
echo -e "\e[1;32mPlease enter the name of the menu banner"
read -p "Banner Name : " Name
echo $Name > /usr/bin/bannerku
echo -e "Succesfully Customize Menu."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
}
function menu2 () {
clear
echo ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text           \e[30m═[\e[$box BANNER COLOUR\e[30m ]═          \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[1;31m Red\e[m"
echo -e "   \e[$number (•2)\e[m \e[1;32m Green\e[m"
echo -e "   \e[$number (•3)\e[m \e[1;33m Yellow\e[m"
echo -e "   \e[$number (•4)\e[m \e[1;34m Blue\e[m"
echo -e "   \e[$number (•5)\e[m \e[1;35m Magenta\e[m"
echo -e "   \e[$number (•6)\e[m \e[1;36m Cyan\e[m"
echo -e "   \e[$number (•7)\e[m \e[1;37m White\e[m"
echo -e "   \e[$number (•8)\e[m \e[30m Black\e[m"
echo -e "   \e[$number (•9)\e[m \e[1;30m Grey\e[m"
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x) Themes Menu                        \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp "  Please Enter 1-9 or x : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "1;31m" > /etc/banner
echo -e "Succesfully Set Red Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "1;32m" > /etc/banner
echo -e "Succesfully Set Green Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "1;33m" > /etc/banner
echo -e "Succesfully Set Yellow Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "1;34m" > /etc/banner
echo -e "Succesfully Set Blue Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "1;35m" > /etc/banner
echo -e "Succesfully Set Magenta Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "1;36m" > /etc/banner
echo -e "Succesfully Set Cyan Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;37m" > /etc/banner
echo -e "Succesfully Set White Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "30m" > /etc/banner
echo -e "Succesfully Set Black Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;30m" > /etc/banner
echo -e "Succesfully Set Grey Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
themes
else
clear
echo -e "\e[1;31mYou Entered The Wrong Number, Please Try Again!\e[0m"
sleep 1
themes
fi
}
function menu3 () {
clear
echo ""
echo -e " \e[$line════════════════════════════════════════\e[m"
echo -e " \e[$back_text            \e[30m═[\e[$box BANNER FONT\e[30m ]═           \e[m"
echo -e " \e[$line════════════════════════════════════════\e[m"
figlet -f 3D-ASCII "Premium"
echo -e "   \e[$number (•1)\e[m \e[1;31m 3D ASCII\e[m"
echo -e ""
echo -e ""
figlet -f 3d "Premium"
echo -e "   \e[$number (•2)\e[m \e[1;32m 3d\e[m"
echo -e ""
echo -e ""
figlet -f 4Max "Premium"
echo -e "   \e[$number (•3)\e[m \e[1;33m 4Max\e[m"
echo -e ""
echo -e ""
figlet -f Acrobatic "Premium"
echo -e "   \e[$number (•4)\e[m \e[1;34m Acrobatic\e[m"
echo -e ""
echo -e ""
figlet -f amcaaa01 "Premium"
echo -e "   \e[$number (•5)\e[m \e[1;35m amcaaa01\e[m"
echo -e ""
echo -e ""
figlet -f Shadow "Premium"
echo -e "   \e[$number (•6)\e[m \e[1;36m Shadow\e[m"
echo -e ""
echo -e ""
figlet -f Arrows "Premium"
echo -e "   \e[$number (•7)\e[m \e[1;37m Arrows\e[m"
echo -e ""
echo -e ""
figlet -f Roman "Premium"
echo -e "   \e[$number (•8)\e[m \e[30m Roman\e[m"
echo -e ""
echo -e ""
figlet -f Avatar "Premium"
echo -e "   \e[$number (•9)\e[m \e[1;30m Avatar\e[m"
echo -e ""
echo -e ""
figlet -f Banner3 "Premium"
echo -e "   \e[$number (10)\e[m \e[1;30m Banner3\e[m"
echo -e ""
echo -e ""
figlet -f Banner4 "Premium"
echo -e "   \e[$number (11)\e[m \e[1;30m Banner4\e[m"
echo -e ""
echo -e ""
figlet -f banner "Premium"
echo -e "   \e[$number (12)\e[m \e[1;30m banner\e[m"
echo -e ""
echo -e ""
figlet -f Basic "Premium"
echo -e "   \e[$number (13)\e[m \e[1;30m Basic\e[m"
echo -e ""
echo -e ""
figlet -f Bear "Premium"
echo -e "   \e[$number (14)\e[m \e[1;30m Bear\e[m"
echo -e ""
echo -e ""
figlet -f Big "Premium"
echo -e "   \e[$number (15)\e[m \e[1;30m Big\e[m"
echo -e ""
echo -e ""
figlet -f Bloody "Premium"
echo -e "   \e[$number (16)\e[m \e[1;30m Bloody\e[m"
echo -e ""
echo -e ""
figlet -f Braced "Premium"
echo -e "   \e[$number (17)\e[m \e[1;30m Braced\e[m"
echo -e ""
echo -e ""
figlet -f Bright "Premium"
echo -e "   \e[$number (18)\e[m \e[1;30m Bright\e[m"
echo -e ""
echo -e ""
figlet -f Bubble "Premium"
echo -e "   \e[$number (19)\e[m \e[1;30m Bubble\e[m"
echo -e ""
echo -e ""
figlet -f Cards "Premium"
echo -e "   \e[$number (20)\e[m \e[1;30m Cards\e[m"
echo -e ""
echo -e ""
figlet -f Colossal "Premium"
echo -e "   \e[$number (21)\e[m \e[1;30m Colossal\e[m"
echo -e ""
echo -e ""
figlet -f Contrast "Premium"
echo -e "   \e[$number (22)\e[m \e[1;30m Contrast\e[m"
echo -e ""
echo -e ""
figlet -f cosmic "Premium"
echo -e "   \e[$number (23)\e[m \e[1;30m cosmic\e[m"
echo -e ""
echo -e ""
figlet -f Digital "Premium"
echo -e "   \e[$number (24)\e[m \e[1;30m Digital\e[m"
echo -e ""
echo -e ""
figlet -f Double "Premium"
echo -e "   \e[$number (25)\e[m \e[1;30m Double\e[m"
echo -e ""
echo -e ""
figlet -f Epic "Premium"
echo -e "   \e[$number (26)\e[m \e[1;30m Epic\e[m"
echo -e ""
echo -e ""
figlet -f fire_font-k "Premium"
echo -e "   \e[$number (27)\e[m \e[1;30m fire_font-k\e[m"
echo -e ""
echo -e ""
figlet -f fire_font-s "Premium"
echo -e "   \e[$number (28)\e[m \e[1;30m fire_font-s\e[m"
echo -e ""
echo -e ""
figlet -f Georgi16 "Premium"
echo -e "   \e[$number (29)\e[m \e[1;30m Georgi16\e[m"
echo -e ""
echo -e ""
figlet -f Slant "Premium"
echo -e "   \e[$number (30)\e[m \e[1;30m Slant\e[m"
echo -e ""
echo -e ""
figlet -f Banner "Premium"
echo -e "   \e[$number (31)\e[m \e[1;30m Banner\e[m"
echo -e ""
echo -e ""
figlet -f Poison "Premium"
echo -e "   \e[$number (32)\e[m \e[1;30m Poison\e[m"
echo -e ""
echo -e ""
figlet -f Reverse "Premium"
echo -e "   \e[$number (33)\e[m \e[1;30m Reverse\e[m"
echo -e ""
echo -e ""
figlet -f Standard "Premium"
echo -e "   \e[$number (34)\e[m \e[1;30m Standard\e[m"
echo -e ""
echo -e ""
figlet -f Univers "Premium"
echo -e "   \e[$number (35)\e[m \e[1;30m Univers\e[m"
echo -e ""
echo -e " \e[$line════════════════════════════════════════\e[m"
echo -e " \e[$back_text \e[$box x) Themes Menu                        \e[m"
echo -e " \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp " Please Enter 1-35 or x : " -e b
if [[ "$b" = "1" ]]; then
clear
echo "3D-ASCII" > /usr/bin/test
echo -e "Succesfully Set 3D ASCII Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "2" ]]; then
clear
echo "3d" > /usr/bin/test
echo -e "Succesfully Set 3d Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "3" ]]; then
clear
echo "4Max" > /usr/bin/test
echo -e "Succesfully Set 4Max Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "4" ]]; then
clear
echo "Acrobatic" > /usr/bin/test
echo -e "Succesfully Set Acrobatic Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "5" ]]; then
clear
echo "amcaaa01" > /usr/bin/test
echo -e "Succesfully Set amcaaa01 Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "6" ]]; then
clear
echo "Shadow" > /usr/bin/test
echo -e "Succesfully Set Shadow Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "7" ]]; then
clear
echo "Arrows" > /usr/bin/test
echo -e "Succesfully Set Arrows Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "8" ]]; then
clear
echo "Roman" > /usr/bin/test
echo -e "Succesfully Set Roman Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "9" ]]; then
clear
echo "Avatar" > /usr/bin/test
echo -e "Succesfully Set Avatar Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "10" ]]; then
clear
echo "Banner3" > /usr/bin/test
echo -e "Succesfully Set Banner3 Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "11" ]]; then
clear
echo "Banner4" > /usr/bin/test
echo -e "Succesfully Set Banner4 Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "12" ]]; then
clear
echo "banner" > /usr/bin/test
echo -e "Succesfully Set banner Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "13" ]]; then
clear
echo "Basic" > /usr/bin/test
echo -e "Succesfully Set Basic Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "14" ]]; then
clear
echo "Bear" > /usr/bin/test
echo -e "Succesfully Set Bear Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "15" ]]; then
clear
echo "Big" > /usr/bin/test
echo -e "Succesfully Set Big Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "16" ]]; then
clear
echo "Bloody" > /usr/bin/test
echo -e "Succesfully Set Bloody Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "17" ]]; then
clear
echo "Braced" > /usr/bin/test
echo -e "Succesfully Set Braced Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "18" ]]; then
clear
echo "Bright" > /usr/bin/test
echo -e "Succesfully Set Bright Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "19" ]]; then
clear
echo "Bubble" > /usr/bin/test
echo -e "Succesfully Set Bubble Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "20" ]]; then
clear
echo "Cards" > /usr/bin/test
echo -e "Succesfully Set Cards Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "21" ]]; then
clear
echo "Colossal" > /usr/bin/test
echo -e "Succesfully Set Colossal Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "22" ]]; then
clear
echo "Contrast" > /usr/bin/test
echo -e "Succesfully Set Contrast Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "23" ]]; then
clear
echo "Cosmic" > /usr/bin/test
echo -e "Succesfully Set Cosmic Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "24" ]]; then
clear
echo "Digital" > /usr/bin/test
echo -e "Succesfully Set Digital Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "25" ]]; then
clear
echo "Double" > /usr/bin/test
echo -e "Succesfully Set Double Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "26" ]]; then
clear
echo "Epic" > /usr/bin/test
echo -e "Succesfully Set Epic Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "27" ]]; then
clear
echo "fire_font-k" > /usr/bin/test
echo -e "Succesfully Set fire_font-k Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "28" ]]; then
clear
echo "fire_font-s" > /usr/bin/test
echo -e "Succesfully Set fire_font-s Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "29" ]]; then
clear
echo "Georgi16" > /usr/bin/test
echo -e "Succesfully Set Georgi16 Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "30" ]]; then
clear
echo "Slant" > /usr/bin/test
echo -e "Succesfully Set Slant Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "31" ]]; then
clear
echo "Banner" > /usr/bin/test
echo -e "Succesfully Set Banner Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "32" ]]; then
clear
echo "Poison" > /usr/bin/test
echo -e "Succesfully Set Poison Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "33" ]]; then
clear
echo "Reverse" > /usr/bin/test
echo -e "Succesfully Set Reverse Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "34" ]]; then
clear
echo "Standard" > /usr/bin/test
echo -e "Succesfully Set Standard Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "35" ]]; then
clear
echo "Univers" > /usr/bin/test
echo -e "Succesfully Set Univers Banner."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$b" = "x" ]]; then
themes
else
clear
echo -e "\e[1;31mYou Entered The Wrong Number, Please Try Again!\e[0m"
sleep 1
themes
fi
}
function menu4 () {
clear
echo ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text         \e[30m═[\e[$box COLOUR OF TOP MENU\e[30m ]═       \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[1;31m Red\e[m"
echo -e "   \e[$number (•2)\e[m \e[1;32m Green\e[m"
echo -e "   \e[$number (•3)\e[m \e[1;33m Yellow\e[m"
echo -e "   \e[$number (•4)\e[m \e[1;34m Blue\e[m"
echo -e "   \e[$number (•5)\e[m \e[1;35m Magenta\e[m"
echo -e "   \e[$number (•6)\e[m \e[1;36m Cyan\e[m"
echo -e "   \e[$number (•7)\e[m \e[1;37m White\e[m"
echo -e "   \e[$number (•8)\e[m \e[30m Black\e[m"
echo -e "   \e[$number (•9)\e[m \e[1;30m Grey\e[m"
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x) Themes Menu                        \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp "  Please Enter 1-9 or x : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "1;31m" > /etc/text
echo -e "Succesfully Set Red Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "1;32m" > /etc/text
echo -e "Succesfully Set Green Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "1;33m" > /etc/text
echo -e "Succesfully Set Yellow Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "1;34m" > /etc/text
echo -e "Succesfully Set Blue Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "1;35m" > /etc/text
echo -e "Succesfully Set Magenta Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "1;36m" > /etc/text
echo -e "Succesfully Set Cyan Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;37m" > /etc/text
echo -e "Succesfully Set White Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "30m" > /etc/text
echo -e "Succesfully Set Black Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;30m" > /etc/text
echo -e "Succesfully Set Grey Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
themes
else
clear
echo -e "\e[1;31mYou Entered The Wrong Number, Please Try Again!\e[0m"
sleep 1
themes
fi
}
function menu5 () {
clear
echo ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text       \e[30m═[\e[$box COLOUR OF BOTTOM MENU\e[30m ]═      \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[1;31m Red\e[m"
echo -e "   \e[$number (•2)\e[m \e[1;32m Green\e[m"
echo -e "   \e[$number (•3)\e[m \e[1;33m Yellow\e[m"
echo -e "   \e[$number (•4)\e[m \e[1;34m Blue\e[m"
echo -e "   \e[$number (•5)\e[m \e[1;35m Magenta\e[m"
echo -e "   \e[$number (•6)\e[m \e[1;36m Cyan\e[m"
echo -e "   \e[$number (•7)\e[m \e[1;37m White\e[m"
echo -e "   \e[$number (•8)\e[m \e[30m Black\e[m"
echo -e "   \e[$number (•9)\e[m \e[1;30m Grey\e[m"
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x) Themes Menu                        \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp "  Please Enter 1-9 or x : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "1;31m" > /etc/below
echo -e "Succesfully Set Red Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "1;32m" > /etc/below
echo -e "Succesfully Set Green Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "1;33m" > /etc/below
echo -e "Succesfully Set Yellow Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "1;34m" > /etc/below
echo -e "Succesfully Set Blue Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "1;35m" > /etc/below
echo -e "Succesfully Set Magenta Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "1;36m" > /etc/below
echo -e "Succesfully Set Cyan Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;37m" > /etc/below
echo -e "Succesfully Set White Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "30m" > /etc/below
echo -e "Succesfully Set Black Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;30m" > /etc/below
echo -e "Succesfully Set Grey Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
themes
else
clear
echo -e "\e[1;31mYou Entered The Wrong Number, Please Try Again!\e[0m"
sleep 1
themes
fi
}
function menu6 () {
clear
echo ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text        \e[30m═[\e[$box COLOUR OF LINE MENU\e[30m ]═       \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[1;31m Red\e[m"
echo -e "   \e[$number (•2)\e[m \e[1;32m Green\e[m"
echo -e "   \e[$number (•3)\e[m \e[1;33m Yellow\e[m"
echo -e "   \e[$number (•4)\e[m \e[1;34m Blue\e[m"
echo -e "   \e[$number (•5)\e[m \e[1;35m Magenta\e[m"
echo -e "   \e[$number (•6)\e[m \e[1;36m Cyan\e[m"
echo -e "   \e[$number (•7)\e[m \e[1;37m White\e[m"
echo -e "   \e[$number (•8)\e[m \e[30m Black\e[m"
echo -e "   \e[$number (•9)\e[m \e[1;30m Grey\e[m"
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x) Themes Menu                        \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp "  Please Enter 1-9 or x : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "1;31m" > /etc/line
echo -e "Succesfully Set Red Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "1;32m" > /etc/line
echo -e "Succesfully Set Green Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "1;33m" > /etc/line
echo -e "Succesfully Set Yellow Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "1;34m" > /etc/line
echo -e "Succesfully Set Blue Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "1;35m" > /etc/line
echo -e "Succesfully Set Magenta Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "1;36m" > /etc/line
echo -e "Succesfully Set Cyan Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;37m" > /etc/line
echo -e "Succesfully Set White Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "30m" > /etc/line
echo -e "Succesfully Set Black Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;30m" > /etc/line
echo -e "Succesfully Set Grey Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
themes
else
clear
echo -e "\e[1;31mYou Entered The Wrong Number, Please Try Again!\e[0m"
sleep 1
themes
fi
}
function menu7 () {
clear
echo ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text      \e[30m═[\e[$box COLOUR IN THE BOX MENU\e[30m ]═      \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[1;31m Red\e[m"
echo -e "   \e[$number (•2)\e[m \e[1;32m Green\e[m"
echo -e "   \e[$number (•3)\e[m \e[1;33m Yellow\e[m"
echo -e "   \e[$number (•4)\e[m \e[1;34m Blue\e[m"
echo -e "   \e[$number (•5)\e[m \e[1;35m Magenta\e[m"
echo -e "   \e[$number (•6)\e[m \e[1;36m Cyan\e[m"
echo -e "   \e[$number (•7)\e[m \e[1;37m White\e[m"
echo -e "   \e[$number (•8)\e[m \e[30m Black\e[m"
echo -e "   \e[$number (•9)\e[m \e[1;30m Grey\e[m"
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x) Themes Menu                        \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp "  Please Enter 1-9 or x : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "1;31m" > /etc/box
echo -e "Succesfully Set Red Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "1;32m" > /etc/box
echo -e "Succesfully Set Green Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "1;33m" > /etc/box
echo -e "Succesfully Set Yellow Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "1;34m" > /etc/box
echo -e "Succesfully Set Blue Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "1;35m" > /etc/box
echo -e "Succesfully Set Magenta Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "1;36m" > /etc/box
echo -e "Succesfully Set Cyan Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;37m" > /etc/box
echo -e "Succesfully Set White Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "30m" > /etc/box
echo -e "Succesfully Set Black Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;30m" > /etc/box
echo -e "Succesfully Set Grey Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
themes
else
clear
echo -e "\e[1;31mYou Entered The Wrong Number, Please Try Again!\e[0m"
sleep 1
themes
fi
}
function menu8 () {
clear
echo ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[30m═[\e[$box BACKGROUND COLOUR IN THE BOX MENU\e[30m ]═\e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[1;31m Red\e[m"
echo -e "   \e[$number (•2)\e[m \e[1;32m Green\e[m"
echo -e "   \e[$number (•3)\e[m \e[1;33m Yellow\e[m"
echo -e "   \e[$number (•4)\e[m \e[1;34m Blue\e[m"
echo -e "   \e[$number (•5)\e[m \e[1;35m Magenta\e[m"
echo -e "   \e[$number (•6)\e[m \e[1;36m Cyan\e[m"
echo -e "   \e[$number (•7)\e[m \e[1;37m White\e[m"
echo -e "   \e[$number (•8)\e[m \e[1;30m Grey\e[m"
echo -e "   \e[$number (•9)\e[m \e[1;30m No Colour\e[m"
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x) Themes Menu                        \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp "  Please Enter 1-9 or x : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "41m" > /etc/back
echo -e "Succesfully Set Red Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "42m" > /etc/back
echo -e "Succesfully Set Green Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "43m" > /etc/back
echo -e "Succesfully Set Yellow Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "44m" > /etc/back
echo -e "Succesfully Set Blue Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "45m" > /etc/back
echo -e "Succesfully Set Magenta Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "46m" > /etc/back
echo -e "Succesfully Set Cyan Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "47m" > /etc/back
echo -e "Succesfully Set White Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "40m" > /etc/back
echo -e "Succesfully Set Grey Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;36m" > /etc/back
echo -e "Succesfully Set No Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
themes
else
clear
echo -e "\e[1;31mYou Entered The Wrong Number, Please Try Again!\e[0m"
sleep 1
themes
fi
}
function menu9 () {
clear
echo ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text           \e[30m═[\e[$box NUMBER COLOUR\e[30m ]═          \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[1;31m Red\e[m"
echo -e "   \e[$number (•2)\e[m \e[1;32m Green\e[m"
echo -e "   \e[$number (•3)\e[m \e[1;33m Yellow\e[m"
echo -e "   \e[$number (•4)\e[m \e[1;34m Blue\e[m"
echo -e "   \e[$number (•5)\e[m \e[1;35m Magenta\e[m"
echo -e "   \e[$number (•6)\e[m \e[1;36m Cyan\e[m"
echo -e "   \e[$number (•7)\e[m \e[1;37m White\e[m"
echo -e "   \e[$number (•8)\e[m \e[30m Black\e[m"
echo -e "   \e[$number (•9)\e[m \e[1;30m Grey\e[m"
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x) Themes Menu                        \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp "  Please Enter 1-9 or x : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "1;31m" > /etc/number
echo -e "Succesfully Set Red Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "1;32m" > /etc/number
echo -e "Succesfully Set Green Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "1;33m" > /etc/number
echo -e "Succesfully Set Yellow Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "1;34m" > /etc/number
echo -e "Succesfully Set Blue Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "1;35m" > /etc/number
echo -e "Succesfully Set Magenta Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "1;36m" > /etc/number
echo -e "Succesfully Set Cyan Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;37m" > /etc/number
echo -e "Succesfully Set White Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "30m" > /etc/number
echo -e "Succesfully Set Black Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;30m" > /etc/number
echo -e "Succesfully Set Grey Colour."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
themes
else
clear
echo -e "\e[1;31mYou Entered The Wrong Number, Please Try Again!\e[0m"
sleep 1
themes
fi
}
function menu10 () {
clear
echo -e "\e[1;32mPlease enter the name of provider"
read -p "Provider Name : " Name
echo $Name > /root/provided
echo -e "Succesfully Changed Provider Name."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
}
# MENU THEME
function menu11 () {
clear
echo ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text           \e[30m═[\e[$box THEME COLOURS\e[30m ]═          \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[1;31m Youtube Style\e[m"
echo -e "   \e[$number (•2)\e[m \e[1;34m Facebook Style\e[m"
echo -e "   \e[$number (•3)\e[m \e[1;32m Whatsapp Style\e[m"
echo -e "   \e[$number (•4)\e[m \e[1;35m Squid Game Style\e[m"
echo -e "   \e[$number (•5)\e[m \e[1;31m Horror Style\e[m"
echo -e "   \e[$number (•6)\e[m \e[1;36m Colour Cyan Style\e[m"
echo -e "   \e[$number (•7)\e[m \e[1;33m Default Theme\e[m"
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x) Themes Menu                        \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp "  Please Enter 1-7 or x : " -e bc
if [[ "$bc" = "1" ]]; then
clear
# Colour Banner
echo "1;31m" > /etc/banner
# Colour in the box menu
echo "30m" > /etc/box
# Colour line menu
echo "1;31m" > /etc/line
# Colour top menu
echo "1;31m" > /etc/text
# Colour bot menu
echo "1;31m" > /etc/below
# Colour backround
echo "47m" > /etc/back
# Colour number
echo "1;37m" > /etc/number
# Font banner
echo 3d > /usr/bin/test
# Banner Name
echo YouTube > /usr/bin/bannerku
echo -e "Succesfully Set Youtube Style."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
# Colour Banner
echo "1;34m" > /etc/banner
# Colour in the box menu
echo "1;37m" > /etc/box
# Colour line menu
echo "1;30m" > /etc/line
# Colour top menu
echo "1;34m" > /etc/text
# Colour bot menu
echo "1;34m" > /etc/below
# Colour backround
echo "1;36m" > /etc/back
# Colour number
echo "1;37m" > /etc/number
# Font banner
echo Standard > /usr/bin/test
# Banner Name
echo Facebook > /usr/bin/bannerku
echo -e "Succesfully Set Facebook Style."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
# Colour Banner
echo "1;32m" > /etc/banner
# Colour in the box menu
echo "1;37m" > /etc/box
# Colour line menu
echo "1;32m" > /etc/line
# Colour top menu
echo "1;32m" > /etc/text
# Colour bot menu
echo "1;32m" > /etc/below
# Colour backround
echo "42m" > /etc/back
# Colour number
echo "1;37m" > /etc/number
# Font banner
echo Slant > /usr/bin/test
# Banner Name
echo WhatsApp > /usr/bin/bannerku
echo -e "Succesfully Set WhatsApp Style."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
# Colour Banner
echo "1;35m" > /etc/banner
# Colour in the box menu
echo "30m" > /etc/box
# Colour line menu
echo "1;35m" > /etc/line
# Colour top menu
echo "1;35m" > /etc/text
# Colour bot menu
echo "1;35m" > /etc/below
# Colour backround
echo "47m" > /etc/back
# Colour number
echo "1;37m" > /etc/number
# Font banner
echo Braced > /usr/bin/test
# Banner Name
echo Squid Game > /usr/bin/bannerku
echo -e "Succesfully Set Squid Game Style."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
# Colour Banner
echo "1;31m" > /etc/banner
# Colour in the box menu
echo "30m" > /etc/box
# Colour line menu
echo "1;31m" > /etc/line
# Colour top menu
echo "1;31m" > /etc/text
# Colour bot menu
echo "1;31m" > /etc/below
# Colour backround
echo "41m" > /etc/back
# Colour number
echo "1;31m" > /etc/number
# Font banner
echo Bloody > /usr/bin/test
# Banner Name
echo SILENCE > /usr/bin/bannerku
echo -e "Succesfully Set Horror Style."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
# Colour Banner
echo "1;36m" > /etc/banner
# Colour in the box menu
echo "30m" > /etc/box
# Colour line menu
echo "1;36m" > /etc/line
# Colour top menu
echo "1;36m" > /etc/text
# Colour bot menu
echo "1;36m" > /etc/below
# Colour backround
echo "47m" > /etc/back
# Colour number
echo "1;37m" > /etc/number
# Font banner
echo 3d > /usr/bin/test
# Banner Name
echo Premium > /usr/bin/bannerku
echo -e "Succesfully Set Colour Cyan Style."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;36m" > /etc/banner
echo "30m" > /etc/box
echo "1;31m" > /etc/line
echo "1;32m" > /etc/text
echo "1;33m" > /etc/below
echo "47m" > /etc/back
echo "1;35m" > /etc/number
echo 3d > /usr/bin/test
# Banner Name
echo Premium > /usr/bin/bannerku
echo -e "Succesfully Set Default Theme."
echo -e "\e[0;32mDone\e[0m"
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
themes
else
clear
echo -e "\e[1;31mYou Entered The Wrong Number, Please Try Again!\e[0m"
sleep 1
themes
fi
}
# MENU 
clear
echo ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text               \e[30m═[\e[$box THEMES\e[30m ]═             \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$number (•1)\e[m \e[$below Change Banner Name\e[m"
echo -e "   \e[$number (•2)\e[m \e[$below Change Baner Colour\e[m"
echo -e "   \e[$number (•3)\e[m \e[$below Change Banner Font\e[m"
echo -e "   \e[$number (•4)\e[m \e[$below Change Colour Of The Top Menu\e[m"
echo -e "   \e[$number (•5)\e[m \e[$below Change Colour Of The Bottom Menu\e[m"
echo -e "   \e[$number (•6)\e[m \e[$below Change Colour Of The Line Menu\e[m"
echo -e "   \e[$number (•7)\e[m \e[$below Change Text Colour In The Box Menu\e[m"
echo -e "   \e[$number (•8)\e[m \e[$below Change Backgroud Colour Of The Text Menu\e[m"
echo -e "   \e[$number (•9)\e[m \e[$below Change Colour Of The Number Menu\e[m"
echo -e "   \e[$number (10)\e[m \e[$below Change Vps Provider Name\e[m"
echo -e "   \e[$number (11)\e[m \e[$below Change Theme Style\e[m"
echo -e ""
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "   \e[$back_text \e[$box x) Main Menu                          \e[m"
echo -e "   \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp "  Please Enter 1-11 or x : " -e num
if [[ "$num" = "1" ]]; then
menu1
elif [[ "$num" = "2" ]]; then
menu2
elif [[ "$num" = "3" ]]; then
menu3
elif [[ "$num" = "4" ]]; then
menu4
elif [[ "$num" = "5" ]]; then
menu5
elif [[ "$num" = "6" ]]; then
menu6
elif [[ "$num" = "7" ]]; then
menu7
elif [[ "$num" = "8" ]]; then
menu8
elif [[ "$num" = "9" ]]; then
menu9
elif [[ "$num" = "10" ]]; then
menu10
elif [[ "$num" = "11" ]]; then
menu11
elif [[ "$num" = "x" ]]; then
menu
else
clear
echo -e "\e[1;31mYou Entered The Wrong Number, Please Try Again!\e[0m"
sleep 1
themes
fi
