#!/bin/bash
. ./tools/init.sh

docker stop jupyter
docker rm jupyter
clear

title "6. Dockerfile Build"
say "Let's build a docker container."

say "First, we need to create a Dockerfile"
pe "cat Dockerfile_Jupyter"

say "Run docker build"
bullet ". (dot) - the current directory - build context and Dockerfile_Jupyter specification"
bullet "We'll also tag the image as 'cmihai/jupyter-lite:v1' so we can find it easily"
pe "docker build . --tag "cmihai/jupyter-lite:v1" -f Dockerfile_Jupyter"

say "Let's test it"
bullet "Connect to the address below. Press Ctrl + C to exit"
pe "docker run --name jupyter --hostname jupyter -p 9000:9000 --volume ${PWD}/notebooks:/notebooks:rw cmihai/jupyter-lite:v1"

say "You remember how to start it back, right?"
bullet "We can continue as an interactive session..."
pe "docker start --attach --interactive jupyter"
bullet "Or push it to the background!"
pe "docker start jupyter"
pe "docker ps"

say "Let's get rid of it for now..."
pe "docker stop jupyter"
pe "docker rm jupyter"

say "Let's run this as a deamon instead!"
bullet "the --daemon flag will run this container in the background"
bullet "the --init flag runs an init inside the container that forwards signals and reaps processes (tini)"
pe "docker run --init --detach --name jupyter --hostname jupyter -p 9000:9000 --volume ${PWD}/notebooks:/notebooks:rw cmihai/jupyter-lite:v1"

say "Check the status using the 'docker logs' command"
pe "docker logs jupyter"

say "Demo complete!"
read
clear
title "QUESTIONS & ANSWERS"
