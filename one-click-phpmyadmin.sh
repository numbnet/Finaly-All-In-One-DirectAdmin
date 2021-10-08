#!/bin/bash
cd /usr/local/directadmin/;
./directadmin set one_click_pma_login 1;
service directadmin restart;
cd custombuild;
./build update;
./build phpmyadmin;
./build rewrite_confs;