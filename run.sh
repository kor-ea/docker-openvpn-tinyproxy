#!/bin/sh
echo "---starting tinyproxy"
tinyproxy -c /etc/openvpn/tinyproxy.conf 
echo "---starting openvpn with config $1"
openvpn --config $1 --connect-retry-max 1 --tls-exit --ping 5 --ping-exit 10 --connect-timeout 5
