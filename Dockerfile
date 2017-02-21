FROM bigdatatech/alpine_linux

MAINTAINER sandeep <bigdatatechcomputing@gmail.com>

COPY install_java_8.sh /tmp/install_java_8.sh
RUN chmod 775 /tmp/install_java_8.sh

RUN /tmp/install_java_8.sh && rm -rf /tmp/*

ENV JAVA_HOME /opt/jdk

ENV PATH ${PATH}:${JAVA_HOME}/bin

CMD ["java", "-version"]

RUN apk add --update python python-dev py-pip build-base && pip install virtualenv && rm -rf /var/cache/apk/*

RUN python -V

RUN apk update && apk add autoconf && apk add make && apk add automake
