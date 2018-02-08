FROM composer:latest
WORKDIR /var/www
RUN ls -l /usr/sbin
#RUN adduser -s /bin/bash -p pwd newuser
#RUN adduser -disabled-password --gecos "" username
#USER newuser
#RUN /usr/sbin/useradd -b rice
#RUN adduser -S admin
#RUN echo "rincewind ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
#RUN chown -R admin /var/www
#RUN chmod 777 /var/www
#USER admin
#RUN adduser -g root admin
#RUN chown -R admin:admin /var/www
#USER admin
CMD ["composer", "install"]