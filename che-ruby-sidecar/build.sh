#!/bin/bash

REGISTRY_URL=docker.io/liningpan
IMAGE_NAME=che-ruby-sidecar
FULL_TAG=2.6

docker build -t ${REGISTRY_URL}/${IMAGE_NAME}:${FULL_TAG} .

docker push ${REGISTRY_URL}/${IMAGE_NAME}:${FULL_TAG}

ALIAS_TAG=latest
docker tag ${REGISTRY_URL}/${IMAGE_NAME}:${FULL_TAG} ${REGISTRY_URL}/${IMAGE_NAME}:${ALIAS_TAG}
docker push ${REGISTRY_URL}/${IMAGE_NAME}:${ALIAS_TAG}
