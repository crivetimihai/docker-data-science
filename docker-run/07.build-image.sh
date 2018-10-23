#!/bin/bash

# Build and tag the image as cmihai/postgis
docker build -f Dockerfile-postgis --tag cmihai/postgis .
