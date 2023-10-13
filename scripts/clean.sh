#!/bin/bash

#clean none tag images
# docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
# docker rmi $(docker images | grep "^<none>" | awk '{print $3}')
docker images -f "dangling=true" -q | xargs docker rmi