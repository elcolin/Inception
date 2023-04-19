FROM debian:buster

RUN apt-get update
RUN apt install nginx -y
RUN apt install openssl -y


RUN mkdir -p /etc/nginx/ssl
RUN mkdir -p /var/run/nginx

RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=ecolin.42.fr/UID=ecolin"

RUN mkdir -p /var/www/wordpress
RUN chmod 755 /var/www/wordpress
RUN chown -R www-data:www-data /var/www/wordpress

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]