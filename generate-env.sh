#!/bin/bash

echo IPADDR=$(hostname -I | awk '{print $2}') > .env
echo HOST_NAME=$(hostname) >> .env
echo DOCKER_VERSION=$(docker --version) >> .env