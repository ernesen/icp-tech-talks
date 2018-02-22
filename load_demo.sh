#!/bin/sh

kubectl create -f myemp-deploy.yaml -f myemp-service.yaml -f mongo-deploy.yaml -f mongo-service.yaml

