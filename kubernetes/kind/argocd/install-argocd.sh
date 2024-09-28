kubectl create namespace argocd
kubectl apply -n argocd -f install.yaml
kubectl get svc -n argocd
kubectl port-forward -n argocd service/argocd-server 8443:443
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo