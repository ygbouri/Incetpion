# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    createdata.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ygbouri <ygbouri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/29 17:56:40 by ygbouri           #+#    #+#              #
#    Updated: 2023/03/29 17:56:47 by ygbouri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
if [ ! -d "/home/ygbouri/data" ]; then
        mkdir ~/data
        mkdir ~/data/mariadb
        mkdir ~/data/wordpress
        mkdir ~/data/portainer
fi
