#!/bin/bash

## Test
# kubectl apply -f mysql-db-service.yaml -ndefault
# kubectl apply -f mysql-db-deployment.yaml -ndefault
# kubectl apply -f petclinic-service.yaml -ndefault
# kubectl apply -f petclinic-deployment.yaml -ndefault
# kubectl apply -f petclinic-ing.yaml -ndefault

## All run
kubectl apply -f petclinic.yaml -ndefault

## host container log mount
rm -f /logs/app.log
mkdir -p /logs
ln -s /var/log/containers/petclinic* /logs/app.log