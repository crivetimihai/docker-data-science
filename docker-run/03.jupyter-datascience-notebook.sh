#!/bin/bash

# Run a 'detached' container.
docker run \
    --rm \
    --name jupyter \
    --hostname jupyter \
    --detach \
    --volume=$PWD/share:/share:rw \
    --publish 10000:8888 \
    --env JUPYTER_ENABLE_LAB=yes \
    jupyter/datascience-notebook

# Check the containers list
docker ps -a | grep jupyter

# Check the docker logs:
docker logs jupyter

# Stopping the container will automatically remove it:
# docker stop jupyter
