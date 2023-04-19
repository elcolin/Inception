# Inception
	Three containers, nginx, mariadb and wordpress.
	all	-> stops, cleans, creates and launchs the containers
	clean	-> stops, deletes images
	fclean	-> stops, cleans, deletes images and emptys the volumes
	stop	-> stops the containers
	re	-> fclean all
*------ ENV NOT BEING ALLOWED, HERE IS AN ENV EXAMPLE WITH EMPTY VARIABLES -----*

	ROOT_PWD=
	DATABASE=
	U_PWD=
	USER=
	HOST=
	ADMIN_WP=
	ADMIN_PWD=
	ADMIN_EMAIL=
	USER_WP=
	USER_EMAIL=
	USER_PWD=

Notes and Todo list:
	https://github.com/ColorGama/Inception/blob/main/Docker_230419_122743.pdf
