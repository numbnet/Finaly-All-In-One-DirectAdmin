#!/bin/bash
function pause(){
   read -p "$*"
}
# OPcache
cd /usr/local/directadmin/custombuild;
mkdir -p custom/opcache/;
wget -P /usr/local/directadmin/custombuild/custom/opcache/ https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/opcache.ini && chmod 644 /usr/local/directadmin/custombuild/custom/opcache/opcache.ini;
cd /usr/local/directadmin/custombuild;
./build opcache;
php -i | grep opcache;
# Memcache
yum install memcached -y;
yum install memcached-devel -y;
yum install libmemcached-devel -y;
yum install libmemcached -y;
wget -P /etc/sysconfig/ https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/memcached && chmod 644 /etc/sysconfig/memcached;
wget https://raw.githubusercontent.com/poralix/directadmin-utils/master/php/php-extension.sh -O php-extension.sh;
chmod 750 php-extension.sh;
./php-extension.sh;
./php-extension.sh install memcached;
./php-extension.sh status memcached;
chkconfig memcached on;
service memcached start;
systemctl restart memcached;
netstat -nltp | grep 11211;
netstat -nltp | grep memcached;
# OpenLiteSpeed
wget -P /root/ https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/crontab && chmod 644 /root/crontab;
cd /usr/local/directadmin/custombuild/;
mkdir -p custom/openlitespeed/conf;
wget -P /usr/local/directadmin/custombuild/custom/openlitespeed/conf/ https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/httpd-expires.conf && chmod 644 /usr/local/directadmin/custombuild/custom/openlitespeed/conf/httpd-expires.conf;
# DirectADmin PHP.ini
cd /usr/local/directadmin/conf/;
rm -f php.ini;
wget https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/php.ini;
chmod 644 php.ini;
# PHP56
rm -f /usr/local/php56/lib/php.ini;
wget -P /usr/local/php56/lib/ https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/php56/php.ini && chmod 644 /usr/local/php56/lib/php.ini;
# PHP73
rm -f /usr/local/php56/lib/php.ini;
wget -P /usr/local/php56/lib/ https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/php73/php.ini && chmod 644 /usr/local/php73/lib/php.ini;
# PHP74
rm -f /usr/local/php56/lib/php.ini;
wget -P /usr/local/php56/lib/ https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/php74/php.ini && chmod 644 /usr/local/php74/lib/php.ini;
# PHP80
rm -f /usr/local/php56/lib/php.ini;
wget -P /usr/local/php56/lib/ https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/php80/php.ini && chmod 644 /usr/local/php80/lib/php.ini;
# One Click PHPMYAMIN
cd /usr/local/directadmin/;
./directadmin set one_click_pma_login 1;
service directadmin restart;
cd custombuild;
./build update;
./build phpmyadmin;
./build rewrite_confs;
# Add Domain
ln -s /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime;
date;
wget https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/add-domain.txt -P /var/www/html/ && chmod 644 /var/www/html/add-domain.txt;
# DirectAdmin Config
/usr/local/directadmin/directadmin set notify_on_license_update 0;
/usr/local/directadmin/directadmin set check_subdomain_owner 0;
killall -9 directadmin;
service directadmin restart;
# Change Port DA
cd /usr/local/directadmin/conf/;
vi directadmin.conf;
killall -9 directadmin;
service directadmin restart;
# Change Port SSH
vi /etc/ssh/sshd_config;
service sshd restart;
vi /etc/csf/csf.conf;
csf -r;
pause '                        Nhấn [Enter] để tiếp tục...';
reboot;
clear;