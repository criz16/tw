#!/bin/bash
ln -fs /usr/share/zoneinfo/Asia/Manila /etc/localtime
sed -i "s/SELINUX=enforcing/SELINUX=disabled/g" /etc/selinux/config &> /dev/null
#change this according to your database details
RED='\033[01;31m';
RESET='\033[0m';
GREEN='\033[01;32m';
WHITE='\033[01;37m';
YELLOW='\033[00;33m';

show_menu () {
echo -e "                $GREEN

░█████╗░██████╗░██╗███████╗
██╔══██╗██╔══██╗██║╚════██║
██║░░╚═╝██████╔╝██║░░███╔═╝
██║░░██╗██╔══██╗██║██╔══╝░░
╚█████╔╝██║░░██║██║███████╗
░╚════╝░╚═╝░░╚═╝╚═╝╚══════╝    
$RESET"
}
install(){
# Updating Repositories
yum update -y
# Installing Required Packages.
yum install epel-release -y
yum install wget -y
yum install mysql squid nano -y
yum install iptables iptables-services -y
yum install nc lsof screen -y
yum install NetworkManager -y
MYIP=$(wget -qO- ipv4.icanhazip.com);
# Installing Dropbear and Stunnel

yum -y install stunnel dropbear &> /dev/null
#sudo mkdir /var/run/stunnel &> /dev/null
#sudo chown nobody:nobody /var/run/stunnel &> /dev/null
cat << EOF > /etc/sysconfig/dropbear
OPTIONS=" -p 550 -p 555"
EOF

cat <<EOF >/etc/stunnel/stunnel.pem
-----BEGIN RSA PRIVATE KEY-----
MIIEpQIBAAKCAQEA+A7kkUwhEiVc3V2vQMCnkXxhU/U9eXVgcyMBLDjZ5tcYP41I
wfhrNH3kNIGLc/C1w9eM13hX7lxaZlInMb4ZWfDOy8/WLNC4XdT/74ucGqtlNDvu
bCL617hr0NyLkf9KRxQlaa/Mc7qu18sMyX+AUJsKLrigxXQC3XQ7S/i3YfGBU6x1
V9G+aXq2t3z/dAQK6mcUj/5YArEBc1YpdJpEkSXyMfWZByjE5QlBeHfe/eGnxOoV
3VLFObil/FdwsK/F4hAW4SWSLAf3KY8IjiicRgXk3Vcm5eQAftsluuNdMFNR+0wp
z1jHl7G6mTwTXyAuB1lvyRPO8iSyueAwRfAgTwIDAQABAoIBAQC14oWqHD4rhgXf
su/r9Ndpj9/1pd6bjntYMRSNDmqIHrOC9d+hirtg0+ZesZZFPvyoSwbUf0NKXaFT
YW2nxZHlJvMa8pxCZBCrjKDVTnL6Ay7D7CXYWJXBU1KK5QvZ02ztTVJZejPZr8rA
I/yOStUVRXlj5LDN11C6fJ12CTq9rtvtMS792ZNtCxGvQJuV5OQEhukp2ycjwU3P
RHErEC7Gkhdo7netjwOmBvysikPmtheE8IZOpx/yok+pRB1zrzWExAM7nZHNQsR4
jF1xJiaQ4/9a7PGNvbHOj8YarbWxGPHzrWYvrzz4P8ZwgWnv5gdOWsBJTG+sUNJ2
n5dCXlIBAoGBAPzWxrs7ACW8ZUwqvKyhTjAAmpMz6I/VQNbtM/TEKCUpMaXXCSar
ItnmSXwt29c0LSoHifwlBenUx+QB/o5qr2idbbJRbU1Pz4PcIRCdKcu0t4PoeJJM
T6CzXNs46Sg98HZ46WW0HesI8UNbwa8vj8B92O9Z5CoFOStYb4cRxFbPAoGBAPso
0Lx+ZCqA3+++BFaqsFjdh8YL3UOjm1oSn/ip1Stgv0Jl862RQA3aB5nNMutuPBIc
gAlb1M66J7v7STe5nKFPHELUprwHReXlrjSkyNxmP2LkCJFpGBm1AOc5meL0avXH
yzmqEdOvXKC06D0eZlBtLnfITwRgcjMoiHxF8f6BAoGAeuA+ULvJxI0chbm3XAZA
o1+Hv8ZYXZ58FnfM6kVyZSzx7fDlh59gHpmmWO1Ii/vVfzmOu7WafBtm0c6OUdRT
TvpDV4fvIMWKykBu6U4YA+Hd1gNipWbkw+qnU/sChQYlGM6GT2ELsS/1YJD1PhhV
Om1uwlPjaPCE6iXefbwKuU0CgYEA4274ZlhFuD9viZeWMizq9+3TT0HbIa77tLr8
5Z5VDKzVRPkxilDnoiN3kozAuXTfLL9mKhNgR7tG0/EfQjjwXxpWSyZpvgcQArjT
4ZP+16Y3bAN2xsZWLqE7qib89QnD+cDshNE+x2QbCuQHEaF/oQDdfVaER0BW6YCg
53gnRQECgYEA0CbUEO4JPIN6djkwX8a1GbEow85DMKvEchmwCdW8CvUunlULzZlS
ezC6w+/xCAP2jU6qOPR0aQV11oxnX4BimvZHCTuqDokHdS38KWcPjHy/A/XHU2dl
OpQXVN1JwM0kcBY8IaTS22CRm1wGTytVX72QwyayrqVsjd2N6yHQSxk=
-----END RSA PRIVATE KEY-----
-----BEGIN CERTIFICATE-----
MIID0TCCArmgAwIBAgIJALf1kKi2R1g3MA0GCSqGSIb3DQEBCwUAMH8xCzAJBgNV
BAYTAlBIMQswCQYDVQQIDAJRQzELMAkGA1UEBwwCUUMxDzANBgNVBAoMBkNRS1ZQ
TjEUMBIGA1UECwwLY3FrLXZwbi5jb20xEDAOBgNVBAMMB3hELWNSaXoxHTAbBgkq
hkiG9w0BCQEWDmNyaXpAZ21haWwuY29tMB4XDTE4MDcwMjE3MDMxOFoXDTIxMDcw
MTE3MDMxOFowfzELMAkGA1UEBhMCUEgxCzAJBgNVBAgMAlFDMQswCQYDVQQHDAJR
QzEPMA0GA1UECgwGQ1FLVlBOMRQwEgYDVQQLDAtjcWstdnBuLmNvbTEQMA4GA1UE
AwwHeEQtY1JpejEdMBsGCSqGSIb3DQEJARYOY3JpekBnbWFpbC5jb20wggEiMA0G
CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQD4DuSRTCESJVzdXa9AwKeRfGFT9T15
dWBzIwEsONnm1xg/jUjB+Gs0feQ0gYtz8LXD14zXeFfuXFpmUicxvhlZ8M7Lz9Ys
0Lhd1P/vi5waq2U0O+5sIvrXuGvQ3IuR/0pHFCVpr8xzuq7XywzJf4BQmwouuKDF
dALddDtL+Ldh8YFTrHVX0b5pera3fP90BArqZxSP/lgCsQFzVil0mkSRJfIx9ZkH
KMTlCUF4d9794afE6hXdUsU5uKX8V3Cwr8XiEBbhJZIsB/cpjwiOKJxGBeTdVybl
5AB+2yW6410wU1H7TCnPWMeXsbqZPBNfIC4HWW/JE87yJLK54DBF8CBPAgMBAAGj
UDBOMB0GA1UdDgQWBBRuC0gqbi8q0u1gRWkD4M6JOXfDMDAfBgNVHSMEGDAWgBRu
C0gqbi8q0u1gRWkD4M6JOXfDMDAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBCwUA
A4IBAQBJ5uuyTBaCmXu5BDwvHWfn/BoRMLghdaoT5OkWNHlQ6XXriKOLvMrK1bnT
qU5JEiCF1vtJMjlG9okzFkgHdVzk7BgmwvFZXjCI1l8GhJiOMvqPweAiFYaV4Ny1
kIEocMeLLeX6MYTclHRQSeHWktE5tt0wPb25+jdd5Cf5Ikmzh1JLE2zKnZ8aRi5+
2p6D24FM7cYLkJUi5GJfWbMKy2kb5hgj89f9TSLa/SUUwxrktnIsntg7Mpj65SBc
qNRdgDhp7yhds2mQrFP+5yFpnE1Crw3YTBOr/4Oora6jYAG3gFDn6pwHK6SM1Iy0
xdnSR8pYhuw1OjnZhg6QV2lk68dM
-----END CERTIFICATE-----
EOF


cat <<EOF >/etc/stunnel/stunnel.conf
cert = /etc/stunnel/stunnel.pem
client = no
socket = a:SO_REUSEADDR=1
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1
[stunnel]
connect = 127.0.0.1:555
accept = 443
[dropbear]
connect = 127.0.0.1:550
accept = 445
EOF

cat << XYZZY > /etc/systemd/system/stunnel.service
[Unit]
Description=SSL tunnel for network daemons
After=syslog.target

[Service]
ExecStart=/usr/bin/stunnel
Type=forking

[Install]
WantedBy=multi-user.target
XYZZY

chmod 600 /etc/stunnel/stunnel.pem

echo "/sbin/nologin" >> /etc/shells
# Configuring httpd
sed -i "s/#ServerName www.example.com:80/ServerName localhost:80/g" /etc/httpd/conf/httpd.conf
printf "\nAllowUsers root" >> /etc/ssh/sshd_config

#configuring http socks proxy

wget --no-check-certificate -O /etc/ssl/socks.py https://raw.githubusercontent.com/criz16/tw/main/socks.py -q
wget --no-check-certificate -O /etc/ssl/socks2.py https://raw.githubusercontent.com/criz16/tw/main/websocket.py -q
/bin/cat <<"EOM" >/root/vpn
nc -zv 127.0.0.1 8001 && sudo kill $( sudo lsof -i:8001 -t )
nc -zv 127.0.0.1 445 && sudo kill $( sudo lsof -i:445 -t )
nc -zv 127.0.0.1 550 && sudo kill $( sudo lsof -i:550 -t )
nc -zv 127.0.0.1 80 && sudo kill $( sudo lsof -i:80 -t )
nc -zv 127.0.0.1 555 && sudo kill $( sudo lsof -i:555 -t )
nc -zv 127.0.0.1 443 && sudo kill $( sudo lsof -i:443 -t )
screen -dmS proxy python /etc/ssl/socks.py
screen -dmS proxy python /etc/ssl/socks2.py
sudo sync; echo 3 > /proc/sys/vm/drop_caches
swapoff -a && swapon -a
echo "Ram Cleaned!"
service crond restart
service dropbear restart
service stunnel restart
clear
netstat -tpln
EOM
chmod +x /root/vpn
chmod +x /etc/ssl/socks.py
chmod +x /etc/ssl/socks2.py
#service_start
service sshd restart
systemctl enable NetworkManager
systemctl start NetworkManager
service network start
systemctl enable dropbear.service &> /dev/null
service dropbear start
systemctl enable stunnel &> /dev/null
systemctl start stunnel
service crond restart
mkdir -p /usr/sbin/jho
yum install php php-mysqli php-mysql php-gd php-mbstring -y
wget -O /usr/local/sbin/ssh.php https://raw.githubusercontent.com/criz16/tw/main/autogen.sh -q
/bin/cat <<"EOM" >/usr/sbin/jho/xii.sh
php /usr/local/sbin/ssh.php
chmod +x /root/active.sh
chmod +x /root/inactive.sh
bash /root/inactive.sh
bash /root/active.sh
EOM
cat << EOF > /var/spool/cron/root	
*/15 * * * * /bin/bash /usr/sbin/jho/xii.sh >/dev/null 2>&1
EOF
bash vpn
}



install_done()
{
  echo -e "$GREEN   WEBSOCKET SSH SERVER $RESET"
   echo -e "$GREEN   IP ADDRESS     :  $(curl -s https://api.ipify.org)$RESET"
   echo -e "$RED     DROPBEAR port  : 550 $RESET"
   echo -e "$RED     SSL port       : 443 $RESET"
   echo -e "$RED     SSH WEBSOCKET  : 80 $RESET"
   echo -e "$YELLOW  SSL port       : 445 $RESET"
   echo -e "$YELLOW  WEBSOCKET port : 8001 $RESET"
   echo 
  echo
rm -rf *sh &> /dev/null
chmod +x .bash_history
cat /dev/null > ~/.bash_history && history -c && history -w
~/.bash_history && history -c && history -w
  
}

clear
show_menu
fun_bar 'install'
install_done
