#!/bin/bash

echo #>>>Criando os Diretorios conforme solicitado<<<#
echo # #

mkdir -p /publico
mkdir -p /adm
mkdir -p /sec
mkdir -p /ven

echo #>>>Criando os Grupos conforme solicitado<<<#
echo # #

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo #>>>Criando os Usuario e associandos aos grupos conforme solicitado<<<#
echo # #

useradd carlos  -s /bin/bash -m -p $(openssl passwd -crypt detran123) && usermod -aG GRP_ADM carlos
useradd maria  -s /bin/bash -m -p $(openssl passwd -crypt detran123) && usermod -aG GRP_ADM maria
useradd joao  -s /bin/bash -m -p $(openssl passwd -crypt detran123) && usermod -aG GRP_ADM joao

useradd debora  -s /bin/bash -m -p $(openssl passwd -crypt detran123) && usermod -aG GRP_ADM debora
useradd sebastiana  -s /bin/bash -m -p $(openssl passwd -crypt detran123) && usermod -aG GRP_ADM sebastiana
useradd roberto  -s /bin/bash -m -p $(openssl passwd -crypt detran123) && usermod -aG GRP_ADM roberto

useradd josefina  -s /bin/bash -m -p $(openssl passwd -crypt detran123) && usermod -aG GRP_ADM josefina
useradd amanda  -s /bin/bash -m -p $(openssl passwd -crypt detran123) && usermod -aG GRP_ADM amanda
useradd rogerio  -s /bin/bash -m -p $(openssl passwd -crypt detran123) && usermod -aG GRP_ADM rogerio

echo #>>>Associando Diretorios ao seus respectivos grupos conforme solicitado<<<#
echo # #

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo #>>>Aplicando permissoes conforme solicitado<<<#
echo # #

chmod 770 /adm
chmod 700 /ven
chmod 770 /sec 
chmod 777 /publico

echo #>>>Finalizado conforme solicitado<<<#
echo # #
