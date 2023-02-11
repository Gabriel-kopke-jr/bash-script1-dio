#!/bin/bash

cd /
echo "Criando diretorios"


mkdir  publico
mkdir  adm
mkdir  ven
mkdir  sec

echo "Diretorios criados"

echo "Criando grupos" 
sudo groupadd GRP_ADM 
sudo groupadd GRP_VEN 
sudo groupadd GRP_SEC

echo "Grupos criados"

echo "Criando usuarios e associando aos grupos"
sudo useradd carlos -m -s /bin/bash  -G GRP_ADM
sudo useradd maria -m -s /bin/bash -G GRP_ADM
sudo useradd joao -m -s /bin/bash  -G GRP_ADM

sudo useradd debora -m -s /bin/bash -G GRP_VEN
sudo useradd sebastiana -m -s /bin/bash  -G GRP_VEN
sudo useradd roberto -m -s /bin/bash  -G GRP_VEN

sudo useradd josefina -m -s /bin/bash -G GRP_SEC
sudo useradd amanda -m -s /bin/bash -G GRP_SEC
sudo useradd rogerio -m -s /bin/bash -G GRP_VEN

echo "Usuarios criados em seus respectivos grupos"


echo "Especificando permissoes dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod  777 /publico

echo "Terminando o script"
