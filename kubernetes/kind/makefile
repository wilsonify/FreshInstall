
install:
	wget https://github.com/kubernetes-sigs/kind/releases/download/v0.24.0/kind-linux-amd64
	chmod +x kind-linux-amd64
	mkdir -p /opt/kind/v0.24.0
	mv kind-linux-amd64 /opt/kind/v0.24.0/kind
	sudo update-alternatives --install /usr/bin/kind kind /opt/kind/v0.24.0/kind 100

	wget https://github.com/argoproj/argo-cd/releases/download/v2.12.4/argocd-linux-amd64
	chmod +x argocd-linux-amd64
	mkdir -p /opt/argocd/v2.12.4
	mv argocd-linux-amd64 /opt/argocd/v2.12.4/argocd
	sudo update-alternatives --install /usr/bin/argocd argocd /opt/argocd/v2.12.4/argocd 100


start:
	kind create cluster --name kind --config config.yaml

stop:
	kind delete cluster --name kind

status:
	kubectl cluster-info --context kind-kind

argo:
	kubectl create namespace argocd || true
	kubectl apply -n argocd -f argo.yaml
	kubectl get svc -n argocd
	kubectl port-forward -n argocd service/argocd-server 8443:443
	kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo

connect:
	argocd repo add https://git-codecommit.us-east-1.amazonaws.com/v1/repos/renewed-renaissance-prestashop --username PAT --password secret


