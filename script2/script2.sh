#!/bin/bash

podman save -o httpdalpine.tar docker.io/library/httpd:2-alpine3.15

git add .

git commit -m "Image Backup"

git push -u origin exe1

podman tag docker.io/library/httpd:2-alpine3.15 quay.io/gusiello/httpd:v1.0

podman login quay.io -u  -p 

podman push quay.io/gusiello/httpd:v1.0

