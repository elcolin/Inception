# Inception
	Three containers, nginx, mariadb and wordpress.
	
	Requires to be launched as admin
	
	all	-> starts docker, creates if doesn't exist and launchs the containers
	clean	-> stops, deletes images
	fclean	-> stops, cleans, deletes images and emptys the volumes
	stop	-> stops the containers
	start	-> starts Docker
	re	-> fclean all

*------ ENV NOT BEING ALLOWED, HERE IS AN ENV EXAMPLE WITH EMPTY VARIABLES -----*

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
