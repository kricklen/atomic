FROM python:alpine
RUN apk add --no-cache ffmpeg && \
    pip install yt-dlp
WORKDIR /data
ENTRYPOINT [ "yt-dlp" ]
