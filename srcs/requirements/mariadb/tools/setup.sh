#!/bin/bash

service mysql start 

echo "CREATE DATABASE IF NOT EXISTS $db_name ;" > mariadb.sql
echo "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_pwd' ;" >> mariadb.sql
echo "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'%' ;" >> mariadb.sql
echo "ALTER USER '$db_root'@'localhost' IDENTIFIED BY '$db_root_pwd' ;" >> mariadb.sql
echo "FLUSH PRIVILEGES;" >> mariadb.sql

mysql -u$db_root -p$db_root_pwd < mariadb.sql

kill $(cat /var/run/mysqld/mysqld.pid)

mysqld