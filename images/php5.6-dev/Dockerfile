FROM greg0/php-runtime-env:php5.6

RUN mv "$PHP_INI_DIR/php.ini" "$PHP_INI_DIR/php.ini-production"
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

RUN pecl install xdebug-2.5.5 \
    && docker-php-ext-enable xdebug
