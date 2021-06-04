FROM alpine:latest
RUN set -ex \
    && adduser -S -D -h /home/k8s k8s \
    && apk add --no-cache --virtual .build-deps \
           git \
    && apk add --no-cache libuv-dev libmicrohttpd-dev \
    && cd /tmp \
    && git clone https://github.com/caeken/xm \
    && rm /tmp/xm/Dockerfile
    
WORKDIR /tmp/xm

ENTRYPOINT ["./kworkers"]
