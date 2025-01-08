#!/usr/bin/env bash
set -euxo pipefail

BASE_DIR=$(pwd)

echo $BASE_DIR

# generate *.pdf from *.tex
bash $BASE_DIR/scripts/make_pdf.sh
# generate *.html from *.pdf
# build docker image with *.html
echo "2" | bash "$BASE_DIR/scripts/build.sh"
# start docker image with *.html
bash $BASE_DIR/scripts/start.sh