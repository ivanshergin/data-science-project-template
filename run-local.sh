#/bin/bash

docker swarm init
docker network create --attachable --driver=overlay ds_network


docker-compose --project-name ds_project_template --env-file ./env.source -f ./docker/docker-compose.yml up --build
