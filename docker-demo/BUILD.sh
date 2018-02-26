#!/bin/bash

. ./tools/init.sh

title "DOCKER BUILD"

say "What is docker build?"
bullet "Build an image from a Dockerfile."

say "Meaning?!"
bullet "Start from an existing image. Ex: FROM ubuntu"
bullet "Put all the steps required to create your image in a Dockerfile"
bullet "Ex: RUN apt-get update && apt-get install sqlite3"
bullet "Define a starting point, ports, volumes and other things"
bullet "And run 'docker build' to create an image"

say "What do I do with the image?"
bullet "You can run a container from it!"
bullet "You can share it with your friends!"
bullet "You can upload it to Docker Hub"
bullet "Or a private Docker Registry"

say "What's so cool about having a Dockerfile script?"
bullet "You can easily update your image by running Docker Build again..."
bullet "It's easy to understand what's happening"
bullet "It's _reproducible_"

say "Cool, let's try it out!"
read
clear

title "QUESTIONS & ANSWERS"
read
