#!/bin/bash

# Run an interactive shell. Note that --rm means the container will be automatically
# removed on termination
docker run \
    --rm \
    --name ubuntu-bash \
    --hostname ubuntu-bash \
    --interactive --tty \
    --volume=$PWD/share:/share:rw \
    --publish 9000:9000 \
    ubuntu /bin/bash
