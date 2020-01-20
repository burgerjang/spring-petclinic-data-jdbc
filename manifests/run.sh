kubectl apply -f mysql-db-service.yaml -ndefault
kubectl apply -f mysql-db-deployment.yaml -ndefault
kubectl apply -f petclinic-service.yaml -ndefault
kubectl apply -f petclinic-deployment.yaml -ndefault
kubectl apply -f petclinic-ing.yaml -ndefault

# host container log mount
mkdir -p /logs
ln -s /var/log/containers/petclinic* /logs/app.log