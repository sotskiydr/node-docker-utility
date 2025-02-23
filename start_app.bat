@echo off
docker build -t my-node-app .
docker run --rm -v %cd%:/app my-node-app
pause
