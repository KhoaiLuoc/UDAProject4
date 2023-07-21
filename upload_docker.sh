#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
docker_path=toantruong90
source ~/environment/UDAProject4/.env

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo "$DOCKER_HUB_PASSWORD" | docker login --username toantruong90 --password-stdin
docker image tag prj4:v1 toantruong90/prj4:v1 

# Step 3:
# Push image to a docker repository
docker image push toantruong90/prj4:v1