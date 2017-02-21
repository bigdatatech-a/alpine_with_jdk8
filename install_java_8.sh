#!/bin/sh


# Java Version
JAVA_VERSION_MAJOR=8
JAVA_VERSION_MINOR=65
JAVA_VERSION_BUILD=17
JAVA_PACKAGE=jdk


mkdir /opt


curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz | tar -xzf - -C /opt


ln -s /opt/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} /opt/jdk
