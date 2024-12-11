#!/bin/sh

# install dependencies
echo 'Installing project dependencies...'
#composer install

# wait 10 seconds
#sleep 10

# make writable
echo 'Set ownership'
#chown www-data:www-data -R /var/www/froxlor/*

echo 'Make storage directory writable...'
#chmod 0777 -R /var/www/froxlor/logs

