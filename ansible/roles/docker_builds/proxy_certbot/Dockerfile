FROM certbot/certbot

COPY certbot_renew.sh /
COPY add_crontab.sh /
RUN /add_crontab.sh

ENTRYPOINT []
CMD ["crond", "-f"]
