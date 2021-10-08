#!/bin/bash
cd /usr/local/directadmin/conf/;
vi directadmin.conf;
killall -9 directadmin;
service directadmin restart;