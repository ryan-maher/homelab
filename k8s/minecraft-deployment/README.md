## Self-hosted Minecraft Server

Created with [itzg/minecraft-server](https://hub.docker.com/r/itzg/minecraft-server) and [playit-agent](https://github.com/playit-cloud/playit-agent)

### Deployment Steps:

```
# I have an alias k='kubectl' in my .bashrc

k create namespace minecraft
k apply -f minecraft-pv.yaml -n minecraft
k apply -f minecraft-claim-deployment.yaml  -n minecraft
kubectl create secret generic playit-gg-secret --from-literal=SECRET_KEY=<your playit.gg secret key> -n minecraft
k apply -f minecraft-deployment.yaml -n minecraft
```

### Server console:
To access the deployed server console:
```
k exec -i -n minecraft minecraft-server-0 -c minecraft-server -- rcon-cli
```
