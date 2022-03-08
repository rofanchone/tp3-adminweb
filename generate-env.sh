#!/bin/bash

echo IPADDR=$(hostname -I | awk '{print $2}') > .env
echo NAME_SERVER=$(hostname) >> .env
echo DOCKER_VERSION=$(docker --version) >> .env