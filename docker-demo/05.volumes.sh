#!/bin/bash

docker stop jupyter
docker rm jupyter
. ./tools/init.sh

title "5. Mapping Volumes"
bullet "What happens if I delete the container?"
bullet "Where is this thing saving my Jupyter Notebooks anyway?"
bullet "Map a volume from your HOST to the container"

say "We'll use the --volume comand to map a directory to the container"
pe "docker run --name notebook --hostname notebook -p 9000:9000 --volume=$PWD/notebooks:/notebooks:rw -i -t cmihai/jupyter-lite:v1 /bin/bash"

say "Demo complete!"
read
clear
title "QUESTIONS & ANSWERS"
read
