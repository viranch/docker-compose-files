#!/bin/bash -ue
set -x

DOMAIN=$1
shift

docker stop nginx

sudo letsencrypt certonly --standalone --cert-name $DOMAIN -d $DOMAIN $@

LIVE_PATH=/etc/letsencrypt/live/$DOMAIN
CERT_FILE=/opt/vps/ssl_certs/$DOMAIN

sudo cat $LIVE_PATH/fullchain.pem > $CERT_FILE.crt
sudo cat $LIVE_PATH/privkey.pem > $CERT_FILE.key

test -f $CERT_FILE.dhparam.pem || openssl dhparam -out $CERT_FILE.dhparam.pem 2048

docker start nginx
