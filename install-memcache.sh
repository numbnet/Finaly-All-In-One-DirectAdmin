#!/bin/bash
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