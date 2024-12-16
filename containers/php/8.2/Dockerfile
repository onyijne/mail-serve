FROM php:8.2-fpm

# Arguments defined in docker-compose.yml
ARG user
ARG uid

# Set environment variables to ensure non-interactive installation
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libicu-dev \
    libxml2-dev \
    libzip-dev \
    zip \
    unzip \
    nodejs \
    npm \
    sqlite3 \
    libpq-dev \
    mariadb-client \
    libmariadb-dev-compat \
    imagemagick \
    libmagickwand-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libgomp1 \
    g++ \
    gcc \
    make \
    autoconf \
    libgmp-dev && \
    pecl install imagick && \
    docker-php-ext-configure intl && \
    docker-php-ext-configure zip && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install -j$(nproc) \
        mbstring \
        exif \
        pcntl \
        bcmath \
        gd \
        intl \
        zip \
        pdo_mysql \
        gmp && \
    docker-php-ext-enable imagick && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create system user to run Composer and Artisan Commands
RUN useradd -m -d /home/${user} -u 1000 -U -s /bin/bash ${user} && \
    mkdir -p /home/${user}/.composer && \
    chown -R ${user}:${user} /home/${user}

# Set working directory
WORKDIR /var/www

# Expose port 9000 and start PHP-FPM server
EXPOSE 9000
CMD ["php-fpm"]
