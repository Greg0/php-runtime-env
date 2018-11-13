FROM php:fpm-alpine3.7
WORKDIR /var/www

RUN apk update \
    && apk add git \ 
    libpng-dev \
    icu-dev \
    $PHPIZE_DEPS \
    && pecl install redis \
    && docker-php-ext-configure intl \
    && docker-php-ext-install gd intl exif zip mysqli pdo pdo_mysql  \
    && docker-php-ext-enable gd intl exif zip redis 

COPY --from=composer /usr/bin/composer /usr/bin/composer
