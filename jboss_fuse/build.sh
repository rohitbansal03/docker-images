#!/usr/bin/env bash
DOCKER_IMAGE_NAME=jboss-fuse-full
DOCKER_IMAGE_VERSION=6.3.0

docker rmi --force=true ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION}
docker build --force-rm=true --rm -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION} .

echo =========================================================================
echo Docker image is ready.  Try it out by running:
echo     docker run --rm -p 8181:8181 -ti ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION}
echo =========================================================================
