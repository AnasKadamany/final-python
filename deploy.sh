#!/bin/bash

cd /home/ec2-user/app

echo "Stopping old container..."
docker stop final-python || true
docker rm final-python || true

echo "Pulling latest image..."
docker pull anaskadamany/final-python:latest

echo "Running new container..."
docker run -d --name final-python -p 80:80 anaskadamany/final-python:latest
