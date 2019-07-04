#!/bin/bash
go build -o myapp .
docker build -t {DOCKER_SERVER}/go-http-server/myapp:latest .
docker push {DOCKER_SERVER}/go-http-server/myapp:latest
#docker run -p 8080:8080 {DOCKER_SERVER}/go-http-server/myapp:latest