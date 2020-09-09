#!/bin/bash
set -x

: ${NODE_VERSION?"NODE_VERSION has not been set."}

docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "pvtdancer/meteord:node-${NODE_VERSION}-base" ../base && \
  docker tag "pvtdancer/meteord:node-${NODE_VERSION}-base" pvtdancer/meteord:base
docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "pvtdancer/meteord:node-${NODE_VERSION}-onbuild" ../onbuild && \
  docker tag "pvtdancer/meteord:node-${NODE_VERSION}-onbuild" pvtdancer/meteord:onbuild
docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "pvtdancer/meteord:node-${NODE_VERSION}-devbuild" ../devbuild && \
  docker tag "pvtdancer/meteord:node-${NODE_VERSION}-devbuild" pvtdancer/meteord:devbuild
docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "pvtdancer/meteord:node-${NODE_VERSION}-binbuild" ../binbuild && \
  docker tag "pvtdancer/meteord:node-${NODE_VERSION}-binbuild" pvtdancer/meteord:binbuild
