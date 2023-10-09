
Kubernetes in Docker
=====

kind is a tool for running local Kubernetes clusters using Docker container “nodes”.

kind was primarily designed for testing Kubernetes itself, 
but may be used for local development or CI.


kind consists of:

* Go packages implementing cluster creation, image build, etc.
* A command line interface (kind) built on these packages.
* Docker image(s) written to run systemd, Kubernetes, etc.
* kubetest integration also built on these packages (WIP)

kind bootstraps each “node” with kubeadm. 
For more details see the design documentation.