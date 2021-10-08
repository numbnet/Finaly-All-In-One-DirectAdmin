#!/bin/bash
cd /usr/local/directadmin/custombuild;
./build update;
./build set webserver openlitespeed;
./build set mod_ruid2 no;
./build set php1_mode lsphp;
./build set php2_mode lsphp;
./build set php3_mode lsphp;
./build set php4_mode lsphp;
./build openlitespeed;
./build php n;
./build rewrite_confs;
cd/;
