FROM nextcloud:fpm-alpine

RUN apk --no-cache add shadow \
    && usermod -u 1052 www-data \
    && groupmod -g 1052 www-data

RUN touch /var/run/nginx.pid \
    && chown www-data:www-data /var/run/nginx.pid \
    && ln -s /dev/stdout /var/www/nc_docker.log \
    && chown -h www-data:www-data /var/www/nc_docker.log

RUN apk del shadow
