#!/bin/bash

set -e

export ANCHORE_CLI_URL=http://localhost:8228/v1
export ANCHORE_CLI_USER=admin
export ANCHORE_CLI_PASS=foobar
export IMAGE_NAME=kowpun123/sample:latest

echo "For more details, please check at https://github.com/anchore/anchore-cli"

echo "0. Pull the image name $IMAGE_NAME..."
docker pull $IMAGE_NAME

echo "1. Add the selected image to anchore to analyze..."
anchore-cli image add $IMAGE_NAME

echo "2. Get the list of image in anchore..."
anchore-cli image list

echo "3. Get the status of selected image in anchore..."
anchore-cli image get $IMAGE_NAME

echo "4. Wait the status of the selected image changed in anchore to analyzed..."
anchore-cli image wait $IMAGE_NAME

echo "5. Get the vulnerability list of the selected image in anchore..."
anchore-cli image vuln $IMAGE_NAME os

echo "6. Get the package list inside the selected image in anchore..."
anchore-cli image content $IMAGE_NAME os

# anchore-cli subscription activate vuln_update $IMAGE_NAME
