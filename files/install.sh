#!/bin/bash
mkdir /tmp/znc
cd /tmp/znc
/usr/bin/wget -q http://znc.in/releases/archive/znc-1.4.tar.gz

/bin/tar -zxf znc-*.tar.gz
cd znc-*

./configure --with-openssl && make -s && make -s install

