#!/bin/sh

# make res d=sait f=db.sql
mysql --defaults-extra-file=config.cnf --database=$d < $f