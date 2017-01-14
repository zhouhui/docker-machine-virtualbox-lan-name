#!/bin/bash

export WRAPPER_PATH=`pwd`

# use this one instead of default ~/.docker if you want
# export MACHINE_STORAGE_PATH="/d/workspaces/virtualbox/docker"

# prevent docker-machine from starting virtualbox dhcp service
export VIRTUALBOX_HOSTONLY_NO_DHCP=true

# please refer to docker-machine's doc to use env variables you want
# export VIRTUALBOX_SHARE_FOLDER=""

# make virtualbox shell commands be able to access
export PATH=$PATH:$VBOX_MSI_INSTALL_PATH

# cheet docker-machine
# if you want to use original docker-machine please type 'Docker-machine' instead
# and the docker-machine.exe is a cheet script which is also used in start.sh of Docker Toolbox
docker-machine () {
  $WRAPPER_PATH/docker-machine.exe "$@"
}

export -f docker-machine

# always using original docker-machine
Docker-machine () {
  "$(echo $DOCKER_TOOLBOX_INSTALL_PATH/docker-machine.exe)" "$@"
}

export -f Docker-machine

. "/c/Program Files/Docker Toolbox/start.sh"

