#!/bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out $CERTS_ -subj "/C=MO/L=KH/O=1337/OU=student/CN=$DOMAIN_NAME"

sed -i "5d" /etc/nginx/sites-available/default
sed -i "5i\ \   server_name www.$DOMAIN_NAME $DOMAIN_NAME;" /etc/nginx/sites-available/default

sed -i "7d" /etc/nginx/sites-available/default
sed -i "7i\ \   ssl_certificate $CERTS_;" /etc/nginx/sites-available/default

#sed -i '40s/.*/\tlog_format debug '\''$remote_addr - $remote_user [$time_local] '\'' '\''"$request" $status $body_bytes_sent '\'' '\''"$http_referer" "$http_user_agent"'\'';/' /etc/nginx/nginx.conf
#sed -i '41s/.*/\taccess_log \/var\/log\/nginx\/access.log debug;/' /etc/nginx/nginx.conf
#sed -i '42s/.*/\terror_log \/var\/log\/nginx\/error.log debug;/' /etc/nginx/nginx.conf

#cat /etc/nginx/nginx.conf

nginx -g "daemon off;"