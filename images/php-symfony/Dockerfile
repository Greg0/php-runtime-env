FROM greg0-php

RUN apk update && apk upgrade
RUN apk add \
    nodejs \
    yarn


RUN mkdir /.cache /.config /.yarnrc \
    && chown -R $COMPOSE_UID:$COMPOSE_GID /.yarnrc \
    && chown -R $COMPOSE_UID:$COMPOSE_GID /.cache \
    && chown -R $COMPOSE_UID:$COMPOSE_GID /.config 


# Symfony additional packages
RUN yarn add @symfony/webpack-encore --dev
RUN yarn add sass-loader node-sass --dev
RUN yarn add webpack-notifier --dev
