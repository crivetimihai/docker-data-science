#!/bin/bash

. ./tools/init.sh

logo

title "DOCKER OVERVIEW"

say "Docker Platform"
bullet "Open platform for developing, shipping, testing and running applications."
bullet "Helps separate applications from infrastructure."
bullet "Can significaly reduce development cycles"

say "Where do containers fit in the service responsability model?"
cat << 'EOF'
  BARE METAL            VIRTUAL SERVERS      CONTAINERS             CLOUD FOUNDRY        OPENWHISK (FAAS)
+------------------+  +------------------+  +------------------+  +------------------+  +------------------+
|    CODE          |  |    CODE          |  |    CODE          |  |    CODE          |  |[ACTIONS/TRIGGERS]|
+------------------+  +------------------+  +------------------+  +------------------+  +------------------+
|    DATA          |  |    DATA          |  |    DATA          |  |    DATA          |
+------------------+  +------------------+  +------------------+  +------------------+
|    RUNTIME       |  |    RUNTIME       |  |    RUNTIME       |  |    [RUNTIME]     |
+------------------+  +------------------+  +------------------+  +------------------+
|    MIDDLEWARE    |  |    MIDDLEWARE    |  |    MIDDLEWARE    |  |    [MIDDLEWARE]  |
+------------------+  +------------------+  +------------------+  +------------------+
|    OS            |  |    OS            |  |    [OS]          |  |    [OS]          |
+------------------+  +------------------+  +------------------+  +------------------+
|    HYPERVISOR    |  |    [HYPERVISOR]  |  |    [HYPERVISOR]  |  |    [HYPERVISOR]  |
+------------------+  +------------------+  +------------------+  +------------------+
|    SERVERS       |  |    [SERVERS]     |  |    [SERVERS]     |  |    [SERVERS]     |
+------------------+  +------------------+  +------------------+  +------------------+
|    STORAGE       |  |    [STORAGE]     |  |    [STORAGE]     |  |    [STORAGE]     |
+------------------+  +------------------+  +------------------+  +------------------+
|    NETWORKING    |  |    [NETWORKING]  |  |    [NETWORKING]  |  |    [NETWORKING]  |
+------------------+  +------------------+  +------------------+  +------------------+
EOF

say "Docker Engine: client server application "
bullet "dockerd - creates and manages Docker objects, such as images, containers, networks, and volumes."
bullet "REST API - the docker API"
bullet "docker - the commandline interface"
cat << 'EOF'
+----------+      +----------+       +----------+
| App 3    |      | App 2    |       | App 3    |
+----------+      +----------+       +----------+
+----------+      +----------+       +----------+
| Bins/Libs|      | Bins/Libs|       | Bins/Libs|
+----------+      +----------+       +----------+
+-----------------------------------------------+
|                 Docker Engine                 |
|                                               |
+-----------------------------------------------+
+-----------------------------------------------+
|                 Operating System              |
|                                               |
+-----------------------------------------------+
+-----------------------------------------------+
|                 Infrastructure                |
|                                               |
|                                               |
+-----------------------------------------------+
EOF

say "Docker Registry: stores docker images"
bullet "Docker Hub and Docker Cloud are public registries that anyone can use"
bullet "You can also set up your own registry"

say "Docker Images: a read-only template with instructions for creating a Docker container"
bullet "Can be based on another images"
bullet "For example, the nginx-aline image is based on the alpine linux images with addional packages and customization" 
bullet "To build your own image, you create a Dockerfile and use the *docker build* command"

say "Docker container: a runnable instance of an image"
bullet "You can create, run, stop, move, or delete a container using the Docker API or CLI."
bullet "You can connect a container to one or more networks, attach storage to it, or even create a new image based on its current state."

say "Demo complete!"
read
clear

title "QUESTIONS & ANSWERS"
read