#!/bin/bash 

echo "Esse IaC é feito para instalar um serviço WEB no servidor linux"
echo "Lembrando que é uma boa pratica instalar em um segundo disco que não o principal"
echo "Antes de iniciar o script criar um snapshot da sua maquina"
echo "Não esquecer de logar como root para procedimento"


apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "não esquecer de adionar o scrip para execução com chmod +x Provisionamento_server_web.sh"
echo "para executar utilizar ./ Provisionamento_server_web.sh"