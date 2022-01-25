FROM php:8.1-apache

COPY apache2/mysite.conf /etc/apache2/sites-available

RUN a2enmod rewrite
RUN a2dissite 000-default
RUN a2ensite mysite.conf

WORKDIR /var/www/html

COPY symfony/ .

EXPOSE 80