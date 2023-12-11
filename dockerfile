FROM php:8.3.0-apache

# Mise à jour des paquets et installation des dépendances
RUN apt-get update -yq \
    && apt-get upgrade -yq \
    && apt-get install -yq \
        libpq-dev \
        libzip-dev \
        unzip \
    && rm -rf /var/lib/apt/lists/*

# Installation des extensions PHP nécessaires
RUN docker-php-ext-install pdo pdo_mysql zip

# Activation des modules Apache
RUN a2enmod rewrite

# Exposer le port 80 (c'est principalement informatif, ne fait pas le mapping automatique des ports)
EXPOSE 80
