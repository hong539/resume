#!/bin/bash

docker run -ti --rm -v $(pwd):/pdf -w /pdf pdf2htmlex/pdf2htmlex:0.18.8.rc2-master-20200820-alpine-3.12.0-x86_64 --zoom 1.3 --embed cfijo --dest-dir output ./src/yh_resume.pdf

docker build . -t docker.io/focal1119/resume:prod
docker run -d --name resume -p 8001:80 docker.io/focal1119/resume:prod