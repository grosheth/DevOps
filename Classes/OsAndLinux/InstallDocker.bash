#!/Bin/bash


# Mettre a jour le systeme
apt-get update
echo "Mises a jour terminee"
sleep 5

#Installer les prérequis
apt-get install apt-transport-https ca-certificates curl gnupg lsb-release grep software-properties-common
echo "Prerequis installer"
sleep 5

# Installer Docker Engine
apt-get remove docker docker-engine docker.io containerd runc

# Ajouter la Docker Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sleep 3

# Installer Docker Engine
apt-get update
sleep 5
apt-get install docker-ce docker-ce-cli containerd.io
echo "Docker Installed"
docker --version
sleep 5

# Preparer Docker
systemctl enable docker
systemctl restart docker

# Lancer un Container Docker Postgresql

docker pull postgres:latest
docker run --name postgres --detach --volume pg_data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=Admin123 -e POSTGRES_USER=postgres -e TZ=America/Toronto -e PGTZ=America/Toronto --publish 5432:5432 postgres
docker inspect postgres | grep '"IPAddress"'
read -p $'Entrer ladresse IP de votre serveur postgres' ip

# Lancer un Container Docker pgadmin
docker pull dpage/pgadmin4:latest
docker run --name pgadmin -d -v pg_config:/var/lib/pgadmin -e PGADMIN_DEFAULT_EMAIL=admin@pgadmin.com -e PGADMIN_DEFAULT_PASSWORD=Admin123 -p 8081:80 dpage/pgadmin4
echo "Veuillez faire les ajustement nécessaire sur pgadmin avant de continuer"
read -p $'Appuyer sur "c" pour continuer\n' key

# Lancer un Container Docker Etherpad
if [ "$key" = 'c' ]; then
docker run --name etherpad -e 'DB_TYPE=postgres' -e DB_HOST=$ip -e 'DB_PORT=5432' -e 'DB_NAME=postgres' -e 'DB_USER=etherpad_u' -e 'DB_PASS=Etherpad123' -e 'ADMIN_PASSWORD=admin' -e 'PAD_OPTIONS_CHAT_AND_USERS=true' -e 'SKIN_VARIANTS=dark-toolbar super-dark-background dark-editor' -p 8080:9001 etherpad/etherpad
fi



