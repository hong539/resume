#!/usr/bin/env bash
set -euxo pipefail

cd single-page-cv
docker build -t nextjs-docker .