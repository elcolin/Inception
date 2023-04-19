#!/bin/bash
chown mysql:mysql /docker-entrypoint-initdb.d/init.sql
chmod 700 /docker-entrypoint-initdb.d/init.sql
sed -i "s/\$DATABASE/$DATABASE/g" /docker-entrypoint-initdb.d/init.sql
sed -i "s/\$USER/$USER/g" /docker-entrypoint-initdb.d/init.sql
sed -i "s/\$U_PWD/$U_PWD/g" /docker-entrypoint-initdb.d/init.sql
sed -i "s/\$ROOT_PWD/$ROOT_PWD/g" /docker-entrypoint-initdb.d/init.sql
sed -i "s/skip-grant-tables/#skip-grant-tables/g" /etc/mysql/mysql.conf.d/mysqld.cnf
mysqld --init-file=/docker-entrypoint-initdb.d/init.sql