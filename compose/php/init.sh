#!/usr/bin/env bash
set -o errexit

# Set permissions based on ENV variable (debian only)
if [ -x "usermod" ] ; then
    usermod -u ${PHP_USER_ID} www-data
fi

exec "$@"