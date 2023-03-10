FROM php:7.4-fpm
WORKDIR /var/www/html
COPY ./src /var/www/html
RUN curl -L https://getcomposer.org/download/2.1.3/composer.phar -o /usr/local/bin/composer && \
    chmod +x /usr/local/bin/composer && \
    composer config -g repo.packagist composer https://mirrors.tencent.com/composer/ && \
    composer config -g secure-http false
RUN composer install
RUN docker-php-ext-install pdo pdo_mysql
RUN chmod -R 777 storage && chmod -R 777 bootstrap/cache
