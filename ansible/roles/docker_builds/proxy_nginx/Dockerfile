FROM nginx:alpine

COPY install.sh /
COPY add_crontab.sh /
RUN /add_crontab.sh

CMD ["/install.sh", "/usr/sbin/nginx", "-g", "daemon off;"]
