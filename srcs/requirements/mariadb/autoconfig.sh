#!/bin/bash
mkdir -p /var/lib/mysql
chown mysql:mysql /var/lib/mysql
chown mysql:mysql /docker-entrypoint-initdb.d/init.sql
chmod 700 /docker-entrypoint-initdb.d/init.sql
sed -i "s/\$WP_DATABASE/$WP_DATABASE/g" /docker-entrypoint-initdb.d/init.sql
sed -i "s/\$WP_ROOT/$WP_ROOT/g" /docker-entrypoint-initdb.d/init.sql
sed -i "s/\$WP_PWD/$WP_PWD/g" /docker-entrypoint-initdb.d/init.sql
sed -i "s/skip-grant-tables/#skip-grant-tables/g" /etc/mysql/mysql.conf.d/mysqld.cnf
mysqld --init-file=/docker-entrypoint-initdb.d/init.sql