# osbuddy-docker

## Overview
This docker image was created to allow me to play OSRS(old school Runescape) on my laptop with a 4k display.  Prior to creating this image, if I tried to play OSRS on my laptop, the game would would have scaling issues with the menu.  By using this image, the problem has been fixed.

## Use Cases
1. As mentioned, this docker image fixes issues with scaling.
2. This image allows one to quickly play on any OS that supports docker
3. This image could allow on to easily play on multiple accounts at the same time by running multiple containers and using noNVC

## Project Layout

```Dockerfile``` contains the build instructions for the docker container, everything that is ran in the setup is referenced here.

```osbuddy.deb``` is version 1.2 of the osbuddy client for debian based distros dowloaded on 6/15/19.  This comes straight from the osbuddy website, so you can download your own version if you don't trust it.

```setup_RS.sh``` is a script that installs and fixes the osbuddy install, as it won't work with just a simple install.

```build_osrs.sh``` builds the docker image and names it osrs.

```runescape.sh``` runs the the built docker image detached and forwards ports 5901 and 6901.  These ports will be used to access the VNC connection.

## Using the Project

1. First, build the image by running ```build_osrs.sh```
2. Next, run the docker image by running ```runescape.sh```
3. Access the VNC connection.  The default passwod is ```vncpassword```

### Accessing the VNC connection

You have two options for accessing the VNC connection, the first one is using a standard vnc viewer and connecting to the VNC connection at ```localhost:5901```.  Enter the password ```vncpassword``` and then you should be at the desktop.

The second option is open up a popular web browser that supports noVNC and enter ```localhost:6901```.  Enter the password ```vncpassword``` and then you should be at the desktop.

With either option, you can run the game by looking under the games section of the menu.

## Known Issues

Currently, sound doesn't work.  This should be possbile to fix but as of now has not.

## Other Uses

Other applications that have similar issues with scaling may also benifit from a similar set up.
