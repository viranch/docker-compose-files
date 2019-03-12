#!/bin/bash

# curl is not available in icinga docker image
# use check_http instead

/usr/lib/nagios/plugins/check_http -S --sni -H api.pushbullet.com -u /v2/pushes -k 'Content-Type: application/json' -k "Access-Token: $2" -P '{"title":"Icinga","body":"'"$1"'","type":"note"}'
