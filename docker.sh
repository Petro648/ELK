#!/bin/bash

amazon-linux-extras install epel -y
systemctl start docker
systemctl enable docker
sudo usermod -a -G docker ec2-user


 # install docker-compose
 curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 chmod +x /usr/local/bin/docker-compose
 ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
 docker-compose --version