#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V2.0
# Auther  : givpn
# (C) Copyright 2023
# =========================================
GitUser="givpn"
#Direct Proxy Squid For OpenVPN TCP
RED='\e[1;31m'
GREEN='\e[0;32m'
BLUE='\e[0;34m'
NC='\e[0m'
MYIP=$(wget -qO- https://ifconfig.co);
MYIP2="s/xxxxxxxxx/$MYIP/g";

#Update Repository VPS
clear
apt update 
apt-get -y upgrade

#Port Server ovpn ohp
#Jika Ingiin Mengubah Port Silahkan Sesuaikan Dengan Port Yang Ada Di VPS Mu
Port_OpenVPN_TCP='442';
Port_Squid='3128';
Port_OHP='8585';

#Installing ohp Server
cd 
wget -O /usr/local/bin/ohpd "https://raw.githubusercontent.com/${GitUser}/aioV2/master/ohpd"
chmod +x /usr/local/bin/ohpd

#Buat Service Untuk OHP Dropbear
cat > /etc/systemd/system/ohpd.service <<END
[Unit]
Description=Direct Squid Proxy For ssh-dropbear
Documentation=https://t.me/todfix667
Wants=network.target
After=network.target

[Service]
ExecStart=/usr/local/bin/ohpd -port 8585 -proxy 127.0.0.1:3128 -tunnel 127.0.0.1:109
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable ohpd
systemctl restart ohpd
echo ""
echo -e "${GREEN}Done Installing OHP Dropbear${NC}"
echo -e "Port OHP DROPBEAR: $ohpp"
echo -e "aioV2"
