#! /bin/bash

apt-get update
apt-get -y install docker docker-compose htop
echo >/etc/motd PLEASE don\'t forget to \"sudo apt-get upgrade\"

if ! id -u mathias; then adduser --disabled-password --gecos "" mathias; fi
if ! id -u paola; then adduser --disabled-password --gecos "" paola; fi
usermod -aG docker mathias
usermod -aG docker paola

if [ -f /etc/dynuddns.conf ]; then
    source /etc/dynuddns.conf
    curl "http://api.dynu.com/nic/update?hostname=${DYNUDDNS_HOSTNAME}&password=${DYNUDDNS_PASSWORD}"
    echo Updated DNS
else
    echo No config file /etc/dynuddns.conf found
fi
