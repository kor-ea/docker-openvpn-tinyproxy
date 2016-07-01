#!/bin/bash
service docker stop; service docker start
docker ps -a | grep 'Exited' | awk '{print $1}' | xargs --no-run-if-empty docker rm
