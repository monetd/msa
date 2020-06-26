kubectl run mynginx --image=inverlist/mynginx:0.1 --port=80
kubectl scale deployment mynginx --replicas=20
kubectl expose deployment/mynginx --type="NodePort" --port 80
