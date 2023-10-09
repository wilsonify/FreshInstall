wget https://github.com/kubernetes-sigs/kind/releases/download/v0.20.0/kind-linux-amd64
mv kind-linux-amd64 /opt/kind/v0.20.0/kind
chmod +x /opt/kind/v0.20.0/kind
sudo update-alternatives --install /usr/bin/kind kind /opt/kind/v0.20.0/kind 100
kind --version