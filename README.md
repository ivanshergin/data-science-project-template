# Template for DS projects
## Docker containers
    - jupyter/datascience-notebook:latest
    - postgres:15.3
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
docker-compose --env-file env.source up
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