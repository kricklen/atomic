FROM nginx:alpine
RUN apk --no-cache add shadow \
    && usermod -u 1052 nginx \
    && groupmod -g 1052 nginx \
    && apk del shadow
RUN touch /var/run/nginx.pid \
    && chown nginx:nginx /var/run/nginx.pid \

