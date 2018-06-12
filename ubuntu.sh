#!/bin/bash

echo "!!!Update System!!!"

  sudo apt-get update
  echo "\n\n\n"

echo "!!!Node Installation!!!"

  # curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  echo "\n\n\n"

echo "!!!Update System!!!"

  sudo apt-get update
  sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
  echo "\n\n\n"

echo "!!!Install Rbenv"

  cd
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
  rbenv rehash
  # exec $SHELL
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
  # exec $SHELL
  echo "\n\n\n"

echo "!!!Install Ruby!!!"

  rbenv install 2.5.1
  rebenv install 2.4.1
  rbenv global 2.5.1
  echo "\n\n\n"

echo "!!!Install Bundler!!!"

  gem install bundler
  echo "\n\n\n"

echo "!!!Update Git!!!"
  echo "\nenter the User Name"
  read user_name
  echo "\nenter the Email"
  read email
  git config --global color.ui true
  git config --global user.name $user_name
  git config --global user.email $email
  echo "\n\n\n"

echo "!!!Install Rails!!!"

  curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
  sudo apt-get install -y nodejs

echo "!!!Install Rails 5.2.0!!!"

  gem install rails -v 5.2.0
  rbenv rehash
  echo "\n\n\n"

echo "!!!Install Mysql!!!"

  sudo apt-get install mysql-server mysql-client libmysqlclient-dev
  echo "\n\n\n"

echo "!!!Install ImageMagick for image processing!!!"

  sudo apt-get install imagemagick --fix-missing -y
  echo "\n\n\n"

echo "!!!Install Chromium Browser!!!"

  sudo apt-get install chromium-browser
  echo "\n\n\n"

echo "!!!intall Sublime 3"

  sudo add-apt-repository ppa:webupd8team/sublime-text-3
  sudo apt-get update
  sudo apt-get install sublime-text-installer
  echo "\n\n\n"
