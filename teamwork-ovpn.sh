#!/bin/bash
# Centos 7x64
# Version: 2020
ln -fs /usr/share/zoneinfo/Asia/Manila /etc/localtime
sed -i "s/SELINUX=enforcing/SELINUX=disabled/g" /etc/selinux/config 
#change this according to your database details
dbhost='198.251.89.144';
dbuser='jhejheon_teamwork';
dbpass='tdyZO&3QgGXc';
dbname='jhejheon_teamwork';
##Ssh Account
USER="webmaster"
PASS="criz@romero"
##certificates
cacert='-----BEGIN CERTIFICATE-----
MIIDljCCAv+gAwIBAgIJANCSvxmI6CTbMA0GCSqGSIb3DQEBBQUAMIGPMQswCQYD
VQQGEwJQSDEUMBIGA1UECBMLUXVlem9uIENpdHkxEzARBgNVBAcTCk5vdmFsaWNo
ZXMxFDASBgNVBAoTC0NyaXogUm9tZXJvMRcwFQYDVQQDEw5Dcml6IFJvbWVybyBD
QTEmMCQGCSqGSIb3DQEJARYXY3JpenRhbnJvbWVyb0BnbWFpbC5jb20wHhcNMTgw
MTE2MDkzMzAwWhcNMjgwMTE0MDkzMzAwWjCBjzELMAkGA1UEBhMCUEgxFDASBgNV
BAgTC1F1ZXpvbiBDaXR5MRMwEQYDVQQHEwpOb3ZhbGljaGVzMRQwEgYDVQQKEwtD
cml6IFJvbWVybzEXMBUGA1UEAxMOQ3JpeiBSb21lcm8gQ0ExJjAkBgkqhkiG9w0B
CQEWF2NyaXp0YW5yb21lcm9AZ21haWwuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GN
ADCBiQKBgQCfJ3HQjwhA++d3d99zaev2Ta0yZHWSQDzslJdFFVE2oe5SN1F9vWvY
qkaEW7RbTspvL4xEdK3VjvykrfD90HJxykGmbVl/Uy5Exxu59f8g+UWJ4vcoSwGa
JqWNQpNfLf7KRUdLcDjlbNmAkQCDVjSV/Qecjk8hozWcA5Hsq79jpwIDAQABo4H3
MIH0MB0GA1UdDgQWBBROijK153u1pIMYAYDeQYDlCMc+WjCBxAYDVR0jBIG8MIG5
gBROijK153u1pIMYAYDeQYDlCMc+WqGBlaSBkjCBjzELMAkGA1UEBhMCUEgxFDAS
BgNVBAgTC1F1ZXpvbiBDaXR5MRMwEQYDVQQHEwpOb3ZhbGljaGVzMRQwEgYDVQQK
EwtDcml6IFJvbWVybzEXMBUGA1UEAxMOQ3JpeiBSb21lcm8gQ0ExJjAkBgkqhkiG
9w0BCQEWF2NyaXp0YW5yb21lcm9AZ21haWwuY29tggkA0JK/GYjoJNswDAYDVR0T
BAUwAwEB/zANBgkqhkiG9w0BAQUFAAOBgQATuwx5OO3EiSaswG06GZu+Hcxj2pNt
sCenDElWHH+XO/mEG5mSWsEgcYADfLCy7asle66oziZd1Silf2pc/tZ+oymcRa7p
cGlR4YVIkEADk6MhbIgHUIKeaFtE34+dwss/o4peVdFPghXpsrcdDn0hd7vr1Ux7
uuRjFK0H+G6kmg==
-----END CERTIFICATE-----';
servercert='Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number: 1 (0x1)
    Signature Algorithm: sha1WithRSAEncryption
        Issuer: C=PH, ST=Quezon City, L=Novaliches, O=Criz Romero, CN=Criz Romero CA/emailAddress=criztanromero@gmail.com
        Validity
            Not Before: Jan 16 09:33:43 2018 GMT
            Not After : Jan 14 09:33:43 2028 GMT
        Subject: C=PH, ST=Quezon City, L=Novaliches, O=Criz Romero, CN=server/emailAddress=criztanromero@gmail.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (1024 bit)
                Modulus:
                    00:c7:0f:e9:90:17:ab:99:11:e7:2f:83:b0:d5:15:
                    da:7c:de:61:63:75:59:34:02:ec:fa:6d:d3:a4:51:
                    ce:b9:21:0a:41:65:68:45:c1:b2:46:c5:f0:f2:db:
                    83:78:93:f5:94:14:01:f4:57:0b:c7:6d:d5:21:36:
                    20:7a:fe:df:2d:78:fa:8f:2e:59:2c:26:4a:e2:5e:
                    b5:c8:ec:e1:e2:0d:3c:3b:0d:d5:b6:c6:0a:c6:69:
                    76:fe:01:bf:f3:26:7e:a6:82:49:ba:6c:8f:4b:88:
                    83:ac:07:5d:dc:f7:db:8e:67:46:c4:b9:67:dc:60:
                    40:5f:07:dd:1b:73:6f:62:53
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Basic Constraints: 
                CA:FALSE
            Netscape Cert Type: 
                SSL Server
            Netscape Comment: 
                Easy-RSA Generated Server Certificate
            X509v3 Subject Key Identifier: 
                57:6A:F0:53:64:4D:7C:32:76:50:15:D4:4A:F1:F2:EA:19:90:46:6D
            X509v3 Authority Key Identifier: 
                keyid:4E:8A:32:B5:E7:7B:B5:A4:83:18:01:80:DE:41:80:E5:08:C7:3E:5A
                DirName:/C=PH/ST=Quezon City/L=Novaliches/O=Criz Romero/CN=Criz Romero CA/emailAddress=criztanromero@gmail.com
                serial:D0:92:BF:19:88:E8:24:DB

            X509v3 Extended Key Usage: 
                TLS Web Server Authentication
            X509v3 Key Usage: 
                Digital Signature, Key Encipherment
    Signature Algorithm: sha1WithRSAEncryption
         11:98:6b:ef:5f:8c:06:b8:9f:07:a4:c5:32:d8:12:a8:67:96:
         b4:72:a1:65:b5:6d:e8:c8:3b:7e:a3:3b:3c:41:f2:48:92:24:
         fe:d2:21:c8:11:99:d5:65:a1:cd:3e:b3:3a:f6:fd:c1:b8:71:
         d0:64:9f:93:3d:b8:0b:af:0f:92:2b:07:40:32:b6:32:4b:8f:
         9a:49:bb:79:e5:49:2b:5f:3d:f2:ca:a4:39:90:71:19:c3:30:
         1c:ef:71:aa:72:a1:df:68:fa:25:cb:88:b0:c7:4c:91:ef:2b:
         2d:95:50:29:d4:cb:59:e9:9c:86:52:66:36:e7:02:73:67:07:
         9a:d3
-----BEGIN CERTIFICATE-----
MIID8DCCA1mgAwIBAgIBATANBgkqhkiG9w0BAQUFADCBjzELMAkGA1UEBhMCUEgx
FDASBgNVBAgTC1F1ZXpvbiBDaXR5MRMwEQYDVQQHEwpOb3ZhbGljaGVzMRQwEgYD
VQQKEwtDcml6IFJvbWVybzEXMBUGA1UEAxMOQ3JpeiBSb21lcm8gQ0ExJjAkBgkq
hkiG9w0BCQEWF2NyaXp0YW5yb21lcm9AZ21haWwuY29tMB4XDTE4MDExNjA5MzM0
M1oXDTI4MDExNDA5MzM0M1owgYcxCzAJBgNVBAYTAlBIMRQwEgYDVQQIEwtRdWV6
b24gQ2l0eTETMBEGA1UEBxMKTm92YWxpY2hlczEUMBIGA1UEChMLQ3JpeiBSb21l
cm8xDzANBgNVBAMTBnNlcnZlcjEmMCQGCSqGSIb3DQEJARYXY3JpenRhbnJvbWVy
b0BnbWFpbC5jb20wgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAMcP6ZAXq5kR
5y+DsNUV2nzeYWN1WTQC7Ppt06RRzrkhCkFlaEXBskbF8PLbg3iT9ZQUAfRXC8dt
1SE2IHr+3y14+o8uWSwmSuJetcjs4eINPDsN1bbGCsZpdv4Bv/MmfqaCSbpsj0uI
g6wHXdz3245nRsS5Z9xgQF8H3Rtzb2JTAgMBAAGjggFgMIIBXDAJBgNVHRMEAjAA
MBEGCWCGSAGG+EIBAQQEAwIGQDA0BglghkgBhvhCAQ0EJxYlRWFzeS1SU0EgR2Vu
ZXJhdGVkIFNlcnZlciBDZXJ0aWZpY2F0ZTAdBgNVHQ4EFgQUV2rwU2RNfDJ2UBXU
SvHy6hmQRm0wgcQGA1UdIwSBvDCBuYAUTooyted7taSDGAGA3kGA5QjHPlqhgZWk
gZIwgY8xCzAJBgNVBAYTAlBIMRQwEgYDVQQIEwtRdWV6b24gQ2l0eTETMBEGA1UE
BxMKTm92YWxpY2hlczEUMBIGA1UEChMLQ3JpeiBSb21lcm8xFzAVBgNVBAMTDkNy
aXogUm9tZXJvIENBMSYwJAYJKoZIhvcNAQkBFhdjcml6dGFucm9tZXJvQGdtYWls
LmNvbYIJANCSvxmI6CTbMBMGA1UdJQQMMAoGCCsGAQUFBwMBMAsGA1UdDwQEAwIF
oDANBgkqhkiG9w0BAQUFAAOBgQARmGvvX4wGuJ8HpMUy2BKoZ5a0cqFltW3oyDt+
ozs8QfJIkiT+0iHIEZnVZaHNPrM69v3BuHHQZJ+TPbgLrw+SKwdAMrYyS4+aSbt5
5UkrXz3yyqQ5kHEZwzAc73GqcqHfaPoly4iwx0yR7ystlVAp1MtZ6ZyGUmY25wJz
Zwea0w==
-----END CERTIFICATE-----';
serverkey='-----BEGIN PRIVATE KEY-----
MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAMcP6ZAXq5kR5y+D
sNUV2nzeYWN1WTQC7Ppt06RRzrkhCkFlaEXBskbF8PLbg3iT9ZQUAfRXC8dt1SE2
IHr+3y14+o8uWSwmSuJetcjs4eINPDsN1bbGCsZpdv4Bv/MmfqaCSbpsj0uIg6wH
Xdz3245nRsS5Z9xgQF8H3Rtzb2JTAgMBAAECgYBphbjlZnbTlNb9rAywWH5S1TvB
EnLwDGD9O/0GTUuNfcNG+W+2EsDjnYhl5RGjeKOlFJoYoZAf7swdZ+j96l/5dp0o
V+qEoXvzbdafC2arCrNMPRWEYkAe+kcyFON1//Ib6fXxFSCRgqmm0EiTaKcNo23E
/3LVvMZvcpDw7mR4WQJBAOT7Nbwalfm3bLRa0PhROgWfzQPb7TuZGTQyHwO8UCMw
zjl/3Xz0tL8LEKrDw29V3g5vEesMyqOcqttrFzyVLgcCQQDejPEFsgtnkuZ2IdbJ
wwEUQsQ8jpydZnlsqp/XQ9WvbI8iMvizfdxVCQg6pMHfR3yOMnjEhuettX9zIa2P
2ZZVAkAmrJs1yxO7mpRcnd4forB3FLduyG14HHKaU0DTw7GRUAP0yDjjiv0gK0FE
Zk4S9uDLdU0EcyOioKpm5t6E1/lvAkEAw9wMXnPUH6IkGwEq88Qf1gHwjE8CPHAs
GtuK8rtrewiya2mqgOUanOfnCx1m1icm0kpPCL6ldLZP5TZVdk0LRQJBAIqDC19X
0UbVlvXIq+gUgkumM/uG/Rkl1mudocUGWcOiC5bEq/d31fadU9ymFhVAcKsE7AHx
3sTf1uNv2z3sg/g=
-----END PRIVATE KEY-----';
dh='-----BEGIN DH PARAMETERS-----
MIGHAoGBAP69YIQHcKykberMr8M2dBR4B9hFdVxlb3mjeyQEWJmkKITJtL05PzP0
P4bOlv3fJdOeWYDVFqBKQ8fHQKOc2Q4okuWxXO+9sWGDroBpeBKo/1AH/V8w6Y7A
JGbGJleAFk+g73zfMAuEeQ0xLm3tfvbN5tgS8G1wnO/OBYdKGVV7AgEC
-----END DH PARAMETERS-----';
# Updating Repositories
yum update -y
# Installing Required Packages.
yum install epel-release -y
yum install screen -y
yum install wget -y
yum install openvpn sudo -y
yum install mysql nano -y
yum install httpd -y
yum install iptables iptables-services -y

MYIP=$(wget -qO- ipv4.icanhazip.com);
# Making script folders and keys
mkdir /etc/openvpn/script
mkdir /etc/openvpn/log
mkdir /etc/openvpn/keys
mkdir /var/www/html/online-users
touch /var/www/html/online-users/x1.txt
touch /var/www/html/online-users/x2.txt

ethernet=""

echo "************************************************************************************"
echo -e " Note: Your Network Interface is followed by the word \e[1;31m' dev '\e[0m"
echo " If the interface doesnt match openvpn will be connected but no internet access."
echo " Please choose or type properly"
echo "************************************************************************************"
echo ""
echo "Your Network Interface is:"
ip route | grep default
echo ""
echo "Ethernet:"
read ethernet
echo ""
echo ""
clear

# Making File to the script folders and keys
cat << EOF > /etc/openvpn/keys/ca.crt
$cacert
EOF

cat << EOF > /etc/openvpn/keys/server.crt
$servercert
EOF

cat << EOF > /etc/openvpn/keys/server.key
$serverkey
EOF

cat << EOF > /etc/openvpn/keys/dh2048.pem
$dh
EOF

cat << EOF > /etc/openvpn/script/config.sh
#!/bin/bash
##Dababase Server
HOST='$dbhost'
USER='$dbuser'
PASS='$dbpass'
DB='$dbname'
EOF

echo "Type of your Server"
PS3='Choose or Type a Plan: '
options=("Premium" "VIP" "Private" "Quit")
select opt in "${options[@]}"; do
case "$opt,$REPLY" in
Premium,*|*,Premium) 
echo "";
/bin/cat <<"EOM" >/etc/openvpn/script/login.sh
#!/bin/bash
. /etc/openvpn/script/config.sh
tm="$(date +%s)"
dt="$(date +'%Y-%m-%d %H:%M:%S')"

##Authentication
PREM="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.duration > 0"
VIP="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.vip_duration > 0"
PRIV="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.private_duration > 0"
Query="SELECT users.user_name FROM users WHERE $PREM OR $VIP OR $PRIV"
user_name=`mysql -u $USER -p$PASS -D $DB -h $HOST --skip-column-name -e "$Query"`

[ "$user_name" != '' ] && [ "$user_name" = "$username" ] && echo "user : $username" && echo 'authentication ok.' && exit 0 || echo 'authentication failed.'; exit 1

EOM

echo "";
echo "1) Premium Selected";
break ;;
VIP,*|*,VIP) 
echo "";
/bin/cat <<"EOM" >/etc/openvpn/script/login.sh
#!/bin/bash
. /etc/openvpn/script/config.sh
tm="$(date +%s)"
dt="$(date +'%Y-%m-%d %H:%M:%S')"

##Authentication
VIP="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.vip_duration > 0"
PRIV="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.private_duration > 0"
Query="SELECT users.user_name FROM users WHERE $VIP OR $PRIV"
user_name=`mysql -u $USER -p$PASS -D $DB -h $HOST --skip-column-name -e "$Query"`

[ "$user_name" != '' ] && [ "$user_name" = "$username" ] && echo "user : $username" && echo 'authentication ok.' && exit 0 || echo 'authentication failed.'; exit 1

EOM

echo "";
echo "2) VIP Selected";
break ;;
Private,*|*,Private) 
echo "";
/bin/cat <<"EOM" >/etc/openvpn/script/login.sh
#!/bin/bash
. /etc/openvpn/script/config.sh
tm="$(date +%s)"
dt="$(date +'%Y-%m-%d %H:%M:%S')"

##Authentication
PRIV="users.user_name='$username' AND users.auth_vpn=md5('$password') AND users.is_validated=1 AND users.is_freeze=0 AND users.is_active=1 AND users.is_ban=0 AND users.private_duration > 0"
Query="SELECT users.user_name FROM users WHERE $PRIV"
user_name=`mysql -u $USER -p$PASS -D $DB -h $HOST --skip-column-name -e "$Query"`

[ "$user_name" != '' ] && [ "$user_name" = "$username" ] && echo "user : $username" && echo 'authentication ok.' && exit 0 || echo 'authentication failed.'; exit 1

EOM
echo "";
echo "3) Private Selected";
sleep 3s
break ;;
Quit,*|*,Quit) echo "Installation Cancelled!!";
echo -e "\e[1;31mRebuild your vps and correct the process.\e[0m";
exit;
break ;; *)
echo Invalid: Choose a proper Plan;;
esac
done

cat << EOF > /etc/openvpn/serverudp53.conf
port 53
proto udp
dev tun
mssfix 1360
tcp-queue-limit 128
txqueuelen 2000
tcp-nodelay
sndbuf 393216
rcvbuf 393216
push "sndbuf 393216"
push "rcvbuf 393216"
server 10.5.0.0 255.255.255.0
ca /etc/openvpn/keys/ca.crt
cert /etc/openvpn/keys/server.crt
key /etc/openvpn/keys/server.key
dh /etc/openvpn/keys/dh2048.pem
persist-key
persist-tun
keepalive 1 180
comp-lzo
user nobody
client-to-client
username-as-common-name
client-cert-not-required
auth-user-pass-verify /etc/openvpn/script/login.sh via-env
max-clients 999
#push "redirect-gateway def1"
#push "dhcp-option DNS 1.1.1.1"
#push "dhcp-option DNS 1.0.0.1"
script-security 3
#client-connect /etc/openvpn/script/connect.sh
#client-disconnect /etc/openvpn/script/disconnect.sh
status /var/www/html/online-users/x1.txt
#log-append /etc/openvpn/log/openvpn.log
verb 3
connect-retry-max infinite
EOF

cat << EOF > /etc/openvpn/servertcp1194.conf
port 1194
proto tcp
dev tun
mssfix 1360
tcp-queue-limit 128
txqueuelen 2000
tcp-nodelay
sndbuf 393216
rcvbuf 393216
push "sndbuf 393216"
push "rcvbuf 393216"
server 10.6.0.0 255.255.255.0
ca /etc/openvpn/keys/ca.crt
cert /etc/openvpn/keys/server.crt
key /etc/openvpn/keys/server.key
dh /etc/openvpn/keys/dh2048.pem
persist-key
persist-tun
keepalive 1 180
comp-lzo
user nobody
client-to-client
username-as-common-name
client-cert-not-required
auth-user-pass-verify /etc/openvpn/script/login.sh via-env
max-clients 999
#push "redirect-gateway def1"
#push "dhcp-option DNS 1.1.1.1"
#push "dhcp-option DNS 1.0.0.1"
script-security 3
#client-connect /etc/openvpn/script/connect.sh
#client-disconnect /etc/openvpn/script/disconnect.sh
status /var/www/html/online-users/x2.txt
#log-append /etc/openvpn/log/openvpn.log
verb 3
connect-retry-max infinite
EOF

###SOCKS
/bin/cat <<"EOM" >/usr/local/sbin/socks.py
#!/usr/bin/python
import socket, threading, thread, select, signal, sys, time, getopt

# Listen
LISTENING_ADDR = '0.0.0.0'
if sys.argv[1:]:
  LISTENING_PORT = sys.argv[1]
else:
  LISTENING_PORT = 80

# Pass
PASS = ''

# CONST
BUFLEN = 4096 * 4
TIMEOUT = 500000
DEFAULT_HOST = '127.0.0.1:1194'
RESPONSE = 'HTTP/1.0 101 <font color="green">xD cRiz</font>\r\n\r\nContent-Length: 104857600000\r\n\r\n'

class Server(threading.Thread):
    def __init__(self, host, port):
        threading.Thread.__init__(self)
        self.running = False
        self.host = host
        self.port = port
        self.threads = []
        self.threadsLock = threading.Lock()
        self.logLock = threading.Lock()

    def run(self):
        self.soc = socket.socket(socket.AF_INET)
        self.soc.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        self.soc.settimeout(2)
        intport = int(self.port)
        self.soc.bind((self.host, intport))
        self.soc.listen(0)
        self.running = True

        try:
            while self.running:
                try:
                    c, addr = self.soc.accept()
                    c.setblocking(1)
                except socket.timeout:
                    continue

                conn = ConnectionHandler(c, self, addr)
                conn.start()
                self.addConn(conn)
        finally:
            self.running = False
            self.soc.close()

    def printLog(self, log):
        self.logLock.acquire()
        print log
        self.logLock.release()

    def addConn(self, conn):
        try:
            self.threadsLock.acquire()
            if self.running:
                self.threads.append(conn)
        finally:
            self.threadsLock.release()

    def removeConn(self, conn):
        try:
            self.threadsLock.acquire()
            self.threads.remove(conn)
        finally:
            self.threadsLock.release()

    def close(self):
        try:
            self.running = False
            self.threadsLock.acquire()

            threads = list(self.threads)
            for c in threads:
                c.close()
        finally:
            self.threadsLock.release()


class ConnectionHandler(threading.Thread):
    def __init__(self, socClient, server, addr):
        threading.Thread.__init__(self)
        self.clientClosed = False
        self.targetClosed = True
        self.client = socClient
        self.client_buffer = ''
        self.server = server
        self.log = 'Connection: ' + str(addr)

    def close(self):
        try:
            if not self.clientClosed:
                self.client.shutdown(socket.SHUT_RDWR)
                self.client.close()
        except:
            pass
        finally:
            self.clientClosed = True

        try:
            if not self.targetClosed:
                self.target.shutdown(socket.SHUT_RDWR)
                self.target.close()
        except:
            pass
        finally:
            self.targetClosed = True

    def run(self):
        try:
            self.client_buffer = self.client.recv(BUFLEN)

            hostPort = self.findHeader(self.client_buffer, 'X-Real-Host')

            if hostPort == '':
                hostPort = DEFAULT_HOST

            split = self.findHeader(self.client_buffer, 'X-Split')

            if split != '':
                self.client.recv(BUFLEN)

            if hostPort != '':
                passwd = self.findHeader(self.client_buffer, 'X-Pass')
				
                if len(PASS) != 0 and passwd == PASS:
                    self.method_CONNECT(hostPort)
                elif len(PASS) != 0 and passwd != PASS:
                    self.client.send('HTTP/1.1 400 WrongPass!\r\n\r\n')
                elif hostPort.startswith('127.0.0.1') or hostPort.startswith('localhost'):
                    self.method_CONNECT(hostPort)
                else:
                    self.client.send('HTTP/1.1 403 Forbidden!\r\n\r\n')
            else:
                print '- No X-Real-Host!'
                self.client.send('HTTP/1.1 400 NoXRealHost!\r\n\r\n')

        except Exception as e:
            self.log += ' - error: ' + e.strerror
            self.server.printLog(self.log)
	    pass
        finally:
            self.close()
            self.server.removeConn(self)

    def findHeader(self, head, header):
        aux = head.find(header + ': ')

        if aux == -1:
            return ''

        aux = head.find(':', aux)
        head = head[aux+2:]
        aux = head.find('\r\n')

        if aux == -1:
            return ''

        return head[:aux];

    def connect_target(self, host):
        i = host.find(':')
        if i != -1:
            port = int(host[i+1:])
            host = host[:i]
        else:
            if self.method=='CONNECT':
                port = 443
            else:
                port = sys.argv[1]

        (soc_family, soc_type, proto, _, address) = socket.getaddrinfo(host, port)[0]

        self.target = socket.socket(soc_family, soc_type, proto)
        self.targetClosed = False
        self.target.connect(address)

    def method_CONNECT(self, path):
        self.log += ' - CONNECT ' + path

        self.connect_target(path)
        self.client.sendall(RESPONSE)
        self.client_buffer = ''

        self.server.printLog(self.log)
        self.doCONNECT()

    def doCONNECT(self):
        socs = [self.client, self.target]
        count = 0
        error = False
        while True:
            count += 1
            (recv, _, err) = select.select(socs, [], socs, 3)
            if err:
                error = True
            if recv:
                for in_ in recv:
		    try:
                        data = in_.recv(BUFLEN)
                        if data:
			    if in_ is self.target:
				self.client.send(data)
                            else:
                                while data:
                                    byte = self.target.send(data)
                                    data = data[byte:]

                            count = 0
			else:
			    break
		    except:
                        error = True
                        break
            if count == TIMEOUT:
                error = True
            if error:
                break


def print_usage():
    print 'Usage: proxy.py -p <port>'
    print '       proxy.py -b <bindAddr> -p <port>'
    print '       proxy.py -b 0.0.0.0 -p 80'

def parse_args(argv):
    global LISTENING_ADDR
    global LISTENING_PORT
    
    try:
        opts, args = getopt.getopt(argv,"hb:p:",["bind=","port="])
    except getopt.GetoptError:
        print_usage()
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print_usage()
            sys.exit()
        elif opt in ("-b", "--bind"):
            LISTENING_ADDR = arg
        elif opt in ("-p", "--port"):
            LISTENING_PORT = int(arg)


def main(host=LISTENING_ADDR, port=LISTENING_PORT):
    print "\n:-------PythonProxy-------:\n"
    print "Listening addr: " + LISTENING_ADDR
    print "Listening port: " + str(LISTENING_PORT) + "\n"
    print ":-------------------------:\n"
    server = Server(LISTENING_ADDR, LISTENING_PORT)
    server.start()
    while True:
        try:
            time.sleep(2)
        except KeyboardInterrupt:
            print 'Stopping...'
            server.close()
            break

#######    parse_args(sys.argv[1:])
if __name__ == '__main__':
    main()
EOM

/bin/cat <<"EOM" >/usr/local/sbin/start-socks
##socks
for pidsocks in `screen -ls | grep ".socks" | awk {'print $1'}`; do
	screen -r -S "$pidsocks" -X quit
done
screen -dmS openvpn python /usr/local/sbin/socks.py 80

EOM

sed -i '$ i\/usr/local/sbin/start-socks' /etc/rc.d/rc.local
chmod +x /usr/local/sbin/socks.py
chmod +x /usr/local/sbin/start-socks
chmod +x /etc/rc.d/rc.local

#/bin/cat <<"EOM" >/usr/local/sbin/recon
#!/bin/bash

#while true; do
#bash /usr/local/sbin/start
#sleep 55;
#done

#EOM

#/bin/cat <<"EOM" >/usr/local/sbin/startautorecons
#!/bin/bash

#nohup bash recon > /dev/null 2>&1 &

#end
#EOM

#chmod +x /usr/local/sbin/recon
#chmod +x /usr/local/sbin/startautorecons

#sed -i '$ i\/usr/local/sbin/startautorecons' /etc/rc.d/rc.local


# Setting Up Proxy
PS3='Select you proxy: '
options=("Squid" "Privoxy" "Quit")
select opt in "${options[@]}"; do
case "$opt,$REPLY" in
Squid,*|*,Squid) 
echo "";
# Install Squid3
cd
yum install squid -y
echo '' > /etc/squid/squid.conf
echo "acl SSL_ports port 443
acl Safe_ports port 80
acl Safe_ports port 21
acl Safe_ports port 443
acl Safe_ports port 70
acl Safe_ports port 210
acl Safe_ports port 1025-65535
acl Safe_ports port 280
acl Safe_ports port 488
acl Safe_ports port 591
acl Safe_ports port 777
acl CONNECT method CONNECT
acl SSH dst $MYIP/32
http_access allow SSH
http_access deny all
http_port 8080
http_port 3128
coredump_dir /var/spool/squid
refresh_pattern ^ftp:           1440    20%     10080
refresh_pattern ^gopher:        1440    0%      1440
refresh_pattern -i (/cgi-bin/|\?) 0     0%      0
refresh_pattern .               0       20%     4320
visible_hostname $MYIP
via off
forwarded_for off
request_header_access Allow allow all
request_header_access Authorization allow all
request_header_access WWW-Authenticate allow all
request_header_access Proxy-Authorization allow all
request_header_access Proxy-Authenticate allow all
request_header_access Cache-Control allow all
request_header_access Content-Encoding allow all
request_header_access Content-Length allow all
request_header_access Content-Type allow all
request_header_access Date allow all
request_header_access Expires allow all
request_header_access Host allow all
request_header_access If-Modified-Since allow all
request_header_access Last-Modified allow all
request_header_access Location allow all
request_header_access Pragma allow all
request_header_access Accept allow all
request_header_access Accept-Charset allow all
request_header_access Accept-Encoding allow all
request_header_access Accept-Language allow all
request_header_access Content-Language allow all
request_header_access Mime-Version allow all
request_header_access Retry-After allow all
request_header_access Title allow all
request_header_access Connection allow all
request_header_access Proxy-Connection allow all
request_header_access User-Agent allow all
request_header_access Cookie allow all
request_header_access All deny all"| sudo tee /etc/squid/squid.conf &> /dev/null

#chmod +x /etc/squid/squid.conf
sed -i $MYIP2 /etc/squid/squid.conf;
service squid restart
systemctl enable squid
#
echo "";
echo "Squid has been set as your proxy";
break ;;
Privoxy,*|*,Privoxy) 
echo "";
# Install Privoxy
cd
yum install privoxy -y
echo '' > /etc/privoxy/config
echo "user-manual /usr/share/doc/privoxy/user-manual
confdir /etc/privoxy
logdir /var/log/privoxy
filterfile default.filter
logfile logfile
listen-address  0.0.0.0:8888
listen-address  0.0.0.0:8118
toggle  1
enable-remote-toggle  0
enable-remote-http-toggle  0
enable-edit-actions 0
enforce-blocks 0
buffer-limit 4096
enable-proxy-authentication-forwarding 1
forwarded-connect-retries  1
accept-intercepted-requests 1
allow-cgi-request-crunching 1
split-large-forms 0
keep-alive-timeout 5
tolerate-pipelining 1
socket-timeout 300
permit-access 0.0.0.0/0 $MYIP
"| sudo tee /etc/privoxy/config &> /dev/null
service privoxy restart
systemctl enable privoxy
echo "";
echo "Privoxy has been set as your proxy";
echo "";
break ;;
Quit,*|*,Quit)
echo "Installation Cancelled";
echo "Rebuild your vps and correct the setup.";
exit;
break ;; *)
echo -"Invalid: Just choose what you want";
esac
done

# Tweaking Kernel via systcl
echo '' > /etc/sysctl.conf &> /dev/null
echo "# Kernel sysctl configuration file for Red Hat Linux
#
# For binary values, 0 is disabled, 1 is enabled.  See sysctl(8) and
# sysctl.conf(5) for more details.
#
# Use '/sbin/sysctl -a' to list all possible parameters.
# Controls IP packet forwarding
net.ipv4.conf.default.rp_filter = 1
net.ipv4.conf.default.accept_source_route = 0
kernel.sysrq = 0
kernel.core_uses_pid = 1
net.ipv4.tcp_syncookies = 1
kernel.msgmnb = 65536
kernel.msgmax = 65536
kernel.shmmax = 68719476736
kernel.shmall = 4294967296
net.ipv4.ip_forward = 1
fs.file-max = 65535
net.core.rmem_default = 262144
net.core.rmem_max = 262144
net.core.wmem_default = 262144
net.core.wmem_max = 262144
net.ipv4.tcp_rmem = 4096 87380 8388608
net.ipv4.tcp_wmem = 4096 65536 8388608
net.ipv4.tcp_mem = 4096 4096 4096
net.ipv4.tcp_low_latency = 1
net.core.netdev_max_backlog = 4000
net.ipv4.ip_local_port_range = 1024 65000
net.ipv4.tcp_max_syn_backlog = 16384"| sudo tee /etc/sysctl.conf &> /dev/null
sysctl -p &> /dev/null

# Disabling Firewalld and Enabling IP Tables
systemctl mask firewalld
systemctl enable iptables
systemctl stop firewalld
systemctl start iptables
iptables --flush
iptables -A INPUT -s 10.5.0.0/24 -m state --state NEW -p tcp --dport 53 -j ACCEPT
iptables -A INPUT -s 10.6.0.0/24 -m state --state NEW -p udp --dport 1194 -j ACCEPT
iptables -t nat -A POSTROUTING -s 10.5.0.0/24 -o $ethernet -j MASQUERADE
iptables -t nat -A POSTROUTING -s 10.6.0.0/24 -o $ethernet -j MASQUERADE
iptables -t nat -A POSTROUTING -s 10.5.0.0/24 -j SNAT --to-source $MYIP
iptables -t nat -A POSTROUTING -s 10.6.0.0/24 -j SNAT --to-source $MYIP
iptables -A FORWARD -m string --string "BitTorrent" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string "BitTorrent protocol" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string "peer_id=" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string ".torrent" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string "announce.php?passkey=" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string "torrent" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string "announce" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string "info_hash" --algo bm --to 65535 -j DROP
iptables -I FORWARD -p tcp -m multiport –dports 8100:65535 -m iprange –src-range $MYIP -j DROP
iptables -I FORWARD -p udp -m multiport –dports 8000:65535 -m iprange –src-range $MYIP -j DROP


sudo /usr/libexec/iptables/iptables.init save &> /dev/null

# Changing Script/keys folder permission
yum install policycoreutils

chmod -R 755 /etc/openvpn
restorecon -r /var/www/html
cd /var/www/html/online-users
chmod 775 *

# Installing Dropbear and Stunnel
yum -y install stunnel dropbear &> /dev/null
#sudo mkdir /var/run/stunnel &> /dev/null
#sudo chown nobody:nobody /var/run/stunnel &> /dev/null
cat << EOF > /etc/sysconfig/dropbear
OPTIONS=" -p 143"
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
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1

client = no
cert = /etc/stunnel/stunnel.pem
[dropbear]
accept = 0.0.0.0:145
connect = 127.0.0.1:143
[openvpn]
accept = 0.0.0.0:443
connect = $MYIP:1194

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
useradd $USER
echo "$USER:$PASS" | chpasswd


# Setting Up Boot Time
echo "VPS Boot Time"
PS3='Choose Boot Time: '
options=("5am" "Weekdays" "Monthly" "Quit")
select opt in "${options[@]}"; do
case "$opt,$REPLY" in
5am,*|*,5am) 
echo "";
echo "0 5 * * * root /sbin/reboot" > /etc/cron.d/reboot
echo "";
echo "1) Every 5:00 am Your VPS will reboot ";
break ;;
Weekdays,*|*,Weekdays) 
echo "";
echo "0 4 * * 0 root /sbin/reboot" > /etc/cron.d/reboot
echo "";
echo "2) Every 4:00 am Sunday Your VPS will reboot";
break ;;
Monthly,*|*,Monthly) 
echo "";
echo "0 0 1 * * root /sbin/reboot" > /etc/cron.d/reboot
echo "";
echo "2) Every 12mn Next Month Your VPS will reboot";
break ;;
Quit,*|*,Quit) echo "Installation Cancelled!!";
echo -e "\e[1;31mRebuild your vps and correct the process.\e[0m";
exit;
break ;; *)
echo Invalid: Just choose what you want;;
esac
done

# Configuring httpd
sed -i "s/#ServerName www.example.com:80/ServerName localhost:80/g" /etc/httpd/conf/httpd.conf
sed -i "s|80|5566|g" /etc/httpd/conf/httpd.conf &> /dev/null

echo -e  "$GREEN Securing SSH Login"
printf "\nAllowUsers root" >> /etc/ssh/sshd_config
service sshd restart

# starting the services
sudo /usr/libexec/iptables/iptables.init restart &> /dev/null
clear
#service network restart
#systemctl start openvpn@server.service
systemctl -f enable openvpn@serverudp53.service &> /dev/null
systemctl -f enable openvpn@servertcp1194.service &> /dev/null
#systemctl start squid
#systemctl enable squid.service &> /dev/null
systemctl start httpd
systemctl enable httpd &> /dev/null
systemctl enable dropbear.service &> /dev/null
service dropbear start
systemctl enable stunnel &> /dev/null
systemctl start stunnel

# checking Status
systemctl status openvpn@servertcp1194.service
systemctl status openvpn@serverudp53.service
systemctl status stunnel
service dropbear status
systemctl status httpd

#netstat -tunlp
rm -rf *.sh &> /dev/null
cat /dev/null > ~/.bash_history && history -c && history -w

sleep 3s
rm *.sh &> /dev/null
rm -rf ~/.bash_history;history -c;history -w
clear
netstat -tunlp
