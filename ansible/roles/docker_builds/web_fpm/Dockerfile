FROM php:fpm-alpine

RUN apk --no-cache add shadow \
    && usermod -u 1058 www-data \
    && groupmod -g 1058 www-data \
    && chown -R www-data:www-data /var/www
RUN apk del shadow
