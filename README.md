# Workshop pre-requisites:

## Install Docker
Follow the instructions at https://docs.docker.com/install/ (for Windows/Linux/MacOS) to install and configure Docker CE.

On most systems, you can use the `get-docker` script to install Docker. On Ubuntu / Debian, it looks like this:

```
# Update your OS packages
sudo apt-get update
sudo apt-get upgrade

# Install curl
sudo apt-get -y install curl

# Download the get-docker.sh script
curl -fsSL get.docker.com -o get-docker.sh

# Run the installer script
sudo sh get-docker.sh

# Setup the Docker user
sudo usermod -aG docker $USER

# Install docker-compose. May want to Anaconda Python or pip beforehand
pip install docker-compose

# Logout / login..

# Grab a few images
docker pull ubuntu
docker pull alpine
docker pull postgres
docker pull alpine
```

# Reproducible Data Science with Docker
- ASCIINEMA DEMO: [https://asciinema.org/a/165285](https://asciinema.org/a/165285)
- Commandline Interactive Tutorial / Demo (as recorded above) can be found in [./docker-demo](docker-demo). Entry point is `menu.sh`. Requires `dialog`, `figlet` and `docker` (can be installed using `docker-demo/tools/install-docker-ubuntu.sh`)

## Docker image:
-  The final image built by this demo can be found at: [https://hub.docker.com/r/cmihai/jupyter/](https://hub.docker.com/r/cmihai/jupyter/)

## Docker Compose file and scripts
- Source can be found here: [https://github.com/crivetimihai/docker-data-science](https://github.com/crivetimihai/docker-data-science)

## How to run the image:

- This image has been published as cmihai/jupyter. Just do a:
```
docker pull
docker run --init --detach \
    --name jupyter --hostname jupyter \
    -p 8888:8888 \
    --volume ${HOME}/notebooks:/home/jupyter/notebooks:rw \
    --volume ${HOME}/.jupyter:/home/jupyter/.jupyter \
    cmihai/jupyter
```

# Reference and where to learn more:
- Learn Docker here: [https://www.katacoda.com/courses/docker](https://www.katacoda.com/courses/docker)
- Learn Shell here: [https://www.hackerrank.com/domains/shell/bash](https://www.hackerrank.com/domains/shell/bash)

