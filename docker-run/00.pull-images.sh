#!/usr/bin/env bash

images="hello-world alpine ubuntu postgres redis apache/zeppelin:0.8.0 tensorflow/tensorflow jupyter/scipy-notebook jupyter/tensorflow-notebook jupyter/pyspark-notebook jupyter/datascience-notebook"
for image in ${images}; do
    echo docker pull "${image}"
done
