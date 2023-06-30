#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V2.0
# Auther  : givpn
# (C) Copyright 2023
# =========================================
clear
# Acc ID Clf
mkdir -p /root/
touch /root/mail.conf
IP=$(wget -qO- ifconfig.co);
cloudflare=$(grep -c -E "^### " "/root/mail.conf")
if [[ ${cloudflare} == '0' ]]; then
        echo ""
		echo ""
		echo -e "\e[1;31mYou Have No ID CLOUDFLARE! Please ADD ID Coudflare First.\e[0m"
		echo -e "\e[1;31mBack To Main Menu, Thankyou.\e[0m"
		exit 1
	fi
source /root/mail.conf
DOMAIN=$domain
CF_ID=$email
CF_KEY=$key
set -euo pipefail
read -p "Masukan Subdomain Anda :" sub
echo "Updating DNS for ${sub}..."
ZONE=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones?name=${DOMAIN}&status=active" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

RECORD=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?name=${sub}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

if [[ "${#RECORD}" -le 10 ]]; then
     RECORD=$(curl -sLX POST "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${DOMAIN}'","content":"'${IP}'","ttl":120,"proxied":false}' | jq -r .result.id)
fi

RESULT=$(curl -sLX PUT "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records/${RECORD}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${sub}'","content":"'${IP}'","ttl":120,"proxied":false}')
clear
echo ""
echo -e " \e[1;36mSuccesfully Add your Subdomain\e[0m"
echo -e " \e[0;34m======================================\e[0m"
echo -e " \e[0;33mDomain Name        :\e[0m $DOMAIN"
echo -e " \e[0;33mSubdomain Name     :\e[0m ${sub}"
echo -e " \e[0;33mSub + Domain (Used):\e[0m ${sub}.$DOMAIN"
echo -e " \e[0;34m======================================\e[0m"
echo -e "\e[1;36mNow You Can Add Subdomain/Host For Script\e[0m"
echo ""
echo -e "\e[0;32mDONE...!\e[0m"
read -n 1 -s -r -p "Press any key to back on menu"
panel-domain
