#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get install nodejs npm libcap2-bin mongodb git redis-server -y
sudo npm install n -g
sudo n latest
sudo ln -sf /usr/local/bin/node /usr/bin/node
sudo apt-get remove nodejs npm -y
sudo setcap cap_net_bind_service=+ep `readlink -f \`which node\``

if [[ ! -e ~/.ssh/known_hosts ]]; then
  ssh-keyscan -H github.com >> ~/.ssh/known_hosts
  chmod 600 ~/.ssh/known_hosts
fi

if [ -n "$GIT_REPO" ]; then
  git clone $GIT_REPO /vagrant/www
  cd /vagrant/www
  npm install
  npm run build
  npm start
fi

sudo npm cache clean -y
sudo apt-get autoremove -y
sudo apt-get clean
