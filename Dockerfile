FROM garethjevans/jenkinsslave-alpine:v1.6

RUN apk update && \
    apk add bzr tree git go build-base && \
    rm -rf /var/cache/apk/*
