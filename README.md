# dubbo-admin-docker-repo
Prerequirement
Download jdk-8u181-linux-x64.tar.gz into this repo

Build docker image from docker file
1. enter repos and type
2. `docker build -t my-dubbo-admin ./`

Run docker image
3. `docker run -p 8082:8080 -p 2181:2181 my-dubbo-admin`

Or pull docker image from docker hub
1. `docker pull joehou/demo`

run docker
2. `docker run -p 8082:8080 -p 2181:2181 joehou/demo`

