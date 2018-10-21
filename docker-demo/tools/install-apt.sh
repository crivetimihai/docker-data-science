#!/usr/bin/env bash

###############################################################################
#      AUTHOR: Mihai Criveti                                                  #
#                                                                             #
#    PLATFORM: Ubuntu Linux x86/64                                            #
#                                                                             #
#    ABSTRACT: Update Ubuntu and install packages                             #
#                                                                             #
###############################################################################

#==============================================================================
#                                   CONFIGURATION
#==============================================================================
## List of Linux packages to install with 'apt-get'
OS_PACKAGES='wget curl bzip2 build-essential git sqlite3 tmux mc graphviz vim-nox bash-completion command-not-found'

## Set noninteractive frontend during build process..
export DEBIAN_FRONTEND=noninteractive

#==============================================================================
#                                   FUNCTIONS
#==============================================================================
## UPDATE OS PACKAGES
os_update() {
    # Updates OS packages
    apt-get --quiet --yes update
    apt-get --quiet --yes upgrade
    apt-get --quiet --yes dist-upgrade
}

## INSTALL OS PACKAGES
os_install() {
    # Installs OS packages using 'apt'
    apt-get --quiet --yes install ${OS_PACKAGES}
}

## APT CLEANUP
os_clean() {
    # Cleans up after apt
    apt-get --quiet --yes autoremove
    apt-get --quiet --yes clean
}


#==============================================================================
#                                   MAIN
#==============================================================================
main () {
    os_update
    os_install
    os_clean
}

main

#==============================================================================
#                                   END
#==============================================================================
exit 0

# EOF
