FROM php:apache
MAINTAINER John Eriksson <@ranbogmord>

RUN a2enmod ssl rewrite
RUN apt-get update && apt-get install -y mysql-client libssl-dev libcurl3-dev libxml2-dev libzzip-dev libicu-dev libmcrypt-dev
RUN docker-php-ext-install pdo pdo_mysql mysqli intl curl mbstring mcrypt soap xml intl
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

RUN echo -e "xdebug.remote_enable=1\nxdebug.remote_connect_back=1\nxdebug.idekey=PHPSTORM\n" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

COPY 000-default.conf /etc/apache2/sites-enabled/000-default.conf


