#!/bin/bash

echo "!!!Update System!!!"
  echo "\n\n\n"
  sudo apt-get update
  echo "\n\n\n"

echo "!!!Node Installation!!!"

  # curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  echo "\n\n\n"

echo "Install Git"
  echo "Press Enter to Install Git"
  read choice
  if [ -z "$choice" ]
  then
    sudo apt-get install git
  fi
  echo "\n\n\n"


echo "!!!Update System!!!"

  sudo apt-get update
  sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
  echo "\n\n\n"

echo "!!!Install Rbenv"
  echo "Press Enter to Install Rbenv"
  read choice
  if [ -z "$choice" ]
  then
    curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    ~/.rbenv/bin/rbenv init
    echo "\n\n\n"
    echo "checking rbenv using rbenv-doctor"
    curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
  fi
  echo "\n\n\n"

echo "!!!Install Ruby!!!"
  echo "Press Enter to Install Ruby"
  read choice
  if [ -z "$choice" ]
  then
    rbenv install 2.5.1
    rbenv install 2.4.1
    rbenv global 2.5.1
    rbenv rehash
  fi
  echo "\n\n\n"

echo "!!!Install Bundler!!!"
  echo "Press Enter to Install Bundler"
  read choice
  if [ -z "$choice" ]
  then
    gem install bundler
  fi
  echo "\n\n\n"

echo "!!!Update Git!!!"
  echo "Press Enter to update Git"
  read choice
  if [ -z "$choice" ]
  then
    echo "\nenter the User Name"
    read user_name
    echo "\nenter the Email"
    read email
    git config --global color.ui true
    git config --global user.name $user_name
    git config --global user.email $email
  fi
  echo "\n\n\n"

echo "!!!Install Node JS!!!"
  echo "Press Enter to Install Node"
  read choice
  if [ -z "$choice" ]
  then
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
    sudo apt-get install -y nodejs
  fi

echo "!!!Install Rails 5.2.0!!!"
  echo "Press Enter to Install Rails"
  read choice
  if [ -z "$choice" ]
  then
    gem install rails -v 5.2.0
    rbenv rehash
  fi
  echo "\n\n\n"

echo "!!!Install Mysql!!!"
  echo "Press Enter to Install Mysql"
  read choice
  if [ -z "$choice" ]
  then
    sudo apt-get install mysql-server mysql-client libmysqlclient-dev
  fi
  echo "\n\n\n"

echo "!!!Install ImageMagick for image processing!!!"
  echo "Press Enter to Install ImageMagick"
  read choice
  if [ -z "$choice" ]
  then
    sudo apt-get install imagemagick --fix-missing -y
  fi
  echo "\n\n\n"

echo "!!!Install Chromium Browser!!!"
  echo "Press Enter to Install Chromium"
  read choice
  if [ -z "$choice" ]
  then
    sudo apt-get install chromium-browser
  fi
  echo "\n\n\n"

echo "!!!install Sublime 3"
  echo "Press Enter to Install Sublime 3"
  read choice
  if [ -z "$choice" ]
  then
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
    sudo apt install sublime-text
  fi
  echo "\n\n\n"

echo "!!! install Atom Editor"
  echo "Press Enter to Install Atom"
  read choice
  if [ -z "$choice" ]
  then
    sudo add-apt-repository ppa:webupd8team/atom
    sudo apt-get update
    sudo apt-get install atom
  fi
  echo "\n\n\n"

