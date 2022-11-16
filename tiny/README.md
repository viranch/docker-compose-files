# docker-tiny
My Lenovo ThinkCentre Tiny setup defined with a bunch of docker services

### Using
- Install [Docker](https://docs.docker.com/installation/#installation) and [Docker Compose](https://docs.docker.com/compose/install/#install-compose)
- Clone the repository: `git clone git://github.com/viranch/docker-compose-files.git`
- Setup configurations as necessary
- Run the composition: `cd docker-compose-files/tiny && docker-compose up -d`

### What does it include?
- [Plex](https://www.plex.tv/) media server
- [PiHole](https://pi-hole.net/) DNS ad-blocker
  - Backed by [Stubby](https://github.com/getdnsapi/stubby) for encrypted DNS over TLS
- [Wireguard](https://www.wireguard.com/) client tunnel for selected containers and a server tunnel for accessing home network from anywhere
- \*arr: [Radarr](https://radarr.video/), [Sonarr](https://sonarr.tv/) and [Prowlarr](https://prowlarr.com/)
- [Downloads dashboard](https://github.com/viranch/docker-tv)
- [File browser](https://github.com/viranch/docker-dropbox)
- [Nginx Proxy](https://hub.docker.com/_/nginx) backed by [docker-gen](https://github.com/nginx-proxy/docker-gen)
