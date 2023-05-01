DOCKER_COMPOSE = docker-compose -f ./srcs/docker-compose.yml

up:
	@mkdir -p ./srcs/requirements/mariadb/data
	@mkdir -p ./srcs/requirements/nginx/logs
	@mkdir -p ./srcs/requirements/wordpress/html
	@${DOCKER_COMPOSE} up --build -d

down:
	@${DOCKER_COMPOSE} down

start:
	@${DOCKER_COMPOSE} start

stop:
	@${DOCKER_COMPOSE} stop

fclean:
	@docker rmi -f $$(docker images -a -q) 2>/dev/null || true
	@docker volume rm $$(docker volume ls -q) 2>/dev/null || true

.PHONY: up down stop start fclean

.NOTPARALLEL: up down stop start fclean