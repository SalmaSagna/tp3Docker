# Image de base
FROM php:8.2-apache

# Copier le fichier de configuration Apache
COPY docker/apache/vhost.conf /etc/apache2/sites-available/000-default.conf

# Copier le code PHP dans le conteneur
COPY src/ /var/www/html/

# Exposer le port 80
EXPOSE 80