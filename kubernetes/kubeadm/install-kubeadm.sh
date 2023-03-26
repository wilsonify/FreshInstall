# Installing kubeadm, kubelet and kubectl
# You will install these packages on all of your machines:
# kubeadm: the command to bootstrap the cluster.
# kubelet: the component that runs on all of the machines in your cluster and does things like starting pods and containers.
# kubectl: the command line util to talk to your cluster.
# Installing kubeadm
# This page shows how to install the kubeadm toolbox.
# For information on how to create a cluster with kubeadm once you have performed this installation process,
# see the Creating a cluster with kubeadm page.
# Before you begin
# A compatible Linux host.
#  The Kubernetes project provides generic instructions for Linux distributions based on Debian and Red Hat,
# and those distributions without a package manager.
# 2 GB or more of RAM per machine (any less will leave little room for your apps).
# 2 CPUs or more.
# Full network connectivity between all machines in the cluster (public or private network is fine).
# Unique hostname, MAC address, and product_uuid for every node. See here for more details.
# Certain ports are open on your machines. See here for more details.
# Swap disabled. You MUST disable swap in order for the kubelet to work properly.
sudo swapoff -a
sudo sysctl vm.swappiness=0

# Here's what each part of the next command does:
# sudo: This is a command that allows you to run the following command with administrative privileges.
# sed: This is the command to use sed as the text editor.
# -i.bak: This option tells sed to edit the file in place (meaning it modifies the file directly),
# and to create a backup copy of the original file with the .bak extension.
# '/ swap /': This is a pattern to match against the lines in the file.
# In this case, it's searching for any lines that contain the word "swap" with spaces before and after it.
# s/^\(.*\)$/#\1/g: This is the replacement pattern.
# It's telling sed to replace the entire line with a commented-out version of the line.
# The s at the beginning stands for "substitute", and the g at the end means "global",
# which tells sed to replace all occurrences of the pattern on the line.
# Here's a breakdown of the replacement pattern:
# s/: This starts the substitution pattern.
# ^: This matches the beginning of the line.
# \(.*\): This is a capturing group that matches any characters on the line.
# $: This matches the end of the line.
# /#\1/: This replaces the entire line with a hash symbol (#) followed by the captured group from earlier (\1).
# g: This tells sed to replace all occurrences of the pattern on the line, not just the first one.
# So, in summary, this command is commenting out any lines in the /etc/fstab file that contain the word "swap".
sudo sed -i.bak '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

# Verify the MAC address and product_uuid are unique for every node
# get the MAC address of the network interfaces
# ifconfig -a
ip link
# check the product_uuid
sudo cat /sys/class/dmi/id/product_uuid
# It is very likely that hardware devices will have unique addresses,
# although some virtual machines may have identical values.
# Kubernetes uses these values to uniquely identify the nodes in the cluster.
# If these values are not unique to each node, the installation process may fail.

# Check network adapters
# If you have more than one network adapter,
# and your Kubernetes components are not reachable on the default route,
# we recommend you add IP route(s) so Kubernetes cluster addresses go via the appropriate adapter.

# Check required ports
# These required ports need to be open in order for Kubernetes components to communicate with each other.
# You can use tools like netcat to check if a port is open. For example:
nc 127.0.0.1 6443

# The pod network plugin you use may also require certain ports to be open.
# Since this differs with each pod network plugin,
# please see the documentation for the plugins about what port(s) those need.

# Installing a container runtime
# To run containers in Pods, Kubernetes uses a container runtime.
# By default, Kubernetes uses the Container Runtime Interface (CRI) to interface with your chosen container runtime.
# If you don't specify a runtime,
# kubeadm automatically tries to detect an installed container runtime by scanning through a list of known endpoints.
# If multiple or no container runtimes are detected
# kubeadm will throw an error and will request that you specify which one you want to use.
# See container runtimes for more information.
# Note: Docker Engine does not implement the CRI which is a requirement
# for a container runtime to work with Kubernetes.
# For that reason,
# an additional service cri-dockerd has to be installed.
# cri-dockerd is a project based on the legacy built-in Docker Engine
# support that was removed from the kubelet in version 1.24.

# Runtime	Path to Unix domain socket
#containerd	unix:///var/run/containerd/containerd.sock
#CRI-O	unix:///var/run/crio/crio.sock
#Docker Engine (using cri-dockerd)	unix:///var/run/cri-dockerd.sock
# kubeadm will not install or manage kubelet or kubectl for you,
# so you will need to ensure they match the version of the
# Kubernetes control plane you want kubeadm to install for you.
# If you do not, there is a risk of a version skew occurring that can lead to unexpected, buggy behaviour.
# However, one minor version skew between the kubelet and the control plane is supported,
# but the kubelet version may never exceed the API server version.
# For example, the kubelet running 1.7.0 should be fully compatible with a 1.8.0 API server, but not vice versa.
# For information about installing kubectl, see Install and set up kubectl.
# Warning: These instructions exclude all Kubernetes packages from any system upgrades.
# This is because kubeadm and Kubernetes require special attention to upgrade.
# For more information on version skews, see:
# Kubernetes version and version-skew policy
# Kubeadm-specific version skew policy
# Install CNI plugins (required for most pod network):
# Define the directory to download command files
# Note: The DOWNLOAD_DIR variable must be set to a writable directory.
# If you are running Flatcar Container Linux, set DOWNLOAD_DIR="/opt/bin".
CNI_PLUGINS_VERSION="v1.1.1"
DOWNLOAD_DIR="/usr/local/bin"
ARCH="amd64"
DEST="/opt/cni/bin"

sudo mkdir -p "$DEST"
sudo mkdir -p "$DOWNLOAD_DIR"

curl -L "https://github.com/containernetworking/plugins/releases/download/${CNI_PLUGINS_VERSION}/cni-plugins-linux-${ARCH}-${CNI_PLUGINS_VERSION}.tgz" | sudo tar -C "$DEST" -xz

# Install crictl (required for kubeadm / Kubelet Container Runtime Interface (CRI))
CRICTL_VERSION="v1.25.0"
ARCH="amd64"
curl -L "https://github.com/kubernetes-sigs/cri-tools/releases/download/${CRICTL_VERSION}/crictl-${CRICTL_VERSION}-linux-${ARCH}.tar.gz" | sudo tar -C $DOWNLOAD_DIR -xz

# Install kubeadm, kubelet, kubectl and add a kubelet systemd service:

RELEASE="$(curl -sSL https://dl.k8s.io/release/stable.txt)"
ARCH="amd64"
RELEASE_VERSION="v0.4.0"
cd $DOWNLOAD_DIR
sudo curl -L --remote-name-all https://dl.k8s.io/release/${RELEASE}/bin/linux/${ARCH}/{kubeadm,kubelet}
sudo chmod +x {kubeadm,kubelet}
curl -sSL "https://raw.githubusercontent.com/kubernetes/release/${RELEASE_VERSION}/cmd/kubepkg/templates/latest/deb/kubelet/lib/systemd/system/kubelet.service" | sed "s:/usr/bin:${DOWNLOAD_DIR}:g" | sudo tee /etc/systemd/system/kubelet.service
sudo mkdir -p /etc/systemd/system/kubelet.service.d
curl -sSL "https://raw.githubusercontent.com/kubernetes/release/${RELEASE_VERSION}/cmd/kubepkg/templates/latest/deb/kubeadm/10-kubeadm.conf" | sed "s:/usr/bin:${DOWNLOAD_DIR}:g" | sudo tee /etc/systemd/system/kubelet.service.d/10-kubeadm.conf

#Install kubectl by following the instructions on Install Tools page.
#Enable and start kubelet:
systemctl enable --now kubelet
# Note: The Flatcar Container Linux distribution mounts the /usr directory as a read-only filesystem.
# Before bootstrapping your cluster, you need to take additional steps to configure a writable directory.
# See the Kubeadm Troubleshooting guide to learn how to set up a writable directory.
# Note: In releases older than Debian 12 and Ubuntu 22.04, /etc/apt/keyrings does not exist by default.
# You can create this directory if you need to, making it world-readable but writeable only by admins.

# The kubelet is now restarting every few seconds,
# as it waits in a crashloop for kubeadm to tell it what to do.
# Configuring a cgroup driver
# Both the container runtime and the kubelet have a property called "cgroup driver",
# which is important for the management of cgroups on Linux machines.
# Warning:
# Matching the container runtime and kubelet cgroup drivers is required or otherwise the kubelet process will fail.
# See Configuring a cgroup driver for more details.