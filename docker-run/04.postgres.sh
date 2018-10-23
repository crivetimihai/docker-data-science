#!/bin/bash

# Run a 'detached' container.
docker run \
    --rm \
    --name postgres \
    --hostname postgres \
    --detach \
    --volume=$PWD/share:/share:rw \
    --publish 5432:5432 \
    --env POSTGRES_PASSWORD=password \
    postgres

