#!/bin/bash
/usr/local/directadmin/directadmin set notify_on_license_update 0;
/usr/local/directadmin/directadmin set check_subdomain_owner 0;
cd /usr/local/directadmin/conf/;
vi directadmin.conf;
killall -9 directadmin;
service directadmin restart;