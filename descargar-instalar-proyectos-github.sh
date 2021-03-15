#!/bin/bash
#sudo apt install git -y
#definimos el directorio
directorio=C:\xampp

instalamos_proyectos(){
	cd $directorio
	cd htdocs
	# almacenamos todos los archivos que estan dentro de htdocs en una carpeta llamada lamp
	mkdir htdocs-files
	mv ./dashboard ./htdocs-files
	mv ./img ./htdocs-files
	mv ./webalizer ./htdocs-files
	mv ./xampp ./htdocs-files
	mv ./applications.html ./htdocs-files
	mv ./bitnami.css ./htdocs-files
	mv ./favicon.ico ./htdocs-files
	mv ./index.php ./htdocs-files

	# creamos el archivo info.php
	touch info.php
	chmod 777 info.php
	info='<?php phpinfo(); ?>'
	echo $info > info.php

	# almacenamos mis proyectos dentro de una carpeta llamada apps
	mkdir apps
	cd ./apps
	#sudo git clone https://github.com/jesusgarcia149/js-angular-crud.git
	#sudo git clone https://github.com/jesusgarcia149/php-laravel-api.git
	git clone https://github.com/jesusgarcia149/php-crud.git
	git clone https://github.com/jesusgarcia149/php-crud-with-images.git
	git clone https://github.com/jesusgarcia149/php-auth-system.git
	git clone https://github.com/jesusgarcia149/php-tienda.git
	git clone https://github.com/jesusgarcia149/js-planificador-de-rutas.git
	git clone https://github.com/jesusgarcia149/js-vuejs-cms.git
	git clone https://github.com/jesusgarcia149/js-localstorage-crud.git
	git clone https://github.com/jesusgarcia149/js-pong.git
	git clone https://github.com/jesusgarcia149/bash-ubuntu-instalar-programas.git
	git clone https://github.com/jesusgarcia149/js-nodejs.git
	git clone https://github.com/jesusgarcia149/js-nodejs-first-page.git
	git clone https://github.com/jesusgarcia149/js-nodejs-mysql-crud.git
	
	# instalamos las dependencias necesarias para los proyectos en nodejs
	cd ./js-nodejs
	npm install
	cd ../
	cd ./js-nodejs-first-page
	npm install
	cd ../
	cd ./js-nodejs-mysql-crud
	npm install
	cd ../
}

instalamos_proyectos
