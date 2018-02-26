# Jupyter Notebook Data Science environment from Ubuntu + Miniconda

## Anaconda:
- Miniconda 3

## Python Libraries:
- requests pylint autopep8 
- jupyter ipywidgets jupyter_nbextensions_configurator jupyter_contrib_nbextensions beakerx
- numpy pandas statsmodels matplotlib matplotlib-venn scrapy xlrd nltk redis \
- scipy scikit-learn pytorch-cpu torchvision
- tensorflow

## Running:
```
mkdir ~/notebooks # Create a shared notebooks directory
mkdir ~/.jupyter # Configuration..

docker pull cmihai/jupyter

docker run --init --detach \
    --name jupyter --hostname jupyter \
    -p 8888:8888 \
    --volume ${HOME}/notebooks:/home/jupyter/notebooks:rw \
    --volume ${HOME}/.jupyter:/home/jupyter/.jupyter \
    cmihai/jupyter
```

Then access the notebook. Ex: [http://localhost:8888](http://localhost:8888)

## See also:

> Other images exist, such as:

- [https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook](https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook)
- [https://github.com/ContinuumIO/docker-images/tree/master/miniconda](https://github.com/ContinuumIO/docker-images/tree/master/miniconda)
