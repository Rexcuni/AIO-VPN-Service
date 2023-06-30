#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V2.0
# Auther  : givpn
# (C) Copyright 2023
# =========================================
clear
if [[ -e /usr/local/sbin/helium ]]; then
     echo ""
     echo -e "${green}Ads Block Already Install${NC}"
     echo ""
	 read -n1 -r -p "Press any key to continue..."
	 menu
else

rm -rf /usr/local/sbin/helium
wget -q -O /usr/local/sbin/helium https://raw.githubusercontent.com/givpn/aioV2/master/helium.sh
chmod +x /usr/local/sbin/helium
helium

fi