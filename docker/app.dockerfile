FROM php:7.3.3-fpm

RUN apt-get update && \
    apt-get install -y --no-install-recommends git zip libzip-dev unzip

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install pdo_mysql zip
    
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
	
COPY xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN composer global require "laravel/installer"

ENTRYPOINT ["/var/www/entrypoint.sh"]
EXPOSE 9000