#!/bin/bash

_build_docker_image() {
  local base_path="$1"
  local version="$2"
  local image_name="$3"

  cd "$base_path/$version/"
  docker build --no-cache --build-arg IMAGE_VERSION="$version" --build-arg IMAGE_CREATE_DATE="$(date -u +"%Y-%m-%dT%H:%M:%SZ")" --build-arg IMAGE_SOURCE_REVISION="$(git rev-parse HEAD)" -f Dockerfile -t "$image_name:$version" .
  cd -
}

# app

_build_docker_image "voting/app" "1.0" "mcr.microsoft.com/aks/samples/voting/app"
_build_docker_image "voting/app" "2.0" "mcr.microsoft.com/aks/samples/voting/app"

# analytics

_build_docker_image "voting/analytics" "1.0" "mcr.microsoft.com/aks/samples/voting/analytics"
_build_docker_image "voting/analytics" "1.1" "mcr.microsoft.com/aks/samples/voting/analytics"
_build_docker_image "voting/analytics" "2.0" "mcr.microsoft.com/aks/samples/voting/analytics"

# storage

_build_docker_image "voting/storage" "2.0" "mcr.microsoft.com/aks/samples/voting/storage"
