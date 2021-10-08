#!/bin/bash
cd /usr/local/directadmin/custombuild;
mkdir -p custom/opcache/;
wget -P /usr/local/directadmin/custombuild/custom/opcache/ https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/opcache.ini && chmod 644 /usr/local/directadmin/custombuild/custom/opcache/opcache.ini;
cd /usr/local/directadmin/custombuild;
./build opcache;
php -i | grep opcache;