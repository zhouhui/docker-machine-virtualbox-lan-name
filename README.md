# docker-machine-virtualbox-lan-name
Extension of docker-machine to provide LAN Hostname resolving service

## Usage

### Step 0 - install docker toolbox

### Step 1 - replace %DOCKER_TOOLBOX_INSTALL_PATH%/docker-machine.exe with latest docker-machine.exe
Main reason of this operation is to set VIRTUALBOX_HOSTONLY_NO_DHCP=true which is supported in the latest version but not in the embed version of docker-machine.exe currently(Dec 2016).

### Step 2 - git clone
``` bash
git clone https://github.com/zhouhui/docker-machine-virtualbox-lan-name.git
```

### Step 3 - first start and create host 'default'
Enter the folder *docker-machine-virtualbox-lan-name* and run the file *Docker Quickstart Terminal*. It will create the host 'default' firstly and install and configure *dnsmasq* automatically.

### Step 4 - try to create hosts
Try the below scripts to create hosts and try the lan hostname resolving.
``` bash
docker-machine create -d virtualbox node1
docker-machine create -d virtualbox node2
docker-machine create -d virtualbox mgr1
```

### Step 5 - try to change scripts to meets your special requirement
