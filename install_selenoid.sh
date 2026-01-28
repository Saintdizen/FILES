# Ubuntu
# Обновление системы
sudo apt update -y
sudo apt upgrade -y
# Установка DOCKER
sudo apt install pt-transport-https ca-certificates curl software-properties-common
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update -y
sudo apt install docker-ce=5:19.03.9~3-0~ubuntu-focal
