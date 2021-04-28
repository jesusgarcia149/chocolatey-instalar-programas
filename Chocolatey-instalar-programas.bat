: #With PowerShell, you must ensure Get-ExecutionPolicy is not Restricted. We suggest using Bypass to bypass the policy to get things installed or AllSigned for quite a bit more security.

:    Run Get-ExecutionPolicy. If it returns Restricted, then run Set-ExecutionPolicy AllSigned or Set-ExecutionPolicy Bypass -Scope Process.

: Now run the following command:

: #Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

: #If your System is Windows 7 64 bits need install Windows6.1-KB2506143-x64
: #Si tu sistema es windows 7 64 bits necesitas instalar Windows6.1-KB2506143-x64

: #If your System is Windows 7 32 bits need install Windows6.1-KB2506143-x86
: #Si tu sistema es windows 7 32 bits necesitas instalar Windows6.1-KB2506143-x86

: #si tienes problemas con la instalacion de chocolatey
: #choco upgrade

: ####################################################################################################
: #instalacion de aplicaciones (modo desarrollador (necesitamos introducir el comando en cygwin y tenerlo previamente instalado))

: ####################################################################################################
: #para correr este comando abre la terminal en el directorio del archivo e introduce el siguiente comando:
: #Chocolatey-instalar-programas-basicos.bat

: necesarios para whatsapp y kodi:
: kb2533623 kb2670838

: algunas aplicaciones faltantes
: firefoxesr googlechrome thunderbird whatsapp telegram
: vlc clementine

choco install brave k-litecodecpackfull 7zip anydesk audacity clavier-plus clover ditto etcher inkscape libreoffice naps2 nettime rufus qbittorrent sumatrapdf wnetwatcher xdm dotnet4.7.2 vcredist2005 vcredist2008 vcredist2010 vcredist2012 vcredist2013 vcredist2015 vcredist2017 vcredist2019 -y

choco install vscode xampp-73 git cygwin sudo -y
choco install nodejs-lts --version=10.13.0 -y 

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