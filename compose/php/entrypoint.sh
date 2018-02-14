#!/usr/bin/env bash

chown -R $USER /var/www
su $USER -c "composer install"
php-fpm