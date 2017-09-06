FROM golang:1.9

RUN go get github.com/Masterminds/glide
RUN go get -u github.com/golang/dep/cmd/dep
RUN go get github.com/onsi/ginkgo/ginkgo
