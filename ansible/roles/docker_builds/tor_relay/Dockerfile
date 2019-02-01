FROM centos:latest

RUN yum install -y epel-release \
    && yum install -y tor

RUN useradd -r -u 1055 -g 100 tor \
    && chown -R tor /var/run/tor \
    && chown -R tor /etc/tor \
    && chown -R tor /var/lib/tor

USER tor

ENTRYPOINT [ "tor" ]
