FROM openjdk:8-jdk-alpine
RUN apk update && apk upgrade
RUN apk add bash

ADD lsc-2.16 /opt/lss
RUN chmod a+x /opt/lsc/*

WORKDIR /opt/lsc/bin/
ENV JAVA_OPTS="-DLSC.PLUGINS.PACKAGEPATH=org.lsc.plugins.connectors.james.generated"
ENV CONF_DIR=/opt/lsc/plugins/ldap-to-tmail


EXPOSE 389
