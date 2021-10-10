#!/bin/bash

server_name=$(hostname)

function memory_check() {
    echo ""
    echo "Thông tin Bộ nhớ ${server_name} là: "
    free -h
    echo ""
}

function cpu_check() {
    echo ""
    echo "Thông tin CPU ${server_name} là: "
    echo ""
    lscpu
}

function restart_ols() {
    systemctl restart lsws
}

function install_rclone() {
    curl https://rclone.org/install.sh | sudo bash
}

function install_da_manual() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-directadmin.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-directadmin.sh)
}

function install_da_auto() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-directadmin.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-directadmin.sh) auto
}

function install_mariadb() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-mariadb.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-mariadb.sh)
}

function install_memcache() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-memcache.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-memcache.sh)
}

function install_openlitespeed() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-openlitespeed.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-openlitespeed.sh)
}

function install_redis() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-redis.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-redis.sh)
}

function one_click_myAdmin() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/one-click-phpmyadmin.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/one-click-phpmyadmin.sh)
}

function install_firewal() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-csf.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/install-csf.sh)
}

function fix_start() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/fix-start.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/fix-start.sh)
}

function config_ols() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-openlitespeed.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-openlitespeed.sh)
}

function config_opcache() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-opcache.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-opcache.sh)
}

function config_mecache() {
    bash <(curl -Ss https://github.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/blob/main/config-memcached.sh || wget -O - https://github.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/blob/main/config-memcached.sh)
}

function config_directAdmin() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-directadmin-conf.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-directadmin-conf.sh)
}

function config_auto_system() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-auto-website.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-auto-website.sh)
}

function check_system() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/check-system.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/check-system.sh)
}

function active_da() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/active-directadmin.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/active-directadmin.sh)
}

function config_php56() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-php56.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-php56.sh)
}

function config_php73() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-php73.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-php73.sh)
}

function config_php74() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-php74.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-php74.sh)
}

function config_php80() {
    bash <(curl -Ss https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-php80.sh || wget -O - https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/config-php80.sh)
}

function change_port_da() {
    cd /usr/local/directadmin/conf/
    vi directadmin.conf
    killall -9 directadmin
    service directadmin restart
}

function change_port_csf() {
    vi /etc/ssh/sshd_config
    service sshd restart
    vi /etc/csf/csf.conf
    csf -r
}

function reboot_vps() {
    reboot
}

function restart_da() {
    killall -9 directadmin
    service directadmin restart
}

function get_myAdmin_pass() {
    cat /usr/local/directadmin/conf/mysql.conf
}
##
# Color  Variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

##
# Color Functions
##
ColorGreen() {
    echo -ne $green$1$clear
}
ColorBlue() {
    echo -ne $blue$1$clear
}

menu() {
    echo -ne "
===========================================================
                 DIRECTAMIN MASTER SCRIPT
                 ========================

    +++ SYSTEM  +++
  $(ColorGreen '1)') Thông tin Bộ nhớ VPS
  $(ColorGreen '2)') Thông tin CPU - Cấu hình VPS

    +++ INSTALL +++
  $(ColorGreen '3)') Cài đặt DirectAdmin Mặc định
  $(ColorGreen '4)') Cài đặt DirectAdmin Tuỳ biến 
  $(ColorGreen '5)') Cài đặt OpenLiteSpeed
  $(ColorGreen '6)') Cài đặt MariaDB
  $(ColorGreen '7)') Cài đặt Memcached
  $(ColorGreen '8)') Cài đặt Redis
  $(ColorGreen '9)') Cài đặt FireWall
  $(ColorGreen '10)') Cài đặt Rclone

    +++ ACTIVE +++
  $(ColorGreen '11)') Active DirectAdmin

    +++ ADVANCED CONFIG +++
  $(ColorGreen '12)') Config PhpMyAdmin
  $(ColorGreen '13)') Config OPcache
  $(ColorGreen '14)') Config Mecached
  $(ColorGreen '15)') Config Redis
  $(ColorGreen '16)') Config OpenLiteSpeed
  $(ColorGreen '17)') Config DirectAdmin
  $(ColorGreen '18)') Config Auto System
  $(ColorGreen '19)') Config PHP 5.6
  $(ColorGreen '20)') Config PHP 7.3
  $(ColorGreen '21)') Config PHP 7.4
  $(ColorGreen '22)') Config PHP 8.0

    +++ ULTILITIES +++
  $(ColorGreen '23)') Restart OpenLiteSpeed
  $(ColorGreen '24)') Change Port DirectAdmin
  $(ColorGreen '25)') Change Port SSH
  $(ColorGreen '26)') Fix Start DirectAdmin
  $(ColorGreen '27)') Clean Auto System
  $(ColorGreen '28)') Clean DirectAdmin
  $(ColorGreen '29)') Reboot VPS
  $(ColorGreen '30)') Restart DirectAdmin
  $(ColorGreen '31)') Get DA_Admin Pass

  $(ColorGreen '0)') Exit

===========================================================
$(ColorBlue 'Chọn tuỳ chọn của bạn (Nhập số và nhấn Enter):') 
"
    read a
    case $a in
    1)
        memory_check
        menu
        ;;
    2)
        cpu_check
        menu
        ;;
    3)
        install_da_auto
        menu
        ;;
    4)
        install_da_manual
        menu
        ;;
    5)
        install_openlitespeed
        menu
        ;;
    6)
        install_mariadb
        menu
        ;;
    7)
        install_memcache
        menu
        ;;
    8)
        install_redis
        menu
        ;;
    9)
        install_firewal
        menu
        ;;
    10)
        install_rclone
        menu
        ;;
    11)
        active_da
        menu
        ;;
    12)
        one_click_myAdmin
        menu
        ;;
    13)
        config_opcache
        menu
        ;;
    14)
        config_mecache
        menu
        ;;
    15)
        config_redis
        menu
        ;;
    16)
        config_ols
        menu
        ;;
    17)
        config_directAdmin
        menu
        ;;
    18)
        config_auto_system
        menu
        ;;
    19)
        config_php56
        menu
        ;;
    20)
        config_php73
        menu
        ;;
    21)
        config_php74
        menu
        ;;
    22)
        config_php80
        menu
        ;;
    23)
        restart_ols
        menu
        ;;
    24)
        change_port_da
        menu
        ;;
    25)
        change_port_csf
        menu
        ;;
    26)
        fix_start
        menu
        ;;
    27)
        auto_system_clean
        menu
        ;;
    28)
        directadmin_clean
        menu
        ;;
    29)
        reboot_vps
        menu
        ;;
    30)
        restart_da
        menu
        ;;
    31)
        get_myAdmin_pass
        menu
        ;;
    0) exit 0 ;;
    *)
        echo -e $red"Lựa chọn của bạn chưa đúng với Menu hiện tại."$clear
        WrongCommand
        ;;
    esac
}

# Call the menu function
menu
