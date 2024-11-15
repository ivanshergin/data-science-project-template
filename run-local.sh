#/bin/bash

docker swarm init
docker network create --attachable --driver=overlay ds_network


docker-compose --name ds-project-template --env-file ./env.source -f ./docker/docker-compose.yml up --build
