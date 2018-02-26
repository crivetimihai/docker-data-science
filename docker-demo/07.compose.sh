#!/bin/bash

. ./tools/init.sh

title "7. COMPOSE"

say "Let's use docker compose to deploy 2 containers"
bullet 'First we clean up any previous running containers...'
pe 'docker stop jupyter redis'
pe 'docker rm jupyter redis'

say "Create docker-compose.yaml with the following content"
cat 'docker-compose.yaml'

say "The containers are linked so.."
bullet "check your environment in Jupyter:"
cat << 'EOF'
!pip install redis
!env
import redis
REDIS = redis.Redis(host='redis')

REDIS.set('a', 1)
REDIS.get('a')
EOF

say 'Run docker-compose up'
pe "docker-compose --file docker-compose.yaml up"

say "Demo complete!"

read

clear
title "QUESTIONS & ANSWERS"
