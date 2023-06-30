#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V2.0
# Auther  : givpn
# (C) Copyright 2023
# =========================================
GitUser="givpn"
# Color Validation
Lred='\e[1;91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
green='\e[32m'
RED='\033[0;31m'
NC='\033[0m'
BGBLUE='\e[1;44m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0;37m'
# ===================
echo ''
clear
echo ''
echo "                                                              "
echo -e "$Lyellow                      Version aioV2"$NC
echo -e "$green.........................................................."$NC
echo -e "$Lyellow                     aioV2 By givpn"$NC
echo -e "$Lyellow                    Contact telegram"$NC
echo -e "$Lgreen                    https://t.me/givpn "$NC
echo -e "$green.........................................................."$NC
echo ''
echo -e "$Lyellow                     Wait 5 Seconds!"$NC
echo -e "$green.........................................................."$NC
sleep 5
clear
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
#IZIN SCRIPT
MYIP=$(curl -sS ifconfig.co)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script
VALIDITY() {
    today=$(date -d "0 days" +"%Y-%m-%d")
    Exp1=$(curl https://raw.githubusercontent.com/${GitUser}/izin/master/aioV2.conf | grep $MYIP | awk '{print $4}')
    if [[ $today < $Exp1 ]]; then
        echo -e "\e[32mCongratulations! You are Allowed to install aioV2 ..\e[0m"
        sleep 5
    else
        echo -e "\e[31mYOUR SCRIPT HAS EXPIRED!\e[0m"
        echo -e "\e[31mPlease renew your ipvps first\e[0m"
        exit 0
    fi
}
IZIN=$(curl https://raw.githubusercontent.com/${GitUser}/izin/master/aioV2.conf | awk '{print $5}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
    echo -e "\e[32mPermission Accepted...\e[0m"
    VALIDITY
else
    echo -e "\e[31mPermission Denied!\e[0m"
    echo -e "\e[31mPlease Contact https://t.me/givpn \e[0m"
	sleep 60
    rm -f setup.sh
    exit 0
fi
clear
echo -e "\e[32mloading...\e[0m"
clear
mkdir /var/lib/premium-script;
default_email=$( curl https://raw.githubusercontent.com/${GitUser}/aioV2/master/email/default.conf )
clear
#Nama penyedia script
echo -e "\e[1;32m════════════════════════════════════════════════════════════\e[0m"
echo ""
echo -e "   \e[1;32mPlease enter the name of Provider for Script."
read -p "   Name : " nm
echo $nm > /root/provided
echo ""
#Email domain
echo -e "\e[1;32m════════════════════════════════════════════════════════════\e[0m"
echo -e ""
echo -e "   \e[1;32mPlease enter your email Domain/Cloudflare."
echo -e "   \e[1;31m(Press ENTER for default email)\e[0m"
read -p "   Email : " email
default=${default_email}
new_email=$email
if [[ $email == "" ]]; then
sts=$default_email
else
sts=$new_email
fi
# email
mkdir -p /usr/local/etc/xray/
touch /usr/local/etc/xray/email
echo $sts > /usr/local/etc/xray/email
echo ""
echo -e "\e[1;32m════════════════════════════════════════════════════════════\e[0m"
echo ""
echo -e "   .----------------------------------."
echo -e "   |\e[1;32mPlease select a domain type below \e[0m|"
echo -e "   '----------------------------------'"
echo -e "     \e[1;32m1)\e[0m Enter your Subdomain"
echo -e "     \e[1;32m2)\e[0m Use a random Subdomain"
echo -e "   ------------------------------------"
read -p "   Please select numbers 1-2 or Any Button(Random) : " host
echo ""
if [[ $host == "1" ]]; then
echo -e "   \e[1;32mPlease enter your subdomain "
read -p "   Subdomain: " host1
echo "IP=$host1" >> /var/lib/premium-script/ipvps.conf
echo "$host1" > /usr/local/etc/xray/domain
echo "$host1" > /etc/xray/domain
echo "$host1" > /root/domain

export dom=$(cat /etc/xray/domain)
export domain=$(cat /usr/local/etc/xray/domain)

sed -i "s/sshws.${dom}/sshws.${domain}/g" /usr/local/etc/xray/config.json;
rm -f /etc/xray/domain;
echo "$host1" > /etc/xray/domain
echo ""
elif [[ $host == "2" ]]; then
#install cf
echo -e "Random Subdomain/Domain is used"
wget https://raw.githubusercontent.com/${GitUser}/aioV2/master/install/cf.sh && chmod +x cf.sh && ./cf.sh
rm -f /root/cf.sh
else
clear
echo "Not Found Argument"
exit 1
fi
echo -e "${green}Setup Domain Done...${NC}"
sleep 2
clear
echo ""
clear
echo -e "\e[0;32mREADY FOR INSTALLATION SCRIPT...\e[0m"
sleep 2
#install ssh ovpn
echo -e "\e[0;32mINSTALLING SSH & OVPN...\e[0m"
sleep 1
wget https://raw.githubusercontent.com/${GitUser}/aioV2/master/install/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
echo -e "\e[0;32mDONE INSTALLING SSH & OVPN\e[0m"
clear
#install Xray
echo -e "\e[0;32mINSTALLING XRAY CORE...\e[0m"
sleep 1
wget https://raw.githubusercontent.com/${GitUser}/aioV2/master/install/ins-xray.sh && chmod +x ins-xray.sh && screen -S ins-xray ./ins-xray.sh
echo -e "\e[0;32mDONE INSTALLING XRAY CORE\e[0m"
clear
#install ohp-server
echo -e "\e[0;32mINSTALLING OHP PORT...\e[0m"
sleep 1
wget https://raw.githubusercontent.com/${GitUser}/aioV2/master/install/ohp.sh && chmod +x ohp.sh && ./ohp.sh
wget https://raw.githubusercontent.com/${GitUser}/aioV2/master/install/ohp-dropbear.sh && chmod +x ohp-dropbear.sh && ./ohp-dropbear.sh
wget https://raw.githubusercontent.com/${GitUser}/aioV2/master/install/ohp-ssh.sh && chmod +x ohp-ssh.sh && ./ohp-ssh.sh
echo -e "\e[0;32mDONE INSTALLING OHP PORT\e[0m"
clear
#install websocket
echo -e "\e[0;32mINSTALLING WEBSOCKET PORT...\e[0m"
wget https://raw.githubusercontent.com/${GitUser}/aioV2/master/websocket-python/websocket.sh && chmod +x websocket.sh && screen -S websocket.sh ./websocket.sh
echo -e "\e[0;32mDONE INSTALLING WEBSOCKET PORT\e[0m"
clear
#install SET-BR
echo -e "\e[0;32mINSTALLING SET-BR...\e[0m"
sleep 1
wget https://raw.githubusercontent.com/${GitUser}/aioV2/master/install/set-br.sh && chmod +x set-br.sh && ./set-br.sh
echo -e "\e[0;32mDONE INSTALLING SET-BR...\e[0m"
sleep 1
wget https://raw.githubusercontent.com/${GitUser}/aioV2/master/install/ssh-udp.sh && chmod +x ssh-udp.sh && ./ssh-udp.sh
echo -e "\e[0;32mDONE INSTALLING SSH UDP...\e[0m"
clear
# install clouflare JQ
apt install jq curl -y
#finish
rm -f /root/ssh-vpn.sh
rm -f /root/ins-xray.sh
rm -f /root/ohp.sh
rm -f /root/ohp-dropbear.sh
rm -f /root/ohp-ssh.sh
rm -f /root/websocket.sh
rm -f /root/set-br.sh
rm -f /root/ssh-udp.sh
# Colour Default
echo "1;36m" > /etc/banner
echo "30m" > /etc/box
echo "1;31m" > /etc/line
echo "1;32m" > /etc/text
echo "1;33m" > /etc/below
echo "47m" > /etc/back
echo "1;35m" > /etc/number
echo 3d > /usr/bin/test
# Version
ver=$( curl https://raw.githubusercontent.com/${GitUser}/aioV2/master/menu/version.conf )
history -c
echo "$ver" > /home/ver
clear
echo " "
echo "Installation has been completed!!"
echo " "
echo -e "\e[1;32m══════════════════ aioV2 ══════════════════\e[0m" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFO SSH & OpenVPN]" | tee -a log-install.txt
echo "    -------------------------" | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200"  | tee -a log-install.txt
echo "   - OpenVPN SSL             : 110"  | tee -a log-install.txt
echo "   - Stunnel4                : 222, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 143, 109"  | tee -a log-install.txt
echo "   - OHP Dropbear            : 8585"  | tee -a log-install.txt
echo "   - OHP SSH                 : 8686"  | tee -a log-install.txt
echo "   - OHP OpenVPN             : 8787"  | tee -a log-install.txt
echo "   - Websocket SSH(HTTP)     : 80"  | tee -a log-install.txt
echo "   - Websocket SSL(HTTPS)    : 443, 2096"  | tee -a log-install.txt
echo "   - Websocket OpenVPN       : 2097"  | tee -a log-install.txt
echo "   - SSH UDP                 : 1-65535"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFO Sqd, Bdvp, Ngnx]" | tee -a log-install.txt
echo "    ---------------------------" | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8000 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFO XRAY]"  | tee -a log-install.txt
echo "    ----------------" | tee -a log-install.txt
echo "   - Xray Vmess Ws Tls             : 443"  | tee -a log-install.txt
echo "   - Xray Vless Ws Tls             : 443"  | tee -a log-install.txt
echo "   - Xray Trojan Ws Tls            : 443"  | tee -a log-install.txt
echo "   - Xray Socks5 Ws Tls            : 443"  | tee -a log-install.txt
echo "   - Xray Shadowsocks Ws Tls       : 443"  | tee -a log-install.txt
echo "   - Xray Vless Tcp Xtls           : 443"  | tee -a log-install.txt
echo "   - Xray Trojan Tcp Tls           : 443"  | tee -a log-install.txt
echo "   - Xray Vmess Ws None Tls        : 80"  | tee -a log-install.txt
echo "   - Xray Vless Ws None Tls        : 80"  | tee -a log-install.txt
echo "   - Xray Trojan Ws None Tls       : 80"  | tee -a log-install.txt
echo "   - Xray Socks5 Ws None Tls       : 80"  | tee -a log-install.txt
echo "   - Xray Shadowsocks Ws None Tls  : 80"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFO CLASH FOR ANDROID (YAML)]"  | tee -a log-install.txt
echo "    -----------------------------------" | tee -a log-install.txt
echo "   - Xray Vmess Ws Yaml      : Yes"  | tee -a log-install.txt
echo "   --------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 01.00 GMT +7" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo -e "\e[1;32m══════════════════ aioV2 by givpn ══════════════════\e[0m" | tee -a log-install.txt
echo -e "   \e[1;32mYour VPS Will Be Automatical Reboot In 10 seconds...\e[0m"
sleep 10
clear
rm -r setup.sh
reboot
