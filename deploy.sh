#!/bin/bash

cd /home/ubuntu/2-tier-monitoring

echo "Pulling latest code"
git pull origin main

echo "Stopping old containers"
docker compose down

echo "Building containers"
docker compose build

echo "Starting containers"
docker compose up -d

echo "Deployment finished"
