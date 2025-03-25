#!/bin/bash

echo "Atualizando as listas de softwares!!!"

apt update

echo "Atualizando os softwares!!!"

apt upgrade -y

echo "Instalando o apache2!!!"

apt install apache2 -y

echo "Instalando o unzip!!!"

apt install unzip -y

echo "Baixando o projeto do repositório!!!"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o repositório!!!"
unzip main.zip

echo "Copiando conteúdo do repo na pasta do apache!!!"
cd linux-site-dio
cp -R * /var/www/html/
