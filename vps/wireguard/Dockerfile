FROM ubuntu:19.10

RUN apt update -y; \
    apt install -y --no-install-recommends iptables iproute2 wireguard resolvconf; \
    rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

COPY run.sh /opt/run.sh

CMD ["/opt/run.sh"]
