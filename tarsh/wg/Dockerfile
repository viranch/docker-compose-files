FROM ubuntu:18.04

RUN apt-get update -y; \
    apt-get install -y --no-install-recommends iptables iproute2 wireguard resolvconf; \
    rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

COPY run.sh /opt/run.sh

CMD ["/opt/run.sh"]
