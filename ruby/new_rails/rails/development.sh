#!/bin/bash

if [ "$ENV" = 'development' ]; then
  apt-get update
  apt-get install -y procps sudo vim
  apt-get clean
  rm -rf /var/lib/apt/lists/*
  export USER=${USER_NAME}
  mkdir /home/"$USER"
  usermod -G sudo "$USER"
  chown "$USER" /home/"$USER"
  chmod 777 /home/"$USER"
  echo 'set completion-ignore-case on' > /home/"$USER"/.inputrc
  echo 'PS1="\[\e[34m\]\u\[\e[33m\]@docker\[\e[32m\]:\w\$\[\e[0m\]"' >> /home/"$USER"/.bashrc
  echo 'alias jupyter="jupyter notebook --ip 0.0.0.0 --port 8888"' >> /home/"$USER"/.bashrc
  echo '=================================='
  echo 'Development tools are installed'
  echo '=================================='
  echo
fi