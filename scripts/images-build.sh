#!/usr/bin/env bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

docker build -t greg0-nginx $SCRIPTPATH/../images/nginx --force-rm
docker build -t greg0-php $SCRIPTPATH/../images/php --force-rm
docker build -t greg0-php-dev $SCRIPTPATH/../images/php-dev --force-rm