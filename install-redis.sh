#!/bin/bash
yum update -y;
yum install epel-release -y;
yum install redis -y;
service redis restart;
chkconfig redis on;
redis-cli MONITOR;
pecl install igbinary igbinary-devel;
cd /usr/local/directadmin/scripts/custom;
wget https://raw.githubusercontent.com/poralix/directadmin-utils/master/php/php-extension.sh -O php-extension.sh;
chmod 750 php-extension.sh;
./php-extension.sh install redis;
./php-extension.sh status redis;