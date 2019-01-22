FROM nextcloud:fpm-alpine
RUN apk --no-cache add shadow \
    && usermod -u 1052 www-data \
    && groupmod -g 1052 www-data \
    && apk del shadow
RUN touch /var/run/nginx.pid \
    && chown www-data:www-data /var/run/nginx.pid \

