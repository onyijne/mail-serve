#! /bin/sh

#copy env file
if [ ! -f .env ]; then
  # Define variables
  sysuser=$(whoami)
  sysid=$(id -u)

  cp denv.example .env

  sed -i "s/^SYSUSER=.*/SYSUSER=$sysuser/" .env
  sed -i "s/^SYSID=.*/SYSID=$sysid/" .env

fi

mkdir -p .ms/mysql-queries .ms/mysql && cp helperfiles/* .ms/mysql-queries/
