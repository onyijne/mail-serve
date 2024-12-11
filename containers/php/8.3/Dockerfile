FROM php:8.3.6-fpm-alpine

# Arguments defined in docker-compose.yml
ARG user
ARG uid

# Install system dependencies
RUN apk update && apk add --no-cache \
    git \
    curl \
    libpng-dev \
    oniguruma-dev \
    icu-dev \
    libxml2-dev \
    libzip-dev\
    zip \
    unzip \
    nodejs \
    npm \
    sqlite \
    libpq-dev \
    mariadb-connector-c \
    mariadb-client \
    imagemagick-dev imagemagick libjpeg-turbo libgomp freetype autoconf g++ gcc make \
    gmp \
    gnupg

# Clear cache
RUN rm -rf /var/cache/apk/*

# Install PHP extensions
RUN docker-php-ext-configure intl
RUN docker-php-ext-configure zip

RUN docker-php-ext-install mbstring exif pcntl bcmath gd intl zip pdo_mysql gmp

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create system user to run Composer and Artisan Commands
RUN adduser -G www-data -u ${uid} -D -h home/${user} ${user} && addgroup ${user} && addgroup ${user} root && \
    mkdir -p /home/${user}/.composer && chown -R ${user}:${user} /home/${user}

