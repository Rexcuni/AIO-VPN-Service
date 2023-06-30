#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V2.0
# Auther  : givpn
# (C) Copyright 2023
# =========================================
clear
tls="$(cat ~/log-install.txt | grep -w "Vmess Ws Tls" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "Vmess Ws None Tls" | cut -d: -f2|sed 's/ //g')"
clear
echo -e "\e[0;34m.-----------------------------------------.\e[0m"
echo -e "\e[0;34m|             \e[1;33mCHANGE PORT XRAY\e[m            \e[0;34m|\e[0m"
echo -e "\e[0;34m'-----------------------------------------'\e[0m"
echo -e " \e[1;31m>>\e[0m\e[0;32mChange Port For Xray :\e[0m"
echo -e "  [1]  Change Port Xray Core Tls      [ ${RED}$tls${NC} ]"
echo -e "  [2]  Change Port Xray Core None TLS [ ${RED}$none${NC} ]"
echo -e " ============================================="
echo -e "  [x]  Back To Menu Change Port"
echo -e "  [y]  Go To Main Menu"
echo -e ""
read -p "   Select From Options [1-3 or x & y] :  " prot
echo -e ""
case $prot in
1)
read -p " New Port Xray Vmess, Vless, Trojan, Socks5 & Shadowsocks (TLS): " tls1
if [ -z $tls1 ]; then
echo "Please Input Port"
exit 0
fi
cek=$(netstat -nutlp | grep -w $tls1)
if [[ -z $cek ]]; then
sed -i "s/$tls/$tls1/g" /usr/local/etc/xray/config.json
sed -i "s/   - Websocket SSL(HTTPS)    : $tls/   - Websocket SSL(HTTPS)    : $tls1/g" /root/log-install.txt
sed -i "s/   - Xray Vless Tcp Xtls     : $tls/   - Xray Vless Tcp Xtls     : $tls1/g" /root/log-install.txt
sed -i "s/   - Xray Trojan Tcp Tls     : $tls/   - Xray Trojan Tcp Tls     : $tls1/g" /root/log-install.txt
sed -i "s/   - Xray Vless Ws Tls       : $tls/   - Xray Vless Ws Tls       : $tls1/g" /root/log-install.txt
sed -i "s/   - Xray Vmess Ws Tls       : $tls/   - Xray Vmess Ws Tls       : $tls1/g" /root/log-install.txt
sed -i "s/   - Xray Trojan Ws Tls      : $tls/   - Xray Trojan Ws Tls      : $tls1/g" /root/log-install.txt
sed -i "s/   - Xray Socks5 Ws Tls      : $tls/   - Xray Socks5 Ws Tls      : $tls1/g" /root/log-install.txt
sed -i "s/   - Xray Shadowsocks Ws Tls : $tls/   - Xray Shadowsocks Ws Tls      : $tls1/g" /root/log-install.txt
iptables -D INPUT -m state --state NEW -m tcp -p tcp --dport $xtls -j ACCEPT
iptables -D INPUT -m state --state NEW -m udp -p udp --dport $xtls -j ACCEPT
iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport $tls1 -j ACCEPT
iptables -I INPUT -m state --state NEW -m udp -p udp --dport $tls1 -j ACCEPT
iptables-save > /etc/iptables.up.rules
iptables-restore -t < /etc/iptables.up.rules
netfilter-persistent save > /dev/null
netfilter-persistent reload > /dev/null
systemctl restart xray.service > /dev/null
clear
echo -e "\e[032;1mPort $tls1 modified successfully\e[0m"
else
echo -e "\e[1;31mPort $tls1 is used\e[0m"
fi
;;
2)
read -p " New Port Xray Vmess, Vless, Trojan, Socks5 & Shadowsocks (NONE): " none1
if [ -z $none1 ]; then
echo "Please Input Port"
exit 0
fi
cek=$(netstat -nutlp | grep -w $none1)
if [[ -z $cek ]]; then
sed -i "s/$none/$none1/g" /usr/local/etc/xray/none.json
sed -i "s/   - Websocket SSH(HTTP)          : $none/   - Websocket SSH(HTTP)     : $none1/g" /root/log-install.txt
sed -i "s/   - Xray Vless Ws None Tls       : $none/   - Xray Vless Ws None Tls  : $none1/g" /root/log-install.txt
sed -i "s/   - Xray Vmess Ws None Tls       : $none/   - Xray Vmess Ws None Tls  : $none1/g" /root/log-install.txt
sed -i "s/   - Xray Trojan Ws None Tls      : $none/   - Xray Trojan Ws None Tls : $none1/g" /root/log-install.txt
sed -i "s/   - Xray Socks5 Ws None Tls      : $none/   - Xray Socks5 Ws None Tls : $none1/g" /root/log-install.txt
sed -i "s/   - Xray Shadowsocks Ws None Tls : $none/   - Xray Shadowsocks Ws None Tls : $none1/g" /root/log-install.txt
iptables -D INPUT -m state --state NEW -m tcp -p tcp --dport $none -j ACCEPT
iptables -D INPUT -m state --state NEW -m udp -p udp --dport $none -j ACCEPT
iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport $none1 -j ACCEPT
iptables -I INPUT -m state --state NEW -m udp -p udp --dport $none1 -j ACCEPT
iptables-save > /etc/iptables.up.rules
iptables-restore -t < /etc/iptables.up.rules
netfilter-persistent save > /dev/null
netfilter-persistent reload > /dev/null
systemctl restart xray@none > /dev/null
clear
echo -e "\e[032;1mPort $none1 modified successfully\e[0m"
else
echo -e "\e[1;31mPort $none1 is used\e[0m"
fi
;;
x)
clear
change-port
;;
y)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac
