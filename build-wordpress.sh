#!/bin/bash

echo "${WP_CONFIG}" > ./wp-config.php
cat ./wp-config.php
git log --pretty=format:'%h %an(%ae) - %B' --abbrev-commit --date=short -1 > ./version.txt
tar cf ./docker.tar ./ --exclude=docker.tar
echo "*** Build a image"
docker build -t "${IMAGE}:${IMAGE_TAG}" . 
echo "*** Push a image to registry"
docker push "${IMAGE}:${IMAGE_TAG}"
docker rmi "${IMAGE}:${IMAGE_TAG}"
