ARG BASE_IMAGE=php:8.2-apache
FROM ${BASE_IMAGE}

LABEL org.opencontainers.image.authors="Gabriel Felvinczi <gabriel@bixag.com>"

# Install system dependencies
RUN apt-get update && apt-get install -y \
  libcurl4-openssl-dev \
  libedit-dev \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libonig-dev \
  libpng-dev \
  libsodium-dev \
  libxml2-dev \
  libxslt1-dev \
  libzip-dev \
  mariadb-client \
  zlib1g-dev \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get clean \
# Configure PHP extensions
&& docker-php-ext-configure gd --with-freetype --with-jpeg \
  && docker-php-ext-install -j$(nproc) \
  bcmath \
  ctype \
  curl \
  dom \
  fileinfo \
  gd \
  intl \
  mbstring \
  pdo_mysql \
  soap \
  sockets \
  sodium \
  xsl \
  zip \
# Install composer
&& php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
  && php composer-setup.php --install-dir=/usr/local/bin/ --filename=composer \
  && php -r "unlink('composer-setup.php');"