kubectl version
kubectl get nodes
kubectl get services
kubectl get po

# kubectl deployment management
kubectl create deployment nginx-deploy --image=nginx [--dry-run]
kubectl get deployment
kubectl get replicaset
kubectl edit deployment nginx-deploy 

kubectl logs <pod-name>
kubectl create deployment mongo-deploy --image=mongo
kubectl describe po <pod-name>

# interactive terminal
kubectl exec -it <pod-name> -- bin/bash
exit

# kubectl delete deployment
kubectl delete deployment mongo-deploy
kubectl delete deployment nginx-deploy

# create or update the deployment
kubectl apply -f nginx-deployment.yaml
kubectl delete -f nginx-deployment.yaml