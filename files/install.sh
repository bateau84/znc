#!/bin/bash
mkdir /tmp/znc
cd /tmp/znc
/usr/bin/wget -q http://znc.in/releases/znc-latest.tar.gz

/bin/tar -zxf znc-latest.tar.gz
cd znc-*

./configure --with-openssl && make -s && make -s install

