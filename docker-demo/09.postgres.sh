#!/bin/bash

. ./tools/init.sh

title "9. PostgreSQL and PGAdmin4"

say "Let's use docker-compose to bring up a PostgreSQL environment"
bullet 'PostgreSQL is a database. It listens, by default on port 5432'
bullet 'PGAdmin4 is a SQL Developer and Admin tool. It listens, by default on port 5050'
bullet 'Go to http://localhost:5050 and login with admin:admin'
bullet 'Then Right click servers > Create > Server with name: postgres, host: jupyter_postgres, Connection > username:postgres password:postgres'
pe 'docker-compose -f docker-compose-postgres.yaml up'


read
clear

title "QUESTIONS & ANSWERS"
