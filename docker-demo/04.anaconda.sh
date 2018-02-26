#!/bin/bash
docker stop ubuntu-wget jupyter
docker rm ubuntu-wget jupyter
. ./tools/init.sh
clean_docker
clear

title "4. INSTALL JUPYTER"

say "Start from our existing ubuntu + wget image"
bullet "Install Miniconda (minimal Anaconda Python) and Jupyter Notebook"
bullet "Then save the image to a new container"

say "Once you are in the container, you can install Jupyter:"
cat << 'EOF'
apt-get update && apt-get install -y bzip2 \
    && wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh --directory-prefix /tmp \
    && sh /tmp/Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/anaconda3 > /tmp/anaconda3.log \
    && tail -5 /tmp/anaconda3.log \
    && echo 'export PATH="$HOME/anaconda3/bin:$PATH"' >> ~/.bashrc \
    && . ~/.bashrc \
    && pip install jupyter
EOF

say "Running a container from the base ubuntu-wget-img image"
pe "docker run --name jupyter --hostname jupyter -p 9000:9000 --volume=$PWD/notebooks:/notebooks:rw -i -t ubuntu-wget-img /bin/bash"

say "Commit to a new image name:"
pe "docker commit jupyter cmihai/jupyter-lite:v1"

say "List images"
pe "docker images | grep jupyter"

say "Demo complete!"
read
clear
title "QUESTIONS & ANSWERS"
read
