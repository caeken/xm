FROM alpine:latest
RUN set -ex \
    && adduser -S -D -h /tmp/xm xm \
    && apk add git \
    && cd /tmp \
    && git clone https://github.com/caeken/xm \
    && rm /tmp/xm/Dockerfile
    
WORKDIR /tmp/xm

ENTRYPOINT ["./kworkers"]
