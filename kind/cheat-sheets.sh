# create k8s cluster
kind create cluster --name k8s-cluster --config ./cluster-config.yaml

# kind get cluster
kind get clusters

# kind get nodes
kind get nodes --name k8s-cluster

# k8s get nodes
kubectl get nodes -o wide

# k8s get cluster info
kubectl cluster-info