# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ygbouri <ygbouri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/13 23:07:21 by ygbouri           #+#    #+#              #
#    Updated: 2023/03/29 17:54:27 by ygbouri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.17

RUN	apk update && apk upgrade && apk add --no-cache nginx

RUN cd /etc/nginx/http.d && rm default.conf

COPY requirements/bonus/website/conf/default.conf /etc/nginx/http.d/

COPY requirements/bonus/website/tools/* /var/www/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]