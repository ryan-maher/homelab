#!/bin/bash

# Set SELinux in permissive mode (effectively disabling it)
sudo setenforce 0
sudo sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config

sudo systemctl disable firewalld
sudo systemctl stop firewalld

# Add the Kubernetes yum repo
# This overwrites any existing configuration in /etc/yum.repos.d/kubernetes.repo
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://pkgs.k8s.io/core:/stable:/v1.32/rpm/
enabled=1
gpgcheck=1
gpgkey=https://pkgs.k8s.io/core:/stable:/v1.32/rpm/repodata/repomd.xml.key
exclude=kubelet kubeadm kubectl cri-tools kubernetes-cni
EOF

# Install kubelet, kubeadm and kubectl:
sudo yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes

# (Optional) Enable the kubelet service before running kubeadm:
sudo systemctl enable --now kubelet

echo "\nInstallation complete! Now you can either initialize your node as a control plane or join it to an existing cluster"
