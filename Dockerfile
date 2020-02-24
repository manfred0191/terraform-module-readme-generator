FROM golang:alpine

ENV GO111MODULE=on

# Get terraform, dep
RUN apk --no-cache add curl git gcc g++ make ca-certificates && \
	go get github.com/hashicorp/terraform-config-inspect

ARG GOPROJECTPATH=/go/src/app

WORKDIR $GOPROJECTPATH

ADD files/* $GOPROJECTPATH/

CMD ["./run.sh"]
