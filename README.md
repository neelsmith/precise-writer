# precise-writer #


A virtual machine running Ubuntu 12.04 with some basic tools for writing.

## Prerequisites ##

- [Vagrant](http://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Initial build and configuration ##

From a terminal on your host machine, run

    vagrant up
    
Wait until the (long!) initial build has completed, then use the login window (shown below) to login (password `vagrant`).


![Login screen](imgs/login.png)

Double click the icon labelled "Set up Desktop", then logout (using the "gear" icon at the
top right of the window), and log back in.  Your launcher bar should be configured like the one 
shown below, with icons for Chromium (a web browser), Retext (a markdown editor), JEdit (a validating XML editor), and
a terminal.  (You can trash the "Set up Desktop" icon at this point.)

![Launcher bar after running "Set up Desktop"](imgs/finalstate.png)


## What's included ##

On your Desktop, you'll find a pair of launchers you can drag files on.

1. Drag a file with extension `.md` onto the `Citedown to Markdown` launcher to create a file in pure
markdown with all URNs resolved to URLs.  If the original file is named `FILE.md`, the converted file will be in the same directory and named `FILE-converted.md`.
1. Drag a file onto the `View critic markup` launcher to create a new file on your Desktop named `critic-markup.html`.  Open this file in a web browser to see original, edited and "Track changes" views of the source document.



