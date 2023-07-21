#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
docker_path=toantruong90

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy pro4-microservice-kubernetes --image="$docker_path/prj4:v1"


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/pro4-microservice-kubernetes 8000:80
