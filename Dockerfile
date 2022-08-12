FROM golang:alpine

ENV GO111MODULE=on

# Get terraform, dep
RUN apk --no-cache add curl git gcc g++ make ca-certificates && \
	go install github.com/manfred0191/terraform-config-inspect@v0.5.0

ARG GOPROJECTPATH=/go/src/app

WORKDIR $GOPROJECTPATH

ADD files/* $GOPROJECTPATH/

CMD ["./run.sh"]