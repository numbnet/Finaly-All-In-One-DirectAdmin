#!/bin/bash
cd /usr/local/directadmin/custombuild/;
mkdir -p custom/openlitespeed/conf;
wget -P /usr/local/directadmin/custombuild/custom/openlitespeed/conf/ https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/httpd-expires.conf && chmod 644 /usr/local/directadmin/custombuild/custom/openlitespeed/conf/httpd-expires.conf;