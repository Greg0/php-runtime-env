FROM greg0/php-runtime-env:php7.2

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN mv "$PHP_INI_DIR/php.ini" "$PHP_INI_DIR/php.ini-production"
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
COPY xdebug.ini $PHP_INI_DIR/conf.d/docker-php-ext-xdebug-3.ini
