#!/usr/bin/env bash

sudo apt-get autoremove -y
sudo apt-get install -y nodejs npm libcap2-bin git -y
sudo npm cache clean
sudo npm install n -g
sudo n latest
sudo ln -sf /usr/local/bin/node /usr/bin/node
sudo apt-get remove nodejs npm -y
sudo setcap cap_net_bind_service=+ep `readlink -f \`which node\``

echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config

if [ -n "$GIT_REPO" ]; then
  git clone $GIT_REPO /vagrant/www
  cd /vagrant/www
  npm install
  non run build
  npm start
fi
