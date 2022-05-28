kind create cluster --config=kind-cluster.yaml

kubectl create -f ./postgres-configmap.yaml
kubectl create -f ./postgres-storage.yaml
kubectl create -f ./postgres-deployment.yaml
kubectl create -f ./postgres-service.yaml

kind load docker-image docker_backend
kind load docker-image docker_frontend

kubectl create -f backend-deployment.yaml
kubectl create -f backend-service.yaml
kubectl create -f frontend-deployment.yaml
kubectl create -f frontend-service.yaml