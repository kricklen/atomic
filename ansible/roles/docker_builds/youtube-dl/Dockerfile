FROM python:alpine
RUN pip install --upgrade youtube-dl && \
    apk add ffmpeg
ENTRYPOINT [ "youtube-dl" ]