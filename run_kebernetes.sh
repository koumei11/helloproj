#!/usr/bin/env bash

dockerpath="hello"

# Run in Docker Hub container with kubernetes
kubectl run flaskskearlndemo\
    --image=$dockerpath\
    --port=80 --labels app=flaskskearlndemo

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward flaskskearlndemo 8000:80