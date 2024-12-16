#! /bin/sh

#copy env file
if [ ! -f ./.env ]; then
  cp env.example .env

  # Define variables
  sysuser=$(whoami)
  sysid=$(id -u)

  cp env.example .env

  sed -i "s/^SYSUSER=.*/SYSUSER=$sysuser/" .env
  sed -i "s/^SYSID=.*/SYSID=$sysid/" .env

fi

# create services folder
if [ ! -d ./mail/froxlor ]; then
  sh ./froxlor.sh
  ## you can download and extract froxlor here
fi

if [ ! -d ./mail/roundcube/public_html ]; then
  sh ./roundcube.sh
  ## you can download and extract roundcube here
fi

if [ -d .ms ]; then
  rm -dr .ms
fi

mkdir -p .ms/psql-queries && mkdir .ms/mysql-queries && mkdir -p .ms/mydql/data

cp helperfiles/* .ms/mysql-queries/
cp helperfiles/queries.sql .ms/psql-queries/
