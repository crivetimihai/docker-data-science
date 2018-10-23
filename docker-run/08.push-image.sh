#!/bin/bash

# Push an image to Docker Hub
export DOCKER_ID_USER="cmihai"
docker login

# docker tag my_image $DOCKER_ID_USER/my_image
docker push cmihai/postgis
