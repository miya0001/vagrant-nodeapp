#!/usr/bin/env bash

sudo apt-get install -y nodejs npm libcap2-bin git
sudo npm cache clean
sudo npm install n -g
sudo n stable
sudo ln -sf /usr/local/bin/node /usr/bin/node
sudo setcap cap_net_bind_service=+ep `readlink -f \`which node\``

git clone $GIT_REPO ~/www
cd ~/www
npm install
non run build
npm start
