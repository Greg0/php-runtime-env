FROM php:fpm-alpine3.7
WORKDIR /var/www

RUN apk update \
    && apk add git \ 
    libpng-dev \
    su-exec \
    $PHPIZE_DEPS \
    && pecl install redis \
    && docker-php-ext-install zip mysqli pdo pdo_mysql \
    && docker-php-ext-enable zip redis

COPY --from=composer /usr/bin/composer /usr/bin/composer