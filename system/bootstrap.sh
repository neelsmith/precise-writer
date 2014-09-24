#!/usr/bin/env bash

# Start from latest and greatest
apt-get update


# System and account conifg:
apt-get install -y dos2unix
apt-get install -y ubuntu-desktop


# Clean up any catastrophic reformatting that
# git clone could introduce on a Windows box:
/usr/bin/dos2unix /vagrant/system/*sh
/usr/bin/dos2unix /vagrant/system/dotprofile

/usr/bin/dos2unix /vagrant/scripts/*sh
/usr/bin/dos2unix /vagrant/scripts/*desktop
/usr/bin/dos2unix /vagrant/scripts/*groovy
/usr/bin/dos2unix /vagrant/scripts/*py





if [ ! -d "/home/vagrant/Desktop" ]; then
    mkdir "/home/vagrant/Desktop"
fi
cp /vagrant/system/dotprofile /home/vagrant/.profile
if [ ! -e "/home/vagrant/Desktop/shared" ]; then
    ln -s /vagrant /home/vagrant/Desktop/shared
    cp /vagrant/system/initgui.desktop /home/vagrant/Desktop
    cp /vagrant/scripts/cm.desktop /home/vagrant/Desktop
    chmod +x /home/vagrant/Desktop/initgui.desktop
    chown -R vagrant:vagrant /home/vagrant/Desktop
fi



# need to have the one true editor
# in case Neel Smith needs to work on
# the machine, and include markdown mode:
apt-get install -y emacs
apt-get install -y emacs-goodies-el


# Extra web browser
apt-get install -y chromium-browser

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

`#cp /vagrant/system/com.canonical.Unity.gschema.xml /usr/share/glib-2.0/schemas


GIT=`which git`
if [ -d "/vagrant/cd2md" ]; then
    echo "Checking for updates to cd2md library"
    cd /vagrant/cd2md
    $GIT pull
else
    echo "Installing citedown converter"
    cd /vagrant
    echo  Running  $GIT clone https://github.com/neelsmith/cd2md.git
    $GIT clone https://github.com/neelsmith/cd2md.git
fi


if [ ! -d "/vagrant/libs" ]; then
    mkdir "/vagrant/libs"
fi

#cd /vagrant/cd2md
#GRADLE=`which gradle`
#$GRADLE clean
#$GRADLE jar
#cp /vagrant/cd2md/build/libs/cd2md-0.0.1.jar /vagrant/libs
#ln -s /vagrant/libs/cd2md-0.0.1.jar /vagrant/libs/cd2md.jar


