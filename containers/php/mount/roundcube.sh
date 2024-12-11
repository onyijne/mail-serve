#!/bin/sh

# install dependencies
echo 'Installing project dependencies...'
#composer install

# wait 10 seconds
#sleep 10

# make writable
echo 'Set ownership'
#chown www-data:www-data -R /var/www/roundcube/*

echo 'Make storage directory writable...'
#chmod 0777 -R /var/www/roundcube/logs
#chmod 0777 -R /var/www/roundcube/temp

