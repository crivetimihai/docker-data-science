#!/bin/bash

# Container linking with --link
docker run \
    --rm \
    --name psql \
    --interactive --tty \
    --hostname psql \
    --link postgres \
    --volume=$PWD/share:/share:rw \
    postgres psql -h postgres -U postgres

