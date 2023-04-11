# inception
### One container is not enough. We need to go deeper.
<br/><br/><br/>

## Index
* [Summary](#Summary)
* [Requirements](#Requirements)
* [Usage](#Usage)
* [Refereces](#References)
* [Contact](#Contact)
<br/><br/><br/>

## Summary
#### This project aims to broaden your knowledge of system administration by using Docker. You will virtualize several Docker images, creating them in your new personal virtual machine.
<br/><br/><br/>

## Requirements
### [Docker](https://www.docker.com)
* Download docker for your OS
### Current version of docker with this repository
* Docker version 20.10.23
* Docker Compose version v2.15.1
<br/><br/><br/>

## Install
### .env
	$ mv ./srcs/.env.example ./srcs/.env
* Change name `.env.example` to `.env`
* Set your own value of environment variables
* **You have to protect your private information in `.env` file**
<br/>

### Dockerfile
* You can change the contents of the Dockerfile to suit your needs.
<br/>

### Volumes
* `.../mariadb/data`, `.../nginx/logs`, `.../wordpress/html` directories are linked with the volumes of the containers.
* If you modify data of one of those directories, There will be some problems.
<br/><br/><br/>

## Usage
### Supported Makefile commands
* `make` or `make up`: Run and build containers, networks, volumes and images
* `make down`: Stop and remove containers, networks, volumes and images
* `make start`: Start containers
* `make stop`: Stop containers

You can get the status of the containers with `docker ps`
<br/><br/><br/>

## References
#### [Docker](https://www.docker.com)
#### [Docker docs](https://docs.docker.com)
#### [Docker-compose](https://docs.docker.com/compose/compose-file/03-compose-file/)
#### [Dockerfile](https://docs.docker.com/engine/reference/builder/)
<br/><br/><br/>

## Contact
#### younganswer@kookmin.ac.kr
