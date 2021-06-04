FROM alpine:latest
RUN set -ex \
    && apk add git \
    && cd /home \
    && git clone https://github.com/caeken/xm \
    && rm /home/xm/Dockerfile

WORKDIR /home/xm

ENTRYPOINT ["./kworkers"]
