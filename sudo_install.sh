#!/bin/bash

curl -sL https://aka.ms/InstallAzureCLIDeb | bash

cd /tmp
curl -LO https://git.io/get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl
