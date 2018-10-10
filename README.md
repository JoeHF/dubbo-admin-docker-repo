# dubbo-admin-docker-repo
## Build docker image from docker file
### Prerequirement
Download jdk-8u181-linux-x64.tar.gz into this repo

### Process
1. `cd dubbo-admin-docker-repo`
2. `docker build -t my-dubbo-admin ./`
3. `docker run -p 8082:8080 -p 2181:2181 my-dubbo-admin`

## pull docker image from docker hub
1. `docker pull joehou/demo`
2. `docker run -p 8082:8080 -p 2181:2181 joehou/demo`

Operations above would start dubbo admin backend and present service admin page using port 8082. Zookeeper will also start and listen on port 2081 and it will be used as service registration.
