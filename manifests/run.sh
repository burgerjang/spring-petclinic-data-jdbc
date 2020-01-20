kubectl apply -f mysql-db-service.yaml -ndefault
kubectl apply -f mysql-db-deployment.yaml -ndefault
kubectl apply -f petclinic-service.yaml -ndefault
kubectl apply -f petclinic-deployment.yaml -ndefault
kubectl apply -f petclinic-ing.yaml -ndefault
