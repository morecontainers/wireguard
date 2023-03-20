# syntax=docker/dockerfile:1.4
FROM    alpine:3.17
RUN     --mount=type=bind,target=/context <<HERE
	apk add --no-cache wireguard-tools
	cp /context/wireguard.sh /
HERE
ENTRYPOINT ["/wireguard.sh"]
CMD     ["wg0"]
