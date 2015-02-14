Docker image for ZNC irc bouncer.

##Install

    docker pull bateau/znc

##Usage

Run:

    docker run -p 30200:30200/tcp -v /path/to/znc/config:/usr/share/znc bateau/znc:1.6.0

##upstart script
to make znc start on boot copy znc_upstart.conf to /etc/init/

    cp znc_upstart.conf /etc/init/znc.conf

Its set to --net="host". Which probably is not a good idea... You might want to change that.
