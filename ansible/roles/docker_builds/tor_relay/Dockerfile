FROM alpine:latest

# Note: Tor is only in testing repo
RUN apk update && apk add \
    tor \
    && rm -rf /var/cache/apk/*

#    --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
# default port to used for incoming Tor connections
# can be changed by changing 'ORPort' in torrc
EXPOSE 35278 35288

# copy in our torrc files
#COPY torrc.bridge /etc/tor/torrc.bridge
#COPY torrc.middle /etc/tor/torrc.middle
#COPY torrc.exit /etc/tor/torrc.exit

# make sure files are owned by tor user
RUN mkdir /var/run/tor \
    && chown -R tor /etc/tor \
    && chown -R tor /var/run/tor

USER tor

ENTRYPOINT [ "tor" ]
