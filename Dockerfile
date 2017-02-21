FROM bigdatatech/alpine_linux

MAINTAINER sandeep <bigdatatechcomputing@gmail.com>

RUN apk update && apk add openjdk8

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk

ENV PATH ${PATH}:${JAVA_HOME}/bin

CMD ["/usr/bin/java", "-version"]



RUN apk add --update python python-dev py-pip build-base && pip install virtualenv && rm -rf /var/cache/apk/*

RUN python -V

RUN apk update && apk add autoconf && apk add make && apk add automake
