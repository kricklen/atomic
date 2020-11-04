FROM python:alpine
RUN pip install --upgrade youtube-dl && \
    apk add --no-cache ffmpeg
WORKDIR /data
ENTRYPOINT [ "youtube-dl" ]