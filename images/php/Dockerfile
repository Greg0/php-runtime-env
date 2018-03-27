FROM php:fpm-alpine3.7
WORKDIR /var/www
ENV COMPOSE_UID 1000
ENV COMPOSE_GID 1000
RUN apk update \
    && apk add git \ 
    libpng-dev \
    su-exec \
    && docker-php-ext-install zip mysqli pdo pdo_mysql \
    && docker-php-ext-enable zip \
    && chown -R $COMPOSE_UID:$COMPOSE_GID /var/www \
    && chmod -R 777 /var/www


COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN mkdir /.composer
RUN chown -R $COMPOSE_UID:$COMPOSE_GID /.composer