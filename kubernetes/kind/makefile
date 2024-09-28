
install:
	wget https://github.com/kubernetes-sigs/kind/releases/download/v0.24.0/kind-linux-amd64
	chmod +x kind-linux-amd64
	mv kind-linux-amd64 /opt/kind/v0.24.0/kind
	sudo update-alternatives --install /usr/bin/kind kind /opt/kind/v0.24.0/kind 100

start:
	kind create cluster --name kind --config config.yaml

stop:
	kind delete cluster --name kind

status:
	kubectl cluster-info --context kind-kind

argo:
	kubectl create namespace argocd
	kubectl apply -n argocd -f argocd.yaml
	kubectl get svc -n argocd
	kubectl port-forward -n argocd service/argocd-server 8443:443
	kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo