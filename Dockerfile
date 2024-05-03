FROM alpine:edge

RUN apk --no-cache add tor

COPY entrypoint.sh /entrypoint.sh

VOLUME [ "/var/lib/tor" ]

USER tor

ENTRYPOINT ["/entrypoint.sh"]