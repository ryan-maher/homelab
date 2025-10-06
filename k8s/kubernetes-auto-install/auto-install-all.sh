#!/bin/bash

# This scripts sets up both the container runtime and Kubernetes. If you want to do either step individually, run the respective script. Otherwise, this script will run both

./container-runtime-install.sh  
./kubernetes-install.sh

echo -e "\nAll done!"
