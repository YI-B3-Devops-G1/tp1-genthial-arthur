
wget -qO- https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt-get update
apt-get upgrade
apt-get install -y nodejs
apt-get install -y openssh-server
apt-get install -y nginx



if ! [ -L /var/www/html ]; then
  rm -rf /var/www/html
  ln -fs /vagrant /var/www/html
fi
