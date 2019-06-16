#Base image; is ubuntu 16.04 with VNC already set up
FROM consol/ubuntu-xfce-vnc
#Sets the user to root for installs and setup
USER 0
#updates and install tools for setup
RUN apt update -y \
    && apt install gdebi-core -y \
    && apt install wget -y \
    && mkdir -p ~/dockerfiles
#copies the files from the build directory
COPY . /headless/dockerfiles
#navigates to the directory and run scripts to setup the rest of the container
RUN cd /headless/dockerfiles \
    && ./setup_RS.sh
#sets user back to default, safe, non root user
USER 1000