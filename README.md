docker-debian_nginx_joomla
==========================

Dockerfile for debian with nginx and joomla

### To execute run:

  `docker run -ti --link some-mysql:mysql -p 80:80 aechiara/docker-debian-nginx-joomla`

### or to set a database other then the default:

  `docker run -ti --link some-mysql:mysql -p 80:80 -e DATABASE_NAME=mydb -e DATABASE_USER=mydb_user -e DATABASE_PASSWORD=mydb_pass aechiara/docker-debian-nginx-joomla`
