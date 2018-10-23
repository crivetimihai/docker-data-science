#!/bin/bash

# Run a 'detached' container.
docker run \
    --rm \
    --name nginx \
    --hostname nginx \
    --detach \
    --volume=$PWD/share:/usr/share/nginx/html:ro \
    --publish 8000:80 \
    --env JUPYTER_ENABLE_LAB=yes \
    nginx:latest

# Check the containers list
docker ps -a | grep nginx

# Check the docker logs:
docker logs nginx

# Check the container
docker inspect nginx

# Stopping the container will automatically remove it:
# docker stop nginx
