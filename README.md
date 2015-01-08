# precise-writer #


A virtual machine running Ubuntu 14.04 (LTS) with some basic tools for writing.

## Prerequisites ##

- [Vagrant](http://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Initial build and configuration ##


From a terminal on your host machine, run

    vagrant up
    
1. Wait until the (long!) initial build has completed.  This will build, but not start the Desktop GUI.
2. Run `vagrant halt`.  The next time you run `vagrant up`, the system will start a graphic interface.

To login to the graphic interface, use the login window (shown below) to login as the user `vagrant`,  with password `vagrant`.

![Login screen](imgs/login.png)

