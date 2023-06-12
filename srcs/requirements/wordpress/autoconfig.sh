#!/bin/bash
chown -R $WP_ROOT:$WP_ROOT /var/www/wordpress
chmod -R 755 /var/www/wordpress

chown -R $WP_ROOT:$WP_ROOT /var/www/
chmod -R 755 /var/www/

sed -i '/^\[www\]$/a clear_env = no' /etc/php/7.3/fpm/pool.d/www.conf
sed -i 's/^listen = .*/listen = wordpress:9000/' /etc/php/7.3/fpm/pool.d/www.conf

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
chown -R $WP_ROOT:$WP_ROOT wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

while ! mariadb -h$WP_HOST -u$WP_ROOT -p$WP_PWD $WP_DATABASE &>/dev/null; do
    sleep 3
done
if [ ! -f /var/www/wordpress/wp-config.php ]; then

    cd /var/www/wordpress
    sudo -u $WP_ROOT wp core download
    sudo -u $WP_ROOT wp config create \
        --dbname=$WP_DATABASE \
        --dbuser=$WP_ROOT \
        --dbpass=$WP_PWD \
	    --dbhost=$WP_HOST --path='/var/www/wordpress'
    sudo -u $WP_ROOT  wp core install --url='https://127.0.0.1' --title='Inception' --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL
    sudo -u $WP_ROOT wp user create $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PWD
    sudo -u $WP_ROOT wp option update comment_status open
    sudo -u $WP_ROOT wp option set default_comment_status moderated
fi
mkdir /run/php
chown www-data:www-data /run/php/

/usr/sbin/php-fpm7.3 -F