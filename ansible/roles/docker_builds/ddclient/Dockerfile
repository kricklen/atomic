FROM centos:latest

RUN yum install -y epel-release \
    && yum update -y \
    && yum install -y ddclient

COPY entrypoint.sh /

RUN usermod -u 1050 ddclient \
    && groupmod -g 1050 ddclient \
    && mkdir -p /etc/ddclient \
    && chown -R ddclient /etc/ddclient \
    && chown -R ddclient /var/run/ddclient \
    && chown ddclient /entrypoint.sh

USER ddclient

ENTRYPOINT ddclient -foreground -syslog -pid /var/run/ddclient/ddclient.pid
# [ "/entrypoint.sh" ]
