FROM php:8.2-apache
RUN a2enmod rewrite
RUN a2enmod actions
RUN sed -i 's/*:80/*:8080/' /etc/apache2/sites-enabled/000-default.conf
RUN sed -i 's/80/8080/' /etc/apache2/ports.conf
RUN sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/ports.conf
COPY . /var/www/html
