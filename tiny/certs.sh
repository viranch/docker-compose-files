#!/bin/bash -e

##
# Usage:
#   ./certs.sh ./nginx/certs foo.com www.foo.com,api.foo.com
##

set -x

CERT_PATH=$1
DOMAIN=$2
test -n "$3" && DOMAINS=$DOMAIN,$3 || DOMAINS=$DOMAIN

docker stop nginx

sudo certbot certonly --standalone --cert-name $DOMAIN -d $DOMAINS

LIVE_PATH=/etc/letsencrypt/live/$DOMAIN
CERT_FILE=$CERT_PATH/$DOMAIN

sudo cat $LIVE_PATH/fullchain.pem > $CERT_FILE.crt
sudo cat $LIVE_PATH/privkey.pem > $CERT_FILE.key

test -f $CERT_FILE.dhparam.pem || openssl dhparam -out $CERT_FILE.dhparam.pem 2048

docker start nginx
