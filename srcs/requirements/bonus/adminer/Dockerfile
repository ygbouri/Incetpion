# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ygbouri <ygbouri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/13 20:58:12 by ygbouri           #+#    #+#              #
#    Updated: 2023/03/29 19:46:30 by ygbouri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.17

ARG PHP_VERSION=81

RUN apk update && apk upgrade && apk add --no-cache php81 php81-common php81-session php81-iconv php81-gd php81-curl \
    php81-xml php81-mysqli php81-imap php81-cgi \php81-pdo php81-pdo_mysql php81-soap php81-posix php81-gettext \
    php81-ldap php81-ctype php81-dom php81-simplexml wget
    
WORKDIR /var/www

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php && \
    mv adminer-4.8.1.php index.php && chown -R root:root /var/www/

EXPOSE 8080

CMD	["php", "-S", "[::]:8080", "-t", "/var/www"]