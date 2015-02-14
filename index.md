---
layout: page
title: trusty-writer
---



## Prerequisites

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)


## Initial build and configuration

From a terminal on your host machine, run

    vagrant up
    
Wait until the (long!) initial build has completed. This will build, but not start the Desktop GUI. Run `vagrant halt`. The next time you run vagrant up, the system will start a graphic interface.

You can login as user `vagrant` with password `vagrant` either from the graphic interface or using `vagrant ssh` on the host machine.

## What's installed ##

Tools for:

- XML editing
- editing markdown
- using critic markup

