#!/bin/bash 

echo "Esse é meu escript para adiconar em lote usuarios, grupos e permisões."

mkdir /publico
mkdir /adm 
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd Carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd Debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd Josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

chown root:GRP_ADM /adm/

chown root:GRP_SEC /sec/

chown root:GRP_VEN /ven/

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /sec/
chmod 770 /ven/

echo "Fim do script."
echo "Não esquecer de permitir a eecução do arquivo: chmod +x Create_Users.sh"
echo "Apos permitir a execução: ./Create_Users.sh"
echo "Salvar estado da sua maquina antes da execução deste script é uma boa pratica!!!"
