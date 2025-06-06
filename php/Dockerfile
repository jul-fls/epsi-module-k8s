FROM php:8.0-apache

RUN apt-get update && apt-get upgrade -y \
    && docker-php-ext-install mysqli pdo pdo_mysql

COPY ./www /var/www/html

RUN chmod -R 777 /var/www/html/uploads

EXPOSE 80