FROM alpine:latest

RUN apk -U add openssl

ENV VERSION 0.8.4
ENV DOWNLOAD_URL https://github.com/bugficks/docker-gen/releases/download/$VERSION/docker-gen-alpine-linux-amd64-$VERSION.tar.gz
ENV DOCKER_HOST unix:///tmp/docker.sock

RUN wget -qO- $DOWNLOAD_URL | tar xvz -C /usr/local/bin

ENTRYPOINT ["/usr/local/bin/docker-gen"]
