#!/usr/bin/env bash

# Repository for 21st century version of gradle:
add-apt-repository ppa:cwchien/gradle
apt-get update


# System and account conifg:
apt-get install -y dos2unix
apt-get install -y --no-install-recommends lubuntu-desktop


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
#    cp /vagrant/system/initgui.desktop /home/vagrant/Desktop
#    cp /vagrant/scripts/cm.desktop /home/vagrant/Desktop
#    chmod +x /home/vagrant/Desktop/initgui.desktop
#    chown -R vagrant:vagrant /home/vagrant/Desktop
fi

apt-get install -y git





################################################################
# Jekyll bundle
################################################################

# ruby already installed in base system
gem install bundler
gem install jekyll -v 2.4.0
# within repos with Gemfile, run bundle install to get github-pages



################################################################
# Markdown bundle
################################################################

apt-get -y install mdpress
apt-get -y install retext
apt-get -y install pandoc

# python parsing for critic markup script:
# see <http://criticmarkup.com/cli.php>
apt-get install -y python-pip
/usr/bin/pip install markdown


################################################################
# XML bundle
################################################################
apt-get -y install jedit



################################################################
# JDK development bundle
################################################################
apt-get -y install openjdk-7-jdk
apt-get -y install groovy
apt-get -y install gradle



################################################################
# nodejs bundle
################################################################
apt-get -y install npm
npm install beautiful-docs
