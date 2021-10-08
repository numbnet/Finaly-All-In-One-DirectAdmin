#!/bin/bash
yum install memcached -y;
yum install memcached-devel -y;
yum install libmemcached-devel -y;
yum install libmemcached -y;
wget -P /etc/sysconfig/ 