############################################################
# Dockerfile to build ZNC IRC bouncer container images
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu:14.04

# File Author / Maintainer
MAINTAINER Mats Bergmann <bateau@sea-shell.org>

# Update the repository sources list
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y -qq && apt-get install wget git gettext openssl build-essential automake libssl-dev perl -yq

ADD files/install.sh /tmp/
ADD files/cleanup.sh /tmp/
ADD files/start.sh /usr/bin/
WORKDIR /tmp

RUN /tmp/install.sh && /tmp/cleanup.sh

# Add files
RUN mkdir /usr/share/znc

EXPOSE 30200/tcp

ENTRYPOINT ["/bin/sh"]

CMD ["/usr/bin/start.sh"]
