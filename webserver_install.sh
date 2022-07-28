#!/bin/bash

echo "Verificando atualizações do servidor..."

apt update
apt upgrade -y

echo "Instalando o Apache"

apt install apache2 unzip -y

echo "Baixando arquivos para provisionamento..."

cd /var/www/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cp -R linux-site-dio-main/* /var/www/html
