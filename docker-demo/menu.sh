#!/bin/bash

reset
. ./tools/init.sh
logo
read

TITLE="Dublin Docker Meetup - Mihai Criveti https://github.com/crivetimihai"
BOXTITLE="[ C O N T A I N E R S - D E M O S ]"

# Store menu options selected by the user
INPUT=/tmp/menu.sh.$$

# Storage file for displaying cal and date command output
OUTPUT=/tmp/output.sh.$$

# get text editor or fall back to vi_editor
vi_editor=${EDITOR-vi}

# trap and delete temp files
trap "rm $OUTPUT; rm $INPUT; exit" SIGHUP SIGINT SIGTERM

#
# Purpose - display output using msgbox 
#  $1 -> set msgbox height
#  $2 -> set msgbox width
#  $3 -> set msgbox title
#
function display_output(){
	local h=${1-10}			# box height default 10
	local w=${2-41} 		# box width default 41
	local t=${3-Output} 	# box title 
	dialog --backtitle "Docker Dublin Meetup Feb. 21 2018 - Mihai Criveti" --title "${t}" --clear --msgbox "$(<$OUTPUT)" ${h} ${w}
}

# Docker info
function show_version(){
    docker version >$OUTPUT
    display_output 20 80 "docker version"
}

# set infinite loop
while true
do

# Display menu
dialog --clear --backtitle "${TITLE}" \
--title "${BOTIXTLE}" \
--menu "DEMOnstrator 6000: Lighter than the 9000, but just as fun!" 30 120 25 \
"PREREQ" "Install Docker on Ubuntu Linux" \
"RECORD" "Setup asciinema recording" \
"" "" \
"INTRO" "Introduction and a note about the presenters" \
"0.data-science" "IOSEMN Process and Data Science Tools" \
"" "" \
"DOCKER" "Docker Containers - Overview" \
"1.hello" "Hello World!" \
"2.shell" "Interactive Shell on Ubuntu Linux" \
"3.wget" "Install 'wget' on Ubuntu Linux" \
"4.anaconda" "Install Anaconda Python, PIP modules and Jupyter Notebook on top" \
"5.volumes" "Working with volumes: keeping your data safe!" \
"" "" \
"BUILD" "Building containers from Dockerfile" \
"6.dockerfile" "Build a Jupyter Notebook container" \
"" "" \
"COMPOSE" "Orchestrating multiple containers with Compose" \
"7.compose" "Setup a pipeline with Jupyter Notebook, databases and tools" \
"" "" \
"FINAL" "Closing Remarks, Questions and Answers" \
"8.build" "Final build and upload to Docker Hub" \
"9.postgres" "PostgreSQL, PGAdmin4 and docker-compose" \
"" "" \
"EXIT" "Exit to the shell" 2>"${INPUT}"

menuitem=$(<"${INPUT}")


# Decision
case $menuitem in
    "PREREQ") ./noop.sh;;
    "RECORD") ./record.sh;;
    "INTRO") ./INTRO.sh;;
    "0.data-science") ./00.data-science.sh;;

    "DOCKER") ./DOCKER.sh; read;;
    "1.hello") ./01.hello.sh; read;;
    "2.shell") ./02.shell.sh; read;;
    "3.wget") ./03.wget.sh; read;;
    "4.anaconda") ./04.anaconda.sh; read;;
    "5.volumes") ./05.volumes.sh; read;;

    "BUILD") ./BUILD.sh; read;;
    "6.dockerfile") ./06.dockerfile.sh; read;;

    "COMPOSE") ./COMPOSE.sh; read;;
    "7.compose") ./07.compose.sh; read;;

    "FINAL") ./FINAL.sh; read;;
    "8.build") ./08.build.sh; read;;
    "9.postgres") ./09.postgres.sh; read;;

    "EXIT") echo "So long, and thanks for all the fish!"; break;;
esac

done

# Delete temporary files, if any
[ -f $OUTPUT ] && rm $OUTPUT
[ -f $INPUT ] && rm $INPUT

reset
