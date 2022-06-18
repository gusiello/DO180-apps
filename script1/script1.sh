#!/bin/bash

echo "Script Start"

echo "Deploy container"

podman run -d --name apachedocker -p 127.0.0.1:8080:80 docker.io/library/httpd:2-alpine3.15

sleep 10

echo "Latest logs"

podman logs apachedocker | tail -n 5

sleep 10

echo "Stop container"

podman stop apachedocker

sleep 3

echo "Delete container"

podman rm apachedocker

sleep 3

echo "Script End"
