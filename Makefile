# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ygbouri <ygbouri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/20 18:55:17 by ygbouri           #+#    #+#              #
#    Updated: 2023/03/29 17:48:04 by ygbouri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


name = inception

all:
	bash ./srcs/requirements/tools/createdata.sh
	docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d
build:
	bash ./srcs/requirements/tools/createdata.sh
	docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d --build
down:
	docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env down

re: down
	docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d --build

clean: down 
	docker system prune -a

fclean:
	docker system prune --all --force --volumes
	docker network prune --force
	docker volume prune --force
.PHONY : all build down re clean fclean
