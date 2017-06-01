FROM garethjevans/jenkinsslave-maven:v1.4.6-alpine

USER root

RUN apk update && \
    apk add bzr tree git go build-base && \
    rm -rf /var/cache/apk/*
