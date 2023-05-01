FROM debian:buster

LABEL	name="wordpress" \
		version="1.0" \
		description="wordpress"

EXPOSE 9000

RUN apt update -y && apt install php7.3 php-cli php-fpm php-mysql curl -y
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && \
	mv wp-cli.phar /usr/local/bin/wp && \
	rm -rf /var/www/html && \
	mkdir -p /var/www/html && \
	cd /var/www/html && \
	wp core download --allow-root

COPY ./tools/setup.sh /
COPY ./conf/wp-config.php /wp-config.php

RUN chmod +x /setup.sh

ENTRYPOINT [ "/bin/bash", "/setup.sh" ]