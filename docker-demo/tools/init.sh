#!/bin/bash

TOOLS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. ${TOOLS_DIR}/demo-magic.sh
RESET="\033[0m"
BOLD="\033[1;34m"
BULLET="\033[0;33m"

say(){
    echo
    echo -e "${BOLD}# $@${RESET}"
    read
}

bullet(){
    echo -e "${BULLET}• $@${RESET}"
    read
}

code(){
    echo '```'
    $@
    echo '```'
}

logo(){
    clear
    toilet -f future --metal "Reproducible Data Science"
    cat << EOF
               🐦 : @CrivetiMihai
      https://www.linkedin.com/in/crivetimihai
                        ##         .
                  ## ## ##        ==
               ## ## ## ## ##    ===
           /"""""""""""""""""\___/ ===
      ~~~ {~~ ~~~~ ~~~ ~~~~ ~~~ ~ /  ===- ~~~
           \______ o           __/
             \    \         __/
              \____\_______/

              - DUBLIN 2018 -
EOF
}

title(){
    toilet -f future $@
    read
}

clean_docker(){
    ${TOOLS_DIR}/clean-containers-and-images.sh
}

DEMO_PROMPT="${GREEN}➜ ${CYAN} "
TYPE_SPEED=40
clear
