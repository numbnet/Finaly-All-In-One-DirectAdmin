#!/bin/bash
wget -P /etc/sysconfig/ https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/memcached && chmod 644 /etc/sysconfig/memcached;
chkconfig memcached on;
service memcached start;
systemctl restart memcached;
netstat -nltp | grep 11211;
netstat -nltp | grep memcached;