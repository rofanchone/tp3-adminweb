#!/bin/bash

echo IPADDR=$(hostname -I | awk '{print $2}') > .env
echo HOST_NAME=$(hostname) >> .env