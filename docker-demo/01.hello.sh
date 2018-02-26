#!/bin/bash

docker rm hello
clear
. ./tools/init.sh

title "1. Docker Hello World"

say "Let's search for a container in the Docker Public registry."
bullet "A Docker registry stores Docker images."
bullet "Docker Hub and Docker Cloud are public registries that anyone can use."
bullet "Docker will look for images in the Docker Hub by default - see http://hub.docker.com"
bullet "You can also setup your own private registry."
pe "docker search --limit 2 hello-world"

say "You can download images from the docker registry and store them locally:"
pe 'docker pull hello-world'

say "Let's run a container from the hello-world image. I've used --name so we can easily find it later"
pe 'docker run --name "hello" hello-world'

say "You can check the log files using 'docker logs':"
pe "docker logs hello"

say "This container is stopped, as the execution command has exited:"
pe "docker ps -a | grep hello"

say "Delete the container using the name 'hello' as provided above"
pe "docker rm hello"

say "You can also delete the local image:"
pe "docker rmi hello-world"

say "Demo complete!"
read
clear

title "QUESTIONS & ANSWERS"
read

