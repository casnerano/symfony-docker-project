FROM composer:latest AS composer_builder
FROM php:8.1-fpm

RUN apt-get update && apt-get install -y --no-install-recommends \
    libzip-dev \
    libonig-dev \
    libxml2-dev \
    libmcrypt-dev


RUN docker-php-ext-install \
    bcmath \
    mysqli \
    sockets \
    opcache \
    zip

COPY --from=composer_builder /usr/bin/composer /usr/bin/composer

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

ADD ./conf.d/custom.ini $PHP_INI_DIR/conf.d/custom.ini

RUN usermod -u 1000 www-data

WORKDIR /var/www/symfony

EXPOSE 9000