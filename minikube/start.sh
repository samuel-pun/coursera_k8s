#colima delete ## delete previous settings
colima start --vm-type=vz --vz-rosetta --mount-type=virtiofs --cpu 4 --memory 8
minikube start --driver=docker


### Option 1, URL
# minikube service headlamp -n headlamp --url

### Option 2, port forwarding
#minikube service headlamp -n headlamp
# kubectl port-forward -n headlamp svc/headlamp 8080:80

### Headlamp authentication
# https://headlamp.dev/docs/latest/installation/#create-a-service-account-token
