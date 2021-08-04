# create kind cluster
kind create cluster --name ingress-cluster --config ./cluster-config.yaml

# install ingress-controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.48.1/deploy/static/provider/baremetal/deploy.yaml

kubectl get po -n ingress-nginx

# install metabase (deployment, service, ingress)
kubectl apply -f metabase.yaml

kubectl get po -n metabase
kubectl get svc -n metabase
kubectl get ingress -n metabase