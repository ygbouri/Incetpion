# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ygbouri <ygbouri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/13 02:09:25 by ygbouri           #+#    #+#              #
#    Updated: 2023/03/29 16:43:40 by ygbouri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.17

ARG FTP_USR \
    FTP_PWD

RUN apk update && apk upgrade && \
    apk add --no-cache vsftpd
COPY requirements/bonus/ftp/tools/config.sh .
RUN chmod +x config.sh && sh config.sh && rm config.sh

WORKDIR /var/www

EXPOSE 21

CMD [ "/usr/sbin/vsftpd", "/etc/vsftpd/vsftpd.conf" ]
