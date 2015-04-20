# docker-vps
My VPS setup defined with a bunch of docker services

### Using
- Install [Docker](https://docs.docker.com/installation/#installation) and [Docker Compose](https://docs.docker.com/compose/install/#install-compose)
- Clone the repository: `git clone git://github.com/viranch/docker-vps.git`
- Run the compose: `cd docker-vps && docker-compose up -d`

### What does it include?
- [TV automation](https://github.com/viranch/docker-tv) deployment (without the DLNA streamer, of course).
- [Icinga](https://www.icinga.org/) deployment to monitor free disk space, head over to `http://server-ip:8000/icinga`.
- [Quassel](http://www.quassel-irc.org/) core running on port `4242`. Connect to it using Quassel client on your desktop or [Irssi](http://www.irssi.org/) using the [Quassel Irssi](https://github.com/phhusson/quassel-irssi) plugin.
