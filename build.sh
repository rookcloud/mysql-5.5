#!/bin/bash
set -e
IMAGE=mysql-5.5
echo Building $IMAGE
exec docker build -t rook/$IMAGE ./build
