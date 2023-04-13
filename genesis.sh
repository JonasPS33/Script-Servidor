#!/bin/bash


echo "Atualização de sistema"

apt update
apt upgrade

echo "Instalação de ferramentas"


apt install unzip -y
apt install wget -y
apt install fdisk -y
apt install samba -y
apt install openssh-server -y
apt install clientssh-server -y
apt install default-mysql-server  -y
apt install zip -y
apt install curl
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

echo "abrir  script para edição de configuração  do samba"

#Passo a Passo para configuração do samba
#nano /etc/samba/smb.conf
#editar as informações a seguir, no final do arquivo
#[publico]
#path = /testesamba
#writable = yes
#guest ok = yes
#guest only = yes
