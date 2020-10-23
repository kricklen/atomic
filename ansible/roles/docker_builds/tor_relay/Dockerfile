FROM centos:latest

RUN yum install -y epel-release \
    && yum install -y tor

#RUN useradd -r -u 1055 -g 100 tor \
RUN useradd -r -u 19001 -g 100 tord \
    && chown -R tord /var/run/tor \
    && chown -R tord /etc/tor \
    && chown -R tord /var/lib/tor

USER tord

ENTRYPOINT [ "tor" ]
