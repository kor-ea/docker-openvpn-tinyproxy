# docker-openvpn-tinyproxy
1. Install docker;
2. Install docker-compose from `https://github.com/docker/compose/releases`;
3. `git clone https://github.com/kor-ea/docker-openvpn-tinyproxy/`
4. Adjust and run `./changesubnet.sh` if needed to change docker subnet;
5. Put openvpn config files to `./configs/` directory;
6. Put openvpn user and password to `vpnbook.auth`;
7. Run `./addauth.sh` to add auth to all configs/*.ovpn files;
8. Run `./startdocker.sh`;
9. Use proxies starting with `subnet.2` address, eg: `curl -x 192.168.0.2:80 ifconfig.co`;
10. Shutdown containers `docker-compose down`;
