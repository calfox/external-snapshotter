#!/bin/bash -u

export GOPATH=$(cd ../../ && pwd)
TAG=${1:-v2.1.1}

make build

docker buildx build -f cmd/csi-snapshotter/Dockerfile -t calfox/external-snapshotter:${TAG} --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 --push .
