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

# MailHog
RUN wget https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64
RUN chmod +x mhsendmail_linux_amd64
RUN mv mhsendmail_linux_amd64 /usr/bin/mhsendmail

COPY --from=composer /usr/bin/composer /usr/bin/composer
