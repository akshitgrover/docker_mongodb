FROM alpine:3.6

MAINTAINER Akshit Grover

RUN apk update \

  && apk add mongodb \

    && mkdir -p /data/db

VOLUME /data/db

EXPOSE 27017

WORKDIR /usr/bin

CMD ["mongod"]
