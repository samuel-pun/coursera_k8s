# Nodes
## List nodes
```bash
minikube node list
```
## Add node
```bash
minikube node add --worker
```

## Fixing node `NotReady` status
```bash
# 1. Make sure the directory exists on the worker
minikube ssh -n minikube-m02 "sudo mkdir -p /etc/cni/net.d"

# 2. Copy every CNI config file from the primary node to the worker
for f in $(minikube ssh -n minikube -- sudo ls /etc/cni/net.d/ 2>/dev/null); do
  echo "→ Copying $f ..."
  minikube ssh -n minikube "sudo cat /etc/cni/net.d/$f" | \
    minikube ssh -n minikube-m02 "sudo tee /etc/cni/net.d/$f > /dev/null"
done
```