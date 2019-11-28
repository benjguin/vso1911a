#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sudo apt-get update -y
sudo apt-get install -y docker.io
sudo apt-get install -y docker-compose
# https://stackoverflow.com/questions/50151833/cannot-login-to-docker-account
sudo apt-get install -y gnupg2 pass
sudo groupadd docker
sudo gpasswd -a $username docker
sudo newgrp docker

sudo $DIR/sudo_install.sh
