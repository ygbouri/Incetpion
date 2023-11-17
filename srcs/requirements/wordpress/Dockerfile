FROM alpine:3.17
ARG MYSQL_DATABASE_NAME\
    MYSQL_USER\
    MYSQL_PASSWORD
RUN apk update && apk upgrade && apk add --no-cache php php-fpm php-mysqli php-json php-curl php-dom \
    php-exif php-fileinfo php-mbstring php-openssl php-xml php-zip php-gd php-phar wget curl unzip \
    && sed -i "s|listen = 127.0.0.1:9000|listen = 9000|g" /etc/php81/php-fpm.d/www.conf && rm -f /var/cache/apk/*

WORKDIR /var/www

RUN wget https://wordpress.org/latest.zip &&  unzip latest.zip && cp -rf wordpress/* . && rm -rf wordpress latest.zip

COPY ./requirements/wordpress/tools/wp-config-create.sh .

RUN chmod +x wp-config-create.sh && sh wp-config-create.sh && rm wp-config-sample.php && rm wp-config-create.sh && chmod -R 0777 wp-content/

CMD ["/usr/sbin/php-fpm81", "-F"]
