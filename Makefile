DOCKER_COMPOSE = docker-compose -f ./srcs/docker-compose.yml

up:
	@mkdir -p ./srcs/requirements/mariadb/data
	@mkdir -p ./srcs/requirements/nginx/logs
	@${DOCKER_COMPOSE} up --build -d
	@sleep 10
	@docker exec wordpress /bin/bash /wp_setup.sh 1>/dev/null 2>&1

down:
	@${DOCKER_COMPOSE} down

start:
	@${DOCKER_COMPOSE} start

stop:
	@${DOCKER_COMPOSE} stop

.PHONY: up down stop start

.NOTPARALLEL: up down stop start
