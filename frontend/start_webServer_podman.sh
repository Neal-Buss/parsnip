#!/bin/bash

# Copyright 2024, Battelle Energy Alliance, LLC All Rights Reserved

hostPort=5000
podmanPort=5000
# Routine Build
podman build -t flask-app .
# Build that forces everything to be new
#docker build --force-rm --rm --no-cache -t flask-app .
podman run -t -i -P --rm --entrypoint=/bin/bash -p $hostPort:$podmanPort -v $(pwd)/app:/opt/app:rw flask-app
