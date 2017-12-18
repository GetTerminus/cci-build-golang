FROM golang:1.9

RUN apt-get update && apt-get install -y \
  zip

RUN go get -u github.com/golang/dep/cmd/dep
RUN go get github.com/onsi/ginkgo/ginkgo

ADD https://convox.com/install/linux.zip /tmp/convox.zip
RUN unzip /tmp/convox.zip -d /usr/local/bin
