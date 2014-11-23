#!/bin/bash

# procurar variaveis de ambiente
if [ -z $MYSQL_PORT_3306_TCP_ADDR ]; then
	MYSQL_PORT_3306_TCP_ADDR="NOT SETTED, USE --link TO LINK TO A MYSQL CONTAINER"
else
	sed -ie 's/DATABASE_NAME/'"$DATABASE_NAME"'/g' /root/mysql_setup.sql
	sed -ie 's/DATABASE_USER/'"$DATABASE_USER"'/g' /root/mysql_setup.sql
	sed -ie 's/DATABASE_PASSWORD/'"$DATABASE_PASSWORD"'/g' /root/mysql_setup.sql

	mysql -u root -h $MYSQL_PORT_3306_TCP_ADDR < /root/mysql_setup.sql
	service php5-fpm restart
	service nginx restart
fi

echo "MYSQL: ${MYSQL_PORT_3306_TCP_ADDR}"
echo "DATABASE: ${DATABASE_NAME}"
echo "DATABASE USER: ${DATABASE_USER}"
echo "DATABASE PASSWORD: ${DATABASE_PASSWORD}"

bash
