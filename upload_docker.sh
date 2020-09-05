#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 249267795339.dkr.ecr.us-west-2.amazonaws.com
docker build -t devops_project .
docker tag devops_project:latest 249267795339.dkr.ecr.us-west-2.amazonaws.com/devops_project:latest

# Step 3:
# Push image to a docker repository
docker push 249267795339.dkr.ecr.us-west-2.amazonaws.com/devops_project:latest
