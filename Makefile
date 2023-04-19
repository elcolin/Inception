# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: elise <elise@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/14 12:23:27 by elise             #+#    #+#              #
#    Updated: 2023/04/15 17:48:44 by elise            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

all: stop clean reload

domain:
	@echo "127.0.0.1 ecolin.42.fr" >> /etc/hosts
stop:
	docker-compose -f srcs/docker-compose.yml down
clean:
	docker system prune -af
fclean: stop clean
	rm -rf ./srcs/vol/mariadb/*
	rm -rf ./srcs/vol/wordpress/*
	docker volume rm -f srcs_mariadb
	docker volume rm -f srcs_wordpress
reload:
	docker-compose -f srcs/docker-compose.yml up -d --build
re: fclean reload
.PHONY: domain stop clean reload fclean all