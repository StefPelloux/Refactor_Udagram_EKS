kubectl delete deploy db
kubectl delete deploy feed
kubectl delete deploy user
kubectl delete deploy frontend
kubectl delete deploy reverseproxy


kubectl apply -f db-deployment.yaml
kubectl apply -f feed-deployment.yaml
kubectl apply -f user-deployment.yaml
kubectl apply -f reverseproxy-deployment.yaml
kubectl apply -f frontend-deployment.yaml



kubectl get deploy
kubectl get po



