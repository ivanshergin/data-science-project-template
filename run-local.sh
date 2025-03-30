#/bin/bash
ENV_FILENAME=".env"

docker swarm init
docker network create --attachable --driver=overlay ds_network

docker volume create ds_postgres_data
docker volume create ds_mlflow_data
docker volume create ds_minio_data
docker volume create ds_mongo_data

docker-compose --project-name ds_project_template \
               --env-file $ENV_FILENAME  \
               -f ./docker/docker-compose.yml \
               up --build
