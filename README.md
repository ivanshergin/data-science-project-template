# Template for DS projects
## Docker containers
    - jupyter/datascience-notebook:x86_64-ubuntu-22.04
    - postgres:15.3
    - ghcr.io/mlflow/mlflow:v2.18.0rc0
## Docker commands
1. Start containers

```
docker-compose up
```

2. Start & build containers

```
docker-compose up --build
```

3. Start containers with env params

```
docker-compose --env-file .env up --build
```

4. Stop containers

```
docker-compose down
```

5. Update images
```
docker-compose build --pull
```

6. Remove all docker's data.

```
docker system prune
```