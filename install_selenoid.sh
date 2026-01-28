#!/bin/bash
# Ubuntu
# Обновление системы
sudo apt update -y
sudo apt upgrade -y
# Установка DOCKER
sudo apt install pt-transport-https ca-certificates curl software-properties-common wget net-tools -y
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update -y
sudo apt install docker-ce=5:19.03.9~3-0~ubuntu-focal -y
# Фикс x Failed to start: failed to start container: Error response from daemon: cgroups: cgroup mountpoint does not exist: unknown
sudo mkdir -p /sys/fs/cgroup/systemd
sudo mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd
# Установка SELENOID
cd ~
rm -rf $(ls)
wget https://github.com/aerokube/cm/releases/download/1.8.8/cm_linux_amd64
chmod +x cm_linux_amd64
sudo ./cm_linux_amd64 selenoid start --vnc
sudo ./cm_linux_amd64 selenoid-ui start
# Получение ip адреса
echo "Порты: 8080 (selenoid-ui) 4444 (selenoid)"
hostname -I
