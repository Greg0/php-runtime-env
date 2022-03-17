FROM greg0/php-runtime-env:php5.6

RUN apk add freetds freetds-dev \
    php5-mssql \
    php5-pdo_dblib \
    unixodbc-dev

RUN docker-php-ext-install mssql pdo_dblib \
    && docker-php-ext-enable mssql pdo_dblib
RUN docker-php-ext-configure pdo_dblib

RUN docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr \
 && docker-php-ext-install pdo_odbc
