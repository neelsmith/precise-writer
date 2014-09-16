precise-writer
==============

A virtual machine running Ubuntu 12.04 with some basic tools for writing.

## Prerequisites ##

- [Vagrant](http://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Initial build and configuration

From a terminal on your host machine, run

    vagrant up
    
Wait until the (long!) initial build has completed, then use the login window (shown below) to login (password `vagrant`).


![Login screen](imgs/login.png)

Double click the icon labelled "Set up Desktop", then logout (using the "gear" icon at the
top right of the window), and log back in.  Your launcher bar should be configured like the one 
shown below, with icons for Chromium (a web browser), Retext (a markdown editor), JEdit (a validating XML editor), and
a terminal.  (You can trash the "Set up Desktop" icon at this point.)

![Launcher bar after running "Set up Desktop"](imgs/finalstate.png)

