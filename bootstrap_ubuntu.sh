#!/usr/bin/env bash
 
 
# Update sources
sudo apt-get update -y && sudo apt-get upgrade -y

# Development tools
sudo apt-get install build-essential -y
 
# Packages required for compilation of some stdlib modules
sudo apt-get install tklib -y
 
# Extras for RubyGems and Rails (incl RVM)
sudo apt-get install zlib1g-dev libssl-dev node.js -y

# RVM Install (version chosen for Pragmatic course)
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable 
source /home/vagrant/.rvm/scripts/rvm

rvm install 2.5.1
rvm --default use 2.5.1
rvm docs generate-ri
gem install rails --version 5.0.0 --no-ri --no-rdoc
