# Create directories if they don't exist
[ -d ~/.jupyter ] || mkdir ~/.jupyter
[ -d ~/notebooks ] || mkdir ~/notebooks

# Run Jupyter Notebook
docker run --init --detach \
    --name jupyter --hostname jupyter \
    -p 8888:8888 \
    --volume ${HOME}/notebooks:/home/jupyter/notebooks:rw \
    --volume ${HOME}/.jupyter:/home/jupyter/.jupyter \
    cmihai/jupyter

# List logs / auth
docker logs jupyter
