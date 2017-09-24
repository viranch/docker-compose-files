# docker-vps
My VPS setup defined with a bunch of docker services

### Using
- Install [Docker](https://docs.docker.com/installation/#installation) and [Docker Compose](https://docs.docker.com/compose/install/#install-compose)
- Clone the repository: `git clone git://github.com/viranch/docker-compose-files.git`
- Run the composition: `cd docker-compose-files/vps && docker-compose up -d`

### What does it include?
- [TV automation](https://github.com/viranch/docker-tv) deployment
- [Icinga](https://www.icinga.org/) deployment to monitor free disk space
- [Quassel](http://www.quassel-irc.org/) core. Connect to it using Quassel client on your desktop
- [PiHole](https://pi-hole.net/): DNS ad-blocker
- [OpenVPN](https://openvpn.net/) server for personal use
- A bunch of personal web pages

