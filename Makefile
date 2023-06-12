# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: elise <elise@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/14 12:23:27 by elise             #+#    #+#              #
#    Updated: 2023/05/31 12:36:43 by elise            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

all: stop clean volume reload

domain:
	sudo echo "127.0.0.1 ecolin.42.fr" >> /etc/hosts
volume:
	mkdir -p /home/ecolin/data/wordpress
	mkdir -p /home/ecolin/data/mariadb
stop:
	docker-compose -f srcs/docker-compose.yml down
clean:
	docker system prune -af
fclean: stop clean
	rm -rf /home/ecolin/data/mariadb/*
	rm -rf /home/ecolin/data/wordpress/*
	docker volume rm -f srcs_mariadb
	docker volume rm -f srcs_wordpress
reload:
	docker-compose -f srcs/docker-compose.yml up -d --build
re: fclean all
.PHONY: domain stop clean reload fclean all