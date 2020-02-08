#! /bin/bash

apt-get update
apt-get -y install docker docker-compose htop

if ! id -u mathias; then adduser --disabled-password --gecos "" mathias; fi
if ! id -u paola; then adduser --disabled-password --gecos "" paola; fi
usermod -aG docker mathias
usermod -aG docker paola