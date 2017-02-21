FROM bigdatatech/alpine_linux

MAINTAINER sandeep <bigdatatechcomputing@gmail.com>

COPY install_java_8.sh /tmp/install_java_8.sh
RUN chmod 775 install_java_8.sh 

RUN /tmp/install_oracle_java.sh && rm -rf /tmp/*

ENV JAVA_HOME /opt/jdk

ENV PATH ${PATH}:${JAVA_HOME}/bin

CMD ["java", "-version"]
