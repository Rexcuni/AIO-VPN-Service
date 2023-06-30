#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V2.0
# Auther  : givpn
# (C) Copyright 2023
# =========================================
clear
rm -r /root/mail.conf
clear
cd /root
read -e -p " Masukan Domain :$domain" domain
read -e -p " Masukan Email Cloudflare :" email
read -e -p " Masukan Api Key :" key
echo -e "domain=$domain" >> /root/mail.conf
echo -e "email=$email" >> /root/mail.conf
echo -e "key=$key" >> /root/mail.conf
echo -e "### $domain $email" >> /root/mail.conf
clear
echo -e "\e[0;32mDONE\e[0m"
echo -e "\e[0;33mYour ID Cloudflare\e[0m"
echo -e "\e[1;34m===============================\e[0m"
echo -e "\e[0;36mDOMAIN         :\e[0m $domain"
echo -e "\e[0;36mEmail          :\e[0m $email"
echo -e "\e[0;36mApi Key        :\e[0m $key"
echo -e "\e[1;34m===============================\e[0m"
echo -e "\e[0;32mNow you can use & add subdomain.\e[0m"
echo -e "\e[0;32mGo to main menu and chosee Add Subdomain to you ID Cloudflare or Pointing IP\e[0m"
echo -e "\e[0;32mto you ID Cloudflare\e[0m"
read -n 1 -s -r -p "Press any key to back on menu"
panel-domain
