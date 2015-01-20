Docker image for ZNC irc bouncer.

##Install

    docker pull bateau/znc

##Usage

Run:

    docker run --net="host" -v /path/to/znc/config:/usr/share/znc bateau/znc

##upstart script
to make znc start on boot copy znc_upstart.conf to /etc/init/

    cp znc_upstart.conf /etc/init/znc.conf
