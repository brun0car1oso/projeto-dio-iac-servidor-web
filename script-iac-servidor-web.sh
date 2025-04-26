echo -e "Atualizando servidor\n"

apt-get update && apt-get upgrade 

echo -e "Instalando o servidor apache2\n"
sudo apt-get install apache2 -y 

echo -e "Instalando o unzip\n"
sudo apt-get install unzip -y 

cd /tmp

if wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip; then
     echo -e "Baixando aplicação\n"

else
     echo -e "instalando wget\n" 
     sudo apt-get install wget -y

     echo -e "Baixando aplicação\n"
     if wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
fi

echo -e "Copiando arquivos para diretório padrão do apache"

cp -vr archive /var/www/html 
