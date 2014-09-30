############################################################
# Dockerfile to build OpenTTD container images
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu:14.04

# File Author / Maintainer
MAINTAINER bateau

# Update the repository sources list
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install wget git gettext build-essential automake libssl-dev perl -yq
################## BEGIN INSTALLATION ######################

# Add files
ADD files/start.sh /tmp/

RUN chmod +x /tmp/start.sh

#create user
#RUN useradd -U -c znc -d /home/znc znc
RUN mkdir /usr/share/znc
#RUN chown znc:znc /home/znc -R

##################### INSTALLATION END #####################

# Set default container command
CMD ["/bin/sh", "/tmp/start.sh"]
