#!/bin/bash

mkdir /tmp/znc
cd /tmp/znc
wget -q http://znc.in/releases/znc-latest.tar.gz

tar -zxf znc-latest.tar.gz
cd znc-*

./configure && make -s && make -s install

znc --datadir=/usr/share/znc -f -r
