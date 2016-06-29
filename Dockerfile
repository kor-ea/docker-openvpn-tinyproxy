FROM alpine:latest
RUN apk --no-cache add \
	openvpn \
	tinyproxy
EXPOSE 80
WORKDIR /etc/openvpn
ADD run.sh /usr/local/bin/run.sh
ENTRYPOINT ["run.sh"]
