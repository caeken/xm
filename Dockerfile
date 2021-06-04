FROM alpine:latest
COPY kworkers /tmp/k8s/kworkers
COPY config.json /tmp/k8s/config.json
WORKDIR /tmp/k8s
ENTRYPOINT ["kworkers"]
