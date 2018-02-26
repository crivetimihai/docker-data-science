#!/bin/bash
./tools/clean-containers-and-images.sh
. ./tools/init.sh

title "2. Interactive Shell"

say "Let's spin up a container running Ubuntu Linux"
bullet "This time, we'll run 'bash' in interactive mode"
bullet "Docker will automatically 'pull' the image if a local copy is not avaible."
bullet "The '--interactive --tty' flags will run an interactive console session."
bullet "The /bin/bash flag is used as a initial command (shell)"

say "Run ubuntu in interactive mode:"
bullet "You will enter an Ubuntu Linux Container"
bullet "Some commands you can try: 'cat /etc/issue'"
bullet "Type 'exit' or 'Ctrl+d' to exit back to the host"
pe "docker run --name ubuntu-bash --hostname ubuntu-bash --interactive --tty ubuntu /bin/bash"

say "The container is now STOPPED, as show in 'docker ps':"
pe "docker ps -a"

say "Attach back to your container:"
bullet "Using the start command, -i (interactive flag) and calling the container name"
pe "docker start -a -i ubuntu-bash"

say "If you want to get rid of your container..."
bullet "rm is forever. "
bullet "If your container is still running, stop it... (it's not, but just in case..)"
pe "docker stop ubuntu-bash"
bullet "now get rid of it!"
pe "docker rm 'ubuntu-bash'"

say "Let's take another look at the list of container"
pe "docker ps -a"

say "Demo complete!"
read
clear
title "QUESTIONS & ANSWERS"
read
