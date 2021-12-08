FROM php:5.6-fpm-alpine
WORKDIR /var/www
RUN apk update \
    && apk add git \ 
    libpng-dev \
    icu-dev \
    curl \
    vim \
    nano \
    $PHPIZE_DEPS \
    openssh-client \
    libzip-dev \
    && pecl install redis-2.2.8 \
    && docker-php-ext-install bcmath \
    && docker-php-ext-configure intl \
    && docker-php-ext-configure zip --with-libzip=/usr/include \
    && docker-php-ext-configure gd \
    && docker-php-ext-install gd intl exif zip mysqli pdo pdo_mysql  \
    && docker-php-ext-enable gd intl exif zip redis

# MailHog
RUN wget https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64
RUN chmod +x mhsendmail_linux_amd64
RUN mv mhsendmail_linux_amd64 /usr/bin/mhsendmail

COPY --from=composer /usr/bin/composer /usr/bin/composer

# Entrypoint overwrite
COPY docker-extend-entrypoint /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-extend-entrypoint

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

ENTRYPOINT ["docker-extend-entrypoint"]
CMD ["php-fpm"]
