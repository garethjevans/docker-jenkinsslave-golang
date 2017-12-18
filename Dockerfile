FROM garethjevans/jenkinsslave-alpine:v2.0-pre2

RUN apk update && \
    apk add bzr tree git go build-base && \
    rm -rf /var/cache/apk/*
