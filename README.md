# docker-openvpn-tinyproxy
1. Ensure that the host uses public DNS servers (8.8.8.8 in /etc/resolv.conf)
2. Install docker;
3. Install docker-compose from `https://github.com/docker/compose/releases`;
4. `git clone https://github.com/kor-ea/docker-openvpn-tinyproxy/`
5. Adjust and run `./changesubnet.sh` if needed to change docker subnet;
6. Put openvpn config files to `./configs/` directory;
7. Put openvpn user and password to `vpnbook.auth`;
8. Run `./addauth.sh` to add auth to all configs/*.ovpn files;
9. Run `./startdocker.sh`;
10. Use proxies starting with `subnet.2` address, eg: `curl -x 192.168.0.2:80 ifconfig.co`;
11. To view the list of running containers along with their IP addresses, run: `docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -q)`
12. To get inside the container: `docker exec -t -i *container-name* /bin/sh`
13. To shutdown all containers: `./stopdocker.sh`;
14. To shutdown containers that's not working currently: `./removestopped.sh`
