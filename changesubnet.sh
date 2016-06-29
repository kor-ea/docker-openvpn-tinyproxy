#!/bin/bash
service docker stop
iptables -t nat -F POSTROUTING
ip link set dev docker0 down
#ip addr del 172.17.0.1/16 dev docker0
ip addr del 192.168.0.1/24 dev docker0
ip addr add 192.168.1.1/24 dev docker0
ip link set dev docker0 up
service docker start

