#!/usr/bin/env bash


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
    cp /vagrant/system/initgui.desktop /home/vagrant/Desktop
    cp /vagrant/scripts/cm.desktop /home/vagrant/Desktop
    chmod +x /home/vagrant/Desktop/initgui.desktop
    chown -R vagrant:vagrant /home/vagrant/Desktop
fi




