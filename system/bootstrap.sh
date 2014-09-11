#!/usr/bin/env bash

# Start from latest and greatest
apt-get update


# System and account conifg:
apt-get install -y ubuntu-desktop
ln -s /vagrant /home/vagrant/Desktop/shared
cp /vagrant/system/dotprofile /home/vagrant/.profile


# need to have the one true editor
# in case Neel Smith needs to work on
# the machine, and include markdown mode:
apt-get install -y emacs
apt-get install -y emacs-goodies-el


# XML editing and build systems
apt-get install -y git
apt-get install -y gradle
apt-get install -y jedit



## Stuff for writing with markdown
apt-get install -y retext
sudo apt-get install -y pandoc

apt-get install -y python-pip
/usr/bin/pip install markdown

#sudo apt-get install -y nodejs
#if [ -h "/usr/bin/node" ]; then
#    echo "Already have symln for node"
#else
#    sudo ln -s /usr/bin/nodejs /usr/bin/node
#fi
#sudo apt-get install -y npm
#sudo npm install beautiful-docs


## This sequence is for 14.04.  Not sure what 12.04 equivalent would be.
#sudo apt-get install -y ruby2.0 ruby2.0-dev build-essential libssl-dev zlib1g-dev ruby-switch
#sudo ruby-switch --set ruby2.0
#sudo gem install mdpress



# .. including make pdfs, so grab
# entire xetex system, and the whole
# suite of GFS fonts:
#sudo apt-get install -y texlive
#sudo apt-get install -y texlive-xetex
#sudo apt-get install -y texlive-latex-extra

#sudo apt-get install -y fonts-gfs-artemisia
#sudo apt-get install -y fonts-gfs-baskerville
#sudo apt-get install -y fonts-gfs-bodoni-classic
#sudo apt-get install -y fonts-gfs-complutum
#sudo apt-get install -y fonts-gfs-didot
#sudo apt-get install -y fonts-gfs-didot-classic
#sudo apt-get install -y fonts-gfs-gazis
#sudo apt-get install -y fonts-gfs-neohellenic
#sudo apt-get install -y fonts-gfs-olga
#sudo apt-get install -y fonts-gfs-porson
#sudo apt-get install -y fonts-gfs-solomos
#sudo apt-get install -y fonts-gfs-theokritos
