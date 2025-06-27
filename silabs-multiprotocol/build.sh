#!/bin/bash

BUILDCONTAINER_DATA_PATH="/data"
PATHTOBUILD="$BUILDCONTAINER_DATA_PATH"
#ARCH=all
ARCH=aarch64


PROJECTDIR=$(pwd)


echo "project directory is $PROJECTDIR"
echo "build container data path is $BUILDCONTAINER_DATA_PATH"
echo "build container target build path is $PATHTOBUILD"
CMD="docker run --rm -ti --name hassio-builder --privileged -v $PROJECTDIR:$BUILDCONTAINER_DATA_PATH -v /var/run/docker.sock:/var/run/docker.sock:ro homeassistant/amd64-builder:dev --target $PATHTOBUILD --$ARCH --test --docker-hub local"
echo "$CMD"
$CMD