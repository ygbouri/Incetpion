# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ygbouri <ygbouri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/14 01:57:15 by ygbouri           #+#    #+#              #
#    Updated: 2023/03/29 18:38:23 by ygbouri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.17

RUN apk update && apk upgrade && apk add curl tar

RUN mkdir -p /var/lib/portainer

RUN adduser -h /var/lib/portainer -D portainer

RUN curl -sSL https://github.com/portainer/portainer/releases/download/2.16.2/portainer-2.16.2-linux-amd64.tar.gz | tar -xzo -C /usr/local

CMD ["/usr/local/portainer/portainer"]
