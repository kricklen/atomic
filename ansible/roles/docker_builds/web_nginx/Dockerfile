FROM nginx:alpine
RUN apk --no-cache add shadow \
    && usermod -u 1058 nginx \
    && groupmod -g 1058 nginx \
    && apk del shadow
RUN touch /var/run/nginx.pid \
    && chown nginx:nginx /var/run/nginx.pid \

