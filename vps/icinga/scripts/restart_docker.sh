#!/bin/bash

[[ "$1" == "OK" ]] && exit 0

command -v docker || exit 0

docker restart $2
