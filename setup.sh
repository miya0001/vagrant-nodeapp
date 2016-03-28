#!/usr/bin/env bash

sudo apt-get autoremove -y
sudo apt-get install -y nodejs npm libcap2-bin mongodb git -y
sudo npm install n -g
sudo n latest
sudo ln -sf /usr/local/bin/node /usr/bin/node
sudo apt-get remove nodejs npm -y
sudo setcap cap_net_bind_service=+ep `readlink -f \`which node\``

if [[ ! -d /root/.ssh ]]; then
  ssh-keyscan -H github.com >> ~/.ssh/known_hosts
fi

if [ -n "$GIT_REPO" ]; then
  git clone $GIT_REPO /vagrant/www
  cd /vagrant/www
  npm install
  npm run build
  npm start
fi

sudo npm cache clean
sudo apt-get clean
