#!/usr/bin/env bash

IMAGE_NAME="${IMAGE_NAME:-$(basename $(pwd))}"
IMAGE_TAG="development"

docker build -t "${IMAGE_NAME}:${IMAGE_TAG}" .
