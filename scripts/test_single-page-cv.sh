#!/usr/bin/env bash
set -euxo pipefail

# test on dev server
# npx --version
# cd single-page-cv
# rm -rf .next/
# npm run dev

# test on docker container
docker run -p 3000:3000 nextjs-docker