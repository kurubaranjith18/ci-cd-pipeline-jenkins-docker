#!/bin/bash
docker pull yourdocker/devops-demo-app:latest
docker stop devapp || true
docker rm devapp || true
docker run -d --name devapp -p 80:80 yourdocker/devops-demo-app:latest
