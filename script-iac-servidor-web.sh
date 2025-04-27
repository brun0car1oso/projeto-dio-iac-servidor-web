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

if wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip; then
     echo -e "Baixando aplicação\n"

else
     echo -e "instalando wget \n" 
     apt-get install wget -y

     echo -e "Baixando aplicação \n"
     wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
fi

echo -e "Descompactando arquivos \n"
unzip main.zip

cd linux-site-dio

echo -e "Copiando arquivos para diretório padrão do apache \n"
cp -vrR * /var/www/html 
