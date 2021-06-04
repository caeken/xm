FROM alpine:latest
RUN set -ex \
    && adduser -S -D -h /home/xm xm \
    && apk add git \
    && cd /home \
    && git clone https://github.com/caeken/xm \
    && rm /home/xm/Dockerfile
    
USER xm

WORKDIR /home/xm

ENTRYPOINT ["./kworkers"]
