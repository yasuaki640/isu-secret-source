#!/bin/sh

# ab, dsat
sudo apt update
sudo apt install -y \
  apache2-utils \
  dstat \
  percona-toolkit

# alp
wget https://github.com/tkuchiki/alp/releases/download/v1.0.21/alp_linux_amd64.tar.gz
tar -xzf alp_linux_amd64.tar.gz
sudo mv alp /usr/local/bin/
