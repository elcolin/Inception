# Inception
	Three containers, nginx, mariadb and wordpress.
		sudo make
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
	
	ROOT_PWD=
	
	WP_ROOT=
	WP_PWD=
	WP_DATABASE=
	WP_HOST=
	
	WP_ADMIN=
	WP_ADMIN_PWD=
	WP_ADMIN_EMAIL=
	
	WP_USER=
	WP_USER_PWD=
	WP_USER_EMAIL=

if creditential problems:
rm  ~/.docker/config.json 

Notes and Todo list:
	https://github.com/ColorGama/Inception/blob/main/Docker_230419_122743.pdf
