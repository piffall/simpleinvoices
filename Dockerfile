FROM php:5.6-apache

RUN apt-get update && apt-get install -y \
    libpng-dev \
 && docker-php-ext-configure gd \
 && docker-php-ext-install gd \
 && docker-php-ext-configure pdo \
 && docker-php-ext-install pdo \
 && docker-php-ext-configure pdo_mysql \
 && docker-php-ext-install pdo_mysql \
 && docker-php-ext-configure mysql \
 && docker-php-ext-install mysql \
 && docker-php-ext-configure mysqli \
 && docker-php-ext-install mysqli \
 && a2enmod rewrite
