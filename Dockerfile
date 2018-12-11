# Use golang:alpine to optimize the image size.
# See https://hub.docker.com/_/golang/ for more information
# about the difference between golang and golang:alpine.
FROM golang:alpine

ENV GOPATH /go

ADD . /go/src/github.com/dewitt/knative-build

RUN CGO_ENABLED=0 go build github.com/dewitt/knative-build

ENTRYPOINT ["knative-build"]
