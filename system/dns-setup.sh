clear -x

if ! command -v resolvconf >/dev/null; then
    echo "Installing resolvconf"
    sudo apt install resolvconf -y >/dev/null
fi

sleep 1
clear -x
# TEMPORARY
function menu1 () {
clear -x
sudo systemctl enable resolvconf.service > /dev/null && clear -x && sudo systemctl start resolvconf.service > /dev/nul
clear -x
echo " "
read -p "KEY IN IP DNS: " ip1

echo "nameserver $ip1" > /etc/resolv.conf && systemctl start resolvconf.service
clear -x
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
# PERMANENTLY
function menu2 () {
clear -x
sudo systemctl enable resolvconf.service > /dev/null && clear -x && sudo systemctl start resolvconf.service > /dev/null
clear -x
echo " "
read -p "KEY IN IP DNS: " ip2
sudo dd if=/dev/null of=/etc/resolvconf/resolv.conf.d/head
echo "nameserver $ip2" | sudo tee /etc/resolvconf/resolv.conf.d/head
clear -x
sudo systemctl restart resolvconf.service > /dev/null 
clear -x
sudo resolvconf --enable-updates > /dev/null 
clear -x
sudo resolvconf -u > /dev/null 
clear -x
cat /etc/resolv.conf
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
# menu depan
function menu3 () {
clear -x
menu
}
# MENU XRAY VMESS & VLESS
clear
dns="$(cat /etc/resolvconf/resolv.conf.d/head)"
echo -e "\033[0;34m╒════════════════════════════════════════════╕\033[0m"
echo -e " \\E[0;41;36m                DNS CHANGER                 \E[0m"
echo -e "\033[0;34m╘════════════════════════════════════════════╛\033[0m"
echo "DNS Changer"
echo -e ""
echo -e "   \e[0;32m Active DNS : $dns \033[0m"
echo -e ""
echo -e " [\e[36m•1 \e[0m] INPUT DNS TEMPORARY.REBOOT VPS FOR RETURN TO INITIAL DNS"
echo -e " [\e[36m•2 \e[0m] INPUT DNS PERMANENTLY"
echo -e " [\e[36m•3 \e[0m] BACK TO MAIN MENU"
echo -e ""
echo  "Press [ Ctrl+C ] • To-Exit-Script"
echo -e ""
read -p  "Select From Options [ 1 - 3 ] :" num
echo -e ""
if [[ "$num" = "1" ]]; then
menu1
elif [[ "$num" = "2" ]]; then
menu2
elif [[ "$num" = "3" ]]; then
menu3
else
clear
echo -e "\e[1;31mYou Entered The Wrong Number, Please Try Again!\e[0m"
sleep 1
dns
fi
