#!/bin/bash

DB_NAME="mydb"
DB_USER="myuser"
USER_PASSWD="mypasswd"
ROOT_PASSWD="rootpasswd"
DB_HOST="localhost"

/usr/bin/mysqld_safe &
sleep 5
mysql -u root -e "CREATE DATABASE ${DB_NAME}"
mysql -u root -e "CREATE USER '${DB_USER}'@'${DB_HOST}' IDENTIFIED BY '${USER_PASSWD}'"
mysql -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'${DB_HOST}'"
mysql -u root ${DB_NAME} < /tmp/database.sql
mysqladmin -u root password ${ROOT_PASSWD}
