# docker-tiny
My Lenovo ThinkCentre Tiny setup defined with a bunch of docker services

### Using
- Install [Docker](https://docs.docker.com/installation/#installation) and [Docker Compose](https://docs.docker.com/compose/install/#install-compose)
- Clone the repository: `git clone git://github.com/viranch/docker-compose-files.git`
- Run the composition: `cd docker-compose-files/tiny && docker-compose up -d`

### What does it include?
- [TV automation](https://github.com/viranch/docker-tv) deployment
- [Plex](https://www.plex.tv/) media server
- [PiHole](https://pi-hole.net/) DNS ad-blocker
- [Stubby](https://github.com/getdnsapi/stubby) for encrypted DNS over TLS
- [Wireguard](https://www.wireguard.com/) VPN tunnel
