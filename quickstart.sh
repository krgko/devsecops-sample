#!/bin/bash

echo "Getting started with DevSecOps..."
echo

echo "Create docker network with name devsecops-sample..."
docker network create devsecops-sample

echo
echo "Start docker-compose for anchore suite..."
docker-compose -f anchore-docker-compose.yaml up -d

echo
echo "Start docker-compose for jenkins..."
docker-compose -f jenkins-docker-compose.yaml up -d
