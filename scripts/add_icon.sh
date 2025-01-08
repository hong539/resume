#!/usr/bin/env bash
set -euxo pipefail

# Define the content to be added
content='<link rel="icon" type="image/x-icon" href="./favicon.ico">\n<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>'

# Add the content to the file
sed -i "/<head>/i $content" index.html