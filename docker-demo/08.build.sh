#!/bin/bash

. ./tools/init.sh

title "8. Upload to hub"

say "A complete image build"
bullet 'First we clean up any previous running containers...'
pe 'docker stop jupyter; docker rm jupyter'

say "We'll build a container like we did previously - just with more stuff.."
code "ls ./jupyter-full"
code "cat ./jupyter-full/Dockerfile_jupyter"
code "cat ./jupyter-full/build.sh"
code "cat ./jupyter-full/run.sh"

say "Uploading to Docker hub is as simple as running:"
code "cat ./jupyter-full/upload-to-hub.sh"

say "That's it. Now go to https://hub.docker.com/ to see your image."
bullet "You can edit the image description, make your image public and more."

read
clear

title "QUESTIONS & ANSWERS"
