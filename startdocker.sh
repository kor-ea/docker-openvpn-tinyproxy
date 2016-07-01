#!/bin/bash
docker-compose build
for f in configs/*.ovpn; do docker-compose run -d vpn $f; done
