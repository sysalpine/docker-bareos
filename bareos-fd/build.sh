#!/bin/sh

BAREOS_VERSION=$(grep BAREOS_VERSION= Dockerfile | cut -d "=" -f2 | sed 's/[^0-9.]*//g')
RELEASE_VERSION=0
REGISTRY_URL=registry.gitlab.com/p7k/docker-bareos/bareos-fd

# Build Standard Bareos based Image
docker build . -f Dockerfile -t ${REGISTRY_URL}:${BAREOS_VERSION}.${RELEASE_VERSION}
docker push ${REGISTRY_URL}:${BAREOS_VERSION}.${RELEASE_VERSION}

# Build Bareos Image with mysql libs
docker build . -f Dockerfile-mariadb -t ${REGISTRY_URL}:${BAREOS_VERSION}.${RELEASE_VERSION}-mariadb
docker push ${REGISTRY_URL}:${BAREOS_VERSION}.${RELEASE_VERSION}-mariadb
