FROM php:apache
MAINTAINER John Eriksson <@ranbogmord>

RUN a2enmod ssl rewrite
COPY 000-default.conf /etc/apache2/sites-enabled/000-default.conf


