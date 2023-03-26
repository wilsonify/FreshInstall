# Install kubectl convert plugin
# A plugin for Kubernetes command-line tool kubectl,
# which allows you to convert manifests between different API versions.
# This can be particularly helpful to migrate manifests to a non-deprecated api version with newer Kubernetes release.
# For more info, visit migrate to non deprecated apis
# Download the latest release with the command:
curl -LO "https://dl.k8s.io/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl-convert"
# Validate the binary (optional)
# Download the kubectl-convert checksum file:
curl -LO "https://dl.k8s.io/$KUBECTL_VERSION/bin/linux/amd64/kubectl-convert.sha256"
# Validate the kubectl-convert binary against the checksum file:
# If valid, the output is: kubectl-convert: OK
echo "$(cat kubectl-convert.sha256) kubectl-convert" | sha256sum --check
# Install kubectl-convert
sudo install -o root -g root -m 0755 kubectl-convert /usr/local/bin/kubectl-convert
# Verify plugin is successfully installed
kubectl convert --help

# After installing the plugin, clean up the installation files:
rm kubectl-convert kubectl-convert.sha256
