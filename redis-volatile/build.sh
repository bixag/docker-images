#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Usage: $0 <version>" >&2
  exit 1
fi
VERSION="$1"

docker build \
  -f Dockerfile \
  --build-arg BASE_IMAGE="redis:${VERSION}" \
  -t "bixag/redis-volatile:${VERSION}" .
