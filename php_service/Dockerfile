#docker/php/Dockerfile
FROM php:8.1-fpm

WORKDIR /usr/local/apache2/htdocs
#FROM php:8.1

RUN apt-get update
#Install PHP extensions to access MySQL from the PHP source files 
RUN docker-php-ext-install pdo pdo_mysql mysqli

#RUN apt install auditd -y

COPY myphpSettings.conf /usr/local/etc/php-fpm.d/myphpSettings.conf
COPY auditStart.sh /usr/local/apache2/auditStart.sh

RUN mkdir /usr/local/apache2/logging
RUN chmod -R 777 /usr/local/apache2/logging

EXPOSE 9000
