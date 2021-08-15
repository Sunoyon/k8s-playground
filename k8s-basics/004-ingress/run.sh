# create kind cluster
kind create cluster --name ingress-cluster --config kind-cluster-ingress-controller
# docker container inspect ingress-cluster-control-plane --format '{{ .NetworkSettings.Networks.kind.IPAddress }}'

# install ingress-controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
# kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.48.1/deploy/static/provider/baremetal/deploy.yaml

kubectl get po -n ingress-nginx

# install metabase (deployment, service, ingress)
kubectl apply -f foobar.yaml