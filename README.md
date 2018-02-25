# Reproducible Data Science with Docker
- As presented at [https://www.meetup.com/Docker-Dublin/events/247314882/](https://www.meetup.com/Docker-Dublin/events/247314882/)

# Docker image:
-  The final image built by this demo can be found at: [https://hub.docker.com/r/cmihai/jupyter/](https://hub.docker.com/r/cmihai/jupyter/)

# Docker Compose file and scripts
- Source can be found here: [https://github.com/crivetimihai/docker-data-science](https://github.com/crivetimihai/docker-data-science)

# How to run the image:

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

# Alternative Images:
https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook is quite popular.. you can use that instead.

```
docker run -it --rm -p 8888:8888 jupyter/datascience-notebook
```

# Reference and where to learn more:
- Learn Docker here: [https://www.katacoda.com/courses/docker](https://www.katacoda.com/courses/docker)
- Learn Shell here: [https://www.hackerrank.com/domains/shell/bash](https://www.hackerrank.com/domains/shell/bash)

