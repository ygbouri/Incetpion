# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ygbouri <ygbouri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/13 00:51:55 by ygbouri           #+#    #+#              #
#    Updated: 2023/03/29 19:44:19 by ygbouri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


FROM alpine:3.17

RUN apk update && apk upgrade

RUN apk add --no-cache redis

RUN sed -i "s|bind 127.0.0.1 -::1|#bind 127.0.0.1 -::1|g" /etc/redis.conf

RUN sed -i "s|# maxmemory <bytes>|maxmemory 100mb|g" /etc/redis.conf

RUN sed -i "s|# maxmemory-policy noeviction|maxmemory-policy allkeys-lru|g" /etc/redis.conf

CMD ["redis-server", "/etc/redis.conf", "--protected-mode no"]