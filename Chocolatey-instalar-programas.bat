: #With PowerShell, you must ensure Get-ExecutionPolicy is not Restricted. We suggest using Bypass to bypass the policy to get things installed or AllSigned for quite a bit more security.

:    Run Get-ExecutionPolicy. If it returns Restricted, then run Set-ExecutionPolicy AllSigned or Set-ExecutionPolicy Bypass -Scope Process.

: Now run the following command:

: #Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))




: Para instalar chocolatey corre el siguiente comando como administrador:
: #Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

: #If your System is Windows 7 64 bits need install Windows6.1-KB2506143-x64
: #Si tu sistema es windows 7 64 bits necesitas instalar Windows6.1-KB2506143-x64

: #If your System is Windows 7 32 bits need install Windows6.1-KB2506143-x86
: #Si tu sistema es windows 7 32 bits necesitas instalar Windows6.1-KB2506143-x86

: #si tienes problemas con la instalacion de chocolatey
: choco install audacity --force
: #choco upgrade





: set /p chocolatey=Quieres instalar chocolatey? ("y" or "n") ...
: 
: instalar chocolatey
: if %chocolatey%==y (goto chocolatey)
: 
: 	:chocolatey
: 	: Instalar Chocolatey desde CMD sin abrir POWERSHELL
: 	powershell.exe "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
: 	cls




: Instalar Chocolatey desde CMD sin abrir POWERSHELL
powershell.exe "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"


@echo off

: comprobacion
:inicio
set /p todo=Quieres instalar todas las aplicaciones? ("y" or "n") ...

: instalar todo
if %todo%==y (goto todo) else if %todo%==n (goto compPartes) else (goto error)

	:todo
	: navegadores
	choco install brave googlechrome firefox -y

	: reproductor multimedia
	choco install vlc -y

	: offimatica
	choco install libreoffice-still sumatrapdf naps2 -y

	: compresion
	choco install 7zip -y

	: gestores de descargas
	choco install megasync --version 3.1.4 -y
	choco install qbittorrent xdm jdownloader -y

	: runtimes
	choco install dotnet4.7.2 directx jre8 vcredist2005 vcredist2008 vcredist2010 vcredist2012 vcredist2013 vcredist2015 vcredist2017 vcredist2019 -y
	
	: montador de discos
	choco install wincdemu -y

	: gadgets y complementos a windows
	choco install 8gadgetpack clavier-plus clover ditto nettime lockhunter -y

	: monitorear conectados a la red
	choco install wnetwatcher -y

	: asistencia remota
	choco install anydesk -y 

	: usb de arranque
	choco install rufus etcher winsetupfromusb -y

	: complemento para instalar whatsapp
	choco install kb2533623 -y

	: Aplicaciones tipicas de Android de Mensajeria
	choco install whatsapp telegram -y

	: cliente de correo electrinico
	choco install thunderbird -y

	: servicios de google
	choco install googlechrome google-backup-and-sync -y

	: Servicios de television
	choco install pluto-tv -y

	: tienda de chocolatey
	choco install chocolateygui -y

	: produccion multimedia
	choco install gimp --version 2.10.14 -y
	choco install inkscape audacity formatfactory -y

	: programacion
	choco install sublimetext3 xampp-73 postman git sudo -y
	choco install nodejs-lts --version=10.13.0 -y




	: instalacion de mis repositorios en github

	cd C:\xampp
	cd htdocs

	mkdir htdocs-files

	MOVE ./dashboard ./htdocs-files
	MOVE ./img ./htdocs-files
	MOVE ./webalizer ./htdocs-files
	MOVE ./xampp ./htdocs-files
	move ./applications.html ./htdocs-files
	move ./bitnami.css ./htdocs-files
	move ./favicon.ico ./htdocs-files
	#move ./index.php ./htdocs-files

	mkdir apps
	cd ./apps 

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
	git clone https://github.com/jesusgarcia149/chocolatey-instalar-programas.git

	cd ./js-nodejs
	npm install
	cd ../
	cd ./js-nodejs-first-page
	npm install
	cd ../
	cd ./js-nodejs-mysql-crud
	npm install
	cd ../

	echo Todos los programas se han instalado correctamente
	pause>nul
	exit

	:error
	echo la tecla introducida es incorrecta. Vuelva a intentarlo.
	goto inicio




: comprobacion por partes
:compPartes
	cls
	echo Vamos por partes...

	echo Quieres instalar los siguientes Navegadores...
	echo brave googlechrome firefox
	set /p navegadores=("y" or "n")
	cls

	echo Quieres instalar los siguientes reproductores multimedia...
	echo vlc
	set /p multimedia=("y" or "n")
	cls

	echo Quieres instalar los siguientes Programas de Offimatica...
	echo libreoffice-still sumatrapdf naps2
	set /p offimatica=("y" or "n")
	cls

	echo Quieres instalar los siguientes programas de comprecion...
	echo 7zip
	set /p compresion=("y" or "n")
	cls

	echo Quieres instalar los siguientes Gestores de Descargas...
	echo megasync qbittorrent xdm jdownloader
	set /p descargas=("y" or "n")
	cls

	echo Quieres instalar los siguientes runtimes...
	echo dotnet4.7.2 directx jre8 vcredist2005 vcredist2008 vcredist2010 vcredist2012 vcredist2013 vcredist2015 vcredist2017 vcredist2019
	set /p runtimes=("y" or "n")
	cls

	echo Quieres instalar el Siguiente Montador de Discos...
	echo wincdemu
	set /p discos=("y" or "n")
	cls

	echo Quieres instalar los siguientes gadgets y complementos a windows...
	echo 8gadgetpack clavier-plus clover ditto nettime lockhunter
	set /p complementos=("y" or "n")
	cls

	echo Quieres instalar el siguiente Monitoreador de red...
	echo wnetwatcher
	set /p red=("y" or "n")
	cls

	echo Quieres instalar asistencia remota...
	echo anydesk
	set /p remota=("y" or "n")
	cls

	echo Quieres instalar los siguientes programas de arranque...
	echo rufus etcher winsetupfromusb
	set /p arranque=("y" or "n")
	cls

	echo Quieres instalar los siguientes aplicaciones de Mensajeria...
	echo whatsapp telegram
	set /p mensajeria=("y" or "n")
	cls

	echo Quieres instalar Cliente de correo electrinico...
	echo thunderbird
	set /p correo=("y" or "n")
	cls

	echo Quieres instalar los servicios de google...
	echo googlechrome google-backup-and-sync
	set /p google=("y" or "n")
	cls

	echo Quieres instalar los siguientes Servicios de television...
	echo pluto-tv
	set /p television=("y" or "n")
	cls

	echo Quieres instalar la tienda de chocolatey...
	echo chocolateygui
	set /p chocolateygui=("y" or "n")
	cls

	echo Quieres instalar los siguientes Programas de Produccion Multimedia...
	echo gimp inkscape audacity formatfactory
	set /p produccionMultimedia=("y" or "n")
	cls

	echo Quieres instalar los siguientes programas para la Programacion...
	echo vscode xampp-73 postman git sudo nodejs-lts
	set /p programacion=("y" or "n")
	cls

	echo Quieres instalar mis repositoris de Github...
	echo @Jesusgarcia149
	set /p Github=("y" or "n")
	cls




: instalacion por partes
:instalacionPartes

if %navegadores%==y (goto navegadores)
:navegadores
	cls
	choco install brave googlechrome firefox -y

if %multimedia%==y (goto multimedia)
:multimedia
	cls
	choco install vlc -y

if %offimatica%==y (goto offimatica)
:offimatica
	cls
	choco install libreoffice-still sumatrapdf naps2 -y

if %compresion%==y (goto compresion)
:compresion
	cls
	choco install 7zip -y

if %descargas%==y (goto descargas)
:descargas
	cls
	choco install megasync --version 3.1.4 -y
	choco install qbittorrent xdm jdownloader -y

if %runtimes%==y (goto runtimes)
:runtimes
	cls
	choco install dotnet4.7.2 directx jre8 vcredist2005 vcredist2008 vcredist2010 vcredist2012 vcredist2013 vcredist2015 vcredist2017 vcredist2019 -y

if %discos%==y (goto discos)
:discos
	cls
	choco install wincdemu -y

if %complementos%==y (goto complementos)
:complementos
	cls
	choco install 8gadgetpack clavier-plus clover ditto nettime lockhunter -y

if %red%==y (goto red)
:red
	cls
	choco install wnetwatcher -y

if %remota%==y (goto remota)
:remota
	cls
	choco install anydesk -y

if %arranque%==y (goto arranque)
:arranque
	cls
	choco install rufus etcher winsetupfromusb -y

if %mensajeria%==y (goto mensajeria)
:mensajeria
	cls
	choco install kb2533623 -y
	choco install whatsapp telegram -y

if %correo%==y (goto correo)
:correo
	cls
	choco install thunderbird -y

if %google%==y (goto google)
:google
	cls
	choco install googlechrome google-backup-and-sync -y

if %television%==y (goto television)
:television
	cls
	choco install pluto-tv -y

if %chocolateygui%==y (goto chocolateygui)
:chocolateygui
	cls
	choco install chocolateygui -y

if %produccionMultimedia%==y (goto produccionMultimedia)
:produccionMultimedia
	cls
	choco install gimp --version 2.10.14 -y
	choco install inkscape audacity formatfactory -y

if %programacion%==y (goto programacion)
:programacion
	cls
	choco install vscode xampp-73 postman git sudo -y
	choco install nodejs-lts --version=10.13.0 -y

if %github%==y (goto github)
:github
	cls
	: instalacion de mis repositorios en github

	cd C:\xampp
	cd htdocs

	mkdir htdocs-files

	MOVE ./dashboard ./htdocs-files
	MOVE ./img ./htdocs-files
	MOVE ./webalizer ./htdocs-files
	MOVE ./xampp ./htdocs-files
	move ./applications.html ./htdocs-files
	move ./bitnami.css ./htdocs-files
	move ./favicon.ico ./htdocs-files
	#move ./index.php ./htdocs-files

	mkdir apps
	cd ./apps 

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
	git clone https://github.com/jesusgarcia149/chocolatey-instalar-programas.git

	cd ./js-nodejs
	npm install
	cd ../
	cd ./js-nodejs-first-page
	npm install
	cd ../
	cd ./js-nodejs-mysql-crud
	npm install
	cd ../



	
: algunas aplicaciones en las que prodria estar interesado
: choco install k-litecodecpackfull clementine -y

: aplicaciones faltantes en programacion
: choco install cygwin sublimetext3 -y