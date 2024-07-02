# Use uma imagem base do PHP com Apache
FROM php:8.2-apache

# Atualize o sistema e instale as dependências necessárias
RUN apt-get update -y && apt-get install -y \
    wget \
    nano \
    zip \
    unzip \
    git \
    libicu-dev \ 
    libjpeg-dev \ 
    libpng-dev \ 
    libwebp-dev \ 
    libjpeg62-turbo-dev \ 
    libxpm-dev \ 
    libgmp-dev \ 
    zlib1g-dev \
    libgd-dev \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

# Baixe e instale o phpMyAdmin diretamente do site oficial
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.2.1/phpMyAdmin-5.2.1-all-languages.tar.gz \
    && tar -xzf phpMyAdmin-5.2.1-all-languages.tar.gz -C /opt \
    && rm phpMyAdmin-5.2.1-all-languages.tar.gz

# Copie a configuração do VirtualHost para o diretório correto
COPY docker/ /etc/apache2/sites-available/

# Ative o site padrão
RUN a2ensite 000-default.conf

RUN ls /opt/ && mv /opt/phpMyAdmin-5.2.1-all-languages/* /var/www/html

# Instale as extensões PHP necessárias
RUN docker-php-ext-install pdo_mysql pdo mysqli 
# iconv intl gettext gmp exif zip mbstring
# RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
# RUN docker-php-ext-install -j$(nproc) gd
# RUN pecl install timezonedb
# RUN docker-php-ext-enable timezonedb

# Exponha a porta 80
EXPOSE 80

# Inicie o servidor Apache
CMD ["apache2-foreground"]
