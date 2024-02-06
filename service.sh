kubectl delete svc db
kubectl delete svc user
kubectl delete svc feed
kubectl delete svc frontend
kubectl delete svc reverseproxy


kubectl apply -f db-service.yaml
kubectl apply -f feed-service.yaml
kubectl apply -f user-service.yaml
kubectl apply -f reverseproxy-service.yaml
kubectl apply -f frontend-service.yaml


kubectl get svc

