FROM php:8.1.3RC1-fpm-buster
# Update packages

# Update packages
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get update \
    && apt-get install -y zip libzip-dev unzip netcat libmcrypt-dev libjpeg-dev libpng-dev libfreetype6-dev libbz2-dev nodejs git supervisor cron \
    && apt-get clean

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
RUN apt-get update
RUN ACCEPT_EULA=Y apt-get -y --no-install-recommends install msodbcsql17 unixodbc-dev
RUN pecl install sqlsrv
RUN pecl install pdo_sqlsrv
RUN docker-php-ext-enable sqlsrv pdo_sqlsrv

# Install & enable Microsoft SQL Server
RUN docker-php-ext-install pdo > /dev/null

# END V4

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd
RUN docker-php-ext-install zip

COPY worker.conf /etc/supervisor/conf.d/
COPY php/custom.ini /usr/local/etc/php/conf.d/
COPY app_cron /etc/cron.d/
RUN chmod 0644 /etc/cron.d/* && crontab /etc/cron.d/app_cron
RUN chown -R www-data:www-data /var/www
RUN chmod -R 755 /var/www
RUN touch /var/log/crontab.log
COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
