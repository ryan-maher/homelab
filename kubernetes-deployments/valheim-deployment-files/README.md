## Self-hosted Valheim Server

Created with [Addyvan/valheim-k8s](https://github.com/Addyvan/valheim-k8s) and [playit-agent](https://github.com/playit-cloud/playit-agent)

### Deployment Steps:

```
k create namespace valheim
k apply -f local-pv-02.yaml -n valheim
k apply -f valheim-claim-deployment.yaml  -n valheim
kubectl create secret generic playit-gg-secret --from-literal=SECRET_KEY=<your playit.gg secret key goes here> -n valheim
k apply -f minecraft-deployment.yaml -n valheim
```
