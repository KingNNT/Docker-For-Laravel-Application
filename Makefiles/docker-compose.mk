compose-up: 
	- docker-compose -f ${DOCKER_COMPOSE_FILE} up
compose-up-d:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} up -d
compose-down:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} down
compose-down-rmi-local:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} down --rmi local
compose-destroy:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} down --rmi local
compose-start:
	- docker-compose -f ${DOCKER_COMPOSE_FILE}.yml start
compose-stop:
	- docker-compose -f ${DOCKER_COMPOSE_FILE} stop
compose-ps:
	- docker ps
