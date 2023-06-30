#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V2.0
# Auther  : givpn
# (C) Copyright 2023
# =========================================
white='\e[0;37m'
green='\e[0;32m'
red='\e[0;31m'
blue='\e[0;34m'
cyan='\e[0;36m'
yellow='\e[0;33m'
NC='\e[0m'
clear
echo -e ""
echo -e "${blue}══════════════════════════════════════${NC}"
echo -e "\\E[0;46;30m         RESTART VPN SERVICE          \e[0m"
echo -e "${blue}══════════════════════════════════════${NC}"
echo -e "  $green[${white}1${green}] ${green} Restart All Services$NC"
echo -e "  $green[${white}2${green}] ${green} Restart OpenSSH$NC"
echo -e "  $green[${white}3${green}] ${green} Restart Dropbear$NC"
echo -e "  $green[${white}4${green}] ${green} Restart Stunnel4$NC"
echo -e "  $green[${white}5${green}] ${green} Restart OpenVPN$NC"
echo -e "  $green[${white}6${green}] ${green} Restart Squid$NC"
echo -e "  $green[${white}7${green}] ${green} Restart Restart Nginx$NC"
echo -e "  $green[${white}8${green}] ${green} Restart Xray Core$NC"
echo -e "  $green[${white}9${green}] ${green} Restart Trojan Ws & Tcp Tls$NC"
echo -e "  $green[${white}10${green}] ${green}Restart Badvpn$NC"
echo -e "  $green[${white}11${green}] ${green}Restart OHP $NC"
echo -e "  $green[${white}12${green}] ${green}Restart WebSocket$NC"
echo -e "${blue}══════════════════════════════════════${NC}"
echo -e "\\E[0;46;30m        x)   MENU                     ${NC}"
echo -e "${blue}══════════════════════════════════════${NC}"
echo -e ""
read -p "    Select From Options [1-12 or x] :" Restart
echo -e ""
case $Restart in
                1)
                clear
                /etc/init.d/ssh restart
                /etc/init.d/dropbear restart
                /etc/init.d/stunnel4 restart
                /etc/init.d/openvpn restart
                systemctl restart --now openvpn-server@server-tcp-1194
                systemctl restart --now openvpn-server@server-udp-2200
                /etc/init.d/fail2ban restart
                /etc/init.d/cron restart
                /etc/init.d/nginx restart
                /etc/init.d/squid restart
				systemctl restart xray
				systemctl restart xray@none
				systemctl restart xray@tcp
				systemctl restart xray@vless
				systemctl restart xray@vlessnone
				systemctl restart xray@vmess
				systemctl restart xray@vmessnone
				systemctl restart xray@trojan
				systemctl restart xray@trojannone
				systemctl restart xray@socks5
				systemctl restart xray@socks5none
				systemctl restart xray@ss
				systemctl restart xray@ssnone
				systemctl restart ws-http
				systemctl restart ws-https
				systemctl enable ssh-udp
				systemctl restart ohp
				systemctl restart ohpd
				systemctl restart ohps
			    systemctl restart cdn-dropbear
				systemctl restart cdn-ovpn
				systemctl restart cdn-ssl
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 1000
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 1000
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 1000
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "          \e[0;32mALL Service Restarted\e[0m         "
                echo -e ""
                echo -e "======================================"
				echo ""
				read -n 1 -s -r -p "Press any key to back on menu"
				menu
                ;;
                2)
                clear
                /etc/init.d/ssh restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "        \e[0;32mSSH Service Restarted\e[0m       "
                echo -e ""
                echo -e "======================================"
				echo ""
				read -n 1 -s -r -p "Press any key to back on menu"
				menu
                ;;
                3)
                clear
                /etc/init.d/dropbear restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "       \e[0;32mDropbear Service Restarted\e[0m     "
                echo -e ""
                echo -e "======================================"
				echo ""
				read -n 1 -s -r -p "Press any key to back on menu"
				menu
                ;;
                4)
                clear
                /etc/init.d/stunnel4 restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "        \e[0;32mStunnel4 Service Restarted\e[0m    "
                echo -e ""
                echo -e "======================================"
				echo ""
				read -n 1 -s -r -p "Press any key to back on menu"
				menu
                ;;
                5)
                clear
                /etc/init.d/openvpn restart
                systemctl restart --now openvpn-server@server-tcp-1194
                systemctl restart --now openvpn-server@server-udp-2200
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "       \e[0;32mOpenVPN Service Restarted\e[0m      "
                echo -e ""
                echo -e "======================================"
				echo ""
				read -n 1 -s -r -p "Press any key to back on menu"
				menu
                ;;
                6)
                clear
                /etc/init.d/squid restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "        \e[0;32mSquid3 Service Restarted\e[0m      "
                echo -e ""
                echo -e "======================================"
				echo ""
				read -n 1 -s -r -p "Press any key to back on menu"
				menu
                ;;
                7)
                clear
                /etc/init.d/nginx restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "         \e[0;32mNginx Service Restarted\e[0m      "
                echo -e ""
                echo -e "======================================"
				echo ""
				read -n 1 -s -r -p "Press any key to back on menu"
				menu
                ;;
				8)
                clear
				systemctl restart xray
				systemctl restart xray@none
				systemctl restart xray@vless
				systemctl restart xray@vlessnone
				systemctl restart xray@vmess
				systemctl restart xray@vmessnone
				systemctl restart xray@socks5
				systemctl restart xray@socks5none
				systemctl restart xray@ss
				systemctl restart xray@ssnone
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "         \e[0;32mXray Service Restart\e[0m         "
                echo -e ""
                echo -e "======================================"
				echo ""
				read -n 1 -s -r -p "Press any key to back on menu"
				menu
                ;;
				9)
				clear
				systemctl restart xray@tcp
				systemctl restart xray@trojan
				systemctl restart xray@trojannone
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      \e[0;32mAll Trojan Service Restart\e[0m      "
                echo -e ""
                echo -e "======================================"
				echo ""
				read -n 1 -s -r -p "Press any key to back on menu"
				menu
                ;;
                10)
                clear
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7400 --max-clients 500
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7500 --max-clients 500
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7600 --max-clients 500
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7700 --max-clients 500
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7800 --max-clients 500
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7900 --max-clients 500
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "       \e[0;32mBadvpn Service Restarted\e[0m     "
                echo -e ""
                echo -e "======================================"
				echo ""
				read -n 1 -s -r -p "Press any key to back on menu"
				menu
                ;;
				11)
				clear
                systemctl restart ohp
				systemctl restart ohpd
				systemctl restart ohps
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "         \e[0;32mOHP Service Restarted\e[0m     "
                echo -e ""
                echo -e "======================================"
				echo ""
				read -n 1 -s -r -p "Press any key to back on menu"
				menu
				;;
				12)
				clear
				systemctl restart ws-http
				systemctl restart ws-https
                systemctl restart cdn-dropbear
				systemctl restart cdn-ovpn
				systemctl restart cdn-ssl
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      \e[0;32mWebSocket Service Restarted\e[0m     "
                echo -e ""
	            echo -e "======================================"
				echo ""
				read -n 1 -s -r -p "Press any key to back on menu"
				ssh
                ;;
                x)
                clear
                menu
                ;;
                esac
