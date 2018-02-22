#!/bin/sh

kubectl delete -f myemp-deploy.yaml -f myemp-service.yaml -f mongo-deploy.yaml -f mongo-service.yaml