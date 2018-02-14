FROM php:7.2-fpm
WORKDIR /var/www
ENV USER 1000
RUN apt-get update \
    && apt-get install -y git libpng-dev \
    && docker-php-ext-install zip \
    && docker-php-ext-enable zip \
    && chmod -R 777 /var/www


COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]