echo -e "Atualizando servidor \n"
apt-get update && apt-get upgrade

sleep 5
clear

echo -e "Instalando o servidor apache2 \n"
apt-get install apache2 -y

sleep 5
clear

echo -e "Instalando o unzip \n"
apt-get install unzip -y

sleep 5
clear

cd /tmp


echo -e "Baixando aplicação\n"

if wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip; then

     echo -e "Aplicação baixada \n"

else
     echo -e "instalando wget \n"
     apt-get install wget -y

     echo -e "Baixando aplicação \n"
     wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

     echo -e "Aplicação baixada \n"

fi

echo -e "Descompactando arquivos \n"
unzip main.zip

cd linux-site-dio-main

echo -e "Copiando arquivos para diretório padrão do apache \n"
cp -rR * /var/www/html

echo "FIM"
