#!/bin/bash
docker stop ubuntu-wget
docker rm ubuntu-wget
clear
. ./tools/init.sh
clean_docker

title "3. Ubuntu + wget"
bullet "Let's create an image from an existing container + our tools!"
bullet "Start from an existing Ubuntu Image, in interactive mode (docker run -it)"
bullet "Install the tools we need (ex: apt-get install wget)"
bullet "Then capture the image for future use / distribution (docker commit)"

say "Run an ubuntu container in interactive mode"
bullet "Once inside the container, update apt, install wget, cleanup, exit:"
bullet "apt-get update; apt-get install -y wget; apt-get clean; exit"
pe "docker run --name ubuntu-wget --hostname ubuntu-wget --interactive --tty ubuntu /bin/bash"

say "Take a look at the list of containers"
pe "docker ps -a"

say "Take a look at the list of images"
pe "docker images | grep ubuntu"

say "Commit your container as a new image"
pe "docker commit ubuntu-wget ubuntu-wget-img"

say "Let's take another look at the images"
pe "docker images | grep ubuntu"

say "Let's run an INSTANCE of that image!"
pe "docker run --name ubuntu-wget-test ubuntu-wget-img /usr/bin/wget --version"

say "Cleanup..."
pe "docker stop ubuntu-wget-test"
pe "docker rm ubuntu-wget-test"
clean_docker

say "Demo complete!"
read
clear
title "QUESTIONS & ANSWERS"
read
