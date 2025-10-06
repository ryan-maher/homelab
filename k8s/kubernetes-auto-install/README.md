## Automatic Install Scripts
This directory contains scripts to install and configure the required container runtime and Kubernetes. 
- `container-runtime-install.sh`
  - Installs Docker and configures containerd
- `kubernetes-install.sh`
  - Disables SELinux, firewalld, and installs Kubernetes
- `auto-install-all.sh`
  - Runs both of the above scripts

    
These scripts were made to run on AlmaLinux 9.6, but they should work with most RHEL distributions. 
