############################################################
# Dockerfile to build ZNC IRC bouncer container images
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu:14.04

# File Author / Maintainer
MAINTAINER bateau

# Update the repository sources list
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install wget git gettext openssl build-essential automake libssl-dev perl -yq
################## BEGIN INSTALLATION ######################

# Add files
ADD files/start.sh /tmp/

RUN chmod +x /tmp/start.sh

RUN mkdir /usr/share/znc

##################### INSTALLATION END #####################

# Set default container command
CMD ["/bin/sh", "/tmp/start.sh"]
