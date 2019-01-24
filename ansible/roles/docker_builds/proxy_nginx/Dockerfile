FROM nginx:alpine

COPY nginx_reload.sh /
COPY add_crontab.sh /
RUN /add_crontab.sh
