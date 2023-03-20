FROM    alpine:3.17
#RUN     apk add --no-cache wireguard-tools tini
RUN     apk add --no-cache wireguard-tools
COPY    wireguard.sh /wireguard.sh
#ENTRYPOINT ["tini","/wireguard.sh"]
ENTRYPOINT ["/wireguard.sh"]
CMD     ["wg0"]
