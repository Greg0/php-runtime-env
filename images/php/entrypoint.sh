#!/bin/ash

chown -R $COMPOSE_UID /var/www
su-exec $COMPOSE_UID:COMPOSE_GID composer install
php-fpm