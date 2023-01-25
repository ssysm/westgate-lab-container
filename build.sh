#!/bin/sh
docker build -t westgate-container .
docker create --name extract westgate-container
docker cp extract:/root/.ssh/id_rsa.pub ./container_rsa.pub
docker rm extract