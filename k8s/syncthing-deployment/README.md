## Self-hosted Syncthing Deployment

Inspired by [Tim Bai's Syncthing on K8s](https://tim.bai.uno/home-k8s/syncthing/)

### Deployment Steps:

```
# I have an alias k='kubectl' in my .bashrc

k create namespace syncthing
k apply -f syncthing-pv.yaml -n syncthing
k apply -f syncthing-pv-claim.yaml  -n syncthing
k apply -f syncthing-service.yaml -n syncthing
k apply -f syncthing-deployment.yaml -n syncthing
```

### Web configuration page:
To access the deployed syncthing configuration page:
```
# Run this command to get the port number:
k get service -n syncthing

# Under the PORT(S) column your port number will be:
PORT(S)
32080:<your-port-number>

# Navigate to this URL in your browser:
<your-node-ip>:<your-port-number>
```
