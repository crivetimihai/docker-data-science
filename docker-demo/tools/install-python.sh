#!/usr/bin/env bash

###############################################################################
#      AUTHOR: Mihai Criveti                                                  #
#                                                                             #
#    PLATFORM: Ubuntu Linux x86/64                                            #
#                                                                             #
#    ABSTRACT: Install Jupyter Notebook and extensions                        #
#                                                                             #
# DESCRIPTION: Installs all the necessary OS dependencies, Anaconda Python,   #
#              pip and conda modules and sets up Jupyter Notebook.            #
#                                                                             #
#   Steps performed:                                                          #
#   ================                                                          #
#   1. Download and install Anaconda Miniconda Python distribution            #
#   2. Update conda                                                           #
#   3. Update pip                                                             #
#   4. Install pip packages                                                   #
#   5. Install conda packages                                                 #
#   6. Setup Jupyter                                                          #
###############################################################################

# TODO: Copy / create jupyter profile (maybe a mount?)

#==============================================================================
#                                   CONFIGURATION
#==============================================================================
## List of packages to install with 'pip'
PIP_PACKAGES='jupyter numpy pandas statsmodels matplotlib matplotlib_venn requests scrapy xlrd nltk autopep8 pylint redis psycopg2-binary pprint graphviz iplantuml'

## List of packages to install with 'conda' (jupyter extensions, etc. that require extra config when using pip)
CONDA_PACKAGES='ipywidgets beakerx jupyter_contrib_nbextensions jupyter_nbextensions_configurator jupyterlab scikit-learn'

## URL to Anaconda distribution to install. Here, we use 'miniconda', a light weight version of anaconda.
ANACONDA_URL='https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh'

## Set PATH
export PATH="$HOME/anaconda3/bin:$PATH"


#==============================================================================
#                                   FUNCTIONS
#==============================================================================
textbox() {
    # Displays a text box with the input text
    echo
    echo
    echo "##########################################################################"
    echo $@
    echo "##########################################################################"
    echo
}

python_miniconda_install() {
    textbox "# Downloads and installs anaconda then sets shell profile. Deletes tmp file."
    wget ${ANACONDA_URL} -O /tmp/conda-install.sh
    bash /tmp/conda-install.sh -b -p $HOME/anaconda3 > /tmp/conda-install.log
    rm /tmp/conda-install.sh
    echo 'export PATH="$HOME/anaconda3/bin:$PATH"' >> ~/.bashrc
}

python_conda_update() {
    textbox "# Upgrades conda package installer, then all packages from conda"
    yes | conda update conda
    yes | conda update --all
}

python_pip_upgrade() {
    textbox "# Upgrades pip, installs pip-review then upgrades all packages from pip"
    pip install --upgrade --quiet pip
    pip install --upgrade --quiet pip-review
    pip-review --auto
}

python_pip_install() {
    textbox "# Installs / upgrades all packages from list"
    pip install --upgrade ${PIP_PACKAGES}
}

python_conda_install() {
    textbox "# Install packages from conda forge"
    conda install -y -c conda-forge ${CONDA_PACKAGES}
}

jupyter_setup() {
    textbox "# Setup various kernels and extensions, configuration"
    echo jupyter notebook --generate-config
}

#==============================================================================
#                                   MAIN
#==============================================================================
main () {
    python_miniconda_install
    python_conda_update
    python_pip_upgrade
    python_pip_install
    python_conda_install
    jupyter_setup
}

main

#==============================================================================
#                                   END
#==============================================================================
exit 0

# EOF
