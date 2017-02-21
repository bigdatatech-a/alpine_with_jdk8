FROM bigdatatech/alpine_linux

MAINTAINER sandeep <bigdatatechcomputing@gmail.com>

RUN apk --no-cache add openjdk8-jre

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk

ENV PATH ${PATH}:${JAVA_HOME}/bin

CMD ["/usr/bin/java", "-version"]
