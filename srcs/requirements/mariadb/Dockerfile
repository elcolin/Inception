FROM debian:buster

RUN apt update -y

RUN apt upgrade -y

RUN apt-get install mariadb-server -y
RUN apt-get install -y procps

RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

RUN rm -rf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY 50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY autoconfig.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/autoconfig.sh

COPY init.sql /docker-entrypoint-initdb.d/

ENTRYPOINT ["/usr/local/bin/autoconfig.sh"]