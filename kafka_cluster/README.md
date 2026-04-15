# 1. Setup Colima and Docker
## Reference
https://www.youtube.com/watch?v=SqVfCyfCJqw

## Init
```
brew install colima
brew install docker
brew install docker-compose
brew install minikube
brew install kubectl
brew install --cask headlamp
```
## Configure in Intellij IDE
Services -> Docker -> Right Click Edit -> Select `Colima` instead of `Docker`

# 2. Setup Kafka

## Update `CLUSTER_ID`
update cluster id in docker-compose.yml


## 3. Start Kafka
[start](./_scripts/start)
[stop](./_scripts/stop)

## Errors 
### container name "/zookeeper" is already in use by container
`docker rm -f zookeeper`
`docker rm -f kafka`

