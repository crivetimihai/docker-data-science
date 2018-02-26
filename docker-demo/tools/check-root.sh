#!/usr/bin/env bash

###############################################################################
#      AUTHOR: Mihai Criveti                                                  #
#                                                                             #
#    PLATFORM: Ubuntu Linux x86/64                                            #
#                                                                             #
#    ABSTRACT: Check if OS is Ubuntu x86_64 apt-get can run as root           #
#                                                                             #
###############################################################################

#==============================================================================
#                                   FUNCTIONS
#==============================================================================
# USAGE
usage(){
    # Displays usage and exit
    cat << EOF
    USAGE: $0

    Installs Anaconda, Jupyter Notebook and NBextensions on Ubuntu Linux x86_64.
    This script should be run with 'sudo' to install packages form 'apt'.
EOF
    exit 1
}

check_os(){
    # Get OS version strings:
    OS_TYPE=$(uname -s)
    OS_PLATFORM=$(uname -m)
    OS_DISTRO=$(lsb_release -si)

    # Check if I'm running on the right OS
    if [ ${OS_TYPE} != 'Linux' ]; then
        echo "This script runs only on Linux"
        usage
    fi

    # Check for 'apt-get'
    if ! hash apt-get 2>/dev/null; then
        echo "Could not find 'apt-get'. Are you sure you're running on Ubuntu?"
        usage
    fi

    # Check if OS is x86_64 (64 bit):
    if [ ${OS_PLATFORM} != 'x86_64' ]; then
        echo "This script is designed for 64 bit Intel platform."
        usage
    fi

    # Check if OS is Ubuntu:
    if [ ${OS_DISTRO} != 'Ubuntu' ]; then
        echo "This script is designed for Ubuntu Linux only"
        usage
    fi

    echo "64 bit Ubunt Linux with apt-get found!"
}

check_root(){
    # Need root for sudo commands...
    if [ "$EUID" -ne 0 ]; then 
        echo "Please run as root"
        usage
    fi
}


#==============================================================================
#                                   MAIN
#==============================================================================
main () {
    check_os
    check_root
    ./install-os-root.sh
}

main

#==============================================================================
#                                   END
#==============================================================================
exit 0

# EOF
