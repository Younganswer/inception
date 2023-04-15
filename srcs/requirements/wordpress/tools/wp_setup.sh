#!/bin/bash

#
# mkdir -p /var/www/html
# WARNING: rm -rf /var/www/html/*
cd /var/www/html
# wp core download --allow-root
wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root
wp theme install astra --activate --allow-root
wp plugin update --all --allow-root
# wp plugin install redis-cache --activate --allow-root
# wp redis enable --allow-root
#