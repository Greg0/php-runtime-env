#!/usr/bin/env bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
PROJECTNAME=$(basename $(dirname $SCRIPTPATH))
DEBUG=0

while getopts :d option
do
case "${option}"
in
d) DEBUG=1;
esac
done

if [[ $DEBUG = 1 ]]; then
docker-compose \
-p $PROJECTNAME \
-f $SCRIPTPATH/../compose/docker-compose.yml \
-f $SCRIPTPATH/../compose/docker-compose-xdebug.yml \
up
else
docker-compose \
-p $PROJECTNAME \
-f $SCRIPTPATH/../compose/docker-compose.yml \
up
fi