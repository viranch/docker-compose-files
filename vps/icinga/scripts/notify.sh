#!/bin/bash

curl https://api.pushover.net/1/messages.json --data-urlencode "message=$1" -d "token=$2" -d "user=$3"
