#!/bin/bash

curl https://api.pushbullet.com/v2/pushes -H 'Content-Type: application/json' -H "Access-Token: $2" -d @- << EOF
{
  "title": "Icinga",
  "body": "$1"
  "type": "note"
}
EOF
