<p align="center">
  <a><img src="https://img.shields.io/badge/givpn-aioV2_revision_beta_test%20-blue" style="max-width:200%;">
    </p>
   </p>

</p> 
<h2 align="center"> Supported Linux Distribution</h2>
<p align="center"><img src="https://d33wubrfki0l68.cloudfront.net/5911c43be3b1da526ed609e9c55783d9d0f6b066/9858b/assets/img/debian-ubuntu-hover.png"></p> 
<p align="center"><img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%209&message=Stretch&color=purple"> <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=debian&label=Debian%2010&message=Buster&color=purple">  <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=ubuntu&label=Ubuntu%2018&message=Lts&color=red"> <img src="https://img.shields.io/static/v1?style=for-the-badge&logo=ubuntu&label=Ubuntu%2020&message=Lts&color=red">
</p>
</div>

# Required
<br>
- DEBIAN 9/10<br>
- Ubuntu 18/20 LTS<br>
- CPU MIN 1 CORE<br>
- 1GB of RAM<br>
<br>

# Service & Port:
<br>
  - OpenSSH                      : 22<br>
  - OpenVPN                      : TCP 1194, UDP 2200, SSL 110<br>
  - Stunnel4                     : 222, 777<br>
  - Dropbear                     : 143, 109<br>
  - OHP Dropbear                 : 8585<br>
  - OHP SSH                      : 8686<br>
  - OHP OpenVPN                  : 8787<br>
  - Websocket SSH(HTTP)          : 80<br>
  - Websocket SSL(HTTPS)         : 443, 2096<br>
  - Websocket OpenVPN            : 2097<br>
  - SSH UDP                      : 1-65535<br>
  - Squid Proxy                  : 3128, 8000<br>
  - Badvpn                       : 7100, 7200, 7300<br>
  - Nginx                        : 81<br>
  - XRAY Vmess Ws Tls            : 443<br>
  - XRAY Vless Ws Tls            : 443<br>
  - XRAY Trojan Ws Tls           : 443<br>
  - XRAY Socks5 Ws Tls           : 443<br>
  - XRAY Shadowsocks Ws Tls      : 443<br>
  - XRAY Vless Tcp Xtls          : 443<br>
  - XRAY Trojan Tcp Tls          : 443<br>
  - XRAY Vmess Ws None Tls       : 80<br>
  - XRAY Vless Ws None Tls       : 80<br>
  - XRAY Trojan Ws None Tls      : 80<br>
  - XRAY Socks5 Ws None Tls      : 80<br>
  - XRAY Shadowsocks Ws None Tls : 80<br>
<br>
# Server Information & Other Features:
<br>
   - Timezone                 : Asia/Jakarta (GMT +7)<br>
   - Fail2Ban                 : [ON]<br>
   - DDOS Dflate              : [ON]<br>
   - IPtables                 : [ON]<br>
   - Auto-Reboot              : [ON]- 01.00 GMT +7<br>
   - Auto-Remove-Expired      : [ON]<br>
   - IPv6                     : [OFF]<br>
   - Auto Delete Expired Account<br>
   - Fully automatic<br>
   - VPS settings<br>
   - Admin Control<br>
   - Change port<br>
   - Full Orders For Various Services<br>
<br>

# Create root on the VPS for those of you who log into the server still using a username that isn't root
- Step 1
  ```
  sudo su
  ```
- Step 2
   ```
   cd
   ```
- Step 3
  ```
  apt update && apt install wget -y && apt upgrade -y && apt dist-upgrade -y && wget -qO- -O rootvps.sh https://raw.githubusercontent.com/givpn/aioV2/master/rootvps.sh && bash rootvps.sh
  ```
## Step 4 Install

  ```
  sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/givpn/aioV2/master/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh
  ```

# Telegram Register IP
[![Telegram-chat](https://img.shields.io/badge/Chat-Telegram-blue)](https://t.me/givpn/)
[![Telegram-group](https://img.shields.io/badge/Telegram-group-blue)](https://t.me/givpn_grup)

# Buy me a coffee
[![Saweria donate button](https://img.shields.io/badge/Donate-Saweria-red)](https://saweria.co/givpn11)
[![Ko-fi donate button](https://img.shields.io/badge/Donate-Ko--fi-red)](https://ko-fi.com/givpn11)
[![PayPal donate button](https://img.shields.io/badge/Donate-PayPal-blue)](https://paypal.me/givpn11)
<a href="https://www.digitalocean.com/?refcode=8a474003bf18&utm_campaign=Referral_Invite&utm_medium=Referral_Program&utm_source=badge"><img src="https://web-platforms.sfo2.cdn.digitaloceanspaces.com/WWW/Badge%201.svg" alt="DigitalOcean Referral Badge" /></a>
# ATTENTION READ CAREFULLY
- NOT FOR SALE BECAUSE I GET IT FREE FROM THE INTERNET
- USE IT WISELY
# END MESSAGE
- THANK YOU FOR TAKING THE TIME TO READ AND SORRY IF THERE ARE IMPERFECT WORDS
- BECAUSE I AM ALSO A HUMAN WHO DOESN'T ESCAPE MISTAKES

<p align="center">
  <a><img src="https://img.shields.io/badge/License-MIT-blue.svg" style="max-width:200%;">
    </p>
   </p>
<p align="center">
  <a><img src="https://img.shields.io/badge/givpn-aioV2_revision_beta_test%202023-blue" style="max-width:200%;">
    </p>
   </p>
