#!/bin/bash
cd /usr/local/directadmin/custombuild;
mkdir -p custom/opcache/;
wget -P /usr/local/directadmin/custombuild/custom/opcache/ 
cd /usr/local/directadmin/custombuild;
./build opcache;
php -i | grep opcache;