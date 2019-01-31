FROM alpine:latest

# Note: Tor is only in testing repo
RUN sed -i -e 's/v[[:digit:]]\.[[:digit:]]/edge/g' /etc/apk/repositories \
    && apk upgrade --update-cache --available \
    && apk add \
    tor shadow \
    && usermod -u 1055 tor \
    && rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

#    && apk --update --allow-untrusted --repository http://dl-3.alpinelinux.org/alpine/edge/test/ \
#    && apk --update --allow-untrusted --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ add \
#    obfs4proxy \
#    && groupmod -g 1055 tor \
#    && apk --update --allow-untrusted --repository http://dl-4.alpinelinux.org/alpine/edge/community/ add \
#    zlib musl libevent tor shadow \

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
RUN apk del shadow

USER tor

ENTRYPOINT [ "tor" ]
