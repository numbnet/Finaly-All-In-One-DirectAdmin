#!/bin/bash
cd /usr/local/directadmin/custombuild;
./build set mariadb 10.5;
./build set mysql_inst mariadb;
./build set mysql_backup yes;
./build update;
./build mariadb;
cat options.conf | grep mysql_backup_dir;
mysqld -V;