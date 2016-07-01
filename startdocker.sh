#!/bin/bash
echo 100000 >> /proc/sys/kernel/keys/root_maxkeys; echo 2500000 >> /proc/sys/kernel/keys/root_maxbytes
docker-compose build
for f in configs/*.ovpn; do docker-compose run -d --rm vpn $f; done
docker ps -a | grep 'Exited' | awk '{print $1}' | xargs --no-run-if-empty docker rm
