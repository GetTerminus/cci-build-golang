FROM golang:1.10

RUN apt-get update && apt-get install -y \
  zip apt-transport-https ca-certificates

RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN echo "deb https://apt.dockerproject.org/repo debian-stretch main" >> /etc/apt/sources.list.d/docker.list

RUN apt-get update && apt-get install -y docker-engine

RUN go get -u github.com/golang/dep/cmd/dep
RUN go get github.com/onsi/ginkgo/ginkgo
RUN go get github.com/GetTerminus/convox-off-cluster-builder/cmd/convox-build-off-cluster

ADD https://convox.com/install/linux.zip /tmp/convox.zip
RUN unzip /tmp/convox.zip -d /usr/local/bin
