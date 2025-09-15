#!/bin/bash

echo "Running STGraph evaluation experiments..."

if [ ! -f .env ]; then
    cp .env.example .env
    echo ".env file missing, created from .env.example. Please update it with your configuration in case of different parameters. Otherwise, re-run this script to continue."
    exit 1
fi

echo "Starting STGraph container..."
docker compose -f docker-compose_dtgraph.yaml up
echo "Evaluation of STGraph completed, results available in the results/ directory."

#echo "Running AeonG evaluation experiments..."
#docker compose -f docker-compose_aeong.yaml up
#echo "Evaluation of AeonG completed, results available in the results/ directory."
