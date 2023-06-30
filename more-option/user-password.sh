#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V2.0
# Auther  : givpn
# (C) Copyright 2023
# =========================================
clear
echo " "
echo " "
echo " "
read -p "Input USERNAME to change password: " username
egrep "^$username" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
read -p "Input new PASSWORD for user $username: " password

clear
echo "Connecting to Server..."
sleep 0.5
echo "Generating New Password..."
sleep 0.5
  egrep "^$username" /etc/passwd >/dev/null
  echo -e "$password\n$password" | passwd $username
  clear
  echo " "
  echo " "
  echo " "
  echo "-------------------------------------------"
  echo -e "Password for user ${blue}$username${NC} successfully changed."
  echo -e "The new Password for user ${blue}$username${NC} is ${red}$password${NC}"
  echo "-------------------------------------------"
  echo " "
  echo " "
  echo " "

else
echo " "
echo -e "Username ${red}$username${NC} not found in your VPS"
echo " "
exit 0
fi
