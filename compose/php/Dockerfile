FROM php:7.2-fpm
RUN apt-get update \
    && apt-get install -y git libpng-dev \
    && docker-php-ext-install zip \
    && docker-php-ext-enable zip \
    && chown :100 /var/www \
    && chmod g+rws /var/www


#RUN chmod a+rwx -R /var/www
COPY --from=composer /usr/bin/composer /usr/bin/composer
#COPY init.sh /var/www/init.sh
#CMD ["tail", "-f", "/dev/null"]
COPY init.sh/ /usr/local/bin
EXPOSE 9000
#USER www-data
#ENTRYPOINT ["./init.sh"]
WORKDIR /var/www
ENTRYPOINT ["/usr/local/bin/init.sh"]
