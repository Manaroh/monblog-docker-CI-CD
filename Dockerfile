# Image officielle PHP + Apache
FROM php:8.2-apache

# Installer l’extension PDO MySQL
RUN docker-php-ext-install pdo pdo_mysql

RUN echo "ServerName localhost" > /etc/apache2/conf-available/servername.conf \
    && a2enconf servername

# (Optionnel) activer mod_rewrite si tu en as besoin plus tard
# RUN a2enmod rewrite

# Copier tout le projet dans le dossier web d’Apache
COPY . /var/www/html/

# On définit le dossier de travail
WORKDIR /var/www/html/