FROM ghcr.io/linuxserver/baseimage-alpine:amd64-edge

LABEL maintainer "Nicolas Coutin <ilshidur@gmail.com>"

ARG DEBIAN_FRONTEND="noninteractive"
ENV XDG_DATA_HOME="/config" \
XDG_CONFIG_HOME="/config"
ENV TZ Europe/Berlin

RUN apk --no-cache add bash tzdata tor

# EXPOSE 9001 9030

CMD ["tor", "-f", "/config/torrc"]
