FROM php:5.6-apache
MAINTAINER John Eriksson <@ranbogmord>

RUN a2enmod ssl rewrite
COPY 000-default.conf /etc/apache2/sites-enabled/000-default.conf


