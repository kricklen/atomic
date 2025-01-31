FROM nextcloud:fpm-alpine

# Required for entrypoint.sh to init nextcloud
ENV NEXTCLOUD_UPDATE=1

RUN apk --no-cache add shadow busybox-suid \
    && usermod -u 1052 www-data \
    && groupmod -g 1052 www-data \
    && chown -R www-data:www-data /var/www
RUN apk del shadow

COPY install.sh /

# Let install.sh run and start php-fpm afterwards
CMD [ "/install.sh", "php-fpm" ]
