FROM    alpine:3.17
RUN     apk add --no-cache wireguard-tools tini
COPY    wireguard.sh /wireguard.sh
ENTRYPOINT ["tini","/wireguard.sh"]
CMD     ["wg0"]
