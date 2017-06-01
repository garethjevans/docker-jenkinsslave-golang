FROM garethjevans/jenkinsslave:v1.2.3-alpine

RUN apk update && \
    apk add bzr tree git go build-base zip && \
    rm -rf /var/cache/apk/*
