FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get -y install wget

RUN apt-get install -y php7.3\
	php-fpm\
	php-mysql\
	mariadb-client
RUN apt-get update && apt-get install -y sudo

COPY autoconfig.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/autoconfig.sh

ENTRYPOINT [ "/bin/bash", "-c", "/usr/local/bin/autoconfig.sh" ]