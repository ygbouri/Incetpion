# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    configmariadb.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ygbouri <ygbouri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/31 21:01:57 by ygbouri           #+#    #+#              #
#    Updated: 2023/03/31 21:01:58 by ygbouri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



#!/bin/sh
mysql_install_db --user=mysql --datadir=/var/lib/mysql
rc-service mariadb start
if [ ! -d "/var/lib/mysql/$MYSQL_DATABASE_NAME" ]
then
mysql -u root -e "DROP DATABASE IF EXISTS test;"
mysql -u root -e "DROP USER ''@'localhost';"
mysql -u root -e "DROP USER ''@'$(hostname)';"
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE_NAME; GRANT ALL ON $MYSQL_DATABASE_NAME.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
mysql -u root -e "FLUSH PRIVILEGES;"
fi
rc-service mariadb stop
exec mysqld --user=mysql