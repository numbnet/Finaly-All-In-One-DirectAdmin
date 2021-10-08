#!/bin/bash
rm -f /usr/local/php56/lib/php.ini;
wget -P /usr/local/php56/lib/ https://raw.githubusercontent.com/minhvinhdao/Finaly-All-In-One-DirectAdmin/main/php56/php.ini && chmod 644 /usr/local/php56/lib/php.ini;