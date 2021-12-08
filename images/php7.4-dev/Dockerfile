FROM greg0/php-runtime-env:php7.4

RUN mv "$PHP_INI_DIR/php.ini" "$PHP_INI_DIR/php.ini-production"
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
