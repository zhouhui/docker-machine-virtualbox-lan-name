#!/bin/bash

export WRAPPER_PATH=`pwd`
export MACHINE_STORAGE_PATH="/d/workspaces/virtualbox/docker"
export VIRTUALBOX_HOSTONLY_NO_DHCP=true
# export VIRTUALBOX_SHARE_FOLDER=""
export PATH=$PATH:$VBOX_MSI_INSTALL_PATH


docker-machine () {
  $WRAPPER_PATH/docker-machine.exe "$@"
}

export -f docker-machine

. "/c/Program Files/Docker Toolbox/start.sh"

