# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ygbouri <ygbouri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/29 17:45:39 by ygbouri           #+#    #+#              #
#    Updated: 2023/03/31 21:01:47 by ygbouri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.17

RUN apk update && apk upgrade

RUN apk add --no-cache mariadb mariadb-client openrc && openrc

RUN mkdir -p /run/openrc && touch /run/openrc/softlevel

RUN mkdir -p /var/run/mysqld && chown -R mysql /var/run/mysqld && chmod -R 777 /var/run/mysqld

RUN sed -i "s|skip-networking|skip-networking=0|g" /etc/my.cnf.d/mariadb-server.cnf

COPY ./requirements/mariadb/conf/docker.cnf /etc/my.cnf.d/

COPY ./requirements/mariadb/tools/configmariadb.sh .

RUN chmod +x configmariadb.sh

CMD ["sh", "configmariadb.sh"]