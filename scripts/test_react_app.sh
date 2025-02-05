#!/usr/bin/env bash
set -euxo pipefail

npx --version
cd single-page-cv
rm -rf .next/
npm run dev