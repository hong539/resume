#!/usr/bin/env bash
set -euxo pipefail

#stop current container
docker stop resume

#remove current container
docker rm resume

#run docker image
docker run -d --name resume -p 8001:80 docker.io/focal1119/resume:prod