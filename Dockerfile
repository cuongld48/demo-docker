FROM php:8.2-apache-bullseye

RUN apt-get update && \
    apt-get install -y libzip-dev

RUN docker-php-ext-install pdo_mysql zip

COPY --from=composer:2.5.7 /usr/bin/composer /usr/bin/composer

RUN a2enmod rewrite

COPY . .

RUN chmod -R 777 /var/www/html

RUN composer install

RUN php artisan optimize:clear

# ENTRYPOINT apache2ctl -D FOREGROUND
