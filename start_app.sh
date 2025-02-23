#!/bin/bash
docker build -t my-node-app .
docker run --rm -v $(pwd):/app my-node-app