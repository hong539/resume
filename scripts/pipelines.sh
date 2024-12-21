#!/bin/bash

# uncomment for debug
# set -x

BASE_DIR=$(pwd)/scripts

# generate *.pdf from *.tex
bash $BASE_DIR/make_pdf.sh
# generate *.html from *.pdf
# build docker image with *.html
echo "2" | bash "$BASE_DIR/build.sh"
# start docker image with *.html
bash $BASE_DIR/start.sh