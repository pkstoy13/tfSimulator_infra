#!/bin/bash
set -e

# update packages
echo "[INFO] Updating system packages..."
sudo apt update -y
sudo apt upgrade -y

# install backend packages
echo "Installing Java and other required packages"
sudo apt install -y openjdk-17-jdk maven git

# install docker
echo "installing Docker"
sudo apt install -y docker.io
sudo systemctl enable --now docker

# set up backend directory
BACKEND_DIR="/opt/tfSimulator/backend"
echo "setting up backend directory at $BACKEND_DIR"
sudo mkdir -p $BACKEND_DIR
sudo chown $USER:$USER $BACKEND_DIR

# clone tfSimulator repo from github
echo "cloning tfSimulator repo"
git clone https://github.com/pkstoy13/tfSimulator.git $BACKEND_DIR

# run Spring boot app
#echo "running Spring Boot App"
#cd $BACKEND_DIR/api
#mvn clean package
#java -jar target/*.jar &

echo "backend set up and running"

