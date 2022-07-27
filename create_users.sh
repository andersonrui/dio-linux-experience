#!/bin/bash

echo "Criação dos diretórios:"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criação dos grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação de usuários do grupo ADM"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt carlos) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt maria) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt joao) -G GRP_ADM

echo "Criação de usuários do grupo VEN"

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt debora) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt sebastiana) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt roberto) -G GRP_VEN

echo "Criação de usuários do grupo SEC"

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt josefina) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt amanda) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt rogerio) -G GRP_SEC

echo "Definindo as permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script finalizado..."

