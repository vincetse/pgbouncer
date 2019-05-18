FROM golang:1.12-alpine AS builder

RUN \
  apk add -U \
    gcc \
    git \
    musl-dev \
  && \
  go get \
    bitbucket.org/liamstask/goose/cmd/goose

FROM golang:1.12-alpine
COPY --from=builder /go/bin/goose /go/bin/goose
CMD goose
