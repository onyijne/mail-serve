#! /bin/sh

#copy env file
if [ ! -f ./.env ]; then
  # Define variables
  sysuser=$(whoami)
  sysid=$(id -u)

  cp denv.example .env

  sed -i "s/^SYSUSER=.*/SYSUSER=$sysuser/" .env
  sed -i "s/^SYSID=.*/SYSID=$sysid/" .env

fi

if [ -d .ms ]; then
  sudo rm -rf .ms
fi

if [ -d mail ]; then
  sudo rm -rf mail
fi

mkdir -p .ms/mysql-queries && mkdir -p .ms/mysql/data && mkdir mail
cp helperfiles/* .ms/mysql-queries/

# create services folder
if [ ! -d ./mail/froxlor ]; then
  sh ./froxlor.sh
  ## you can download and extract froxlor here
fi

if [ ! -d ./mail/roundcube/public_html ]; then
  sh ./roundcube.sh
  ## you can download and extract roundcube here
fi

