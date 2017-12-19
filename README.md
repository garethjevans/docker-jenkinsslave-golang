# docker-jenkinsslave-golang

Jenkins Slave docker image, based off [garethjevans/jenkinsslave-alpine](https://hub.docker.com/r/garethjevans/jenkinsslave-alpine/), with [GoLang](https://golang.org/) installed

This is available on Docker hub as [garethjevans/jenkinsslave-gitbook](https://hub.docker.com/r/garethjevans/jenkinsslave-gitbook/)

## Usage

To create a basic Jenkins GoLang Slave instance use:

```
docker run \
    --detach \
    --env JENKINS_MASTER=<JENKINS_MASTER_ADDRESS> \
    --env JENKINS_USERNAME=<JENKINS_USERNAME> \
    --env JENKINS_PASSWORD=<JENKINS_PASSWORD> \
    --env JENKINS_EXECUTORS=1 \
    --env JENKINS_LABELS=golang \
    --env JENKINS_NAME=golang-slave \
    --env LANG=C.UTF-8 \
    --name jenkins_golang \
    --volume /etc/localtime:/etc/localtime:ro \
    garethjevans/jenkinsslave-golang:latest
```

Obviously, you'll need an instance of Jenkins Master as well, try [garethjevans/jenkins](https://hub.docker.com/r/garethjevans/jenkins/).
