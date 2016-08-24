############################################################
# Dockerfile to build Python WSGI Application Containers
# Based on Ubuntu
############################################################

FROM phusion/baseimage:0.9.18

MAINTAINER Maintaner Name

RUN apt-get update

RUN apt-get install -y tar dovecot-imapd

EXPOSE 143

VOLUME /config

VOLUME /home

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/sbin/my_init"]

RUN mkdir /etc/service/useradd

ADD resources/useradd.sh /etc/service/useradd/run

RUN mkdir /etc/service/dovecot

ADD resources/dovecot.sh /etc/service/dovecot/run
