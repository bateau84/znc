Docker image for ZNC irc bouncer.

##Install

    docker pull bateau/znc

##Usage

Run:

    docker run --net="host" -v /path/to/znc/config:/usr/share/znc bateau/znc

