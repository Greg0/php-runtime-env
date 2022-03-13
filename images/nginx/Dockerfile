FROM nginx:stable-alpine

ENV NGINX_PORT=80
ENV NGINX_HOST=localhost
ENV NGINX_MAX_BODY_SIZE=128M
ENV NGINX_ROOT=/var/www/public

COPY ./nginx.conf /etc/nginx/templates/default.conf.template
