FROM php:7.2-fpm-alpine
WORKDIR /var/www
ENV COMPOSE_UID 1000
ENV COMPOSE_GID 1000
RUN apk update \
    && apk add git libpng-dev \
    && apk add su-exec \
    && docker-php-ext-install zip \
    && docker-php-ext-enable zip \
    && chmod -R 777 /var/www


COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]