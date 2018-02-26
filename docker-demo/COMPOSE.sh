#!/bin/bash

. ./tools/init.sh

title "DOCKER COMPOSE"

say "What is Compose?!"
bullet "Compose is a tool for defining and running multi-container Docker applications."

say "Huh?"
bullet "Put all the services required by your application in a single definition file"
bullet "If you need Jupyter Notebook and PostgreSQL as part of your pipeline"
bullet "You can create a compose definition for such an environment"

say "How do I use it?"
bullet "1. Create a docker-compose.yaml and define the services, ports and dependencies"
bullet "2. Run docker-compose up"
bullet "Optional: read the manual"

say "What does an application look like?"
cat << EOF
         +-----------------+
         |     Jupyter     |
PYTHON   | ports:9000      +---------------------------------+
         | vol: /notebooks |                                 |
         |  (Anaconda 3)   +-----------------+               |
         +---------+-------+                 |               |
                   |                         |               |
         +---------v-------+           +-----v------+  +-----v-----+
         |     PostgreSQL  |    NOSQL: |  REDIS     |  |  MONGODB  |
SQL      |                 |           |            |  |           |
         |                 |           |            |  |           |
         |                 |           |            |  |           |
         +-----------------+           +------------+  +-----------+

EOF
say "Up next: let's try it out!"
read
clear

title "QUESTIONS & ANSWERS"
read
