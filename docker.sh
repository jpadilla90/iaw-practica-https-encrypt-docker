#!/bin/bash
set -x

## Recuerda: debes lanzar docker compose desde el directorio donde tengas docker-compose.yml
# Actualizamos 
apt update

# Instalamos docker y docker-compose
apt install docker docker-compose -y

# Habilitamos docker y arrancamos el servicio
systemctl enable docker
systemctl start docker

# Con --scale escalamos el número de instancias de apache a 4.
docker-compose up -d 

## Para finalizar docker-compose ##
#docker-compose down -v 
#con -v elimina los volúmenes a la vez, útil para prácticas.

## Para ver la dirección backend que pide la instalación de PrestaShop
# sudo docker network ls
# sudo docker network inspect iaw-practica-prestashop_backend-network
# Allí buscaremos la entrada de iaw-practica-prestashop_mysql y usaremos esa dirección en la instalación